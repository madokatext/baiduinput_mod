.class public final Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;",
        "",
        "<init>",
        "()V",
        "clipboard_sync_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;

    .line 3
    invoke-direct {v0}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;-><init>()V

    .line 6
    sput-object v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Lkotlin/jvm/functions/Function0;)Lio/reactivex/internal/operators/completable/CompletableObserveOn;
    .registers 3

    .line 1
    new-instance v0, Lcom/baidu/c;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/baidu/c;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 7
    sget p0, Lio/reactivex/internal/functions/ObjectHelper;->a:I

    .line 9
    new-instance p0, Lio/reactivex/internal/operators/completable/CompletableCreate;

    .line 11
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCreate;-><init>(Lio/reactivex/CompletableOnSubscribe;)V

    .line 14
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->c:Lio/reactivex/Scheduler;

    .line 16
    const-string v1, "scheduler is null"

    .line 18
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;

    .line 23
    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;-><init>(Lio/reactivex/Completable;Lio/reactivex/Scheduler;)V

    .line 26
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;

    .line 32
    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/completable/CompletableObserveOn;-><init>(Lio/reactivex/Completable;Lio/reactivex/Scheduler;)V

    .line 35
    return-object v0
.end method

.method public static b()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 3
    const-string v1, "pref_key_clipboard_sync_limit_count_size_agree_update2"

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static c()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-class v1, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;

    .line 4
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;

    .line 10
    invoke-interface {v1}, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;->Bj()Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->rj(Ljava/lang/Integer;Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;)Ljava/util/ArrayList;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_33

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 37
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_31

    .line 43
    const v3, 0x5f5e100

    .line 45
    if-le v2, v3, :cond_18

    .line 47
    const/4 v0, 0x1

    .line 48
    return v0

    .line 49
    :catch_31
    move-exception v1

    .line 50
    goto :goto_34

    .line 51
    :cond_33
    return v0

    .line 52
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    const-string v3, "isOverMaxWords : "

    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v1, v2}, Lcom/baidu/pf;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    new-array v2, v0, [Ljava/lang/Object;

    .line 65
    const-string v3, "ClipboardSyncHelper"

    .line 67
    invoke-static {v3, v1, v2}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return v0
.end method

.method public static d(Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 3
    const-string v1, "pref_key_clipboard_sync_limit_count_size_agree_update2"

    .line 5
    invoke-interface {v0, v1, p0}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 12
    return-void
.end method

.method public static e()Lio/reactivex/Completable;
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->b()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    const-class v0, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 9
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 15
    invoke-interface {v0}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Ei()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    sget-object v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startAutoSync$1;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startAutoSync$1;

    .line 23
    invoke-static {v0}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a(Lkotlin/jvm/functions/Function0;)Lio/reactivex/internal/operators/completable/CompletableObserveOn;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    sget-object v0, Lio/reactivex/internal/operators/completable/CompletableEmpty;->a:Lio/reactivex/internal/operators/completable/CompletableEmpty;

    .line 30
    const-string v1, "{\n            Completable.complete()\n        }"

    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_22
    return-object v0
.end method

.method public static f()Lio/reactivex/internal/operators/completable/CompletableObserveOn;
    .registers 1

    .line 1
    sget-object v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startSyncWithSuccessPref$1;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startSyncWithSuccessPref$1;

    .line 3
    invoke-static {v0}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a(Lkotlin/jvm/functions/Function0;)Lio/reactivex/internal/operators/completable/CompletableObserveOn;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static g()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->b()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    const-class v0, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 9
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 15
    invoke-interface {v0}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Ei()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    sget-object v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startUploadOnlyAutoSync$1;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper$startUploadOnlyAutoSync$1;

    .line 23
    invoke-static {v0}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a(Lkotlin/jvm/functions/Function0;)Lio/reactivex/internal/operators/completable/CompletableObserveOn;

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    sget-object v0, Lio/reactivex/internal/operators/completable/CompletableEmpty;->a:Lio/reactivex/internal/operators/completable/CompletableEmpty;

    .line 29
    const-string v1, "{\n            Completable.complete()\n        }"

    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_21
    return-void
.end method
