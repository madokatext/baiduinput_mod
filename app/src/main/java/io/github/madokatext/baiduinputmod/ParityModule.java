package io.github.madokatext.baiduinputmod;

import android.content.SharedPreferences;
import java.util.concurrent.atomic.AtomicBoolean;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;

public final class ParityModule extends XposedModule {
    private final AtomicBoolean installed = new AtomicBoolean();
    private SharedPreferences preferences;
    private boolean preferenceError;
    public ParityModule(XposedInterface base, ModuleLoadedParam param) { super(base, param); }
    @Override public void onPackageLoaded(PackageLoadedParam param) {
        if (!"com.baidu.input".equals(param.getPackageName()) || !installed.compareAndSet(false, true)) return;
        try { preferences = getRemotePreferences(ModuleSettings.GROUP); }
        catch (Throwable error) { log("Cannot read candidate setting; candidate feature stays off until restart", error); }
        HookSupport hooks = new HookSupport(this, param.getClassLoader());
        new ModHooks(hooks).install();
        new CandidateScrollHooks(hooks).install();
        log("BaiduInputMod 1.2.1 hook registration finished; consult group results; no DEX/class/resource-table replacement");
    }
    boolean candidateScrollEnabled() {
        if (preferences == null) return false;
        try { return preferences.getBoolean(ModuleSettings.CANDIDATE_SCROLL, true); }
        catch (Throwable error) {
            if (!preferenceError) { preferenceError = true; log("Cannot read candidate setting; keeping app touch behavior", error); }
            return false;
        }
    }
}
