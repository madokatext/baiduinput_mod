# 1.2.0：整个模块迁移到方法 Hook

原来的 17 个 mod 差分类以及 3 个候选栏覆盖类全部移除。APK 不再包含任何百度类 DEX、smali 或二进制资源表补丁。下表对应旧 profile 中每项功能，不通过删掉功能来绕开迁移。

| 旧差分类 / 方法 | 当前 Hook 与边界 |
| --- | --- |
| ClipboardConfig.b/e | b 的返回值至少为 100000000；e 仅调整对应写入分支的参数，原偏好设置实现负责写入 |
| ClipboardDataManagerImpl$safeInsert$1$1.invokeSuspend | 只建立调用作用域；本次清理的 b 返回值在上限不超过 100000000 时映射为原 guard 的 300，以跳过清理；其他状态和数据库操作继续原方法 |
| ClipboardDataManagerImpl.rk/y9 | 在这两次查询调用范围内，将 QueryBuilder 的 limit 从 300 调整为 100000000，第二次查询的 300 - 已选数量也按同样差额调整 |
| BDClipboardManager$startProcess$1.invokeSuspend | 在本次调用中将原 LengthFilter(7000) 参数提高；当原调用因硬编码判断进入 filter、但新过滤器返回 null 时，提供原输入子序列，避免其无条件 toString 引发空指针 |
| ClipboardSubTabView.setCount | 原方法之后调整数量提示与超限颜色；分母同时显示真实的新上限 |
| EditClipboardItemActivity.a/onCreate | 原创建流程内提高 LengthFilter；原格式化调用内仅替换第二个 7000 参数，保留其原文本与样式流程 |
| SkinColor.e/l | 只在这两个方法内修改 ColorUtils.e 的前景 alpha 0x33→0x0d，背景与混色仍用原计算 |
| EditControlManagerDelegate.t | 改 Hook 它调用的 b0；在布局消费前校验完整目标数组形状并交换第 0/4 项，避免只改显示却不改命中位置 |
| ClipboardPanelListView 构造方法 | 原构造后，在相同皮肤分支按资源名称查找 divider / top_divider，清除这两个背景颜色的 alpha |
| 默认常用语 tab.getTitle | 仅对原“常用语”结果补齐原 mod 的十四个空格 |
| TabAdapter.onBindViewHolder | ID 2 提前隐藏；其余保留原绑定和回收流程。ID 0/1 在原宽度基础上增加 16dp；本次调用的 75dp 宽度限制改为 150dp |
| itemDecoration.getItemOffsets | 原计算后将 ID 0/1 的左右间距归零，保留其他间距和其他标签 |
| BottomBarPaletteImpl.c | 原方法调用 ColorUtils.g 时将 alpha 26 改为 13，保留原 Drawable 构造 |
| MainTabPaletteImpl.b | 同上，保留原滤镜、皮肤及 Drawable 路径 |
| EditLazyContentActivity$buildContent$8.onTextChanged | Hook 它的字数提示桥接方法 access$setLimitText，仅改变最大长度参数；定点反优化这个调用点 |
| EditLazyContentActivity.access$buildContent | 在原编辑创建调用期间提高 LengthFilter 参数，初始提示也经过上述桥接方法 |
| ClipboardSyncHelper.c | 建立超限检查范围；其中 rj 查询结果返回临时过滤副本，只保留超过新上限的记录。原判断、异常处理继续运行，数据库与原 DTO 不变 |
| 四条资源字符串 | Resources.getText/getString 与 TypedArray.getText/getString 按 com.baidu.input 的资源名称选择替换文案；不依赖数值资源 ID 或 ARSC 指纹 |
| 三个顶部候选覆盖类 | 改为 CandidateView.onTouchEvent/r0 两处 Hook，详见 candidate-scroll.md |

## 安装与失败隔离

HookSupport 根据精确方法签名解析目标。每组安装失败时卸载本组已添加的 Hook，其他组继续。运行时反射失败会记录并停用对应规则。框架公共方法的参数修改以 ThreadLocal 保存的本次调用范围为条件；after 回调的 finally 在原方法返回或抛异常时恢复范围，避免泄漏到后续调用。

为了使上述“原方法内调用另一个已 Hook 方法”的路径不被 ART 旧内联绕过，仅对已知调用点执行 API 100 deoptimize。未替换应用类，没有安装 DEX 元素或做全应用反优化。

API 100 的服务代码来自 libxposed/service 的 100 tag。官方 Maven Central 当前 metadata 只列出 101.0.0 / 102.0.0，因此将 100 的四个 Java 文件和两个 AIDL 文件作为独立 Android library 随源码构建，避免引入不同版本的设置协议。上游代码与许可原样保留，来源 SHA-256 见 xposed-service/UPSTREAM。

旧 resource-diff.json 中的 413 项仅编码/结构变化不再搬运；四条实际文案差异全部保留。历史源码指纹保存在 legacy-profile.json，仅是文档，不作为执行或打包输入。

## 限制

迁移改善的是对整个类定义和资源表的依赖程度；百度后续混淆重命名或改变目标数据结构仍可能使个别功能失效。不能把成功注册 Hook 表述为任意版本兼容。按用户要求，本次没有运行测试、本地编译或设备验证，也不等待远端构建完成。
