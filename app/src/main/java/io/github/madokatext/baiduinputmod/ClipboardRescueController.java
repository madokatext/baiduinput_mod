package io.github.madokatext.baiduinputmod;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;

/** Application-owned UI state survives activity recreation during a rescue. */
final class ClipboardRescueController {
    private final Context context;
    private final SharedPreferences journal;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArraySet<Runnable> listeners = new CopyOnWriteArraySet<>();
    private String pending, message;
    private boolean running;

    ClipboardRescueController(Context context) {
        this.context = context;
        journal = context.getSharedPreferences("clipboard_rescue_ui", Context.MODE_PRIVATE);
        message = journal.getBoolean("pending", false)
                ? "上次抢救的结果尚未确认，请先检查输入法。再次抢救可能会删除下一条记录。"
                : journal.getString("message", "输入法能启动、打开剪贴板却崩溃时，可在这里移除最新一条内容。");
    }

    boolean running() { return running; }
    boolean uncertain() { return !running && journal.getBoolean("pending", false); }
    String message() { return message; }
    void listen(Runnable listener) { listeners.add(listener); }
    void unlisten(Runnable listener) { listeners.remove(listener); }

    void start() {
        if (running) return;
        String request = UUID.randomUUID().toString();
        if (!journal.edit().putBoolean("pending", true).commit()) {
            message = "无法保存抢救请求，尚未执行删除，请稍后重试。";
            changed();
            return;
        }
        pending = request;
        running = true;
        message = "正在请求输入法后台移除最新内容，请勿重复操作……";
        changed();
        try {
            Intent intent = new Intent(ClipboardRescue.ACTION).setPackage(ClipboardRescue.TARGET)
                    .putExtra(ClipboardRescue.REQUEST, request);
            // The injected receiver requires this app's signature permission.
            // Its ordered result returns directly to this private callback.
            context.sendOrderedBroadcast(intent, null, new BroadcastReceiver() {
                @Override public void onReceive(Context context, Intent intent) {
                    if (!request.equals(pending)) return;
                    finish(getResultCode() == ClipboardRescue.RESULT ? getResultData() : ClipboardRescue.UNAVAILABLE);
                }
            }, main, 0, ClipboardRescue.UNAVAILABLE, null);
            main.postDelayed(() -> {
                if (running && request.equals(pending)) {
                    message = "输入法仍在处理抢救请求，请等待结果，勿再次删除。";
                    changed();
                }
            }, 10000);
            main.postDelayed(() -> {
                if (running && request.equals(pending)) finish(ClipboardRescue.UNKNOWN);
            }, 65000);
        } catch (RuntimeException error) { finish(ClipboardRescue.UNAVAILABLE); }
    }

    private void finish(String result) {
        running = false;
        // Keep accepting a late result for this request until a new request is
        // explicitly made. A timeout must never automatically repeat deletion.
        boolean confirmed = true;
        if (ClipboardRescue.DELETED.equals(result)) {
            message = "已移除最新一条剪贴板内容及其最近使用副本。输入法进程将退出以清除旧缓存，再次调出键盘即可使用。"
                    + "若系统剪贴板仍是原来的超长内容，请先复制一段短文本，避免再次入库。";
        } else if (ClipboardRescue.EMPTY.equals(result)) message = "剪贴板历史和最近使用列表均为空，没有删除任何内容。";
        else if (ClipboardRescue.NO_DATABASE.equals(result)) message = "没有找到剪贴板数据库，没有执行删除。";
        else if (ClipboardRescue.UNSUPPORTED.equals(result)) message = "当前剪贴板数据库版本或结构不兼容，没有执行删除。";
        else if (ClipboardRescue.UNAVAILABLE.equals(result)) {
            confirmed = false;
            message = "未收到抢救功能响应，删除结果未确认。请确认 LSPosed 已启用本模块，升级后先强行停止百度输入法再调出键盘；无需打开剪贴板。确认记录是否已移除后，再决定是否需要再次抢救。";
        }
        else if (ClipboardRescue.BUSY.equals(result)) {
            confirmed = false;
            message = "输入法正在处理另一条抢救请求，请等待原请求的结果，勿连续重复删除。";
        } else if (ClipboardRescue.ERROR.equals(result)) message = "抢救请求未能开始，没有执行删除，请稍后重试。";
        else {
            confirmed = false;
            message = "抢救结果尚未确认。请先检查输入法；不要连续重复操作，以免删除下一条记录。";
        }
        journal.edit().putBoolean("pending", !confirmed).putString("message", message).apply();
        changed();
    }

    private void changed() { for (Runnable listener : listeners) listener.run(); }
}
