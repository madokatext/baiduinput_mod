package io.github.madokatext.baiduinputmod;

import android.content.pm.ApplicationInfo;
import android.os.Process;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.annotations.AfterInvocation;
import io.github.libxposed.api.annotations.BeforeInvocation;
import io.github.libxposed.api.annotations.XposedHooker;

import static io.github.madokatext.baiduinputmod.HookSupport.*;

/** Scope the native scorers to the executing core call, never a global UI flag. */
final class NineKeyMemoryHooks {
    private static final String CORE = "com.baidu.iptcore.IptCoreInterface";
    private static final String CORE_SHA256 = "472dd4e1aff4ad226821b5b781d668455b835b626bde917ce14f53dfdf6ab7db";
    private static volatile NineKeyMemoryHooks instance;
    private final HookSupport h;
    private final ApplicationInfo target;
    private Field keyState, layout, language;
    private Method mode;
    private volatile boolean failed, bridgeLoaded, installed;
    private boolean waitingLogged;

    NineKeyMemoryHooks(HookSupport h, ApplicationInfo target) { this.h = h; this.target = target; }

    void install() {
        List<XposedInterface.MethodUnhooker<Method>> pending = new ArrayList<>();
        try {
            if (!Process.is64Bit() || !"aarch64".equals(System.getProperty("os.arch"))) {
                throw new IllegalStateException("User-word time scoring requires arm64-v8a");
            }
            Class<?> stat = h.type("com.baidu.input.ime.InputStatMac");
            keyState = field(h.type("com.baidu.input.ime.keymap.KeyMap"), "c0", stat);
            layout = field(stat, "d", byte.class);
            language = field(stat, "g", byte.class);
            mode = method(stat, "f", byte.class);
            Class<?> core = h.type(CORE);
            // This boundary includes key actions, candidate reads, network
            // callbacks and refreshes. Install one independent hooker so it
            // coexists with the existing delete-key hooks on the same methods.
            instance = this;
            for (Method entry : core.getDeclaredMethods()) {
                if (!Modifier.isNative(entry.getModifiers())) continue;
                entry.setAccessible(true);
                pending.add(h.module.hook(entry, XposedInterface.PRIORITY_LOWEST, CoreScope.class));
            }
            if (pending.isEmpty()) throw new IllegalStateException("No native core entry points");
            h.module.log("Hook group installed: nine-key user-word time scope (" + pending.size()
                    + " core entries); scoring hook loads only when enabled; default off");
        } catch (Throwable error) {
            failed = true;
            for (XposedInterface.MethodUnhooker<Method> hook : pending) {
                try { hook.unhook(); } catch (Throwable ignored) { }
            }
            h.module.log("Hook group unavailable; keeping app behavior: nine-key user-word time scope", error);
        }
    }

    private boolean nineKey() throws Exception {
        Object state = keyState.get(null);
        return state != null && layout.getByte(state) == 1 && language.getByte(state) == 0
                && ((Byte) mode.invoke(state) & 0xff) == 0x21;
    }

    private synchronized boolean ensureNative() throws Exception {
        if (failed) return false;
        if (installed) return true;
        if (!bridgeLoaded) {
            verifyCore();
            // Use LSPosed's module classloader/native search path. Loading a
            // compressed or separately extracted copy would leave ShadowHook's
            // libshadowhook_nothing.so helper outside its namespace search path.
            System.loadLibrary("shadowhook");
            System.loadLibrary("ninekeymemory");
            bridgeLoaded = true;
        }
        String result = nativeInstall();
        if ("waiting".equals(result)) {
            if (!waitingLogged) { waitingLogged = true; h.module.log("NineKeyMemory 1.4.0: waiting for libiptcore.so"); }
            return false;
        }
        if (result != null) throw new IllegalStateException(result);
        installed = true;
        h.module.log("NineKeyMemory 1.4.0: three verified user-word scorers installed; thread-scoped age=0; no dictionary writes");
        return true;
    }

    private void verifyCore() throws Exception {
        File extracted = new File(target.nativeLibraryDir, "libiptcore.so");
        if (extracted.isFile()) {
            try (InputStream input = new FileInputStream(extracted)) { verifyHash(input); }
            return;
        }
        List<String> apks = new ArrayList<>();
        apks.add(target.sourceDir);
        if (target.splitSourceDirs != null) java.util.Collections.addAll(apks, target.splitSourceDirs);
        for (String path : apks) {
            try (ZipFile apk = new ZipFile(path)) {
                ZipEntry entry = apk.getEntry("lib/arm64-v8a/libiptcore.so");
                if (entry == null) continue;
                try (InputStream input = apk.getInputStream(entry)) { verifyHash(input); }
                return;
            }
        }
        throw new IllegalStateException("Cannot verify installed libiptcore.so; keeping original scoring");
    }

    private static void verifyHash(InputStream input) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] buffer = new byte[32768];
        for (int count; (count = input.read(buffer)) != -1;) digest.update(buffer, 0, count);
        StringBuilder hex = new StringBuilder(64);
        for (byte value : digest.digest()) hex.append(String.format(java.util.Locale.ROOT, "%02x", value & 0xff));
        if (!CORE_SHA256.contentEquals(hex)) throw new IllegalStateException("Unsupported libiptcore.so SHA-256; keeping original scoring");
    }

    private void fail(Throwable error) {
        if (!failed) { failed = true; h.module.log("NineKeyMemory 1.4.0 disabled; keeping original scoring", error); }
    }

    public static final class Scope {
        final NineKeyMemoryHooks owner;
        boolean entered, previous;
        Scope(NineKeyMemoryHooks owner) { this.owner = owner; }
    }

    @XposedHooker
    public static final class CoreScope implements XposedInterface.Hooker {
        @BeforeInvocation
        public static Scope before(XposedInterface.BeforeHookCallback callback) {
            NineKeyMemoryHooks owner = instance;
            if (owner == null) return null;
            boolean requested = !owner.failed && owner.h.module.userWordTimeDecayDisabled();
            if (!requested && !owner.bridgeLoaded) return null;
            Scope scope = new Scope(owner);
            boolean enabled = false;
            try {
                enabled = requested && owner.nineKey() && owner.ensureNative();
            } catch (Throwable error) { owner.fail(error); }
            // Even an ineligible nested call must mask its parent's true scope.
            // Allocate context before changing TLS, and restore after exceptions
            // or skipped original invocations as well as successful returns.
            if (owner.bridgeLoaded) {
                scope.previous = nativeSwapScope(enabled);
                scope.entered = true;
            }
            return scope;
        }

        @AfterInvocation
        public static void after(XposedInterface.AfterHookCallback callback, Scope scope) {
            if (scope != null && scope.entered) nativeSwapScope(scope.previous);
        }
    }

    private static native String nativeInstall();
    private static native boolean nativeSwapScope(boolean enabled);
}
