# 百度输入法 Mod 对齐模块

面向 **Android 15（SDK 35）和 LSPosed modern API 100**，作用域固定为 **`com.baidu.input`**。模块依据本次提供的 `origin`、`mod` 四组 smali ZIP 和 `resources.arsc` 构建。

实现覆盖这组材料中的 17 个功能类与资源表差异。补充提供的 origin APK 为 **13.3.6.52（versionCode 1149）**，包名、资源表指纹及 17 个目标类定义已通过静态读取确认。**没有运行设备测试，不能将源码覆盖视为已验证的运行时完全一致。** 尚无完整 mod APK，无法比较其余 DEX、Manifest、assets 和 native 库是否另有差异。

**1.1.2 修复九键模式下顶部横向汉字候选栏的弹簧效果。** 同时处理 `CandHandler.S2` 中的新旧滚动路径：位移直接跟随手指、首个移动事件也生效、到达内容边界后停止，松手不再回弹、对齐候选项或惯性滑动。保留候选点击选择与原有触摸清理流程。新功能覆盖 `CandHandler` 和 `SlidingView`，当前共加载 **19 个类**。实现依据及最新日志分析见 [`docs/candidate-scroll.md`](docs/candidate-scroll.md)。

左侧拼音列表恢复原版行为：移除 1.1.0/1.1.1 错误添加到 `SubList`、`MainSubListWrapper` 和 `KeyMap` 的三个覆盖类。`BaiduInputModScroll` 诊断日志也改为记录顶部候选栏的实际触摸路径。

**1.0.2 修复 ART 类探测导致的补丁安装失败，并调整资源附加的线程和锁。** 删除会主动加载原版类的 `findLoadedClass` 检查；内存 DEX 直接关联应用 ClassLoader；资源附加只在主线程执行，不再 Hook `ResourcesManager`，失败资源不重复重试。日志证据与卡死分析的限制见 [`docs/art-loading-failure.md`](docs/art-loading-failure.md)。

1.0.1 已修复补丁资产读取：Android Gradle Plugin 会把 `resources.patch.json.gz` 解压并打包为 `resources.patch.json`；读取器兼容这两种路径，并根据 gzip 文件头判断是否需要解压。初版日志、根因和原始 APK 分析见 [`docs/startup-failure.md`](docs/startup-failure.md)。

## 已覆盖的差异

| 功能 | mod 中的改动 |
| --- | --- |
| 剪贴板容量 | 将相关配置、清理阈值、查询限制和计数显示中的 300 调整为 100000000 |
| 剪贴板文本 | 将相关处理、同步判断、编辑过滤器和字数提示中的 7000 调整为 100000000 |
| 常用语编辑 | 将相关输入过滤器与字数判断中的 3000 调整为 100000000 |
| 编辑控制菜单 | 保留 mod 对相应模式菜单数组顺序的调整 |
| 灵感面板 | 隐藏 ID 为 2 的标签；调整 ID 为 0、1 的标签宽度、间距；保留“我的”标题空格 |
| 颜色及透明度 | 移植 SkinColor、剪贴板面板、底栏及主标签调色代码的修改 |
| 资源文案 | 同步四条剪贴板条数、字数说明；资源表其他编码和排布差异一并保留 |
| 九键模式的顶部汉字候选栏（新增） | 直接跟随触摸位移，边界停止，取消拖动阻尼、回弹、松手对齐和惯性 |

原有 17 个差分类与新增 2 个滚动补丁类的路径、方法和来源 SHA-256 见 [`profile.json`](app/src/main/assets/parity/profile.json)。新增功能使用 `feature` 标识，并记录修改后的 `payloadSha256`。资源值对照见 [`docs/resource-diff.json`](docs/resource-diff.json)。`formatOnly` 中列出的类只是静态零值初始化的反编译写法变化，语义相同。

`MultiDexApplication` 的唯一改动是将父类换成 MT 重签名辅助类 `bin.mt.signature.KillerApplication656`。模块继续运行原签名 origin，不移植这项安装包重签名处理；提供的四个 ZIP 中也没有新增这个辅助类。

## 安装

1. 在 Android 15 上安装能提供 modern API 100 的 LSPosed 和对应 origin 百度输入法。
2. 安装 Actions 产出的模块 APK。
3. 在 LSPosed 中启用“百度输入法 Mod 对齐”，勾选 `com.baidu.input`。
4. 强行停止百度输入法的所有进程后重新打开，或重启设备。
5. LSPosed 日志分别显示 `DEX overlay installed for 19 mod classes` 和 `Resource overlay attached on main thread`，表示 DEX 搜索路径已更新、资源表已实际附加；前一条日志仅代表 DEX 安装步骤，不能单独证明资源生效或所有功能一致。顶部候选栏会另外输出带 `1.1.2`、`down/top`、`move/sliding` 或 `move/legacy` 的 `BaiduInputModScroll` 日志。模块说明页不检测激活状态。

