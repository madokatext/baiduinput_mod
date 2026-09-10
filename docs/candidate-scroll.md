# 九键顶部候选栏：开关与方法 Hook

1.2.0 删除 CandHandler、SlidingView、CandidateView 三个整类覆盖。1.3.1 注册 CandidateView 的 `onTouchEvent(MotionEvent)`、`r0()` 及其继承的 `AbsSoftView.dispatchTouchEvent(MotionEvent)` 共三个方法 Hook。共享的分发方法仅对已捕获的顶部候选手势调整，左侧拼音手势保持原版；原版 SubList、MainSubListWrapper、KeyMap 继续由应用自身加载。

## 1.2.1：修复控制对象与视图的混淆

最新设备日志 `Log_2026-9-10_11-38-26.txt` 在 11:37:36.666 记录 `Hook group unavailable; keeping app behavior: nine-key top candidate touch`，异常是 `IllegalStateException: Candidate view is not a View`。1.2.0 在依赖解析阶段误要求 CandidateView 继承 Android View，导致两个候选栏 Hook 都没有安装。

原版继承链为 `CandidateView → AbsCandView → AbsSoftView → AbsKeymapView → Object`。1.2.1 将手势状态关联到控制对象，通过原 `getView()` 获取 InputContainerView 的 Context；释放按压仍对控制对象调用 `w()`，延迟回调通过原 `q(Runnable)` 清除；绘制刷新调用原 `AbsCandView.n()`，由应用同时刷新宿主及候选布局层。两个 Hook 保持不变，不引入整类替换。日志新增触摸入口和顶部 DOWN 捕获结果，区分安装成功与实际捕获手势。

## 开关

模块设置界面通过 API 100 XposedService 写入 `settings/nine_key_top_candidate_direct_scroll`，默认 true。输入法通过 `getRemotePreferences("settings")` 读取 LSPosed 同步的值，每次 DOWN 决定是否启用。关闭后下一次手势使用完整原版路径，并在下一个动画帧停止已有惯性；设置变化不会中途丢掉上一手势的按压和速度跟踪清理。远程设置不可用时保留原版触摸行为。

## 1.3.0：可调惯性

设置页增加惯性强度（`candidate_inertia_strength_percent`，0–200，默认 60）和减速时长（`candidate_inertia_duration_ms`，100–1500 毫秒，默认 450，UI 步进 50）。强度 0 保留松手即停；时长控制从初速度均匀减速到零的时间。滑块松手、键盘/无障碍调整、恢复默认按钮均写入远程 preferences，保存失败恢复上次的控件值。运行端还会限制参数范围。

参数在 DOWN 时取快照，整次手势使用同一组值。模块单独持有 VelocityTracker，记录 DOWN、MOVE 和 UP，不受清理原版速度跟踪器的影响。只有未取消的水平拖动 UP，速度达到系统最小 fling 速度且松手前 120 毫秒内仍在水平移动，才启动惯性；横向速度还须不小于纵向速度。

初速度为系统上限内的水平松手速度乘以强度百分比。模块自己的 `CandidateInertia` 使用 Choreographer 帧时间积分线性减速：`s(t) = v0 × (t − t² / (2T))`，累计距离四舍五入后计算每帧像素差，以保留小数位移并适配不同刷新率。每帧仍使用原窗口布局和边界计算，不启动百度的弹簧滚动器或选词流程；遇到边界立即结束。

新的候选视图 DOWN 会移除旧动画并回收速度记录。动画每帧检查开关、九键模式、视图附着/可见性、控制对象和渲染器身份、窗口宽度/区域、数据缓存及预期偏移；窗口重置、缓存更换或应用接管偏移时结束旧动画。旧版路径另检查未偏移的候选矩形和左端边界。取消或多指手势不启动惯性。动画结束会释放目标引用，控制对象和宿主以弱引用持有。

1.3.0 加入惯性时沿用原来的两个 Hook。惯性额外使用的旧版偏移/矩形成员在独立的异常处理中解析；惯性解析或帧执行失败只停用惯性，保留跟手拖动。

## 1.3.1：降低上游起滑阈值

原版 `AbsSoftView.dispatchTouchEvent` 在调用 `CandidateView.onTouchEvent` 之前过滤 MOVE：候选区域（`l == 2`）且尚未移动（`m == false`）时，距离阈值为 `12 × Global.q0`；已经移动时使用 `AbsSoftView.v`，输入法初始化将其设为整数 `Global.q0 / 3`。小于阈值会直接返回，模块内部首个水平像素起滑的判断因此无法及时收到 MOVE。

新增分发前 Hook，通过模块的手势映射确认 DOWN 已命中九键顶部候选区域、功能已启用且捕获成功；只有单指 MOVE 达到模块自身起滑条件时，提前设置该控制对象的 `m = true`。起滑采用原低阈值分支，距离约为原来的 1/36（随设备参数取整）。不改全局 `q0`、`v`，不跳过原分发方法，保留坐标更新和原 UP/CANCEL 对 `m` 的复位。左侧拼音、普通键盘及关闭开关的手势不设置该标记。

## 触摸流程

1. DOWN 只在九键拼音状态（模式 0x21、布局 1、语言 0）且命中顶部候选区域时记录起点并停止原滚动器，随后继续原版命中检测。原方法返回后还检查顶部区域编号 2 及新版/旧版捕获标记。侧栏和其他区域不接管。
2. 原始 MOVE 在分发前达到模块首个水平像素起滑条件时，提前进入原分发器的低阈值分支；事件到达 onTouchEvent 后保持独立 dragged 标记，首次应用从 DOWN 起的完整位移。即使内容已到边界，这次手势也不能再选词。也检查合并的历史坐标；没有 MOVE 的快速划动通过 UP 与 DOWN 的位移是否超过系统 touch slop 兜底，覆盖快速划动或移出后返回起点的情况。
3. 拖动 MOVE / UP 在外层消费，不再进入原 S2 的松手点击分支。新版直接调用原 SlidingVisibleWindow.e(I) 布局，偏移限制到内容实际边界；旧版调用原 AbsCandHandler.k2(I)，继续其原有像素布局和边界计算。未改候选内容、点击选择方法或候选数据结构。
4. 清除待选编号、选词位、按压对象和原版速度跟踪器，移除原延迟回调；松手停止原滚动器，再按独立速度记录决定是否启动模块惯性。保留 dragged 标记到下次 DOWN，惯性期间和结束后 `r0()` 仍拦截拖动遗留的选词提交。
5. CANCEL、多指加入和当前指针变化取消点击资格；普通点击继续原版 UP 处理。

状态使用模块内 WeakHashMap 与 WeakReference，不增加百度类字段。进入目标手势前解析必要字段/方法并检查类型；遇到不兼容只停用候选栏功能，发生异常的已捕获拖动仍被消费，避免回落为一次误选。

## 兼容与验证范围

源码依据 13.3.6.52（1149）。仍需读取候选窗口和分发器的混淆字段，这些成员改变时需要重新适配；三处 Hook 不要求复制原类的构造、协程或全部方法。没有运行测试或本地编译，未验证新版本设备效果。构建由 GitHub Actions 执行，按要求不等待完成。
