# 九键拼音：逐个撤销选择与绿色文字

1.3.5 新增两个独立安装的 Hook 组：`nine-key pinyin selection undo` 和 `nine-key selected pinyin color`，默认启用，不依赖顶部候选栏滚动开关。

## 删除顺序

以 `2253` 依次选择 `ba`、`ke` 为例：

1. 第一次删除只撤销 `ke` 的选择。
2. 第二次删除只撤销 `ba` 的选择，保留刚刚恢复为未选状态的输入字符。
3. 所有拼音选择都撤销后，后续删除交回原版字符删除逻辑。

这条规则不限于两个音节；只有一个已选拼音时同样先撤销选择。

实现限定为既有适配的九键中文拼音状态：`InputStatMac.f() == 0x21`、布局 `d == 1`、语言 `g == 0`。在 `IptCoreInterface.actKeyClick`、`actKeyClickXY`、`actKeyClickTouchInfo` 的原内核线程中读取 `getInputShow`，以 `listLen()` 判断是否还有已选拼音，避免连续点击时使用界面尚未刷新的选择数量。

原版 `InputEventHandler.c(false, true)` 会发送键码 `0xe000` 的 type-8 准备调用和随后真正的删除调用。有已选拼音时准备调用不撤销选择，真正的删除调用只处理一个音节。光标位置使用 `InputBarState2.c/n` 相同的 `cursorInfo` 映射，定位在最后一个已选拼音内部，再调用原版拼音栏撤销按钮使用的 `actInputPop`。撤销前检查 `popBegan/popEnd` 确实落在已选拼音范围内，避免撤销已确认的汉字。撤销后把光标放回输入末尾，后续字符删除继续从末尾进行。

移动光标后，本次调用不会再落入字符删除路径；定位或撤销失败时保留输入，并尽可能恢复原光标位置。日志最多输出十六条不含输入内容的撤销记录。

### 1.3.8 修正：撤销后同步更新拼音候选栏

此前 `actInputCursor`、`actInputPop` 和最后的光标复位复用调用方同一个 `IptCoreDutyInfo`。该类的 `setData(long[])` 会直接覆盖 `mFlashFlag`，最后的光标复位可能覆盖撤销产生的 `REFL_LIST`，使输入串已经撤销、拼音候选列表仍停留在原状态。

现在为光标定位、复位创建独立的 `IptCoreDutyInfo`，调用方的对象保留 `actInputPop` 的结果与附带元数据。撤销成功后，在保留原有刷新标记的同时补上运行时解析的 `REFL_SHOW`、`REFL_CAND`、`REFL_LIST`。随后由原版 `DefaultCoreDutyHandler` 从内核读取最终输入串、汉字候选和拼音候选，再通过 `ImeCoreCallback.y(IptListState)` 更新 `ListState2` 并调用 `InputHandler2.F()` 刷新拼音栏；不在模块中单独替换候选数组或重复发起撤销。

有已选拼音时，type-8 准备调用以原版 `ImePad` 的无回调返回方式结束（负结果转为 null duty），避免跳过 native 调用后再次分发上一次操作遗留的回调数据。真正的删除调用仍只撤销一个音节并发布新的状态。

`2253` 依次选择 `ba`、`ke` 后，删除撤销 `ke` 时拼音候选栏应随撤销后的状态更新；再次撤销 `ba` 时继续同步更新，并保持逐个撤销完成后才删除字符的顺序。此路径保留对单音节、多个音节以及最终一个已选拼音的同样处理。新增的 `PinyinSelection 1.3.8` 日志表示已请求三个状态刷新，不代表实机效果已验证。

## 文字颜色

普通 `InputBarView.l(Canvas, String)` 与内嵌 `QuadraticInputBarView.draw(Canvas)` 的绘制范围内，识别当前拼音栏的画笔及已选文字颜色，并将已选拼音改为 `#00C853`。使用画笔副本保留透明度及文字属性；混合汉字和拼音的绘制按字符范围分开着色，汉字保留原色。

### 1.3.7 修正：硬件加速绘制入口

用户反馈 1.3.5/1.3.6 仍显示黄色。上一版仅从 `Canvas` 解析并 Hook `drawText(String, float, float, Paint)`，遗漏了硬件加速实现：Android 15 的 `RecordingCanvas` 继承 `BaseRecordingCanvas`，后者自行重写该方法并直接调用 native 绘制，不会经过普通 Canvas 的方法。依据见 [BaseRecordingCanvas](https://github.com/aosp-mirror/platform_frameworks_base/blob/android15-release/graphics/java/android/graphics/BaseRecordingCanvas.java) 与 [RecordingCanvas](https://github.com/aosp-mirror/platform_frameworks_base/blob/android15-release/graphics/java/android/graphics/RecordingCanvas.java)。

现在分别解析普通 Canvas 和 RecordingCanvas 的实际声明方法，去重后安装相同的颜色 Hook。另对原版 `InputBarView.draw/b/c/d/e`、`QuadraticInputBarView.g/h/i` 及已有的外层绘制入口反优化，避免已编译的辅助方法继续使用内联的原版 `drawText`。

新增不含输入正文的 `PinyinColor 1.3.7` 日志：安装时记录两个绘制方法的实际声明类；最多八条绘制入口日志记录实际 Canvas 类型、九键状态及已选长度，最多八条日志记录已选拼音进入着色分支。入口诊断失败不会停用颜色功能。日志进入着色分支不能代替实机视觉确认。

原皮肤字段、共享画笔和资源表都不改写。绘制所属对象由 `HookSupport` 的调用上下文提供，返回或异常时都会恢复，避免颜色规则影响范围外的绘制。

## 适配与验证范围

接口和字段依据用户提供的百度输入法 13.3.6.52（1149）APK、smali 和其中的内核包装代码确定。两个新功能组各自解析依赖并事务安装；安装不兼容时该组回滚，保留原版行为。

按用户要求，本次仅检查源码与提交差异，不运行测试、不执行本地构建、不调用 Flutter 或 Dart SDK，也不使用电脑控制或设备验证。运行效果尚未实机验证。
