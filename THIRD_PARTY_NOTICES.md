# 第三方材料

## libxposed API

`xposed-api/src/main` 来自 [libxposed/api](https://github.com/libxposed/api)，固定提交 `55efdf9d159195261d7326e9e125965a90025a12`。上游 Java 文件保持原样，仅用于编译，运行时接口由 LSPosed 提供。完整 Apache License 2.0 见 [xposed-api/LICENSE](xposed-api/LICENSE)。

## libxposed 设置服务

`xposed-service/src/main/java` 与 `src/main/aidl` 来自 [libxposed/service 的 100 tag](https://github.com/libxposed/service/tree/100)。四个 Java 文件和两个 AIDL 文件保持原样，合并为本项目的独立 Android library；构建配置与 Manifest 由本项目提供。来源指纹见 [UPSTREAM](xposed-service/UPSTREAM)，完整 Apache License 2.0 见 [LICENSE](xposed-service/LICENSE)。这部分用于模块界面与 LSPosed 的设置通信。

## 百度输入法差分依据

方法 Hook 的功能依据是用户提供的 origin/mod smali 与资源对照材料。1.2.0 已删除原百度类源码覆盖、DEX 及二进制资源补丁；历史指纹和四条资源文案差异保存在 docs 中供追溯。原应用与第三方 SDK 权利归各自权利人所有。

## 构建工具

Android Gradle Plugin、Gradle 和 Android SDK 在构建时从相应上游分发源获取，遵循各自许可。1.2.0 不再依赖 smali 汇编器。
