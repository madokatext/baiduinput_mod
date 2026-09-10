.class public final Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.baidu.input.clipboard.datamanager.clipboard.ClipboardDataManagerImpl$safeInsert$1$1"
    f = "ClipboardDataManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;

    .line 3
    iget-object v0, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 5
    invoke-direct {p1, v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;-><init>(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;

    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    invoke-virtual {p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->label:I

    .line 3
    if-nez v0, :cond_77

    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    :try_start_7
    iget-object p1, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 10
    invoke-virtual {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->gk()J

    .line 13
    move-result-wide v0

    .line 14
    const-class p1, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 16
    invoke-static {p1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 22
    invoke-interface {p1}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->L4()Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->b()I

    .line 29
    move-result p1

    .line 30
    const v2, 0x5f5e100

    .line 32
    if-le p1, v2, :cond_74

    .line 34
    int-to-long v2, p1

    .line 35
    cmp-long v0, v0, v2

    .line 37
    if-lez v0, :cond_74

    .line 39
    iget-object v0, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 41
    invoke-static {v0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->qk(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    move-result v1

    .line 49
    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;->this$0:Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 55
    check-cast p1, Ljava/lang/Iterable;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    const/16 v2, 0xa

    .line 61
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 64
    move-result v2

    .line 65
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p1

    .line 72
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_60

    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 84
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->a:Ljava/lang/Long;

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_48

    .line 94
    :catch_5e
    move-exception p1

    .line 95
    goto :goto_67

    .line 96
    :cond_60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->jk(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_66} :catch_5e

    .line 102
    goto :goto_74

    .line 103
    :goto_67
    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    const/4 v1, 0x0

    .line 107
    aput-object p1, v0, v1

    .line 109
    const-string p1, "ClipboardDataManagerImpl"

    .line 111
    const-string v1, "safeInsert exception"

    .line 113
    invoke-static {p1, v1, v0}, Lcom/baidu/input/devtool/log/BDLog;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_74
    :goto_74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    return-object p1

    .line 119
    :cond_77
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p1
.end method
