package io.github.madokatext.baiduinputmod;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ScrollView;
import android.widget.TextView;

public final class InfoActivity extends Activity {
    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);
        TextView text = new TextView(this);
        int padding = (int) (24 * getResources().getDisplayMetrics().density);
        text.setPadding(padding, padding, padding, padding);
        text.setTextSize(17);
        text.setTextIsSelectable(true);
        text.setText("百度输入法 Mod 对齐\n\n"
                + "Android 15 · LSPosed API 100\n\n"
                + "1. 在 LSPosed 中启用本模块。\n"
                + "2. 作用域勾选百度输入法（com.baidu.input）。\n"
                + "3. 强行停止百度输入法并重新启动，或重启设备。\n\n"
                + "剪贴板容量、文本长度和常用语编辑上限按 mod 调整为 100000000；"
                + "同步应用编辑菜单、标签布局、透明度和资源表差异。\n\n"
                + "1.1.1 修复九键拼音候选列表跟手开关漏启用，以及拖动返回按下点附近时停顿的问题。"
                + "拖动跟随手指，到边界停止，松手即停。\n\n"
                + "本版本仅适配生成补丁时提供的 origin。版本指纹不符时停止加载，原因见 LSPosed 日志。\n\n"
                + "此页面是安装说明，不表示模块已成功注入。请在 LSPosed 日志中查看安装结果。\n\n"
                + "按要求未运行本地编译或测试；实际运行效果尚未验证。\n\n"
                + "项目：github.com/madokatext/baiduinput_mod");
        ScrollView scroll = new ScrollView(this);
        scroll.addView(text);
        setContentView(scroll);
    }
}
