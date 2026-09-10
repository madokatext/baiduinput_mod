.class public Lcom/baidu/input/ime/front/ClipboardPanelListView;
.super Landroid/widget/RelativeLayout;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/ime/front/IQuickView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreShare;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSearch;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSaveToNote;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MultipleDelete;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreDelete;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreEdit;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$MorePaste;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$DataRecognize;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$ViewHolder;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$IOnSelectChange;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$IOnListRefresh;,
        Lcom/baidu/input/ime/front/ClipboardPanelListView$PressableClickableSpan;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final C:[Ljava/lang/String;


# instance fields
.field public final A:I

.field public B:Landroid/app/Dialog;

.field public final a:I

.field public final b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

.field public final c:Lcom/baidu/input/acgfont/ImeTextView;

.field public final d:Lcom/baidu/input/acgfont/ImeTextView;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/baidu/input/ime/front/clipboard/RecordManager;

.field public final g:Ljava/util/HashMap;

.field public h:Z

.field public i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

.field public j:Lcom/baidu/input/ime/front/note/Note;

.field public final k:[Ljava/lang/String;

.field public final l:[Lcom/baidu/input/ime/front/clipboard/IRecordMoreOpt;

.field public final m:Lcom/baidu/input/ime/front/clipboard/DeleteFlagRecordMoreOpt;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Lio/reactivex/disposables/CompositeDisposable;

.field public r:I

.field public s:Landroid/view/View;

.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/airbnb/lottie/LottieAnimationView;

.field public final v:Landroid/view/View;

.field public final w:I

.field public final x:Landroid/content/BroadcastReceiver;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "com.UCMobile"

    .line 3
    const-string v1, "com.tencent.mtt"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->C:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v6, 0x0

    .line 13
    iput-object v6, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->f:Lcom/baidu/input/ime/front/clipboard/RecordManager;

    .line 15
    new-instance v7, Ljava/util/HashMap;

    .line 17
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object v7, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->g:Ljava/util/HashMap;

    .line 22
    const/4 v7, 0x0

    .line 23
    iput-boolean v7, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->h:Z

    .line 25
    new-instance v8, Lcom/baidu/input/ime/front/clipboard/DeleteFlagRecordMoreOpt;

    .line 27
    invoke-direct {v8}, Lcom/baidu/input/ime/front/clipboard/DeleteFlagRecordMoreOpt;-><init>()V

    .line 30
    iput-object v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->m:Lcom/baidu/input/ime/front/clipboard/DeleteFlagRecordMoreOpt;

    .line 32
    new-instance v8, Lcom/baidu/input/ime/front/ClipboardPanelListView$1;

    .line 34
    invoke-direct {v8, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$1;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 37
    iput-object v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->x:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object v1, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->e:Landroid/content/Context;

    .line 41
    move/from16 v8, p2

    .line 43
    iput v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->y:I

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    move-result-object v8

    .line 53
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/baidu/input/ime/front/clipboard/RecordManager;->j(Landroid/content/Context;)Lcom/baidu/input/ime/front/clipboard/RecordManager;

    .line 58
    move-result-object v9

    .line 59
    iput-object v9, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->f:Lcom/baidu/input/ime/front/clipboard/RecordManager;

    .line 61
    invoke-static {}, Lcom/baidu/input/pub/Global;->r()I

    .line 64
    move-result v9

    .line 65
    if-lez v9, :cond_49

    .line 67
    invoke-static {}, Lcom/baidu/input/pub/Global;->r()I

    .line 70
    move-result v8

    .line 71
    iput v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->a:I

    .line 73
    goto :goto_4f

    .line 74
    :cond_49
    const/high16 v9, 0x42200000  # 40.0f

    .line 76
    mul-float/2addr v8, v9

    .line 77
    float-to-int v8, v8

    .line 78
    iput v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->a:I

    .line 80
    :goto_4f
    sget-object v8, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 82
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    const v8, 0x7f1202be

    .line 95
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v9

    .line 99
    const v8, 0x7f1202ac

    .line 102
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v10

    .line 106
    const v8, 0x7f1202c3

    .line 109
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v11

    .line 113
    const v8, 0x7f1202c7

    .line 116
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v12

    .line 120
    const v8, 0x7f12072c

    .line 123
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    move-result-object v13

    .line 127
    const v8, 0x7f1202aa

    .line 130
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v14

    .line 134
    const v8, 0x7f1202b7

    .line 137
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v15

    .line 141
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 144
    move-result-object v8

    .line 145
    iput-object v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->k:[Ljava/lang/String;

    .line 147
    new-instance v8, Lcom/baidu/input/ime/front/ClipboardPanelListView$MorePaste;

    .line 149
    invoke-direct {v8, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MorePaste;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 152
    new-instance v9, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreEdit;

    .line 154
    invoke-direct {v9}, Lcom/baidu/input/ime/front/clipboard/DeleteFlagRecordMoreOpt;-><init>()V

    .line 157
    new-instance v10, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSearch;

    .line 159
    invoke-direct {v10, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSearch;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 162
    new-instance v11, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreShare;

    .line 164
    invoke-direct {v11, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreShare;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 167
    new-instance v12, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSaveToNote;

    .line 169
    invoke-direct {v12, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreSaveToNote;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 172
    new-instance v13, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreDelete;

    .line 174
    invoke-direct {v13, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MoreDelete;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 177
    new-instance v14, Lcom/baidu/input/ime/front/ClipboardPanelListView$MultipleDelete;

    .line 179
    invoke-direct {v14, v0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$MultipleDelete;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 182
    const/4 v15, 0x7

    .line 183
    new-array v15, v15, [Lcom/baidu/input/ime/front/clipboard/IRecordMoreOpt;

    .line 185
    aput-object v8, v15, v7

    .line 187
    aput-object v9, v15, v5

    .line 189
    aput-object v10, v15, v4

    .line 191
    const/4 v8, 0x3

    .line 192
    aput-object v11, v15, v8

    .line 194
    aput-object v12, v15, v3

    .line 196
    const/4 v8, 0x5

    .line 197
    aput-object v13, v15, v8

    .line 199
    aput-object v14, v15, v2

    .line 201
    iput-object v15, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->l:[Lcom/baidu/input/ime/front/clipboard/IRecordMoreOpt;

    .line 203
    new-instance v8, Lio/reactivex/disposables/CompositeDisposable;

    .line 205
    invoke-direct {v8}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 208
    iput-object v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->q:Lio/reactivex/disposables/CompositeDisposable;

    .line 210
    new-instance v8, Lcom/baidu/f;

    .line 212
    invoke-direct {v8, v0, v3}, Lcom/baidu/f;-><init>(Ljava/lang/Object;I)V

    .line 215
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v8}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 225
    move-result v8

    .line 226
    iput-boolean v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->o:Z

    .line 228
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v8}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 235
    move-result v8

    .line 236
    iput-boolean v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->p:Z

    .line 238
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 241
    move-result v8

    .line 242
    iput-boolean v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->n:Z

    .line 244
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 247
    move-result v8

    .line 248
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getFloatColor()I

    .line 251
    move-result v9

    .line 252
    invoke-static {}, Lcom/baidu/input/lazy/LazyCorpusColorPick;->e()Z

    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_117

    .line 258
    sget-object v10, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 260
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v10

    .line 264
    const v11, 0x7f0609d5

    .line 267
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 270
    move-result v10

    .line 271
    sget-boolean v11, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 273
    if-eqz v11, :cond_11b

    .line 275
    invoke-static {v10}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    .line 278
    move-result v10

    .line 279
    goto :goto_11b

    .line 280
    :cond_117
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getSelectedColor()I

    .line 283
    move-result v10

    .line 284
    :cond_11b
    :goto_11b
    iput v10, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->w:I

    .line 286
    iget-boolean v10, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->o:Z

    .line 288
    const/4 v11, -0x1

    .line 289
    if-eqz v10, :cond_133

    .line 291
    iput v11, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->z:I

    .line 293
    const v9, -0xbabaa6

    .line 296
    iput v9, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->A:I

    .line 298
    const v9, -0xb0b0c

    .line 301
    const v10, -0x433e37

    .line 304
    const v12, -0x564f48

    .line 307
    goto :goto_13d

    .line 308
    :cond_133
    iput v9, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->z:I

    .line 310
    iput v8, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->A:I

    .line 312
    const v10, 0xffffff

    .line 315
    and-int v12, v8, v10

    .line 317
    move v10, v8

    .line 318
    :goto_13d
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 321
    move-result-object v13

    .line 322
    invoke-virtual {v13}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 325
    move-result v13

    .line 326
    if-eqz v13, :cond_14d

    .line 328
    const v13, -0x5000001

    .line 331
    :goto_14a
    and-int/2addr v9, v13

    .line 332
    and-int/2addr v12, v13

    .line 333
    goto :goto_15b

    .line 334
    :cond_14d
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 337
    move-result v13

    .line 338
    if-ne v13, v5, :cond_157

    .line 340
    const v13, -0xb000001

    .line 343
    goto :goto_14a

    .line 344
    :cond_157
    const v13, -0xd000001

    .line 347
    goto :goto_14a

    .line 348
    :goto_15b
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 351
    move-result-object v13

    .line 352
    const v14, 0x7f0d01d2

    .line 355
    invoke-virtual {v13, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 358
    const v13, 0x7f0a0ef6

    .line 361
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 364
    move-result-object v13

    .line 365
    check-cast v13, Landroid/widget/RelativeLayout;

    .line 367
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 370
    move-result-object v14

    .line 371
    const v15, 0x7f0d01d3

    .line 374
    invoke-virtual {v14, v15, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 377
    move-result-object v14

    .line 378
    iget v15, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->a:I

    .line 380
    invoke-virtual {v13, v14, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 383
    const v14, 0x7f0a0d41

    .line 386
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 389
    move-result-object v14

    .line 390
    check-cast v14, Landroid/widget/TextView;

    .line 392
    iget-boolean v15, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->o:Z

    .line 394
    if-eqz v15, :cond_192

    .line 396
    const v15, -0x666667

    .line 399
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    goto :goto_195

    .line 403
    :cond_192
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    :goto_195
    sget-object v15, Lcom/baidu/input/pub/ImeBaseGlobal;->y:Ljava/lang/String;

    .line 408
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    move-result v15

    .line 412
    if-eqz v15, :cond_19e

    .line 414
    goto :goto_1b5

    .line 415
    :cond_19e
    sget-object v15, Lcom/baidu/input/ime/front/ClipboardPanelListView;->C:[Ljava/lang/String;

    .line 417
    move v6, v7

    .line 418
    :goto_1a1
    if-ge v6, v4, :cond_1b5

    .line 420
    aget-object v4, v15, v6

    .line 422
    sget-object v11, Lcom/baidu/input/pub/ImeBaseGlobal;->y:Ljava/lang/String;

    .line 424
    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 427
    move-result v4

    .line 428
    if-eqz v4, :cond_1b1

    .line 430
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 433
    goto :goto_1ba

    .line 434
    :cond_1b1
    add-int/2addr v6, v5

    .line 435
    const/4 v4, 0x2

    .line 436
    const/4 v11, -0x1

    .line 437
    goto :goto_1a1

    .line 438
    :cond_1b5
    :goto_1b5
    const/16 v4, 0x8

    .line 440
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :goto_1ba
    const-wide/high16 v16, 0x401e000000000000L  # 7.5

    .line 445
    invoke-static/range {v16 .. v17}, Lcom/baidu/util/PixelUtil;->toPixelFromDIP(D)F

    .line 448
    move-result v4

    .line 449
    const/high16 v6, 0x41200000  # 10.0f

    .line 451
    invoke-static {v6}, Lcom/baidu/util/PixelUtil;->toPixelFromDIP(F)F

    .line 454
    move-result v6

    .line 455
    iget v11, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->z:I

    .line 457
    invoke-virtual {v13, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 460
    const v11, 0x7f0a0707

    .line 463
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    move-result-object v11

    .line 467
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 470
    const v11, 0x7f0a1b4b

    .line 473
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 476
    move-result-object v11

    .line 477
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 480
    const v11, 0x7f0a1a8b

    .line 483
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    move-result-object v11

    .line 487
    check-cast v11, Lcom/baidu/input/acgfont/ImeTextView;

    .line 489
    iput-object v11, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d:Lcom/baidu/input/acgfont/ImeTextView;

    .line 491
    const v11, 0x7f0a039e

    .line 494
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 497
    move-result-object v12

    .line 498
    check-cast v12, Landroid/widget/ImageButton;

    .line 500
    const v15, 0x7f0a0389

    .line 503
    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 506
    move-result-object v16

    .line 507
    move-object/from16 v5, v16

    .line 509
    check-cast v5, Landroid/widget/ImageButton;

    .line 511
    const v2, 0x7f0a03b9

    .line 514
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 517
    move-result-object v18

    .line 518
    move-object/from16 v3, v18

    .line 520
    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 522
    iput-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->u:Lcom/airbnb/lottie/LottieAnimationView;

    .line 524
    const v3, 0x7f0a035d

    .line 527
    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 530
    move-result-object v3

    .line 531
    check-cast v3, Landroid/widget/TextView;

    .line 533
    iput-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 535
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 538
    move-result-object v3

    .line 539
    iput-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->v:Landroid/view/View;

    .line 541
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d:Lcom/baidu/input/acgfont/ImeTextView;

    .line 543
    iget v11, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->A:I

    .line 545
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-boolean v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->o:Z

    .line 550
    const v11, 0x7f0809d0

    .line 553
    const v13, 0x7f0809b9

    .line 556
    const v2, 0x7f0809c0

    .line 559
    if-eqz v3, :cond_24a

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 568
    move-result-object v2

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 576
    move-result-object v3

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 580
    move-result-object v8

    .line 581
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 584
    move-result-object v8

    .line 585
    goto/16 :goto_340

    .line 587
    :cond_24a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 590
    move-result-object v3

    .line 591
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 594
    move-result-object v2

    .line 595
    invoke-static {v2, v8}, Lcom/baidu/util/GraphicsLibrary;->getBitmapByColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 598
    move-result-object v2

    .line 599
    new-instance v3, Lcom/baidu/input/ime/front/pub/BackgroundStateListDrawable;

    .line 601
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 606
    move-result-object v7

    .line 607
    invoke-direct {v15, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 610
    invoke-direct {v3, v15}, Lcom/baidu/input/ime/front/pub/BackgroundStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 616
    move-result-object v2

    .line 617
    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 620
    move-result-object v2

    .line 621
    invoke-static {v2, v8}, Lcom/baidu/util/GraphicsLibrary;->getBitmapByColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 624
    move-result-object v2

    .line 625
    new-instance v7, Lcom/baidu/input/ime/front/pub/BackgroundStateListDrawable;

    .line 627
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 632
    move-result-object v15

    .line 633
    invoke-direct {v13, v15, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 636
    invoke-direct {v7, v13}, Lcom/baidu/input/ime/front/pub/BackgroundStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 642
    move-result-object v2

    .line 643
    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 646
    move-result-object v2

    .line 647
    invoke-static {v2, v8}, Lcom/baidu/util/GraphicsLibrary;->getBitmapByColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 650
    move-result-object v2

    .line 651
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 656
    move-result-object v13

    .line 657
    invoke-direct {v11, v13, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 660
    new-instance v2, Ljava/util/ArrayList;

    .line 662
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    iget-boolean v13, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->n:Z

    .line 667
    if-eqz v13, :cond_2d8

    .line 669
    new-instance v13, Lcom/airbnb/lottie/model/KeyPath;

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 674
    move-result-object v15

    .line 675
    move-object/from16 v19, v3

    .line 677
    const v3, 0x7f030038

    .line 680
    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 683
    move-result-object v3

    .line 684
    invoke-direct {v13, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 687
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 695
    move-result-object v13

    .line 696
    const v15, 0x7f030036

    .line 699
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 702
    move-result-object v13

    .line 703
    invoke-direct {v3, v13}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 706
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 714
    move-result-object v13

    .line 715
    const v15, 0x7f030037

    .line 718
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 721
    move-result-object v13

    .line 722
    invoke-direct {v3, v13}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 725
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    goto :goto_2e8

    .line 729
    :cond_2d8
    move-object/from16 v19, v3

    .line 731
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 733
    const-string v13, "**"

    .line 735
    filled-new-array {v13}, [Ljava/lang/String;

    .line 738
    move-result-object v13

    .line 739
    invoke-direct {v3, v13}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 742
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :goto_2e8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 748
    move-result-object v2

    .line 749
    :goto_2ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 752
    move-result v3

    .line 753
    if-eqz v3, :cond_328

    .line 755
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 758
    move-result-object v3

    .line 759
    check-cast v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 761
    new-instance v13, Lcom/airbnb/lottie/SimpleColorFilter;

    .line 763
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 766
    move-result v15

    .line 767
    move-object/from16 v20, v2

    .line 769
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    .line 772
    move-result v2

    .line 773
    move-object/from16 v21, v7

    .line 775
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 778
    move-result v7

    .line 779
    move-object/from16 v22, v11

    .line 781
    const/16 v11, 0xff

    .line 783
    invoke-static {v11, v15, v2, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 786
    move-result v2

    .line 787
    invoke-direct {v13, v2}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 790
    new-instance v2, Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 792
    invoke-direct {v2, v13}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Landroid/graphics/ColorFilter;)V

    .line 795
    iget-object v7, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->u:Lcom/airbnb/lottie/LottieAnimationView;

    .line 797
    sget-object v11, Lcom/airbnb/lottie/LottieProperty;->y:Landroid/graphics/ColorFilter;

    .line 799
    invoke-virtual {v7, v3, v11, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 802
    move-object/from16 v2, v20

    .line 804
    move-object/from16 v7, v21

    .line 806
    move-object/from16 v11, v22

    .line 808
    goto :goto_2ec

    .line 809
    :cond_328
    move-object/from16 v21, v7

    .line 811
    move-object/from16 v22, v11

    .line 813
    iget-object v2, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->u:Lcom/airbnb/lottie/LottieAnimationView;

    .line 815
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    .line 818
    move-result v3

    .line 819
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 822
    iget-object v2, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 824
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 827
    move-object/from16 v2, v19

    .line 829
    move-object/from16 v3, v21

    .line 831
    move-object/from16 v8, v22

    .line 833
    :goto_340
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    const v2, 0x7f0a0eee

    .line 842
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 845
    move-result-object v2

    .line 846
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 848
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 851
    const v3, 0x7f0a0dfb

    .line 854
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 857
    move-result-object v3

    .line 858
    check-cast v3, Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 860
    iput-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 862
    const v3, 0x7f0a0803

    .line 865
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 868
    move-result-object v3

    .line 869
    check-cast v3, Lcom/baidu/input/acgfont/ImeTextView;

    .line 871
    iput-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 873
    const v7, 0x7f1206f4

    .line 876
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 881
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 886
    const/4 v7, 0x0

    .line 887
    invoke-virtual {v3, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 890
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 892
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 895
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 900
    move-result-object v9

    .line 901
    const v10, 0x7f07014c

    .line 904
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 907
    move-result v9

    .line 908
    invoke-virtual {v3, v7, v7, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 911
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->v:Landroid/view/View;

    .line 913
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    const v3, 0x7f0a0389

    .line 919
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 922
    move-result-object v3

    .line 923
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 928
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    const v3, 0x7f0a03b9

    .line 934
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 937
    move-result-object v3

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/baidu/input/ime/front/ClipboardPanelListView;->getOnSyncBtnClick()Landroid/view/View$OnClickListener;

    .line 941
    move-result-object v7

    .line 942
    new-instance v9, Lcom/baidu/jd;

    .line 944
    const/4 v10, 0x4

    .line 945
    invoke-direct {v9, v3, v10}, Lcom/baidu/jd;-><init>(Ljava/lang/Object;I)V

    .line 948
    sget v3, Lio/reactivex/internal/functions/ObjectHelper;->a:I

    .line 950
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 952
    invoke-direct {v3, v9}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Lio/reactivex/ObservableOnSubscribe;)V

    .line 955
    const/16 v9, 0x1f4

    .line 957
    int-to-long v9, v9

    .line 958
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 960
    invoke-virtual {v3, v9, v10, v11}, Lio/reactivex/Observable;->D(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;

    .line 963
    move-result-object v3

    .line 964
    new-instance v9, Lcom/baidu/jd;

    .line 966
    const/4 v10, 0x6

    .line 967
    invoke-direct {v9, v7, v10}, Lcom/baidu/jd;-><init>(Ljava/lang/Object;I)V

    .line 970
    invoke-virtual {v3, v9}, Lio/reactivex/Observable;->w(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 973
    sget v3, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 975
    sget v7, Lcom/baidu/input/pub/ImeBaseGlobal;->q:F

    .line 977
    div-float/2addr v3, v7

    .line 978
    const v7, 0x3f733333  # 0.95f

    .line 981
    cmpg-float v7, v3, v7

    .line 983
    if-gez v7, :cond_414

    .line 985
    invoke-virtual {v12, v3}, Landroid/view/View;->setScaleX(F)V

    .line 988
    invoke-virtual {v12, v3}, Landroid/view/View;->setScaleY(F)V

    .line 991
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 994
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 997
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 999
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1002
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 1004
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1007
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1009
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1012
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1014
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1017
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1019
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1022
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1024
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1027
    invoke-virtual {v14, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1030
    invoke-virtual {v14, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1033
    mul-float/2addr v4, v3

    .line 1034
    mul-float/2addr v6, v3

    .line 1035
    iget-object v5, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->u:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1037
    new-instance v7, Lcom/baidu/sd;

    .line 1039
    invoke-direct {v7, v0, v3}, Lcom/baidu/sd;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;F)V

    .line 1042
    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1045
    :cond_414
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1048
    move-result-object v3

    .line 1049
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1051
    float-to-int v5, v6

    .line 1052
    float-to-int v6, v4

    .line 1053
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1056
    sget-boolean v3, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 1058
    if-eqz v3, :cond_431

    .line 1060
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1062
    const/4 v5, -0x1

    .line 1063
    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1066
    new-instance v5, Lcom/baidu/input/ime/front/ShadowView;

    .line 1068
    invoke-direct {v5, v1}, Lcom/baidu/input/ime/front/ShadowView;-><init>(Landroid/content/Context;)V

    .line 1071
    invoke-virtual {v0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    :cond_431
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 1077
    move-result v1

    .line 1078
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1080
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    .line 1083
    move-result v3

    .line 1084
    float-to-int v3, v3

    .line 1085
    add-int/2addr v1, v3

    .line 1086
    iget v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->a:I

    .line 1088
    add-int/2addr v1, v3

    .line 1089
    iget-object v3, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1091
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    .line 1094
    move-result v3

    .line 1095
    add-int/2addr v3, v1

    .line 1096
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 1099
    move-result v1

    .line 1100
    add-int/2addr v1, v3

    .line 1101
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 1104
    move-result v2

    .line 1105
    add-int/2addr v2, v1

    .line 1106
    const/high16 v1, 0x40000000  # 2.0f

    .line 1108
    mul-float/2addr v4, v1

    .line 1109
    float-to-int v1, v4

    .line 1110
    add-int/2addr v2, v1

    .line 1111
    iget v1, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->y:I

    .line 1113
    if-le v1, v2, :cond_460

    .line 1115
    iget-object v1, v0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 1117
    const/4 v2, 0x0

    .line 1118
    invoke-virtual {v1, v2, v8, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1121
    :cond_460
    const v1, 0x7f0a1406

    .line 1124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1127
    move-result-object v1

    .line 1128
    const v2, 0x7f0a1fb1

    .line 1131
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1134
    move-result-object v2

    .line 1135
    check-cast v2, Landroid/widget/TextView;

    .line 1137
    invoke-static {}, Lcom/baidu/input/ime/front/privilege/PrivilegePackageManager;->e()Z

    .line 1140
    move-result v3

    .line 1141
    const-wide/16 v4, 0xbb8

    .line 1143
    if-eqz v3, :cond_4a5

    .line 1145
    sget-object v3, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1147
    const-string v6, "pref_key_wechat_timeline_proguard_dialog_showed"

    .line 1149
    const/4 v7, 0x0

    .line 1150
    invoke-interface {v3, v6, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1153
    move-result v6

    .line 1154
    if-nez v6, :cond_4a5

    .line 1156
    const-string v6, "pref_key_wechat_timeline_proguard_guide_showed"

    .line 1158
    invoke-interface {v3, v6, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1161
    move-result v6

    .line 1162
    if-nez v6, :cond_4a5

    .line 1164
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    const-string v1, "pref_key_wechat_timeline_proguard_guide_showed_BUBBLE"

    .line 1169
    invoke-interface {v3, v1, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1172
    move-result v6

    .line 1173
    if-nez v6, :cond_4a5

    .line 1175
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    new-instance v6, Lcom/baidu/td;

    .line 1180
    invoke-direct {v6, v2, v7}, Lcom/baidu/td;-><init>(Landroid/widget/TextView;I)V

    .line 1183
    invoke-virtual {v2, v6, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    const/4 v6, 0x1

    .line 1187
    invoke-interface {v3, v1, v6}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1190
    :cond_4a5
    const v1, 0x7f0a052c

    .line 1193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1196
    move-result-object v1

    .line 1197
    check-cast v1, Landroid/widget/TextView;

    .line 1199
    sget-object v3, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1201
    const-string v6, "pref_key_enter_clipboard"

    .line 1203
    const/4 v7, 0x0

    .line 1204
    invoke-interface {v3, v6, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1207
    move-result v8

    .line 1208
    if-nez v8, :cond_4d2

    .line 1210
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1213
    move-result v8

    .line 1214
    if-eqz v8, :cond_4d2

    .line 1216
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    new-instance v8, Lcom/baidu/td;

    .line 1221
    const/4 v9, 0x1

    .line 1222
    invoke-direct {v8, v1, v9}, Lcom/baidu/td;-><init>(Landroid/widget/TextView;I)V

    .line 1225
    invoke-virtual {v1, v8, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1228
    invoke-interface {v3, v6, v9}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1231
    move-result-object v6

    .line 1232
    invoke-interface {v6}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 1235
    :cond_4d2
    const-string v6, "pref_key_clipboard_back_hint_shown"

    .line 1237
    invoke-interface {v3, v6, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1240
    move-result v8

    .line 1241
    if-nez v8, :cond_520

    .line 1243
    const-string v8, "pref_key_clipboard_back_hint_should_show"

    .line 1245
    invoke-interface {v3, v8, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 1248
    move-result v9

    .line 1249
    if-eqz v9, :cond_520

    .line 1251
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1254
    move-result v2

    .line 1255
    if-eqz v2, :cond_520

    .line 1257
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 1260
    move-result v2

    .line 1261
    if-eqz v2, :cond_520

    .line 1263
    const v2, 0x7f0a01e8

    .line 1266
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1269
    move-result-object v2

    .line 1270
    check-cast v2, Landroid/widget/TextView;

    .line 1272
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    new-instance v9, Lcom/baidu/td;

    .line 1277
    const/4 v10, 0x2

    .line 1278
    invoke-direct {v9, v2, v10}, Lcom/baidu/td;-><init>(Landroid/widget/TextView;I)V

    .line 1281
    invoke-virtual {v1, v9, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1284
    const-class v1, Lcom/baidu/stats/impl/StreamStats;

    .line 1286
    invoke-static {v1}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 1289
    move-result-object v1

    .line 1290
    check-cast v1, Lcom/baidu/stats/impl/StreamStats;

    .line 1292
    const-string v2, "BIEPagePasteboardPanel"

    .line 1294
    const-string v4, "BISEventDisplay"

    .line 1296
    const-string v5, "BIEElementPasteboardAutoReturnTip"

    .line 1298
    const/4 v9, 0x0

    .line 1299
    invoke-virtual {v1, v2, v4, v5, v9}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1302
    invoke-interface {v3, v8, v7}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1305
    const/4 v1, 0x1

    .line 1306
    invoke-interface {v3, v6, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 1309
    move-result-object v1

    .line 1310
    invoke-interface {v1}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 1313
    :cond_520
    new-instance v1, Lcom/baidu/input/ime/front/b;

    .line 1315
    invoke-direct {v1, v0}, Lcom/baidu/input/ime/front/b;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 1318
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d(Lcom/baidu/input/ime/front/b;)V

    .line 1321
    return-void
.end method

.method public static a(Lcom/baidu/input/ime/front/ClipboardPanelListView;Lcom/baidu/input/ime/front/clipboard/Record;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 6
    const-string v1, "pref_key_clipboard_auto_top"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    new-instance v0, Lcom/baidu/input/ime/front/c;

    .line 17
    invoke-direct {v0, p0, p1}, Lcom/baidu/input/ime/front/c;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;Lcom/baidu/input/ime/front/clipboard/Record;)V

    .line 20
    sget p0, Lio/reactivex/internal/functions/ObjectHelper;->a:I

    .line 22
    new-instance p0, Lio/reactivex/internal/operators/single/SingleCreate;

    .line 24
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/single/SingleCreate;-><init>(Lio/reactivex/SingleOnSubscribe;)V

    .line 27
    sget-object p1, Lio/reactivex/schedulers/Schedulers;->c:Lio/reactivex/Scheduler;

    .line 29
    invoke-virtual {p0, p1}, Lio/reactivex/Single;->k(Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lio/reactivex/Single;->g(Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/single/SingleObserveOn;

    .line 40
    move-result-object p0

    .line 41
    new-instance p1, Lcom/baidu/z9;

    .line 43
    const/16 v0, 0x16

    .line 45
    invoke-direct {p1, v0}, Lcom/baidu/z9;-><init>(I)V

    .line 48
    sget-object v0, Lio/reactivex/internal/functions/Functions;->e:Lio/reactivex/functions/Consumer;

    .line 50
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Single;->i(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 53
    :cond_34
    return-void
.end method

.method public static b(Lcom/baidu/input/ime/front/ClipboardPanelListView;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-class v0, Lcom/baidu/input/cocomodule/input/IBaseInput;

    .line 6
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/baidu/input/cocomodule/input/IBaseInput;

    .line 12
    sget-object v1, Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;->h:Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;

    .line 14
    invoke-interface {v0, v1}, Lcom/baidu/input/cocomodule/input/IBaseInput;->C0(Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;)V

    .line 17
    invoke-static {p1}, Lcom/baidu/input/ime/front/privilege/PrivilegePackageManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x2

    .line 22
    sput v0, Lcom/baidu/input/ime/connection/CommitTextWatcher;->a:I

    .line 24
    invoke-static {p1}, Lcom/baidu/input/ime/front/utils/FrontUtils;->k(Ljava/lang/String;)V

    .line 27
    iget p1, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->r:I

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 31
    iput p1, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->r:I

    .line 33
    return-void
.end method

.method private getClickableSpan()Landroid/text/style/ClickableSpan;
    .registers 2

    .line 1
    new-instance v0, Lcom/baidu/input/ime/front/ClipboardPanelListView$PressableClickableSpan;

    .line 3
    invoke-direct {v0, p0}, Lcom/baidu/input/ime/front/ClipboardPanelListView$PressableClickableSpan;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;)V

    .line 6
    return-object v0
.end method

.method private getOnSyncBtnClick()Landroid/view/View$OnClickListener;
    .registers 3

    .line 1
    new-instance v0, Lcom/baidu/ha;

    .line 3
    const/16 v1, 0x9

    .line 5
    invoke-direct {v0, v1}, Lcom/baidu/ha;-><init>(I)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public final c(Z)V
    .registers 20

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v0, p1

    .line 5
    iget-object v7, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->u:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    iget-object v8, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->v:Landroid/view/View;

    .line 9
    iget-object v9, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->t:Landroid/widget/TextView;

    .line 11
    iget-boolean v10, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->n:Z

    .line 13
    iget v11, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->w:I

    .line 15
    const/4 v12, 0x0

    .line 16
    iget-boolean v13, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->p:Z

    .line 18
    iget-object v1, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 20
    iput-boolean v0, v1, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;->a:Z

    .line 22
    if-nez v0, :cond_1c

    .line 24
    iget-object v2, v1, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;->d:Ljava/util/HashSet;

    .line 26
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 29
    :cond_1c
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    if-eqz v0, :cond_108

    .line 34
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 36
    const v15, 0x7f120392

    .line 39
    const v5, 0x7f0a036e

    .line 42
    const v4, 0x7f0a0352

    .line 45
    if-nez v0, :cond_8b

    .line 47
    const v0, 0x7f0a0ff4

    .line 50
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/ViewStub;

    .line 56
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/baidu/d4;

    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-direct {v1, v2}, Lcom/baidu/d4;-><init>(I)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    move-object v3, v0

    .line 76
    check-cast v3, Landroid/widget/CheckBox;

    .line 78
    new-instance v2, Lcom/baidu/vd;

    .line 80
    invoke-direct {v2, v6, v12}, Lcom/baidu/vd;-><init>(Ljava/lang/Object;I)V

    .line 83
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    move-object v1, v0

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .line 93
    new-instance v0, Lcom/baidu/dc;

    .line 95
    const/4 v4, 0x7

    .line 96
    invoke-direct {v0, v6, v3, v4}, Lcom/baidu/dc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 112
    new-instance v14, Lcom/baidu/input/ime/front/d;

    .line 114
    move-object v15, v0

    .line 115
    move-object v0, v14

    .line 116
    move-object/from16 v16, v1

    .line 118
    move-object/from16 v1, p0

    .line 120
    move-object/from16 v17, v2

    .line 122
    move-object/from16 v2, v16

    .line 124
    move-object/from16 v16, v3

    .line 126
    move-object v3, v4

    .line 127
    const v12, 0x7f0a0352

    .line 130
    move-object/from16 v4, v16

    .line 132
    move-object/from16 v5, v17

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/baidu/input/ime/front/d;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/baidu/vd;)V

    .line 137
    iput-object v14, v15, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;->e:Lcom/baidu/input/ime/front/d;

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move v12, v4

    .line 141
    :goto_8c
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/CheckBox;

    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    if-eqz v13, :cond_a2

    .line 153
    if-eqz v10, :cond_9e

    .line 155
    const v1, -0x29292a

    .line 158
    goto :goto_a3

    .line 159
    :cond_9e
    const v1, -0x948677  # -3.1299963E38f

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v1, v11

    .line 164
    :goto_a3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const v0, 0x7f0a036e

    .line 170
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/TextView;

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v1

    .line 180
    const v2, 0x7f120392

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    const/4 v2, 0x0

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v3

    .line 192
    const/4 v4, 0x1

    .line 193
    new-array v4, v4, [Ljava/lang/Object;

    .line 195
    aput-object v3, v4, v2

    .line 197
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    if-eqz v13, :cond_d1

    .line 206
    const v1, -0x299aa5

    .line 209
    goto :goto_d2

    .line 210
    :cond_d1
    move v1, v11

    .line 211
    :goto_d2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const/16 v0, 0x8

    .line 224
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 232
    invoke-static {}, Lcom/baidu/input/lazy/LazyCorpusColorPick;->c()Landroid/graphics/drawable/Drawable;

    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 241
    const v1, 0x7f0a0707

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    move-result-object v0

    .line 248
    if-eqz v13, :cond_fe

    .line 250
    if-eqz v10, :cond_fe

    .line 252
    const/16 v12, 0x8

    .line 254
    goto :goto_ff

    .line 255
    :cond_fe
    const/4 v12, 0x0

    .line 256
    :goto_ff
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 259
    if-nez v13, :cond_11b

    .line 261
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    goto :goto_11b

    .line 265
    :cond_108
    iget-object v0, v6, Lcom/baidu/input/ime/front/ClipboardPanelListView;->s:Landroid/view/View;

    .line 267
    const/16 v1, 0x8

    .line 269
    if-eqz v0, :cond_111

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_111
    const/4 v0, 0x0

    .line 275
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_11b
    :goto_11b
    return-void
.end method

.method public final d(Lcom/baidu/input/ime/front/b;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->q:Lio/reactivex/disposables/CompositeDisposable;

    .line 3
    new-instance v1, Lcom/baidu/jd;

    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/baidu/jd;-><init>(Ljava/lang/Object;I)V

    .line 9
    sget v2, Lio/reactivex/internal/functions/ObjectHelper;->a:I

    .line 11
    new-instance v2, Lio/reactivex/internal/operators/single/SingleCreate;

    .line 13
    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/single/SingleCreate;-><init>(Lio/reactivex/SingleOnSubscribe;)V

    .line 16
    sget-object v1, Lio/reactivex/schedulers/Schedulers;->c:Lio/reactivex/Scheduler;

    .line 18
    invoke-virtual {v2, v1}, Lio/reactivex/Single;->k(Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->g(Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/single/SingleObserveOn;

    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/baidu/z1;

    .line 32
    const/16 v3, 0x17

    .line 34
    invoke-direct {v2, p0, p1, v3}, Lcom/baidu/z1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    sget-object p1, Lio/reactivex/internal/functions/Functions;->e:Lio/reactivex/functions/Consumer;

    .line 39
    invoke-virtual {v1, v2, p1}, Lio/reactivex/Single;->i(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->e(Lio/reactivex/disposables/Disposable;)Z

    .line 46
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final e(Landroid/widget/TextView;Ljava/util/List;)V
    .registers 9

    .line 1
    if-eqz p2, :cond_32

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_32

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/text/Spannable;

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2d

    .line 22
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/baidu/input/ime/front/recognition/SymbolData;

    .line 28
    if-eqz v2, :cond_2a

    .line 30
    invoke-direct {p0}, Lcom/baidu/input/ime/front/ClipboardPanelListView;->getClickableSpan()Landroid/text/style/ClickableSpan;

    .line 33
    move-result-object v3

    .line 34
    iget v4, v2, Lcom/baidu/input/ime/front/recognition/SymbolData;->a:I

    .line 36
    const/16 v5, 0x21

    .line 38
    iget v2, v2, Lcom/baidu/input/ime/front/recognition/SymbolData;->b:I

    .line 40
    invoke-interface {v0, v3, v4, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_f

    .line 46
    :cond_2d
    const/high16 p2, -0x10000

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 51
    :cond_32
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c:Lcom/baidu/input/acgfont/ImeTextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->b:Lcom/baidu/input/ime/front/pla/MultiColumnListView;

    .line 6
    iget-object v3, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 8
    if-nez v3, :cond_14

    .line 10
    new-instance v3, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 12
    invoke-direct {v3, p0, p1}, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;-><init>(Lcom/baidu/input/ime/front/ClipboardPanelListView;Ljava/util/List;)V

    .line 15
    iput-object v3, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 17
    invoke-virtual {v2, v3}, Lcom/baidu/input/ime/front/pla/internal/PLA_ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    goto :goto_25

    .line 21
    :cond_14
    if-eqz p1, :cond_1e

    .line 23
    iget-object v3, v3, Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;->c:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 28
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_1e
    iget-object v3, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->i:Lcom/baidu/input/ime/front/ClipboardPanelListView$ClipboardAdapter;

    .line 33
    if-eqz v3, :cond_25

    .line 35
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 38
    :cond_25
    :goto_25
    const/16 v3, 0x8

    .line 40
    if-eqz p1, :cond_36

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    move-result v4

    .line 46
    if-lez v4, :cond_36

    .line 48
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    goto :goto_3c

    .line 55
    :cond_36
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    move-result p1

    .line 65
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d:Lcom/baidu/input/acgfont/ImeTextView;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v2

    .line 71
    const v3, 0x7f1203ba

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object p1

    .line 82
    const/16 v3, 0x12c

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v3

    .line 88
    const/4 v4, 0x2

    .line 89
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    aput-object p1, v4, v1

    .line 93
    const/4 p1, 0x1

    .line 94
    aput-object v3, v4, p1

    .line 96
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public final g(Landroid/content/Context;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .registers 9

    .line 1
    new-instance v0, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;

    .line 3
    invoke-direct {v0, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p2, p3}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->e([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->b(Z)V

    .line 13
    new-instance p2, Lcom/baidu/input/ime/front/ClipboardPanelListView$3;

    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object p3, v0, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->a:Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 20
    invoke-interface {p3, p2}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->Pf(Landroid/content/DialogInterface$OnCancelListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 23
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0, p2}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->q(Landroid/graphics/Typeface;)V

    .line 34
    invoke-interface {p3}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->a()Landroid/app/Dialog;

    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Lcom/baidu/input/ime/front/ClipboardPanelListView$4;

    .line 40
    invoke-direct {p3, p2}, Lcom/baidu/input/ime/front/ClipboardPanelListView$4;-><init>(Landroid/app/Dialog;)V

    .line 43
    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    move-result-object p3

    .line 57
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 59
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 61
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 63
    invoke-virtual {v0}, Lcom/baidu/input/ime/view/InputContainerView;->getWindowToken()Landroid/os/IBinder;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 69
    const/16 v0, 0x3ea

    .line 71
    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 73
    new-instance v0, Lcom/baidu/input/ime/front/utils/RealMetrics;

    .line 75
    invoke-direct {v0}, Lcom/baidu/input/ime/front/utils/RealMetrics;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->e:Landroid/content/Context;

    .line 80
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/front/utils/RealMetrics;->a(Landroid/content/Context;)V

    .line 83
    iget v1, v0, Lcom/baidu/input/ime/front/utils/RealMetrics;->a:I

    .line 85
    sget-short v2, Lcom/baidu/input/pub/ImeBaseGlobal;->i:S

    .line 87
    if-le v1, v2, :cond_5f

    .line 89
    const/16 v3, 0x50

    .line 91
    iput v3, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    sub-int/2addr v1, v2

    .line 94
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    const-string v2, "screenHeight = "

    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    sget-short v2, Lcom/baidu/input/pub/ImeBaseGlobal;->i:S

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x0

    .line 113
    new-array v3, v2, [Ljava/lang/Object;

    .line 115
    const-string v4, "zzx"

    .line 117
    invoke-static {v4, v1, v3}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "realHeight = "

    .line 124
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget v0, v0, Lcom/baidu/input/ime/front/utils/RealMetrics;->a:I

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    new-array v1, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {v4, v0, v1}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 147
    return-object p2
.end method

.method public final h(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;

    .line 3
    invoke-direct {v0, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 6
    const-string p1, ""

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->p(Ljava/lang/CharSequence;)V

    .line 17
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_19

    .line 23
    invoke-virtual {v0, p2}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->g(Ljava/lang/CharSequence;)V

    .line 26
    :cond_19
    const p1, 0x7f1202a7

    .line 29
    invoke-virtual {v0, p1, p3}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->m(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 32
    const p1, 0x7f1202a3

    .line 35
    invoke-virtual {v0, p1, p4}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 38
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->q(Landroid/graphics/Typeface;)V

    .line 49
    iget-object p1, v0, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->a:Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 51
    invoke-interface {p1}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->a()Landroid/app/Dialog;

    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/baidu/input/ime/front/ClipboardPanelListView$2;

    .line 57
    invoke-direct {p2, p1}, Lcom/baidu/input/ime/front/ClipboardPanelListView$2;-><init>(Landroid/app/Dialog;)V

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 74
    move-result-object p3

    .line 75
    sget-object p4, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 77
    iget-object p4, p4, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 79
    iget-object p4, p4, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 81
    invoke-virtual {p4}, Lcom/baidu/input/ime/view/InputContainerView;->getWindowToken()Landroid/os/IBinder;

    .line 84
    move-result-object p4

    .line 85
    iput-object p4, p3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    const/16 p4, 0x3ea

    .line 89
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 91
    new-instance p4, Lcom/baidu/input/ime/front/utils/RealMetrics;

    .line 93
    invoke-direct {p4}, Lcom/baidu/input/ime/front/utils/RealMetrics;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->e:Landroid/content/Context;

    .line 98
    invoke-virtual {p4, v0}, Lcom/baidu/input/ime/front/utils/RealMetrics;->a(Landroid/content/Context;)V

    .line 101
    iget p4, p4, Lcom/baidu/input/ime/front/utils/RealMetrics;->a:I

    .line 103
    sget-short v0, Lcom/baidu/input/pub/ImeBaseGlobal;->i:S

    .line 105
    if-le p4, v0, :cond_71

    .line 107
    const/16 v1, 0x50

    .line 109
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    sub-int/2addr p4, v0

    .line 112
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 114
    :cond_71
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 120
    iput-object p1, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->B:Landroid/app/Dialog;

    .line 122
    return-void
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/front/ClipboardPanelListView;->d(Lcom/baidu/input/ime/front/b;)V

    .line 5
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0389

    .line 8
    if-ne p1, v0, :cond_18

    .line 10
    sget-object p1, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 12
    invoke-virtual {p1}, Lcom/baidu/input/ime/editor/KeymapPopupView;->e()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_ac

    .line 18
    sget-object p1, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 20
    invoke-virtual {p1}, Lcom/baidu/input/ime/editor/KeymapPopupView;->b()V

    .line 23
    goto/16 :goto_ac

    .line 25
    :cond_18
    const v0, 0x7f0a039e

    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p1, v0, :cond_a4

    .line 31
    invoke-static {}, Lcom/baidu/input/ime/front/privilege/PrivilegePackageManager;->e()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2c

    .line 37
    sget-object p1, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 39
    const-string v0, "pref_key_wechat_timeline_proguard_guide_showed"

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-interface {p1, v0, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 45
    :cond_2c
    sget-object p1, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 47
    const/16 v0, 0x96

    .line 49
    invoke-static {p1, v0}, Lcom/baidu/nl;->z(Lcom/baidu/input/di/ImeComponent;I)V

    .line 52
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 54
    if-eqz p1, :cond_ac

    .line 56
    new-instance v0, Lcom/baidu/input/ime/front/clipboard/ClipboardSettingDelegate;

    .line 58
    invoke-direct {v0}, Lcom/baidu/input/ime/front/clipboard/ClipboardSettingDelegate;-><init>()V

    .line 61
    new-instance v0, Lcom/baidu/r3;

    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-direct {v0, p0, v2}, Lcom/baidu/r3;-><init>(Ljava/lang/Object;I)V

    .line 67
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 69
    const v3, 0x7f1302ce

    .line 72
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance v3, Lcom/baidu/input/ime/front/ClipSettingView;

    .line 77
    invoke-direct {v3, v2}, Lcom/baidu/input/ime/front/ClipSettingView;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v3, v2}, Lcom/baidu/input/ime/front/ClipSettingView;->handleIntent(Landroid/content/Intent;)V

    .line 84
    new-instance v2, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;

    .line 86
    invoke-direct {v2, p1}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 89
    const v4, 0x7f1203b2

    .line 92
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2, v4}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->p(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v2, v3}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->r(Landroid/view/View;)V

    .line 102
    new-instance v4, Lcom/baidu/ya;

    .line 104
    const/4 v5, 0x2

    .line 105
    invoke-direct {v4, v3, v0, v5}, Lcom/baidu/ya;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    iget-object v0, v2, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->a:Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 110
    invoke-interface {v0, v4}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 113
    invoke-interface {v0}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->a()Landroid/app/Dialog;

    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/baidu/input/pub/ImeBaseGlobal;->D:Landroid/app/Dialog;

    .line 119
    invoke-static {v0}, Lcom/baidu/input/pub/Global;->e0(Landroid/app/Dialog;)V

    .line 122
    const v2, 0x7f0a1af3

    .line 125
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_9b

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object p1

    .line 135
    const v4, 0x7f0702da

    .line 138
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 141
    move-result p1

    .line 142
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_9b

    .line 151
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_9b
    new-instance p1, Lcom/baidu/za;

    .line 158
    invoke-direct {p1, v0}, Lcom/baidu/za;-><init>(Landroid/app/Dialog;)V

    .line 161
    invoke-virtual {v3, p1}, Lcom/baidu/input/ime/front/ClipSettingView;->setClipboardCleanClickListener(Lcom/baidu/input/ime/front/clipboard/IClipboardCleanClickListener;)V

    .line 164
    goto :goto_ac

    .line 165
    :cond_a4
    const v0, 0x7f0a035d

    .line 168
    if-ne p1, v0, :cond_ac

    .line 170
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/front/ClipboardPanelListView;->c(Z)V

    .line 173
    :cond_ac
    :goto_ac
    return-void
.end method

.method public final onExit()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->h:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_12

    .line 6
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->e:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->x:Landroid/content/BroadcastReceiver;

    .line 14
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/BroadcastReceiver;)V

    .line 17
    iput-boolean v1, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->h:Z

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->B:Landroid/app/Dialog;

    .line 21
    if-eqz v0, :cond_21

    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->B:Landroid/app/Dialog;

    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->q:Lio/reactivex/disposables/CompositeDisposable;

    .line 36
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->f()V

    .line 39
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 41
    const-string v2, "pref_key_clipboard_back_hint_shown"

    .line 43
    invoke-interface {v0, v2, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_60

    .line 49
    sget-object v2, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 51
    const-string v3, "pref_key_clipboard_auto_back"

    .line 53
    invoke-interface {v2, v3, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_60

    .line 59
    iget v2, p0, Lcom/baidu/input/ime/front/ClipboardPanelListView;->r:I

    .line 61
    const-string v3, "pref_key_clipboard_last_back_with_once_submit"

    .line 63
    const/4 v4, 0x1

    .line 64
    if-ne v2, v4, :cond_59

    .line 66
    invoke-interface {v0, v3, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_51

    .line 72
    const-string v1, "pref_key_clipboard_back_hint_should_show"

    .line 74
    invoke-interface {v0, v1, v4}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 81
    goto :goto_60

    .line 82
    :cond_51
    invoke-interface {v0, v3, v4}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    invoke-interface {v0, v3, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->putBoolean(Ljava/lang/String;Z)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 97
    :cond_60
    :goto_60
    return-void
.end method
