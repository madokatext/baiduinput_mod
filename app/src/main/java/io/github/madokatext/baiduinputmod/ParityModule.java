package io.github.madokatext.baiduinputmod;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;

import org.json.JSONObject;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;

import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.annotations.AfterInvocation;
import io.github.libxposed.api.annotations.XposedHooker;

public final class ParityModule extends XposedModule {
    private static volatile ParityModule instance;
    private final String processName;
    private final List<MethodUnhooker<Method>> resourceHooks = new ArrayList<>();
    private volatile ResourceOverlay resources;
    private DexOverlay dex;
    private final AtomicBoolean attempted = new AtomicBoolean();
    private final AtomicBoolean resourceErrorReported = new AtomicBoolean();

    public ParityModule(XposedInterface base, ModuleLoadedParam param) {
        super(base, param);
        processName = param.getProcessName();
        instance = this;
    }

    @Override
    public void onPackageLoaded(PackageLoadedParam param) {
        if (!"com.baidu.input".equals(param.getPackageName()) || !attempted.compareAndSet(false, true)) return;
        long started = SystemClock.uptimeMillis();
        ResourceOverlay prepared = null;
        DexOverlay candidate = null;
        String stage = "opening module APK";
        try (ZipFile moduleApk = new ZipFile(getApplicationInfo().sourceDir)) {
            stage = "reading profile";
            JSONObject profile = Payload.json(moduleApk, "assets/parity/profile.json");
            stage = "reading resource patch asset";
            JSONObject patch = Payload.json(moduleApk, "assets/parity/resources.patch.json.gz");
            stage = "preparing resource table";
            prepared = new ResourceOverlay(this, param.getApplicationInfo(), patch);
            stage = "preparing patch DEX";
            candidate = new DexOverlay(param.getClassLoader(),
                    Payload.entry(moduleApk, "assets/parity/classes.dex"));
            stage = "installing resource hooks";
            installResourceHooks();
            stage = "installing patch DEX";
            candidate.install();
            dex = candidate;
            resources = prepared;
            log("DEX overlay installed for " + profile.getJSONArray("classes").length()
                    + " mod classes in " + processName + " (" + (SystemClock.uptimeMillis() - started)
                    + " ms); resource table prepared, awaiting Context attachment");
        } catch (Throwable error) {
            for (MethodUnhooker<Method> hook : resourceHooks) {
                try { hook.unhook(); } catch (Throwable cleanup) { error.addSuppressed(cleanup); }
            }
            resourceHooks.clear();
            if (prepared != null) {
                try { prepared.close(); } catch (Throwable cleanup) { error.addSuppressed(cleanup); }
            }
            if (candidate != null) {
                try { candidate.close(); } catch (Throwable cleanup) { error.addSuppressed(cleanup); }
            }
            log("Parity module disabled for " + processName + " at " + stage + " after "
                    + (SystemClock.uptimeMillis() - started) + " ms: " + error.getMessage(), error);
        }
    }

    private void installResourceHooks() throws Exception {
        // Context boundaries cover application, service, activity and configuration contexts.
        // Never mutate Resources from a ResourcesManager hook: a caller may hold framework locks.
        for (String name : new String[]{"android.app.ContextImpl", "android.view.ContextThemeWrapper"}) {
            Method method = Class.forName(name).getDeclaredMethod("getResources");
            method.setAccessible(true);
            resourceHooks.add(hook(method, ResourcesHook.class));
        }
        Method attach = Application.class.getDeclaredMethod("attach", Context.class);
        attach.setAccessible(true);
        resourceHooks.add(hook(attach, ApplicationAttachHook.class));
    }

    private void apply(Resources target) {
        ResourceOverlay overlay = resources;
        if (overlay == null) return;
        try {
            overlay.attach(target);
        } catch (Throwable error) {
            reportResourceFailure(error);
        }
    }

    void reportResourceFailure(Throwable error) {
        if (resourceErrorReported.compareAndSet(false, true)) {
            log("Resource overlay attachment failed; parity is incomplete", error);
        }
    }

    @XposedHooker
    public static final class ResourcesHook implements XposedInterface.Hooker {
        @AfterInvocation
        public static void afterInvocation(AfterHookCallback callback) {
            ParityModule module = instance;
            if (module != null && callback.getThrowable() == null && callback.getResult() instanceof Resources) {
                module.apply((Resources) callback.getResult());
            }
        }
    }

    @XposedHooker
    public static final class ApplicationAttachHook implements XposedInterface.Hooker {
        @AfterInvocation
        public static void afterInvocation(AfterHookCallback callback) {
            ParityModule module = instance;
            if (module != null && callback.getThrowable() == null) {
                Context context = (Context) callback.getArgs()[0];
                if ("com.baidu.input".equals(context.getPackageName())) module.apply(context.getResources());
            }
        }
    }
}
