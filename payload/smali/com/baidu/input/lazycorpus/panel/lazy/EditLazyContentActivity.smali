.class public final Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;
.super Lcom/baidu/input/ImeHomeFinishActivity;
.source "Proguard"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00158\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"
    }
    d2 = {
        "Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;",
        "Lcom/baidu/input/ImeHomeFinishActivity;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "bundle",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "onBackPressed",
        "onPause",
        "finish",
        "",
        "shouldFinishWhenHome",
        "()Z",
        "onDestroy",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "lazycorpus_panel_release"
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
.field public static final synthetic l:I


# instance fields
.field public final synthetic d:Lkotlinx/coroutines/internal/ContextScope;

.field public e:Landroid/app/Dialog;

.field public f:Landroid/widget/EditText;

.field public g:Lcom/baidu/input/cocomodule/lazy/LazyContent;

.field public h:I

.field public i:Z

.field public final j:Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;

.field public final k:Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/baidu/input/ImeHomeFinishActivity;-><init>()V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->b()Lkotlinx/coroutines/internal/ContextScope;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->d:Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->h:I

    .line 13
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->r(Z)Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->j:Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;

    .line 23
    new-instance v1, Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;

    .line 25
    invoke-direct {v1, p0, v0}, Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;-><init>(Landroid/app/Activity;Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;)V

    .line 28
    iput-object v1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->k:Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;

    .line 30
    return-void
.end method

.method public static a(Landroid/widget/TextView;II)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Landroid/text/SpannableString;

    .line 5
    sget v3, Lkotlin/jvm/internal/StringCompanionObject;->a:I

    .line 7
    sget-object v3, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 9
    const v4, 0x7f1203ef

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    const-string v4, "getImeApp().getString(R.….content_limit_formatter)"

    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p2

    .line 29
    new-array v5, v1, [Ljava/lang/Object;

    .line 31
    aput-object v4, v5, v0

    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object p2, v5, v4

    .line 36
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    const/16 p2, 0xbae

    .line 49
    if-gt p2, p1, :cond_53

    .line 51
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 53
    const/high16 v1, -0x10000

    .line 55
    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, ""

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    move-result p1

    .line 79
    const/16 v1, 0x21

    .line 81
    invoke-virtual {v2, p2, v0, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    :cond_53
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public static final access$buildContent(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;ZLcom/baidu/input/cocomodule/lazy/LazyContent;)V
    .registers 19

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v8, 0x1

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1a

    .line 20
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 22
    const-string v3, "DEFAULT"

    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :cond_1a
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object v3

    .line 31
    const v4, 0x7f0d0223

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 39
    iget-object v4, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->j:Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;

    .line 41
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->i()I

    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    const v5, 0x7f0a0759

    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->c()I

    .line 62
    move-result v6

    .line 63
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v5

    .line 74
    const/high16 v6, 0x43520000  # 210.0f

    .line 76
    invoke-static {v6}, Lcom/baidu/input/common/utils/DensityUtils;->dp2px(F)I

    .line 79
    move-result v6

    .line 80
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    const v5, 0x7f0a0824

    .line 85
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroid/widget/EditText;

    .line 91
    sget-object v6, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->a:Lkotlin/Lazy;

    .line 93
    const-class v6, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 95
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object v9

    .line 99
    check-cast v9, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 101
    const/16 v9, 0x750

    .line 103
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 106
    const v9, 0x7f0a0825

    .line 109
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v9

    .line 113
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->m()I

    .line 116
    move-result v10

    .line 117
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->e()I

    .line 127
    move-result v9

    .line 128
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    new-instance v9, Lcom/baidu/input/inspirationcorpus/common/util/CharNumLengthFilter;

    .line 133
    new-instance v10, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$1;

    .line 135
    invoke-direct {v10, v7}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$1;-><init>(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)V

    .line 138
    new-instance v11, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$2;

    .line 140
    invoke-direct {v11, v7}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$2;-><init>(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)V

    .line 143
    invoke-direct {v9, v10, v11}, Lcom/baidu/input/inspirationcorpus/common/util/CharNumLengthFilter;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 146
    new-array v10, v8, [Lcom/baidu/input/inspirationcorpus/common/util/CharNumLengthFilter;

    .line 148
    aput-object v9, v10, v0

    .line 150
    check-cast v10, [Landroid/text/InputFilter;

    .line 152
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 155
    new-instance v9, Lcom/baidu/input/inspirationcorpus/common/widget/InputCodeEditTextFocusListener;

    .line 157
    invoke-direct {v9, v4}, Lcom/baidu/input/inspirationcorpus/common/widget/InputCodeEditTextFocusListener;-><init>(Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;)V

    .line 160
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    invoke-virtual {v9, v5, v0}, Lcom/baidu/input/inspirationcorpus/common/widget/InputCodeEditTextFocusListener;->onFocusChange(Landroid/view/View;Z)V

    .line 166
    const v9, 0x7f0a1855

    .line 169
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Landroid/widget/TextView;

    .line 175
    const-string v10, "showLocation"

    .line 177
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget v10, v1, Lcom/baidu/input/cocomodule/lazy/LazyContent;->h:I

    .line 182
    if-lez v10, :cond_c7

    .line 184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v10

    .line 188
    new-array v11, v8, [Ljava/lang/Object;

    .line 190
    aput-object v10, v11, v0

    .line 192
    const v10, 0x7f12142a

    .line 195
    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    move-result-object v10

    .line 199
    goto :goto_ce

    .line 200
    :cond_c7
    const v10, 0x7f121429

    .line 203
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v10

    .line 207
    :goto_ce
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->r()I

    .line 213
    move-result v10

    .line 214
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    new-instance v10, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$$inlined$addTextChangedListener$default$1;

    .line 219
    invoke-direct {v10, v9}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$$inlined$addTextChangedListener$default$1;-><init>(Landroid/widget/TextView;)V

    .line 222
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    new-instance v10, Lcom/baidu/input/lazycorpus/panel/lazy/b;

    .line 227
    invoke-direct {v10, v7, v1, v9, v8}, Lcom/baidu/input/lazycorpus/panel/lazy/b;-><init>(Lcom/baidu/input/ImeHomeFinishActivity;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 230
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v9, v1, Lcom/baidu/input/cocomodule/lazy/LazyContent;->g:Ljava/lang/String;

    .line 235
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    move-result v9

    .line 239
    if-nez v9, :cond_f5

    .line 241
    iget-object v9, v1, Lcom/baidu/input/cocomodule/lazy/LazyContent;->g:Ljava/lang/String;

    .line 243
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_f5
    const v9, 0x7f0a0168

    .line 249
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Landroid/view/ViewGroup;

    .line 255
    const v10, 0x7f0a0167

    .line 258
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object v10

    .line 262
    check-cast v10, Landroid/widget/TextView;

    .line 264
    if-eqz p1, :cond_10f

    .line 266
    const-string v11, "添加常用语"

    .line 268
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    goto :goto_114

    .line 272
    :cond_10f
    const-string v11, "编辑常用语"

    .line 274
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_114
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->l()I

    .line 280
    move-result v11

    .line 281
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    const v12, 0x7f0a0409

    .line 287
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    move-result-object v13

    .line 291
    check-cast v13, Landroid/widget/ImageView;

    .line 293
    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 296
    move-result-object v11

    .line 297
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 300
    invoke-virtual {v10, v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 303
    const v10, 0x7f0a0827

    .line 306
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    move-result-object v10

    .line 310
    check-cast v10, Landroid/widget/EditText;

    .line 312
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->a()I

    .line 315
    move-result v11

    .line 316
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 319
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->b()I

    .line 322
    move-result v11

    .line 323
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iput-object v10, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->f:Landroid/widget/EditText;

    .line 328
    const v11, 0x7f0a1ef1

    .line 331
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    move-result-object v11

    .line 335
    check-cast v11, Landroid/widget/ImageView;

    .line 337
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->k()I

    .line 340
    move-result v13

    .line 341
    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 344
    move-result-object v13

    .line 345
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 348
    const v13, 0x7f0a19e5

    .line 351
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 354
    move-result-object v13

    .line 355
    if-eqz v13, :cond_2d5

    .line 357
    check-cast v13, Lcom/baidu/input/acgfont/ImeTextView;

    .line 359
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->o()I

    .line 362
    move-result v14

    .line 363
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    const v14, 0x7f0a082d

    .line 369
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 372
    move-result-object v14

    .line 373
    check-cast v14, Landroid/widget/EditText;

    .line 375
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->p()I

    .line 378
    move-result v15

    .line 379
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 382
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->q()I

    .line 385
    move-result v15

    .line 386
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    new-instance v15, Lcom/baidu/input/inspirationcorpus/common/widget/TagEditTextFocusListener;

    .line 391
    invoke-direct {v15, v0, v4, v8}, Lcom/baidu/input/inspirationcorpus/common/widget/TagEditTextFocusListener;-><init>(ZLcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;I)V

    .line 394
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 397
    new-instance v15, Lcom/baidu/input/inspirationcorpus/common/util/TipsLengthFilter;

    .line 399
    new-instance v12, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$5;

    .line 401
    invoke-direct {v12, v7}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$5;-><init>(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)V

    .line 404
    invoke-direct {v15, v12}, Lcom/baidu/input/inspirationcorpus/common/util/TipsLengthFilter;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 407
    new-array v12, v8, [Lcom/baidu/input/inspirationcorpus/common/util/TipsLengthFilter;

    .line 409
    aput-object v15, v12, v0

    .line 411
    check-cast v12, [Landroid/text/InputFilter;

    .line 413
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 416
    new-instance v12, Lcom/baidu/di;

    .line 418
    invoke-direct {v12, v14, v8}, Lcom/baidu/di;-><init>(Landroid/widget/EditText;I)V

    .line 421
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v11, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$7;

    .line 426
    invoke-direct {v11}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$7;-><init>()V

    .line 429
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 432
    iget-object v11, v1, Lcom/baidu/input/cocomodule/lazy/LazyContent;->e:Ljava/lang/String;

    .line 434
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const v11, 0x7f0a1700

    .line 440
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 443
    move-result-object v11

    .line 444
    check-cast v11, Landroid/widget/TextView;

    .line 446
    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    .line 448
    const v15, 0x5f5e100

    .line 450
    invoke-direct {v12, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 453
    new-array v15, v8, [Landroid/text/InputFilter;

    .line 455
    aput-object v12, v15, v0

    .line 457
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 460
    new-instance v12, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;

    .line 462
    invoke-direct {v12, v7, v13, v11}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;-><init>(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Lcom/baidu/input/acgfont/ImeTextView;Landroid/widget/TextView;)V

    .line 465
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 468
    iget-object v12, v1, Lcom/baidu/input/cocomodule/lazy/LazyContent;->a:Ljava/lang/String;

    .line 470
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 476
    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    .line 478
    const v15, 0x5f5e100

    .line 480
    invoke-direct {v12, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 483
    new-array v15, v8, [Landroid/text/InputFilter;

    .line 485
    aput-object v12, v15, v0

    .line 487
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 490
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 493
    move-result-object v12

    .line 494
    if-eqz v12, :cond_1f9

    .line 496
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 499
    move-result v12

    .line 500
    :goto_1f5
    const v15, 0x5f5e100

    .line 502
    goto :goto_1fb

    .line 503
    :cond_1f9
    move v12, v0

    .line 504
    goto :goto_1f5

    .line 505
    :goto_1fb
    invoke-static {v13, v12, v15}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->a(Landroid/widget/TextView;II)V

    .line 508
    new-instance v12, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;

    .line 510
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 513
    move-result-object v6

    .line 514
    check-cast v6, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 516
    invoke-interface {v6}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->xb()Z

    .line 519
    move-result v6

    .line 520
    if-eqz v6, :cond_20e

    .line 522
    const/4 v6, 0x2

    .line 523
    goto :goto_20f

    .line 524
    :cond_20e
    move v6, v8

    .line 525
    :goto_20f
    invoke-direct {v12, v7, v6}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 528
    iget-object v6, v12, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->a:Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 530
    invoke-interface {v6, v8}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->oh(I)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 533
    invoke-interface {v6, v3}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setView(Landroid/view/View;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 536
    invoke-interface {v6, v2}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setTypeface(Landroid/graphics/Typeface;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 539
    new-instance v2, Lcom/baidu/r3;

    .line 541
    const/16 v3, 0x9

    .line 543
    invoke-direct {v2, v7, v3}, Lcom/baidu/r3;-><init>(Ljava/lang/Object;I)V

    .line 546
    invoke-interface {v6, v2}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 549
    invoke-interface {v6}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->a()Landroid/app/Dialog;

    .line 552
    move-result-object v2

    .line 553
    iput-object v2, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 555
    const-class v2, Lcom/baidu/input/cocomodule/dialog/IDialogManager;

    .line 557
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Lcom/baidu/input/cocomodule/dialog/IDialogManager;

    .line 563
    iget-object v3, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 565
    invoke-interface {v2, v3}, Lcom/baidu/input/cocomodule/dialog/IDialogManager;->Gb(Landroid/app/Dialog;)V

    .line 568
    const v2, 0x7f0a0409

    .line 571
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 574
    move-result-object v2

    .line 575
    new-instance v3, Lcom/baidu/oe;

    .line 577
    const/16 v6, 0x18

    .line 579
    invoke-direct {v3, v7, v6}, Lcom/baidu/oe;-><init>(Ljava/lang/Object;I)V

    .line 582
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 588
    move-result-object v2

    .line 589
    if-eqz v2, :cond_266

    .line 591
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 594
    move-result-object v2

    .line 595
    const-string v3, "mContent.text"

    .line 597
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-static {v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 603
    move-result-object v2

    .line 604
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 607
    move-result v2

    .line 608
    if-nez v2, :cond_265

    .line 610
    goto :goto_266

    .line 611
    :cond_265
    move v0, v8

    .line 612
    :cond_266
    :goto_266
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 615
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/ILazyCorpusDialogPalette;->f()Landroid/content/res/ColorStateList;

    .line 618
    move-result-object v0

    .line 619
    if-eqz v0, :cond_27f

    .line 621
    const v2, 0x7f0806a8

    .line 624
    invoke-virtual {v11, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 627
    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 630
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->l()I

    .line 633
    move-result v0

    .line 634
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    :cond_27f
    new-instance v9, Lcom/baidu/input/lazycorpus/panel/lazy/d;

    .line 639
    move-object v0, v9

    .line 640
    move-object/from16 v1, p2

    .line 642
    move-object v2, v10

    .line 643
    move-object v3, v14

    .line 644
    move-object v4, v5

    .line 645
    move-object/from16 v5, p0

    .line 647
    move/from16 v6, p1

    .line 649
    invoke-direct/range {v0 .. v6}, Lcom/baidu/input/lazycorpus/panel/lazy/d;-><init>(Lcom/baidu/input/cocomodule/lazy/LazyContent;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Z)V

    .line 652
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->f:Landroid/widget/EditText;

    .line 657
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 663
    iget-object v0, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->f:Landroid/widget/EditText;

    .line 665
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 668
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 671
    iget-object v0, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 673
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 679
    move-result-object v0

    .line 680
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 683
    const v1, 0x20008

    .line 686
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 689
    iget-object v0, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 691
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 694
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 697
    move-result-object v0

    .line 698
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 701
    const/4 v1, 0x5

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 705
    iget-object v0, v7, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->f:Landroid/widget/EditText;

    .line 707
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 710
    new-instance v1, Lcom/baidu/fg;

    .line 712
    const/16 v2, 0xf

    .line 714
    invoke-direct {v1, v7, v2}, Lcom/baidu/fg;-><init>(Ljava/lang/Object;I)V

    .line 717
    const-wide/16 v2, 0x64

    .line 719
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    return-void

    .line 723
    :cond_2d5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 725
    const-string v1, "null cannot be cast to non-null type com.baidu.input.acgfont.ImeTextView"

    .line 727
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 730
    throw v0
.end method

.method public static final synthetic access$getFromAddTip$p(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->i:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getLazyContent$p(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)Lcom/baidu/input/cocomodule/lazy/LazyContent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->g:Lcom/baidu/input/cocomodule/lazy/LazyContent;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getType$p(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->h:I

    .line 3
    return p0
.end method

.method public static final synthetic access$setFromAddTip$p(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->i:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setLazyContent$p(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Lcom/baidu/input/cocomodule/lazy/LazyContent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->g:Lcom/baidu/input/cocomodule/lazy/LazyContent;

    .line 3
    return-void
.end method

.method public static final synthetic access$setLimitText(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Landroid/widget/TextView;II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1, p2, p3}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->a(Landroid/widget/TextView;II)V

    .line 7
    return-void
.end method

.method public static final access$updateLocationText(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Landroid/widget/TextView;I)V
    .registers 5

    .line 1
    if-lez p2, :cond_14

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p2, v0, v1

    .line 13
    const p2, 0x7f12142a

    .line 16
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    const p2, 0x7f121429

    .line 24
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    :goto_1b
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_12

    .line 12
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->e:Landroid/app/Dialog;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 26
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->d:Lkotlinx/coroutines/internal/ContextScope;

    .line 3
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->a:Lkotlin/coroutines/CoroutineContext;

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->k:Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;->a()V

    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/baidu/input/ImeHomeFinishActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EDIT_TYPE"

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->h:I

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "KEY_CONTENT_ID"

    .line 23
    const-wide/16 v1, -0x1

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 28
    move-result-wide v6

    .line 29
    iget p1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->h:I

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_23

    .line 34
    move v4, v0

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    move v4, p1

    .line 38
    :goto_25
    new-instance p1, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$onCreate$1;

    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v3, p1

    .line 42
    move-object v5, p0

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$onCreate$1;-><init>(ZLcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;JLkotlin/coroutines/Continuation;)V

    .line 46
    const/4 v0, 0x3

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/AbstractCoroutineContextElement;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/baidu/input/ImeHomeFinishActivity;->onDestroy()V

    .line 4
    const/4 v0, 0x7

    .line 5
    filled-new-array {v0}, [I

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/baidu/input/sync/SyncHelper;->c([I)Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorIterable;

    .line 12
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1  # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/baidu/input/ImeAbsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->finish()V

    .line 7
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/baidu/input/ImeHomeFinishActivity;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->k:Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/widget/CandPositionDialogHelper;->a()V

    .line 12
    invoke-virtual {p0}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->finish()V

    .line 15
    return-void
.end method

.method public shouldFinishWhenHome()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
