package io.github.madokatext.baiduinputmod;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;

import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

import static io.github.madokatext.baiduinputmod.HookSupport.*;

/** Receives a settings request without opening Baidu's clipboard panel. */
final class ClipboardRescueHooks {
    private final HookSupport h;
    private final AtomicBoolean registered = new AtomicBoolean();
    private final AtomicBoolean busy = new AtomicBoolean();
    private final ExecutorService worker = Executors.newSingleThreadExecutor();

    ClipboardRescueHooks(HookSupport h) { this.h = h; }

    void install() {
        h.group("manual clipboard rescue", () -> h.add(method(Application.class, "attach",
                void.class, Context.class), null, cb -> {
            Context context = (Application) cb.getThisObject();
            if (!ClipboardRescue.TARGET.equals(context.getPackageName())
                    || !ClipboardRescue.TARGET.equals(Application.getProcessName())
                    || !registered.compareAndSet(false, true)) return;
            try {
                context.registerReceiver(new RescueReceiver(), new IntentFilter(ClipboardRescue.ACTION),
                        ClipboardRescue.PERMISSION, null, Context.RECEIVER_EXPORTED);
                h.module.log("ClipboardRescue 1.3.6: receiver ready in input-method process");
            } catch (Throwable error) { registered.set(false); throw error; }
        }));
    }

    private final class RescueReceiver extends BroadcastReceiver {
        @Override public void onReceive(Context context, Intent intent) {
            if (!isOrderedBroadcast() || !ClipboardRescue.ACTION.equals(intent.getAction())) return;
            String request = intent.getStringExtra(ClipboardRescue.REQUEST);
            try {
                if (request == null || !UUID.fromString(request).toString().equals(request)) return;
            } catch (IllegalArgumentException error) { return; }
            if (!busy.compareAndSet(false, true)) {
                setResult(ClipboardRescue.RESULT, ClipboardRescue.BUSY, null);
                return;
            }
            PendingResult reply = goAsync();
            try {
                worker.execute(() -> rescue(context, request, reply));
            } catch (Throwable error) {
                busy.set(false);
                reply.setResult(ClipboardRescue.RESULT, ClipboardRescue.ERROR, null);
                reply.finish();
            }
        }
    }

    private void rescue(Context context, String request, BroadcastReceiver.PendingResult reply) {
        String result = ClipboardRescue.UNKNOWN;
        try {
            SharedPreferences journal = context.getSharedPreferences("baiduinput_mod_clipboard_rescue", Context.MODE_PRIVATE);
            if (request.equals(journal.getString(ClipboardRescue.REQUEST, ""))) {
                result = journal.getString("result", ClipboardRescue.UNKNOWN);
            } else if (journal.edit().putString(ClipboardRescue.REQUEST, request)
                    .putString("result", ClipboardRescue.UNKNOWN).commit()) {
                // Mark this request before touching the database. Replaying
                // the same broadcast after a crash must not delete a second row.
                result = ClipboardRescue.deleteLatest(context);
                journal.edit().putString("result", result).commit();
            } else result = ClipboardRescue.ERROR;
        } catch (Throwable error) {
            h.module.log("ClipboardRescue 1.3.6: database rescue failed", error);
        } finally {
            try {
                reply.setResult(ClipboardRescue.RESULT, result, null);
                reply.finish();
            } finally {
                if (ClipboardRescue.DELETED.equals(result)) {
                    // The result is delivered first. Exiting then releases all
                    // old DAO/UI caches without reading or rendering the item.
                    new Handler(Looper.getMainLooper()).postDelayed(() -> Process.killProcess(Process.myPid()), 750);
                } else busy.set(false);
            }
        }
    }
}
