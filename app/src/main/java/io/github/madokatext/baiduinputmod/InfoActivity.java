package io.github.madokatext.baiduinputmod;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;

public final class InfoActivity extends Activity {
    private SettingsApplication settings;
    private Switch candidate;
    private SeekBar strength, duration;
    private Button resetInertia;
    private TextView status, strengthLabel, durationLabel;
    private boolean rendering, adjusting, savedEnabled = true;
    private int savedStrength = ModuleSettings.DEFAULT_STRENGTH, savedDuration = ModuleSettings.DEFAULT_DURATION;
    private final Runnable refresh = this::renderSetting;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        settings = (SettingsApplication) getApplication();
        int padding = Math.round(24 * getResources().getDisplayMetrics().density);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(padding, padding, padding, padding);
        content.addView(text("百度输入法 Mod 设置", 24));
        content.addView(text("1.3.1 · Android 15 · LSPosed API 100\n", 14));
        candidate = new Switch(this);
        candidate.setText("顶部候选栏跟手滚动"); candidate.setTextSize(18);
        candidate.setPadding(0, padding / 2, 0, padding / 2);
        content.addView(candidate);
        content.addView(text("九键拼音下，顶部汉字候选栏随手指移动，松手后按滑动速度减速滑行，到边界停止，再次触摸可打断惯性，并防止拖动误选词。关闭后恢复输入法原有行为。左侧拼音列表保持原样。", 16));
        strengthLabel = text("", 18); strengthLabel.setPadding(0, padding, 0, 0);
        content.addView(strengthLabel);
        strength = new SeekBar(this); strength.setMax(ModuleSettings.MAX_STRENGTH); strength.setKeyProgressIncrement(10);
        content.addView(strength);
        content.addView(text("范围 0%–200%，默认 60%。数值越大，松手后的初速度越大、滑行越远；设为 0% 时松手即停。", 14));
        durationLabel = text("", 18); durationLabel.setPadding(0, padding / 2, 0, 0);
        content.addView(durationLabel);
        duration = new SeekBar(this); duration.setMax((ModuleSettings.MAX_DURATION - ModuleSettings.MIN_DURATION) / 50);
        duration.setKeyProgressIncrement(1); content.addView(duration);
        content.addView(text("范围 100–1500 毫秒，默认 450 毫秒。数值越大，减速越缓、滑行越久；到达边界时提前停止。", 14));
        resetInertia = new Button(this); resetInertia.setText("恢复默认惯性"); content.addView(resetInertia);
        status = text("", 14); status.setPadding(0, padding / 2, 0, padding);
        content.addView(status);
        content.addView(text("使用说明\n\n1. 在 LSPosed 中启用本模块，作用域勾选百度输入法。\n2. 首次安装或更新模块后，强行停止百度输入法再打开，或重启设备。\n3. 滑块松手后自动保存，开关和惯性参数从下一次候选栏触摸开始生效。关闭开关也会停止正在进行的惯性滑行。\n\n其他功能\n\n剪贴板容量、文本长度和常用语编辑上限调整为 100000000；保留编辑菜单顺序、标签布局和颜色透明度调整。\n\n各功能的加载结果可在 LSPosed 日志中查看。", 16));
        ScrollView scroll = new ScrollView(this); scroll.addView(content); setContentView(scroll);
        candidate.setOnCheckedChangeListener((button, checked) -> {
            if (!rendering) saveSettings();
        });
        SeekBar.OnSeekBarChangeListener slider = new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar bar, int value, boolean fromUser) {
                updateLabels();
                // Keyboard and accessibility adjustments have no drag lifecycle.
                if (fromUser && !adjusting && !rendering) saveSettings();
            }
            @Override public void onStartTrackingTouch(SeekBar bar) { adjusting = true; }
            @Override public void onStopTrackingTouch(SeekBar bar) { adjusting = false; saveSettings(); }
        };
        strength.setOnSeekBarChangeListener(slider); duration.setOnSeekBarChangeListener(slider);
        resetInertia.setOnClickListener(button -> {
            rendering = true;
            strength.setProgress(ModuleSettings.DEFAULT_STRENGTH);
            duration.setProgress((ModuleSettings.DEFAULT_DURATION - ModuleSettings.MIN_DURATION) / 50);
            rendering = false;
            saveSettings();
        });
        settings.listen(refresh); renderSetting();
    }
    private TextView text(String value, int size) {
        TextView text = new TextView(this); text.setText(value); text.setTextSize(size); return text;
    }
    private void renderSetting() {
        if (isDestroyed()) return;
        SharedPreferences prefs = settings.preferences();
        try {
            if (prefs != null) {
                boolean enabled = prefs.getBoolean(ModuleSettings.CANDIDATE_SCROLL, true);
                int power = ModuleSettings.strength(prefs.getInt(ModuleSettings.INERTIA_STRENGTH, ModuleSettings.DEFAULT_STRENGTH));
                int time = ModuleSettings.duration(prefs.getInt(ModuleSettings.INERTIA_DURATION, ModuleSettings.DEFAULT_DURATION));
                savedEnabled = enabled; savedStrength = power; savedDuration = time;
            }
            restoreControls();
            status.setText(prefs == null ? "尚未连接 LSPosed。启用本模块后，重新打开此页面即可设置。"
                    : "设置已连接 LSPosed，修改后从下次触摸开始生效。");
        } catch (RuntimeException error) {
            settings.invalidateConnection(); restoreControls();
            status.setText("读取设置失败，请重新打开此页面。");
        }
    }
    private int durationValue() { return ModuleSettings.MIN_DURATION + duration.getProgress() * 50; }
    private void updateLabels() {
        strengthLabel.setText("惯性强度：" + strength.getProgress() + "%");
        durationLabel.setText("减速时长：" + durationValue() + " 毫秒");
        strength.setContentDescription(strengthLabel.getText());
        duration.setContentDescription(durationLabel.getText());
    }
    private void updateEnabled() {
        boolean connected = settings.preferences() != null;
        candidate.setEnabled(connected);
        strength.setEnabled(connected && candidate.isChecked());
        duration.setEnabled(connected && candidate.isChecked() && strength.getProgress() > 0);
        resetInertia.setEnabled(connected && candidate.isChecked());
    }
    private void restoreControls() {
        rendering = true;
        try {
            candidate.setChecked(savedEnabled); strength.setProgress(savedStrength);
            duration.setProgress((savedDuration - ModuleSettings.MIN_DURATION) / 50);
            updateLabels(); updateEnabled();
        } finally { rendering = false; }
    }
    private void saveSettings() {
        if (rendering) return;
        SharedPreferences prefs = settings.preferences();
        try {
            boolean enabled = candidate.isChecked();
            int power = strength.getProgress(), time = durationValue();
            if (prefs == null || !prefs.edit().putBoolean(ModuleSettings.CANDIDATE_SCROLL, enabled)
                    .putInt(ModuleSettings.INERTIA_STRENGTH, power).putInt(ModuleSettings.INERTIA_DURATION, time).commit()) {
                throw new IllegalStateException("LSPosed settings unavailable");
            }
            savedEnabled = enabled; savedStrength = power; savedDuration = time;
            updateEnabled();
            status.setText(enabled ? "已保存，下次触摸生效。" : "已关闭，下次触摸使用输入法原有行为。");
        } catch (RuntimeException error) {
            settings.invalidateConnection(); restoreControls();
            status.setText("保存失败，已恢复上次设置。请确认 LSPosed 已启用本模块，强行停止本模块后重新打开设置。");
        }
    }
    @Override protected void onDestroy() { settings.unlisten(refresh); super.onDestroy(); }
}
