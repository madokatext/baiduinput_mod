# 九键顶部候选栏：开关与方法 Hook

1.2.0 删除 CandHandler、SlidingView、CandidateView 三个整类覆盖。当前仅注册 CandidateView 的 `onTouchEvent(MotionEvent)` 和 `r0()` 两个 Hook。左侧拼音列表没有 Hook；原版 SubList、MainSubListWrapper、KeyMap 继续由应用自身加载。

## 1.2.1：修复控制对象与视图的混淆

最新设备日志 `Log_2026-9-10_11-38-26.txt` 在 11:37:36.666 记录 `Hook group unavailable; keeping app behavior: nine-key top candidate touch`，异常是 `IllegalStateException: Candidate view is not a View`。1.2.0 在依赖解析阶段误要求 CandidateView 继承 Android View，导致两个候选栏 Hook 都没有安装。

原版继承链为 `CandidateView → AbsCandView → AbsSoftView → AbsKeymapView → Object`。1.2.1 将手势状态关联到控制对象，通过原 `getView()` 获取 InputContainerView 的 Context；释放按压仍对控制对象调用 `w()`，延迟回调通过原 `q(Runnable)` 清除；绘制刷新调用原 `AbsCandView.n()`，由应用同时刷新宿主及候选布局层。两个 Hook 保持不变，不引入整类替换。日志新增触摸入口和顶部 DOWN 捕获结果，区分安装成功与实际捕获手势。

## 开关

模块设置界面通过 API 100 XposedService 写入 `settings/nine_key_top_candidate_direct_scroll`，默认 true。输入法通过 `getRemotePreferences("settings")` 读取 LSPosed 同步的值，每次 DOWN 决定是否启用。关闭后该手势使用完整原版路径；设置变化不会中途丢掉上一手势的按压和速度跟踪清理。远程设置不可用时保留原版触摸行为。

## 触摸流程

1. DOWN 只在九键拼音状态（模式 0x21、布局 1、语言 0）且命中顶部候选区域时记录起点并停止原滚动器，随后继续原版命中检测。原方法返回后还检查顶部区域编号 2 及新版/旧版捕获标记。侧栏和其他区域不接管。
2. MOVE 出现首个水平像素位移就保持独立 dragged 标记，首次应用从 DOWN 起的完整位移，保留上一版的立即跟手行为。即使内容已到边界，这次手势也不能再选词。也检查合并的历史坐标；没有 MOVE 的快速划动通过 UP 与 DOWN 的位移是否超过系统 touch slop 兜底，覆盖快速划动或移出后返回起点的情况。
3. 拖动 MOVE / UP 在外层消费，不再进入原 S2 的松手点击分支。新版直接调用原 SlidingVisibleWindow.e(I) 布局，偏移限制到内容实际边界；旧版调用原 AbsCandHandler.k2(I)，继续其原有像素布局和边界计算。未改候选内容、点击选择方法或候选数据结构。
4. 清除待选编号、选词位、按压对象和速度跟踪器，移除原延迟回调；松手停止滚动，保留 dragged 标记到下次 DOWN。`r0()` 再次拦截拖动遗留的选词提交。
5. CANCEL、多指加入和当前指针变化取消点击资格；普通点击继续原版 UP 处理。

状态使用模块内 WeakHashMap 与 WeakReference，不增加百度类字段。进入目标手势前解析必要字段/方法并检查类型；遇到不兼容只停用候选栏功能，发生异常的已捕获拖动仍被消费，避免回落为一次误选。

## 兼容与验证范围

源码依据 13.3.6.52（1149）。仍需读取候选窗口的混淆字段，这些成员改变时需要重新适配；两处 Hook 不要求复制原类的构造、协程或全部方法。没有运行测试或本地编译，未验证新版本设备效果。构建由 GitHub Actions 执行，按要求不等待完成。
