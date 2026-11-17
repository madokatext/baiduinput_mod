# 九键用户词时间评分开关（1.4.0）

设置项：**取消九键用户词的时间扣分**，键为 `nine_key_no_user_word_time_decay`，默认关闭。与候选栏滚动开关独立，保存失败时恢复上次已保存的控件值。首次升级安装后重启输入法进程；之后切换开关，从下一次输入或候选刷新生效。

## 改变的行为

原版用户词评分使用 `age = max(now - T, 0)` 计算时间惩罚，其中 T 是该词保存的最近学习时间。开启后，在九键拼音的当前同步内核调用期间，将评分函数本次接收的 `now` 参数改为该词的 T，使 `age` 为零，再调用原评分函数。

这保留了原来的有效频次选择、拼音匹配、输入类别修正及后续候选融合。不自行重写公式、不重排 Java 候选索引，因此原候选读取和选词命中索引保持对应。其他因素仍能改变候选顺序，不能保证固定第一名。

功能不写用户词的时间、主频次、分项频次、标志或维护计数，不改全局/共享当前时间。正常学习更新和自动维护照常执行；保留记录仍可能频次折半，落选记录仍可能被删除。取消评分时间扣分不能自动召回已经淘汰的用户记录。

## 九键范围和调用生命周期

- 使用现有适配的 `KeyMap.c0` / `InputStatMac` 条件：`d == 1`、`g == 0`、`f() == 0x21`，同时要求远程开关已开启。
- 在 `IptCoreInterface` 的 native 方法入口读取状态，覆盖按键、选词、候选读取、网络回调及刷新等入口。它们在原内核任务实际执行的线程上进入 native，不把先前 UI 触摸状态缓存成进程级开关。
- 独立的 API 100 Hooker 与已有删键 Hook 共存，不修改通用 `HookSupport.Router`，不替换或跳过原 native 方法。
- JNI 保存当前线程原 TLS 值，返回或抛异常后恢复。嵌套调用若不满足开关/九键条件，会暂时遮蔽外层的开启状态，返回后再恢复；不会把开启状态留给后续调用。
- 无 Java 入口范围的 native 后台线程默认关闭，不从另一线程继承开关。此功能覆盖已恢复的同步拼音评分路径，不声称覆盖未恢复的独立 native 异步任务。

## 适配和拒绝不匹配内核

原版：百度输入法 13.3.6.52（1149），`arm64-v8a/libiptcore.so`，SHA-256：

```text
472dd4e1aff4ad226821b5b781d668455b835b626bde917ce14f53dfdf6ab7db
```

首次符合条件的调用只读核对安装目录下的库，或 base/split APK 中的对应库。JNI 再从 `dl_iterate_phdr` 定位唯一的 `libiptcore.so` 加载基址，要求三处函数地址均属于可读可执行段，并逐字节比较三段完整原函数代码。`scorer_profile.h` 保存比对字节；只有同时匹配才进行 Hook，地址始终加运行时加载基址。

| 原版相对地址 | 参数 | 评分路径 | 校验长度 |
| --- | --- | --- | ---: |
| `0x25241c` | `(word, category, now)` | 主频次减去已匹配分项后的剩余频次 | 404 字节 |
| `0x259100` | `(word, category, entry, now)` | 匹配拼音分项的有效频次 | 300 字节 |
| `0x25c1b4` | `(word, category, now)` | 拼音组词搜索的用户词评分 | 296 字节 |

`word+4` 低 5 位给出词长 L，T 通过 `memcpy` 只读取得 `word+8+2L` 的 32 位值，避免未对齐类型解引用。只替换这三个函数的时间形参，原函数继续处理全部频次、标志和输入类别规则。

仅当三个 Hook 均成功，native `ready` 原子标志才开启。部分安装失败时回滚之前的 Hook，且保持 `ready=false`；即使某个回滚未成功，代理也只透传原参数。其他已安装功能不依赖本功能安装结果。

开关默认关闭时不加载本功能的 JNI 或 ShadowHook。安装成功后切换开关仅控制 TLS 参数覆盖，避免每次输入或切换开关时重写可执行内存。进程退出后由系统释放。

## 构建和依赖

使用固定版 [ShadowHook 1.1.1](https://github.com/bytedance/android-inline-hook/releases/tag/v1.1.1) 的 `shadowhook_hook_func_addr` 函数地址 Hook，初始化后确认当前是 unique 模式，再安装三个评分 Hook。如果其他 SDK 已先初始化为 shared 模式，则禁用本功能，避免把 shared 模式的代理按 unique 模式直接调用。集成方式依据 [上游手册](https://github.com/bytedance/android-inline-hook/blob/v1.1.1/doc/manual.md)。上游 native 库通过 Maven Central/Prefab 获取，不在仓库中携带百度原库或用户词库。

首次构建的 2.0.1 AAR 元数据要求 `minCompileSdk=37`，与项目 SDK 35 不兼容，导致 `checkReleaseAarMetadata` 失败。修复固定为 1.1.1，其 AAR 元数据、Prefab 头文件和两个 ARM64 库已经只读核对：不要求 SDK 37，使用的函数地址 Hook API 存在，两库 ELF `PT_LOAD` 对齐均为 16384。保持 SDK 35、AGP 8.7.3、Gradle 8.9 和目标 Android 15 不变，不忽略依赖检查。

LSPosed 模块 ClassLoader 使用 `APK!/lib/<ABI>` 作为 native 搜索路径，因此 APK 使用未压缩 native 库并通过 `System.loadLibrary` 加载。保留 ShadowHook 的两个依赖库，供其初始化时加载辅助库。JNI 使用 NDK 27.2.12479018、CMake 3.22.1 和 16 KiB 页对齐。

## 日志与验证范围

- `Hook group installed: nine-key user-word time scope`：Java 范围 Hook 注册完成，尚不代表 JNI 已安装或评分已命中。
- `NineKeyMemory 1.4.0: three verified user-word scorers installed`：运行中三处代码匹配并成功安装。
- `NineKeyMemory 1.4.0: reached a scoped user-word scorer; age override active`：首次实际命中有权限的时间参数覆盖。日志不含用户词内容。
- `NineKeyMemory 1.4.0 disabled; keeping original scoring`：不兼容或安装失败，查看同条异常的原因。更换内核后需重新适配并重启。

本次只做静态源码、原版反汇编、ABI、依赖产物和配置复核，按用户要求不运行测试、本地 Gradle 或设备验证。远端工作流只有原有 APK 编译步骤，没有新增测试任务。Hook 安装与日志仍不能替代实际设备效果验证。