若日志显示版本指纹不匹配、DEX 安装失败或资源附加失败，该次运行没有实现完整对齐。原有云端服务和同步能力仍由 origin/mod 共用的服务端决定。

## GitHub Actions 编译 APK

推送到 `main` 自动触发 [`Build APK`](.github/workflows/build-apk.yml)，也可以在 Actions 页面选择 **Run workflow**。

流水线使用 JDK 17、Gradle 8.9、Android SDK 35、AGP 8.7.3，执行：

```sh
gradle --no-daemon --console=plain :app:assembleRelease
```

`assemblePayload` 会先用 Maven Central 的 `org.smali:smali:2.5.2` 将 `payload/smali` 中的全部 19 个类汇编为资产 DEX，再编译模块。下载名为 `baiduinput-mod-api100-<commit>` 的 artifact，解压得到 `app-release.apk`。

产物使用 CI debug keystore 签名，可以直接安装，不要求仓库配置 secrets。该密钥由 Actions cache 保留；缓存被清除后可能产生新密钥，此时需卸载旧模块后再安装。正式长期分发可另行改为仓库 secrets 管理的固定发布密钥。

工作流不包含测试任务。本次修复没有在本地执行 Gradle、smali 汇编、单元测试或设备测试，也不等待 Actions 编译结果。

## 实现方式

- **API 100**：使用 `XposedModule(XposedInterface, ModuleLoadedParam)`、API 100 注解回调及 `META-INF/xposed` 元数据。固定的官方接口源码通过 `compileOnly` 引用，避免误拉 API 101/102 或把接口打进 APK。
- **DEX**：在目标包的 `onPackageLoaded` 中，使用 Android 15 的内存 `DexFile` 构造器直接关联应用 ClassLoader，然后把对应 `Element` 前置到应用的 `dexElements`。不创建供移植元素的临时 ClassLoader，不启动其后台类校验，不在安装前探测目标类。类由 origin 的应用 ClassLoader 定义，以保留私有成员、包可见成员和协程内部类之间的访问关系。保留 mod 方法的完整实现，包括分支、构造函数和协程逻辑。
- **资源**：读取已安装 origin APK 的资源表，按 COPY/ADD 差分重建 mod 表；输入和输出都校验 SHA-256。借助 Android `ResourcesLoader`、`ResourcesProvider` 和内存文件加载；XML、TypedArray、主题及配置资源均通过 Android 资源解析路径获取值。表中引用的文件从已安装 APK 或 split APK 提供。在 `Application.attach` 和 Context 资源获取边界附加，资源变更在主线程串行完成；工作线程请求只排队、不等待主线程。新建后台 Context 的资源在队列执行前可能仍返回原始值。
- **兼容范围**：资源指纹固定到本次 origin；DEX 前置依赖 Android 15 的 `BaseDexClassLoader.pathList.dexElements` 及内存 `DexFile` 构造器。其他模块的提前类加载或修改 class loader 可能影响注入，已经定义的原版类不能通过 DEX 前置替换。不使用 ART 的 `findLoadedClass` 作为只读检查，因为它可能主动加载类。
- **作用域**：只处理 `com.baidu.input`，覆盖该包加载的各进程；不会更改安装 APK 或应用签名。补丁在进程内生效，禁用模块并重启输入法后恢复 origin 代码与资源；使用期间产生的输入法数据仍然保留。

本项目的 API 100 源码固定在官方 [`libxposed/api` 的 `55efdf9d159195261d7326e9e125965a90025a12`](https://github.com/libxposed/api/tree/55efdf9d159195261d7326e9e125965a90025a12)，不是早期 `100` tag 的 `XposedContext` 构造接口。资源加载接口依据 [Android 15 ResourcesProvider 实现](https://github.com/aosp-mirror/platform_frameworks_base/blob/android-15.0.0_r1/core/java/android/content/res/loader/ResourcesProvider.java)。

## 从新材料导入

在安装 Python 3 的电脑上，使用空的新工作副本或先移除旧的 `payload/smali` 后执行：

```sh
python tools/import_payload.py --origin /path/to/origin --mod /path/to/mod
```

这是源材料差分导入工具，不运行测试或编译。它会重新生成 smali 补丁、资源差分和指纹清单，并调用 `tools/patch_candidate_scroll.py` 重新应用九键模式的顶部汉字候选栏滚动改动，同时移除旧版三个左侧列表覆盖类。仅重建这项功能时可运行 `python tools/patch_candidate_scroll.py --origin /path/to/origin --mod /path/to/mod`。更换目标版本后，需要重新确认差异含义与设备兼容性；生成器遇到方法或指令结构不符会停止。

第三方来源与许可说明见 [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md)。
