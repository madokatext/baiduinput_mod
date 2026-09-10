package io.github.madokatext.baiduinputmod;

import android.content.pm.ApplicationInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.loader.AssetsProvider;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.util.Base64;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/** Uses Android's supported loader API; XML, bags and TypedArray see the same table. */
final class ResourceOverlay implements AutoCloseable {
    private final ParityModule module;
    private final String sourcePath;
    private final ResourcesLoader loader = new ResourcesLoader();
    private final List<ZipFile> sourceApks = new ArrayList<>();
    private final Set<Resources> attached = Collections.newSetFromMap(new WeakHashMap<>());
    private final ThreadLocal<Boolean> attaching = ThreadLocal.withInitial(() -> false);
    private ResourcesProvider provider;
    private boolean assetErrorReported;

    ResourceOverlay(ParityModule module, ApplicationInfo app, JSONObject patch) throws Exception {
        this.module = module;
        sourcePath = app.sourceDir;
        try {
            ZipFile base = new ZipFile(app.sourceDir);
            sourceApks.add(base);
            if (app.splitSourceDirs != null) {
                for (String split : app.splitSourceDirs) sourceApks.add(new ZipFile(split));
            }
            byte[] original = Payload.entry(base, "resources.arsc");
            if (patch.getInt("format") != 1
                    || original.length != patch.getInt("sourceSize")
                    || !Payload.sha256(original).equals(patch.getString("sourceSha256"))) {
                throw new IllegalStateException("Origin resources.arsc fingerprint mismatch; this app version is unsupported");
            }
            int expectedSize = patch.getInt("targetSize");
            ByteArrayOutputStream out = new ByteArrayOutputStream(expectedSize);
            JSONArray operations = patch.getJSONArray("operations");
            for (int i = 0; i < operations.length(); i++) {
                JSONObject operation = operations.getJSONObject(i);
                if (operation.has("copy")) {
                    JSONArray copy = operation.getJSONArray("copy");
                    int offset = copy.getInt(0), size = copy.getInt(1);
                    if (offset < 0 || size < 0 || (long) offset + size > original.length
                            || (long) out.size() + size > expectedSize) throw new IOException("Invalid COPY range");
                    out.write(original, offset, size);
                } else {
                    byte[] added = Base64.decode(operation.getString("add"), Base64.DEFAULT);
                    if ((long) out.size() + added.length > expectedSize) throw new IOException("Invalid ADD range");
                    out.write(added);
                }
            }
            byte[] table = out.toByteArray();
            if (table.length != expectedSize || !Payload.sha256(table).equals(patch.getString("targetSha256"))) {
                throw new IOException("Resource patch output fingerprint mismatch");
            }
            // File resources still come from the original APK, including compressed entries.
            // Returning a fresh memfd transfers ownership to Android, with no FD cache leaks.
            AssetsProvider assets = new AssetsProvider() {
                @Override
                public AssetFileDescriptor loadAssetFd(String path, int accessMode) {
                    try {
                        for (int i = sourceApks.size() - 1; i >= 0; i--) {
                            ZipFile apk = sourceApks.get(i);
                            ZipEntry entry = apk.getEntry(path);
                            if (entry == null || entry.isDirectory()) continue;
                            byte[] bytes;
                            try (InputStream input = apk.getInputStream(entry)) {
                                bytes = Payload.read(input);
                            }
                            return new AssetFileDescriptor(Payload.memoryFile("baidu-mod-asset", bytes), 0, bytes.length);
                        }
                        return null;
                    } catch (Exception error) {
                        synchronized (ResourceOverlay.this) {
                            if (!assetErrorReported) {
                                assetErrorReported = true;
                                module.log("Resource asset failed: " + path, error);
                            }
                        }
                        return null;
                    }
                }
            };
            try (ParcelFileDescriptor fd = Payload.memoryFile("baidu-mod-table", table)) {
                provider = ResourcesProvider.loadFromTable(fd, assets);
            }
            loader.addProvider(provider);
        } catch (Exception error) {
            close();
            throw error;
        }
    }

    void attach(Resources resources) throws Exception {
        if (resources == null || attaching.get()) return;
        synchronized (attached) {
            if (attached.contains(resources)) return;
        }
        attaching.set(true);
        try {
            // A process can also load another package or the module's own Resources.
            Method getApkAssets = AssetManager.class.getDeclaredMethod("getApkAssets");
            getApkAssets.setAccessible(true);
            Object[] apkAssets = (Object[]) getApkAssets.invoke(resources.getAssets());
            boolean matches = false;
            for (Object apk : apkAssets) {
                Method getPath = apk.getClass().getDeclaredMethod("getAssetPath");
                getPath.setAccessible(true);
                if (sourcePath.equals(getPath.invoke(apk))) {
                    matches = true;
                    break;
                }
            }
            if (!matches) return;
            synchronized (attached) {
                if (attached.contains(resources)) return;
                resources.addLoaders(loader);
                attached.add(resources);
            }
        } finally {
            attaching.remove();
        }
    }

    @Override
    public void close() {
        if (provider != null) {
            loader.removeProvider(provider);
            provider.close();
        }
        for (ZipFile apk : sourceApks) {
            try { apk.close(); } catch (IOException ignored) { }
        }
        sourceApks.clear();
    }
}
