# 百度输入法 Mod 模块

**1.2.1 修复候选栏 Hook 将 CandidateView 控制对象误当成 Android View、导致功能无法安装的问题。** 延续 1.2.0 的全模块方法 Hook 和“顶部候选栏跟手滚动”开关。面向 Android 15（SDK 35）、LSPosed modern API 100，作用域为 `com.baidu.input`。

所有功能都不再使用整类替换：已删除 20 个 smali 覆盖类、DEX 前置加载器、资源表覆盖器和 smali 汇编任务。模块不会改动应用 ClassLoader、`dexElements`、安装 APK 或应用签名。构建只编译模块与 API 100 设置通信源码。

## 设置与安装

1. 安装 Actions 生成的模块 APK，在 LSPosed 中启用，作用域勾选百度输入法。
2. **首次安装或升级模块后，强行停止百度输入法所有进程再打开，或重启设备。** 已运行进程无法自行卸载旧版本的整类覆盖。
3. 打开模块的设置界面，调整“顶部候选栏跟手滚动”。首次连接时默认开启，关闭后使用输入法原有触摸行为。未连接 LSPosed 时开关不可操作；不会把未保存的本地值显示为已生效。
4. 设置通过 LSPosed API 100 的远程 preferences 保存。输入法在每次 DOWN 时读取；修改从下一次手势生效，进行中的手势仍完成清理。

这项开关仅控制九键模式的**顶部横向汉字候选栏**：跟手移动、边界停止、松手即停和拖动防误选。左侧拼音列表使用百度原版行为。其他 Mod 功能保持启用。

## 功能与 Hook 范围

| 功能 | 1.2.0 实现 |
| --- | --- |
| 剪贴板容量 | 调整配置返回值、配置写入参数及剪贴板查询的数量限制到 100000000；保留原协程和数据库操作 |
| 剪贴板文本 | 仅在剪贴板处理与编辑调用期间提高 LengthFilter 上限；同步超限检查使用过滤后的临时查询结果，不修改数据库对象 |
| 常用语编辑 | 提高指定编辑流程的 LengthFilter 和字数提示上限到 100000000 |
| 编辑菜单 | 在原菜单布局方法读取数组之前调整目标数组顺序，保留原布局及点击命中计算 |
| 标签布局 | 隐藏 ID 2；ID 0、1 增加 16dp 宽度并取消左右间距；未选中标题宽度上限提高到 150dp；保留常用语标题空格 |
| 颜色透明度 | 在原调色方法的调用范围内调整透明度参数，保留皮肤与日夜模式计算；修改两个剪贴板分隔线的背景透明度 |
| 四条资源文案 | 按资源名称处理 Resources / TypedArray 的字符串读取；无需完整资源表或固定数值 ID |
| 顶部候选栏 | 仅 Hook `CandidateView.onTouchEvent(MotionEvent)` 与 `r0()`；普通点击保留原流程，拖动调用原候选窗口布局或旧版像素移动方法 |

迁移依据及旧功能逐项对应见 [方法 Hook 迁移说明](docs/hook-migration.md)。候选栏手势细节见 [候选栏说明](docs/candidate-scroll.md)。

## 兼容策略

- 不再以整张资源表 SHA-256 作为全模块加载条件。各功能独立安装，安装失败回滚该组已注册的 Hook，并在日志中说明原因。
- 方法按类名、方法名、参数和返回类型解析；关键字段检查类型。每个手势的状态放在模块自己的弱引用映射中，不给百度原类增加字段。
- 使用系统方法的 Hook 只在指定百度方法的本次调用范围内调整参数；线程上下文在返回或异常时恢复。已知可能内联的调用点采用 API 100 的定点反优化。
- 适配依据仍是用户提供的百度输入法 **13.3.6.52（1149）** 源材料。改用 Hook 降低了对完整类实现和资源表的耦合，**不保证未来任意版本自动兼容**：若混淆名、字段或语义改变，仍需更新对应适配。

日志以 `Hook group installed:`、`Hook group unavailable; keeping app behavior:` 区分各功能安装结果；调用时发现不兼容会输出 `Hook disabled after incompatible call:`。候选栏额外输出最多十二条不含候选内容的 `CandidateScroll 1.2.1` 日志，包括触摸入口的开关/九键状态、顶部 DOWN 捕获结果和拖动释放结果。安装日志仅表示 Hook 注册完成，不能代替设备效果验证。

## GitHub Actions 构建

推送到 `main` 自动触发 [Build APK](.github/workflows/build-apk.yml)，也支持手动触发。流水线使用 JDK 17、Gradle 8.9、Android SDK 35、AGP 8.7.3，运行：

```sh
gradle --no-daemon --console=plain :app:assembleRelease
```

下载 `baiduinput-mod-api100-<commit>` artifact，解压得到 `app-release.apk`。产物使用 CI debug keystore 签名，可直接安装，不需要仓库 secrets。密钥由 Actions cache 保存；缓存丢失产生新密钥时需卸载旧模块后安装。

API 接口以 `compileOnly` 依赖引用。API 100 的官方设置服务 Java / AIDL 源码固定在 `xposed-service` 中，避免依赖 Maven Central 当前仅发布的 101 / 102 版本。来源与许可见 [第三方材料](THIRD_PARTY_NOTICES.md)。

按用户要求，本次不运行测试、本地 Gradle 或设备验证，推送后只确认工作流启动，不等待构建结束。

## 历史材料

[旧补丁指纹清单](docs/legacy-profile.json) 与 [资源值差异](docs/resource-diff.json) 仅用于说明旧版本来源，不作为运行时资产。`docs/startup-failure.md` 和 `docs/art-loading-failure.md` 记录 1.0.x 的旧加载器问题；其中的实现已被移除。原有 smali 生成脚本已删除，后续适配直接维护方法 Hook。
