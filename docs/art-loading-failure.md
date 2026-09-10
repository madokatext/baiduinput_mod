# 1.0.1 的 ART 类探测错误与 1.0.2 修复

历史记录：本文中的 DEX 和资源表覆盖器已在 1.2.0 移除，当前实现见 [方法 Hook 迁移说明](hook-migration.md)。

## 日志证据

用户提供的 `Log_2026-9-10_09-15-49.txt`：

| 时间 / 行号 | 事件 |
| --- | --- |
| 09:14:32.433 / 53573 | 设置界面强行停止 `com.baidu.input`，随后三个旧进程被终止 |
| 09:14:41.784 / 63171 | 新主进程 PID 23187 启动 |
| 09:14:42.025 / 63349 | `Parity module disabled ... at preparing patch DEX: Patch class already loaded: ...ClipboardConfig` |
| 09:14:44.556 / 71355 | 新 `:media` 进程发生相同错误 |
| 09:15:14.148 / 97195 | 新 `:bdservice_v1` 进程发生相同错误 |

这次已经通过资产读取和资源表重建。异常来自 `DexOverlay` 的安装前检查；发生时还没有安装资源 Hook 和补丁 DEX。旧版“停止所有进程再重启”的错误提示不正确：日志已经记录了用户完成强停和新进程启动。

## 原因

旧代码依次执行 `ClassLoader.findLoadedClass`，把非空结果解释为“目标类早已加载”。Android 15 ART 的实现先查已加载类表，但找不到时还会调用 `FindClassInPathClassLoader` / `FindClassInBaseDexClassLoader` 尝试加载类。这不是无副作用的只读探测。

因此，模块自己的检查能够先定义原版 `ClipboardConfig`，随后又把返回值当作冲突并停止安装。在每个新进程中，检查都会从相同的第一个类开始失败。

官方 Android 15 源码：

- [VMClassLoader_findLoadedClass](https://android.googlesource.com/platform/art/+/refs/tags/android-15.0.0_r1/runtime/native/java_lang_VMClassLoader.cc)：已加载查询之后的加载快路径。
- [DexPathList](https://android.googlesource.com/platform/libcore/+/refs/tags/android-15.0.0_r1/dalvik/src/main/java/dalvik/system/DexPathList.java)：`initByteBufferDexPath` 的内存 DEX 构造器和独立的后台校验步骤。
- [DexFile](https://android.googlesource.com/platform/libcore/+/refs/tags/android-15.0.0_r1/dalvik/src/main/java/dalvik/system/DexFile.java)：`DexFile(ByteBuffer[], ClassLoader, DexPathList.Element[])`。

## 修改

1. 完全移除安装前对目标类的 `findLoadedClass` 调用，不用 `Class.forName` 或 `loadClass` 代替探测。
2. 内存 DEX 从创建时就关联应用 ClassLoader。直接构造 `DexFile` 和 `Element`，避免临时 `InMemoryDexClassLoader` 在移植元素之前启动后台类校验。
3. 在初始包回调中前置 DEX，取消不能约束 ART 类加载的 Java ClassLoader 监视器；仍检查 `dexElements` 是否被其他修改替换。安装前失败时关闭未使用的 DEX。
4. 移除 `ResourcesManager` 的全局 Hook，只在 Application / Context 边界触发资源附加。工作线程仅向主线程排队，不阻塞等待。资源状态锁只保护短小的状态读写，调用 Android 资源系统时不持有模块锁。
5. 同一 Resources 附加失败后不再在每次 `getResources()` 时重试，避免持续异常导致重复耗时。
6. 分开记录 DEX 安装和资源实际附加结果，并记录耗时；失败清理保留原始异常，不让清理错误覆盖它。

## 关于用户报告的卡死

本份日志没有百度输入法的 `ANR in`、输入分发超时或主线程死锁堆栈。PID 23187 的主线程在报错后仍有窗口和输入法事件，直到 09:15:48。因此日志可以确定模块没有生效的原因，但不足以确定用户感受到的卡死发生在哪个调用栈，也不能据此否定用户的卡顿体验。

由于本次异常在资源 Hook 安装前发生，不能把本次卡死归因于已经运行的资源附加 Hook。资源线程、锁和失败重试的修改来自源码检查，用于减少后续成功安装补丁后的阻塞风险；不是对本次 ANR 根因已获证实的声明。

本次未运行本地构建、测试或设备操作。1.0.2 的运行效果、是否仍有卡死和是否发生其他提前类加载，需要实际运行日志确认。已定义的原版类无法通过前置 DEX 替换；新建后台 Context 的资源附加为异步，队列执行前可能读取原始资源。
