.class public final Lcom/baidu/input/clipboard/config/ClipboardConfig;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/inspiration_corpus/api/IClipboardTemporaryConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "Lcom/baidu/input/clipboard/config/ClipboardConfig;",
        "Lcom/baidu/input/inspiration_corpus/api/IClipboardTemporaryConfig;",
        "<init>",
        "()V",
        "clipboard_panel_release"
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
.field public static final a:Lcom/baidu/input/clipboard/config/ClipboardConfig;

.field public static b:Z

.field public static c:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 3
    invoke-direct {v0}, Lcom/baidu/input/clipboard/config/ClipboardConfig;-><init>()V

    .line 6
    sput-object v0, Lcom/baidu/input/clipboard/config/ClipboardConfig;->a:Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/baidu/input/clipboard/config/ClipboardConfig;->b:Z

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "begin to checkMaxQueryCount"

    .line 6
    const-string v3, "ClipboardConfig"

    .line 8
    invoke-static {v3, v2, v1}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 13
    const-string v2, "clipboard.config.is_already_checked_max_query_count"

    .line 15
    invoke-interface {v1, v2, v0}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1c

    .line 21
    const-string v1, "checkMaxQueryCount: already checked, return"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v3, v1, v0}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void

    .line 29
    :cond_1c
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/baidu/input/clipboard/config/ClipboardConfig$checkMaxQueryCount$1;

    .line 37
    const/4 v2, 0x2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v1, v2, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-static {v0, v3, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/AbstractCoroutineContextElement;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 46
    return-void
.end method

.method public static c()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 3
    const-class v1, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 5
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 11
    invoke-interface {v1}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->yh()Z

    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 17
    const v2, 0x7f121001

    .line 20
    invoke-interface {v0, v2, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->o(IZ)Z

    .line 23
    move-result v0

    .line 24
    return v0
.end method


# virtual methods
.method public final b()I
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->b()Z

    .line 9
    move-result v0

    .line 10
    const v1, 0x5f5e100

    .line 12
    if-eqz v0, :cond_f

    .line 14
    return v1

    .line 15
    :cond_f
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 17
    const-string v2, "clipboard.config.max_query_count"

    .line 19
    invoke-interface {v0, v2, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    const-class v0, Lcom/baidu/input/di/AppConfigApi;

    .line 3
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/input/di/AppConfigApi;

    .line 9
    invoke-interface {v0}, Lcom/baidu/input/di/AppConfigApi;->o7()Lcom/baidu/input/flavor/FlavorMacroDependencies;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final e(IZ)V
    .registers 5

    .line 1
    const-string v0, "clipboard.config.max_query_count"

    .line 3
    if-eqz p2, :cond_a

    .line 5
    sget-object p2, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 7
    invoke-interface {p2, p1, v0}, Lcom/baidu/input/common/storage/sp/IPreference;->h(ILjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->b()I

    .line 14
    move-result p2

    .line 15
    const v1, 0x5f5e100

    .line 17
    if-gt p1, v1, :cond_19

    .line 19
    sget-object p1, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 21
    invoke-interface {p1, v1, v0}, Lcom/baidu/input/common/storage/sp/IPreference;->h(ILjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 24
    goto :goto_24

    .line 25
    :cond_19
    const/16 v1, 0x12d

    .line 27
    if-gt v1, p1, :cond_24

    .line 29
    if-ge p1, p2, :cond_24

    .line 31
    sget-object p2, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 33
    invoke-interface {p2, p1, v0}, Lcom/baidu/input/common/storage/sp/IPreference;->h(ILjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 36
    :cond_24
    :goto_24
    return-void
.end method
