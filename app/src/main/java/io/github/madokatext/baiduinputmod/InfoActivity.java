package io.github.madokatext.baiduinputmod;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.ViewConfiguration;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;

public final class InfoActivity extends Activity {
    private SettingsApplication settings;
    private Switch candidate;
    private SeekBar threshold, strength, duration;
    private Button resetThreshold, resetInertia;
    private TextView status, thresholdLabel, strengthLabel, durationLabel;
    private boolean rendering, adjusting, savedEnabled = true;
    private int savedThreshold = ModuleSettings.DEFAULT_DRAG_THRESHOLD;
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
        content.addView(text("1.3.4 · Android 15 · LSPosed API 100\n", 14));
        candidate = new Switch(this);
        candidate.setText("顶部候选栏跟手滚动"); candidate.setTextSize(18);
        candidate.setPadding(0, padding / 2, 0, padding / 2);
        content.addView(candidate);
        content.addView(text("九键拼音下，顶部汉字候选栏随手指左右移动，松手后按滑动速度减速滑行，到边界停止，再次触摸可打断惯性，并防止横向拖动误选词。横向位移超过起始阈值且以左右移动为主时才开始滚动；点击时的轻微抖动和上下移动保留原候选。关闭后恢复输入法原有行为。左侧拼音列表保持原样。", 16));
        thresholdLabel = text("", 18); thresholdLabel.setPadding(0, padding, 0, 0);
        content.addView(thresholdLabel);
        threshold = new SeekBar(this); threshold.setMax(ModuleSettings.MAX_DRAG_THRESHOLD);
        threshold.setKeyProgressIncrement(5); content.addView(threshold);
        content.addView(text("范围 0%–300%，默认 100%（系统默认）。数值越小越容易开始左右滑动，越大越能容忍点击抖动；0% 最灵敏。以向下移动为主时仍保留选词。", 14));
        resetThreshold = new Button(this); resetThreshold.setText("恢复默认起始阈值"); content.addView(resetThreshold);
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
        content.addView(text("使用说明\n\n1. 在 LSPosed 中启用本模块，作用域勾选百度输入法。\n2. 首次安装或更新模块后，强行停止百度输入法再打开，或重启设备。\n3. 滑块松手后自动保存，开关、起始阈值和惯性参数从下一次候选栏触摸开始生效。关闭开关也会停止正在进行的惯性滑行。\n\n其他功能\n\n剪贴板容量、文本长度和常用语编辑上限调整为 100000000；保留编辑菜单顺序、标签布局和颜色透明度调整。\n\n各功能的加载结果可在 LSPosed 日志中查看。", 16));
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
        threshold.setOnSeekBarChangeListener(slider);
        strength.setOnSeekBarChangeListener(slider); duration.setOnSeekBarChangeListener(slider);
        resetThreshold.setOnClickListener(button -> {
            rendering = true;
            threshold.setProgress(ModuleSettings.DEFAULT_DRAG_THRESHOLD);
            rendering = false;
            saveSettings();
        });
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
                int distance = ModuleSettings.dragThreshold(prefs.getInt(ModuleSettings.DRAG_THRESHOLD, ModuleSettings.DEFAULT_DRAG_THRESHOLD));
                int power = ModuleSettings.strength(prefs.getInt(ModuleSettings.INERTIA_STRENGTH, ModuleSettings.DEFAULT_STRENGTH));
                int time = ModuleSettings.duration(prefs.getInt(ModuleSettings.INERTIA_DURATION, ModuleSettings.DEFAULT_DURATION));
                savedEnabled = enabled; savedThreshold = distance; savedStrength = power; savedDuration = time;
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
        int percent = threshold.getProgress();
        int pixels = ModuleSettings.dragThresholdPixels(ViewConfiguration.get(this).getScaledTouchSlop(), percent);
        thresholdLabel.setText("横向滑动起始阈值：" + percent + "%（" + pixels + " 像素"
                + (percent == ModuleSettings.DEFAULT_DRAG_THRESHOLD ? "，系统默认" : "") + "）");
        threshold.setContentDescription(thresholdLabel.getText());
        strengthLabel.setText("惯性强度：" + strength.getProgress() + "%");
        durationLabel.setText("减速时长：" + durationValue() + " 毫秒");
        strength.setContentDescription(strengthLabel.getText());
        duration.setContentDescription(durationLabel.getText());
    }
    private void updateEnabled() {
        boolean connected = settings.preferences() != null;
        candidate.setEnabled(connected);
        threshold.setEnabled(connected && candidate.isChecked());
        resetThreshold.setEnabled(connected && candidate.isChecked());
        strength.setEnabled(connected && candidate.isChecked());
        duration.setEnabled(connected && candidate.isChecked() && strength.getProgress() > 0);
        resetInertia.setEnabled(connected && candidate.isChecked());
    }
    private void restoreControls() {
        rendering = true;
        try {
            candidate.setChecked(savedEnabled); threshold.setProgress(savedThreshold);
            strength.setProgress(savedStrength);
            duration.setProgress((savedDuration - ModuleSettings.MIN_DURATION) / 50);
            updateLabels(); updateEnabled();
        } finally { rendering = false; }
    }
    private void saveSettings() {
        if (rendering) return;
        SharedPreferences prefs = settings.preferences();
        try {
            boolean enabled = candidate.isChecked();
            int distance = threshold.getProgress(), power = strength.getProgress(), time = durationValue();
            if (prefs == null || !prefs.edit().putBoolean(ModuleSettings.CANDIDATE_SCROLL, enabled)
                    .putInt(ModuleSettings.DRAG_THRESHOLD, distance)
                    .putInt(ModuleSettings.INERTIA_STRENGTH, power).putInt(ModuleSettings.INERTIA_DURATION, time).commit()) {
                throw new IllegalStateException("LSPosed settings unavailable");
            }
            savedEnabled = enabled; savedThreshold = distance; savedStrength = power; savedDuration = time;
            updateEnabled();
            status.setText(enabled ? "已保存，下次触摸生效。" : "已关闭，下次触摸使用输入法原有行为。");
        } catch (RuntimeException error) {
            settings.invalidateConnection(); restoreControls();
            status.setText("保存失败，已恢复上次设置。请确认 LSPosed 已启用本模块，强行停止本模块后重新打开设置。");
        }
    }
    @Override protected void onDestroy() { settings.unlisten(refresh); super.onDestroy(); }
}
