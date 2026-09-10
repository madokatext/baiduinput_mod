package io.github.madokatext.baiduinputmod;

import android.app.Application;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CopyOnWriteArraySet;
import io.github.libxposed.service.XposedService;
import io.github.libxposed.service.XposedServiceHelper;

/** One API 100 service listener per settings process, shared across activity recreation. */
public final class SettingsApplication extends Application {
    private final CopyOnWriteArraySet<Runnable> listeners = new CopyOnWriteArraySet<>();
    private final Handler main = new Handler(Looper.getMainLooper());
    private volatile SharedPreferences preferences;
    private volatile XposedService bound;
    @Override public void onCreate() {
        super.onCreate();
        XposedServiceHelper.registerListener(new XposedServiceHelper.OnServiceListener() {
            @Override public void onServiceBind(XposedService service) {
                try { preferences = service.getRemotePreferences(ModuleSettings.GROUP); bound = service; }
                catch (RuntimeException error) { preferences = null; }
                notifyChanged();
            }
            @Override public void onServiceDied(XposedService service) {
                if (bound == service) { preferences = null; bound = null; notifyChanged(); }
            }
        });
    }
    SharedPreferences preferences() { return preferences; }
    void invalidateConnection() { preferences = null; }
    void listen(Runnable listener) { listeners.add(listener); }
    void unlisten(Runnable listener) { listeners.remove(listener); }
    private void notifyChanged() { for (Runnable listener : listeners) main.post(listener); }
}
