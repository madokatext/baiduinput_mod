# 1.0.0 启动失败与 1.0.1 修复

用户提供的 `Log_2026-9-10_09-00-22.txt` 显示 LSPosed 已在目标进程调用模块。

```text
09:00:07.467 Loading xposed for com.baidu.input/10454
09:00:07.539 Parity module disabled for com.baidu.input: Missing APK entry: assets/parity/resources.patch.json.gz
```

同一错误也出现在 `com.baidu.input:media` 和 `com.baidu.input:bdservice_v1`。异常由 `Payload.json` 抛出，调用点是 `ParityModule.onPackageLoaded` 的资源补丁读取步骤。在此之后才会准备并安装 DEX，因此本次失败使全部 17 个类补丁及资源覆盖均未安装。

## 根因

源码中存在 `app/src/main/assets/parity/resources.patch.json.gz`。Android Gradle Plugin 的 `AssetItem.create` 将 `.gz` 资产映射到去掉后缀的路径，`MergedAssetWriter` 使用 `GZIPInputStream` 写入解压后的内容。APK 中应按 `assets/parity/resources.patch.json` 读取普通 JSON。

初版模块直接用 `ZipFile.getEntry` 查找带 `.gz` 的名称，没有适配资产合并规则。这是模块的读取错误。上述日志已证实入口回调执行；报错发生在资源指纹校验和 DEX 替换之前。

官方构建工具源码：

- [AssetItem.java](https://android.googlesource.com/platform/tools/base/+/refs/heads/mirror-goog-studio-main/sdk-common/src/main/java/com/android/ide/common/resources/AssetItem.java)
- [MergedAssetWriter.java](https://android.googlesource.com/platform/tools/base/+/refs/heads/mirror-goog-studio-main/sdk-common/src/main/java/com/android/ide/common/resources/MergedAssetWriter.java)

## 修复

- 读取请求的 JSON 资产时，先查原路径；对于 `.gz` 请求，缺失时再查去掉 `.gz` 的打包路径。
- 使用 `1f 8b` gzip 文件头判断是否需要额外解压，兼容 AGP 生成的普通 JSON 和其他工具保留的 gzip 数据。`ZipFile` 自身已经处理 ZIP 层压缩。
- 保留资源表输入、输出 SHA-256 校验及初始化失败时停止安装补丁的行为。
- 错误日志增加初始化阶段和找不到资产时尝试的路径，便于区分资产读取、资源重建、DEX 准备和 Hook 安装问题。
- 模块版本提升为 `1.0.1`，versionCode 为 `2`。

## 新增原始 APK 的静态分析

文件：`origin/baiduinput_AndroidPhone_1000d.apk`，108316775 字节。

| 项目 | 读取结果 |
| --- | --- |
| 包名 | `com.baidu.input` |
| versionName / versionCode | `13.3.6.52` / `1149` |
| minSdk / targetSdk | `23` / `34` |
| Application | `com.baidu.input.NewImeApplication` |
| AppComponentFactory | `androidx.core.app.CoreComponentFactory` |
| resources.arsc 大小 | 8151276 字节 |
| resources.arsc SHA-256 | `fbe0b708b436d8e0487236f8381f0e898ff41666aaaa74ea89a3a6d41cc54d41` |
| 资源指纹 | 与补丁 sourceSha256 及先前提供的原始资源表一致 |
| DEX 数量 | 7 个 |
| 17 个补丁目标类的定义 | 7 个位于 classes2.dex，7 个位于 classes3.dex，3 个位于 classes4.dex，全部存在 |

最初只提供了前四组 smali。完整 origin APK 新揭示的 classes5.dex 至 classes7.dex 不含这 17 个类的定义；没有对应完整 mod APK，不能由此判断这些额外 DEX 中是否存在其他修改。

本次只读取用户日志、APK ZIP 内容、二进制 Manifest、DEX 类定义表和源码。未运行模块、构建或测试；修复后的设备行为仍需后续运行日志确认。
