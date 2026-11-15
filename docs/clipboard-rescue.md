# 手动剪贴板抢救

1.3.6 新增模块界面入口，用于“输入法可以启动，但打开剪贴板会因超长条目崩溃”的情况。抢救不打开输入法剪贴板面板，也不调用会加载整条内容的实体转换或列表读取方法。

## 使用

1. 升级模块后，强行停止百度输入法，再调出一次键盘，让新 Hook 注册；不必打开剪贴板。
2. 打开模块界面，点击顶部“剪贴板抢救”中的“移除最新一条剪贴板内容”。
3. 确认永久删除。目标为历史记录与最近使用列表中最近保存或更新的内容，包含已置顶内容；同一内容在另一列表中的副本一并移除。
4. 等待界面显示结果。成功后输入法主进程退出，释放 DAO 和界面缓存，再次调出键盘即可。进程退出会丢弃尚未上屏的输入，确认框会说明这一点。
5. 若系统剪贴板仍保留原来的超长内容，请先复制一段短文本，避免输入法再次把它保存到历史记录。

抢救按钮独立于滚动开关和远程设置连接状态。它通过已注入的输入法进程执行，需要 LSPosed 已启用模块并且输入法主进程正在运行，不需要给模块另外授予 Root。模块不会自动启动剪贴板界面或自动重复删除。遇到无响应、超时或进程中断，会显示“结果未确认”，提醒先检查再决定是否再次操作。

## 通信与重复请求

`ClipboardRescueHooks` 在 `Application.attach(Context)` 返回后，只为 `com.baidu.input` 主进程注册动态广播接收器。接收器要求发送方持有模块声明的 signature 权限 `io.github.madokatext.baiduinputmod.permission.CLIPBOARD_RESCUE`，其他普通应用不能通过广播触发删除。

模块发送限定目标包的有序广播，后台接收器通过 `goAsync()` 在工作线程处理数据库并回传状态，不阻塞输入法主线程。模块进程持有界面状态，Activity 重建不会重发请求。每次操作有独立 UUID；输入法先持久化最近请求及未知结果，再执行删除，同一最近请求重复送达时只返回已保存的结果，不再删除下一条。超时不会自动重试。确认成功后先完成结果回传，再延迟结束输入法主进程。

相关 Android 接口说明：[带发送方权限的动态接收器](https://developer.android.com/reference/android/content/Context#registerReceiver(android.content.BroadcastReceiver,%20android.content.IntentFilter,%20java.lang.String,%20android.os.Handler,%20int))、[异步广播结果](https://developer.android.com/reference/android/content/BroadcastReceiver.PendingResult)。

## 数据库处理

适配依据是用户提供的百度输入法 13.3.6.52（1149）源码材料：`ClipboardDBHelper` 使用版本 5 的 `clipborad_records.db`（文件名拼写与原版一致）；`ClipboardEntityDao` 对应 `clipboard`，`RecentClipboardEntityDao` 对应 `clipboard_recent`。两表均以 `_id` 为主键，并含 `md5`、`created_time` 和 `updated_time`；原版最新记录读取也按 `updated_time DESC` 排序。

抢救以 `updated_time DESC`、历史列表优先、`_id DESC` 的顺序选取一条。查询只返回来源表和主键，未读取 `content`。在同一事务中，先通过已有 md5 的 SQL 子查询移除另一列表中的相同内容，再按精确主键删除目标行，成功后提交。不同内容的条目和 `notes` 表不参与删除；不清空整库，也不修改其他功能的数据。

直接打开已存在的数据库，不触发百度的数据库创建、迁移、列表加载或 DTO 解码。执行前检查数据库版本及所需表结构，不匹配时拒绝删除。使用显式的无删除错误处理器，避免数据库损坏时触发系统默认的删库恢复。数据库处理异常返回未知结果，删除语句处于 SQLite 事务中；广播与日志均不包含正文。

## 本次验证范围

按用户要求，只审阅源码、原 APK 的 smali 以及提交差异，不运行测试、不执行本地构建、不调用 Flutter 或 Dart SDK，不使用电脑控制，也未做实机验证。推送后仅确认仓库原有 APK 构建工作流启动。
