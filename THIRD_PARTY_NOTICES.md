# 第三方材料

## libxposed API

`xposed-api/src/main` 来自 https://github.com/libxposed/api ，固定提交：

`55efdf9d159195261d7326e9e125965a90025a12`

上游 Java 文件保持原样，模块构建配置为本项目编写。源码遵循 Apache License 2.0，完整文本见 [`xposed-api/LICENSE`](xposed-api/LICENSE)。这部分源码仅用于编译，运行时接口由 LSPosed 提供。

## 百度输入法差分材料

`payload/smali` 以及 `app/src/main/assets/parity` 中的差分来自本次用户提供的 origin/mod 对照材料，用于复现指定版本的功能差异。原应用及第三方 SDK 的权利归各自权利人所有；本仓库没有为这些原始材料重新授予许可，也不声称拥有原应用源码。

## 构建工具

smali、Android Gradle Plugin、Gradle 和 Android SDK 在构建时从相应上游分发源获取，遵循各自许可。smali 用作构建时汇编器，不打包到模块 APK。
