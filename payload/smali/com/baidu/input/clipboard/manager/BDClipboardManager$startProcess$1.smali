.class final Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.baidu.input.clipboard.manager.BDClipboardManager$startProcess$1"
    f = "BDClipboardManager.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $source:Ljava/lang/CharSequence;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

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
    new-instance p1, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;

    .line 3
    iget-object v0, p0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 5
    invoke-direct {p1, v0, p2}, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;-><init>(Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;

    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    invoke-virtual {p1, p2}, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->a:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    iget v3, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->label:I

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "BDClipboardManager"

    .line 11
    const-class v6, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 13
    if-eqz v3, :cond_21

    .line 15
    if-ne v3, v1, :cond_19

    .line 17
    iget-object v2, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->L$0:Ljava/lang/Object;

    .line 19
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    goto/16 :goto_1df

    .line 26
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v1

    .line 34
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    sget-object v3, Lcom/baidu/input/clipboard/config/ClipboardConfig;->a:Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 39
    invoke-virtual {v3}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->d()Z

    .line 42
    sget-object v3, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 44
    const v7, 0x7f120fe4

    .line 47
    invoke-interface {v3, v7, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->o(IZ)Z

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4c

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "User not enable clipboard setting: "

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v2, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    new-array v2, v4, [Ljava/lang/Object;

    .line 71
    invoke-static {v5, v1, v2}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    return-object v1

    .line 77
    :cond_4c
    sget-object v3, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->a:Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 79
    iget-object v7, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5b

    .line 90
    goto/16 :goto_dd

    .line 92
    :cond_5b
    sget-object v3, Lcom/baidu/input/pub/ImeBaseGlobal;->y:Ljava/lang/String;

    .line 94
    const-string v8, "com.tencent.mm"

    .line 96
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_67

    .line 102
    goto/16 :goto_dd

    .line 104
    :cond_67
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 107
    move-result v3

    .line 108
    move v8, v4

    .line 109
    :goto_6c
    if-ge v8, v3, :cond_dd

    .line 111
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 114
    move-result v9

    .line 115
    const/16 v10, 0x202e

    .line 117
    if-ne v9, v10, :cond_db

    .line 119
    sget-object v3, Lcom/baidu/input/clipboard/privilege/BidiStringEncoder;->a:Lcom/baidu/input/clipboard/privilege/BidiStringEncoder;

    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-string v3, "source"

    .line 130
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 146
    move-result v9

    .line 147
    move v11, v4

    .line 148
    move v12, v11

    .line 149
    :goto_94
    if-ge v11, v9, :cond_c4

    .line 151
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    .line 154
    move-result v13

    .line 155
    const/16 v14, 0x200e

    .line 157
    if-ne v13, v14, :cond_9f

    .line 159
    goto :goto_c2

    .line 160
    :cond_9f
    if-ne v13, v10, :cond_a3

    .line 162
    move v12, v1

    .line 163
    goto :goto_c2

    .line 164
    :cond_a3
    const/16 v14, 0x202c

    .line 166
    if-ne v13, v14, :cond_b9

    .line 168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 171
    move-result v12

    .line 172
    if-lez v12, :cond_b7

    .line 174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v8}, Lkotlin/text/StringsKt;->n(Ljava/lang/StringBuilder;)V

    .line 184
    :cond_b7
    move v12, v4

    .line 185
    goto :goto_c2

    .line 186
    :cond_b9
    if-eqz v12, :cond_bf

    .line 188
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_c2

    .line 192
    :cond_bf
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :goto_c2
    add-int/2addr v11, v1

    .line 196
    goto :goto_94

    .line 197
    :cond_c4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 200
    move-result v7

    .line 201
    if-lez v7, :cond_d1

    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 210
    :cond_d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v7

    .line 214
    const-string v3, "output.toString()"

    .line 216
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    goto :goto_dd

    .line 220
    :cond_db
    add-int/2addr v8, v1

    .line 221
    goto :goto_6c

    .line 222
    :cond_dd
    :goto_dd
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 224
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 227
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    move-result-object v15

    .line 231
    iput-object v15, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    sget-object v8, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->a:Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 235
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 241
    move-result v8

    .line 242
    const-string v14, ""

    .line 244
    const v13, 0x5f5e100

    .line 246
    if-le v8, v13, :cond_127

    .line 248
    sget-object v8, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->a:Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;

    .line 250
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    invoke-static {}, Lcom/baidu/input/sync/clipboard/ClipboardSyncHelper;->b()Z

    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_127

    .line 259
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    .line 261
    invoke-direct {v8, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 264
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 267
    move-result v11

    .line 268
    new-instance v12, Landroid/text/SpannedString;

    .line 270
    invoke-direct {v12, v14}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v16, 0x0

    .line 275
    const/16 v17, 0x0

    .line 277
    const/4 v10, 0x0

    .line 278
    move-object v9, v15

    .line 279
    move v4, v13

    .line 280
    move/from16 v13, v16

    .line 282
    move-object/from16 v18, v14

    .line 284
    move/from16 v14, v17

    .line 286
    invoke-virtual/range {v8 .. v14}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 289
    move-result-object v8

    .line 290
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    move-result-object v8

    .line 294
    goto :goto_12b

    .line 295
    :cond_127
    move v4, v13

    .line 296
    move-object/from16 v18, v14

    .line 298
    move-object v8, v15

    .line 299
    :goto_12b
    iput-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 301
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    move-result v8

    .line 305
    xor-int/2addr v8, v1

    .line 306
    sput-boolean v8, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->b:Z

    .line 308
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 311
    move-result v7

    .line 312
    if-lez v7, :cond_2de

    .line 314
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 317
    move-result-object v7

    .line 318
    check-cast v7, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 320
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 322
    check-cast v8, Ljava/lang/String;

    .line 324
    invoke-interface {v7, v8}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->j3(Ljava/lang/String;)Z

    .line 327
    move-result v7

    .line 328
    if-eqz v7, :cond_14f

    .line 330
    sget-object v7, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 335
    :cond_14f
    sget-object v7, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 337
    const v8, 0x7f120fe5

    .line 340
    invoke-interface {v7, v8, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->o(IZ)Z

    .line 343
    move-result v7

    .line 344
    if-nez v7, :cond_15c

    .line 346
    const/4 v7, 0x0

    .line 347
    goto :goto_16a

    .line 348
    :cond_15c
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 351
    move-result-object v7

    .line 352
    check-cast v7, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 354
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 356
    check-cast v8, Ljava/lang/String;

    .line 358
    invoke-interface {v7, v8}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->K7(Ljava/lang/String;)Z

    .line 361
    move-result v7

    .line 362
    :goto_16a
    sget-object v8, Lcom/baidu/input/clipboard/config/ClipboardConfig;->a:Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 364
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    sget-boolean v8, Lcom/baidu/input/clipboard/config/ClipboardConfig;->b:Z

    .line 369
    if-eqz v8, :cond_2c7

    .line 371
    if-nez v7, :cond_2c7

    .line 373
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 376
    move-result-object v8

    .line 377
    check-cast v8, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 379
    invoke-interface {v8}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->p4()Z

    .line 382
    move-result v8

    .line 383
    if-nez v8, :cond_1c6

    .line 385
    if-nez v7, :cond_1c6

    .line 387
    invoke-static {}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->c()Z

    .line 390
    move-result v8

    .line 391
    if-eqz v8, :cond_1c6

    .line 393
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 396
    move-result-object v8

    .line 397
    check-cast v8, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 399
    iget-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 401
    check-cast v9, Ljava/lang/String;

    .line 403
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 406
    move-result v9

    .line 407
    if-le v9, v4, :cond_1bd

    .line 409
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    .line 411
    invoke-direct {v10, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 414
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 416
    move-object v11, v4

    .line 417
    check-cast v11, Ljava/lang/CharSequence;

    .line 419
    check-cast v4, Ljava/lang/String;

    .line 421
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 424
    move-result v13

    .line 425
    new-instance v14, Landroid/text/SpannedString;

    .line 427
    move-object/from16 v4, v18

    .line 429
    invoke-direct {v14, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 432
    const/16 v16, 0x0

    .line 434
    const/4 v12, 0x0

    .line 435
    const/4 v15, 0x0

    .line 436
    invoke-virtual/range {v10 .. v16}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 443
    move-result-object v4

    .line 444
    goto :goto_1c1

    .line 445
    :cond_1bd
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 447
    check-cast v4, Ljava/lang/String;

    .line 449
    :goto_1c1
    sget-boolean v9, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->h:Z

    .line 451
    invoke-interface {v8, v4, v9}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Ca(Ljava/lang/String;Z)V

    .line 454
    :cond_1c6
    const/4 v4, 0x0

    .line 455
    sput-boolean v4, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->d:Z

    .line 457
    if-nez v7, :cond_1e1

    .line 459
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 461
    new-instance v7, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1$1;

    .line 463
    const/4 v8, 0x0

    .line 464
    invoke-direct {v7, v3, v8}, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 467
    iput-object v3, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->L$0:Ljava/lang/Object;

    .line 469
    iput v1, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->label:I

    .line 471
    invoke-static {v4, v7, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 474
    move-result-object v4

    .line 475
    if-ne v4, v2, :cond_1de

    .line 477
    return-object v2

    .line 478
    :cond_1de
    move-object v2, v3

    .line 479
    :goto_1df
    move-object v3, v2

    .line 480
    goto :goto_1f7

    .line 481
    :cond_1e1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 483
    const-string v4, "shopping password, filter: "

    .line 485
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    iget-object v4, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 490
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object v2

    .line 497
    const/4 v4, 0x0

    .line 498
    new-array v7, v4, [Ljava/lang/Object;

    .line 500
    invoke-static {v5, v2, v7}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :goto_1f7
    sput-boolean v1, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->d:Z

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 508
    move-result-wide v7

    .line 509
    sget-object v2, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 511
    const-string v4, "key_front_clip_changed_times"

    .line 513
    invoke-interface {v2, v7, v8, v4}, Lcom/baidu/input/common/storage/sp/IPreference;->m(JLjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 516
    move-result-object v4

    .line 517
    iget-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 519
    check-cast v9, Ljava/lang/String;

    .line 521
    const-string v10, "key_front_clip_content"

    .line 523
    invoke-interface {v4, v10, v9}, Lcom/baidu/input/common/storage/sp/IPreference;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 526
    move-result-object v4

    .line 527
    invoke-interface {v4}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 530
    sget-object v4, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 532
    const-string v9, "key_last_clip_times"

    .line 534
    invoke-interface {v4, v7, v8, v9}, Lcom/baidu/input/common/storage/sp/IPreference;->m(JLjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 537
    move-result-object v4

    .line 538
    invoke-interface {v4}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 541
    sput-wide v7, Lcom/baidu/input/clipboard/manager/BDClipboardManagerKt;->b:J

    .line 543
    sget-object v4, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->a:Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 545
    iget-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 547
    check-cast v9, Ljava/lang/String;

    .line 549
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    invoke-static {v9}, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->r(Ljava/lang/String;)V

    .line 555
    sput-wide v7, Lcom/baidu/input/clipboard/manager/BDClipboardManagerKt;->a:J

    .line 557
    const v4, 0x7f120fe6

    .line 560
    invoke-interface {v2, v4, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->o(IZ)Z

    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_2be

    .line 566
    :try_start_236
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 569
    sget-object v2, Lcom/baidu/input/clipboard/ClipboardGlobal;->a:Lcom/baidu/input/clipboard/ClipboardGlobal;

    .line 571
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    invoke-static {}, Lcom/baidu/input/clipboard/ClipboardGlobal;->d()Z

    .line 577
    move-result v2
    :try_end_242
    .catch Ljava/lang/IllegalStateException; {:try_start_236 .. :try_end_242} :catch_243

    .line 578
    goto :goto_244

    .line 579
    :catch_243
    move v2, v1

    .line 580
    :goto_244
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 583
    move-result-object v4

    .line 584
    check-cast v4, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 586
    invoke-interface {v4}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->n6()Z

    .line 589
    move-result v4

    .line 590
    if-eqz v4, :cond_275

    .line 592
    sget-object v4, Lcom/baidu/input/clipboard/ClipboardGlobal;->a:Lcom/baidu/input/clipboard/ClipboardGlobal;

    .line 594
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    invoke-static {}, Lcom/baidu/input/clipboard/ClipboardGlobal;->f()Z

    .line 600
    move-result v5

    .line 601
    if-eqz v5, :cond_26c

    .line 603
    sget-object v5, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->a:Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 605
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    invoke-static {}, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->g()Z

    .line 611
    move-result v5

    .line 612
    if-nez v5, :cond_26c

    .line 614
    if-nez v2, :cond_26c

    .line 616
    invoke-virtual {v4}, Lcom/baidu/input/clipboard/ClipboardGlobal;->i()Z

    .line 619
    goto :goto_275

    .line 620
    :cond_26c
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 623
    move-result-object v2

    .line 624
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 626
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Me()V

    .line 629
    :cond_275
    :goto_275
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 632
    move-result-object v2

    .line 633
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 635
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->h5()Z

    .line 638
    move-result v2

    .line 639
    if-eqz v2, :cond_2f4

    .line 641
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->i()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 644
    move-result-object v2

    .line 645
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->h()Z

    .line 648
    move-result v2

    .line 649
    if-nez v2, :cond_2f4

    .line 651
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->i()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 654
    move-result-object v2

    .line 655
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->d()Z

    .line 658
    move-result v2

    .line 659
    if-nez v2, :cond_2f4

    .line 661
    sget-object v2, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->f:Lkotlin/Lazy;

    .line 663
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 666
    move-result-object v2

    .line 667
    const-string v4, "<get-hardPadKeyMapAPI>(...)"

    .line 669
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    check-cast v2, Lcom/baidu/input/cocomodule/panel/IPanel$IHardKeymap;

    .line 674
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel$IHardKeymap;->f()Z

    .line 677
    move-result v2

    .line 678
    if-nez v2, :cond_2f4

    .line 680
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 683
    move-result-object v2

    .line 684
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 686
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Ed()Z

    .line 689
    move-result v2

    .line 690
    if-nez v2, :cond_2f4

    .line 692
    sget-object v2, Lcom/baidu/input/clipboard/ClipboardGlobal;->a:Lcom/baidu/input/clipboard/ClipboardGlobal;

    .line 694
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    const/4 v2, 0x0

    .line 698
    invoke-static {v2}, Lcom/baidu/input/clipboard/ClipboardGlobal;->j(Z)V

    .line 701
    goto :goto_2f4

    .line 702
    :cond_2be
    const/4 v2, 0x0

    .line 703
    const-string v4, "User deny to show paste content on cand"

    .line 705
    new-array v2, v2, [Ljava/lang/Object;

    .line 707
    invoke-static {v5, v4, v2}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    goto :goto_2f4

    .line 711
    :cond_2c7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 713
    const-string v4, "is add to history false: "

    .line 715
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    iget-object v4, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 720
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v2

    .line 727
    const/4 v4, 0x0

    .line 728
    new-array v4, v4, [Ljava/lang/Object;

    .line 730
    invoke-static {v5, v2, v4}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    goto :goto_2f4

    .line 734
    :cond_2de
    const/4 v4, 0x0

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    .line 737
    const-string v6, "User copy same content with last: "

    .line 739
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    iget-object v6, v0, Lcom/baidu/input/clipboard/manager/BDClipboardManager$startProcess$1;->$source:Ljava/lang/CharSequence;

    .line 744
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    move-result-object v2

    .line 751
    new-array v4, v4, [Ljava/lang/Object;

    .line 753
    invoke-static {v5, v2, v4}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    :cond_2f4
    :goto_2f4
    sget-object v2, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->a:Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 758
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 760
    check-cast v2, Ljava/lang/String;

    .line 762
    sget-object v2, Lcom/baidu/input/clipboard/config/ClipboardConfig;->a:Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 764
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    sput-boolean v1, Lcom/baidu/input/clipboard/config/ClipboardConfig;->b:Z

    .line 769
    sput-boolean v1, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->h:Z

    .line 771
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 773
    return-object v1
.end method
