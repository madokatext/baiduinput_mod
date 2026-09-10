package io.github.madokatext.baiduinputmod;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;

public final class InfoActivity extends Activity {
    private SettingsApplication settings;
    private Switch candidate;
    private TextView status;
    private boolean rendering;
    private final Runnable refresh = this::renderSetting;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        settings = (SettingsApplication) getApplication();
        int padding = Math.round(24 * getResources().getDisplayMetrics().density);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(padding, padding, padding, padding);
        content.addView(text("百度输入法 Mod 设置", 24));
        content.addView(text("1.2.1 · Android 15 · LSPosed API 100\n", 14));
        candidate = new Switch(this);
        candidate.setText("顶部候选栏跟手滚动"); candidate.setTextSize(18);
        candidate.setPadding(0, padding / 2, 0, padding / 2);
        content.addView(candidate);
        content.addView(text("九键拼音下，顶部汉字候选栏随手指移动，到边界停止，松手即停，并防止拖动误选词。关闭后恢复输入法原有行为。左侧拼音列表保持原样。", 16));
        status = text("", 14); status.setPadding(0, padding / 2, 0, padding);
        content.addView(status);
        content.addView(text("使用说明\n\n1. 在 LSPosed 中启用本模块，作用域勾选百度输入法。\n2. 首次安装或更新模块后，强行停止百度输入法再打开，或重启设备。\n3. 开关保存成功后，从下一次候选栏触摸开始生效。\n\n其他功能\n\n剪贴板容量、文本长度和常用语编辑上限调整为 100000000；保留编辑菜单顺序、标签布局和颜色透明度调整。\n\n各功能的加载结果可在 LSPosed 日志中查看。", 16));
        ScrollView scroll = new ScrollView(this); scroll.addView(content); setContentView(scroll);
        candidate.setOnCheckedChangeListener((button, checked) -> {
            if (rendering) return;
            SharedPreferences prefs = settings.preferences();
            try {
                if (prefs == null || !prefs.edit().putBoolean(ModuleSettings.CANDIDATE_SCROLL, checked).commit()) {
                    throw new IllegalStateException("LSPosed settings unavailable");
                }
                status.setText(checked ? "已开启，下次触摸生效。" : "已关闭，下次触摸使用输入法原有行为。");
            } catch (RuntimeException error) {
                settings.invalidateConnection();
                rendering = true; candidate.setChecked(!checked); candidate.setEnabled(false); rendering = false;
                status.setText("保存失败。请确认 LSPosed 已启用本模块，强行停止本模块后重新打开设置。");
            }
        });
        settings.listen(refresh); renderSetting();
    }
    private TextView text(String value, int size) {
        TextView text = new TextView(this); text.setText(value); text.setTextSize(size); return text;
    }
    private void renderSetting() {
        if (isDestroyed()) return;
        SharedPreferences prefs = settings.preferences(); rendering = true;
        try {
            candidate.setEnabled(prefs != null);
            candidate.setChecked(prefs != null && prefs.getBoolean(ModuleSettings.CANDIDATE_SCROLL, true));
            status.setText(prefs == null ? "尚未连接 LSPosed。启用本模块后，重新打开此页面即可设置。"
                    : "设置已连接 LSPosed，修改后从下次触摸开始生效。");
        } catch (RuntimeException error) {
            candidate.setEnabled(false); status.setText("读取设置失败，请重新打开此页面。");
        } finally { rendering = false; }
    }
    @Override protected void onDestroy() { settings.unlisten(refresh); super.onDestroy(); }
}
