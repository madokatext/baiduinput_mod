.class final Lcom/baidu/input/inspirationcorpus/common/palette/BottomBarPaletteImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/inspirationcorpus/common/palette/IBottomBarPalette;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "Lcom/baidu/input/inspirationcorpus/common/palette/BottomBarPaletteImpl;",
        "Lcom/baidu/input/inspirationcorpus/common/palette/IBottomBarPalette;",
        "<init>",
        "()V",
        "inspiration_corpus_common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_22

    .line 11
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    const-string v0, "#767885"

    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    goto :goto_2a

    .line 28
    :cond_1b
    const-string v0, "#DEDFE0"

    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    move-result v0

    .line 34
    goto :goto_2a

    .line 35
    :cond_22
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 42
    move-result v0

    .line 43
    :goto_2a
    return v0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_26

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "drawable.mutate()"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 23
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 30
    move-result v1

    .line 31
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 33
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 39
    :goto_26
    return-object p1
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_27

    .line 11
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 27
    goto :goto_26

    .line 28
    :cond_1b
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 30
    const-string v1, "#454547"

    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 39
    :goto_26
    return-object v0

    .line 40
    :cond_27
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 42
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 44
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->F()I

    .line 51
    move-result v2

    .line 52
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 57
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 64
    move-result v3

    .line 65
    const/16 v4, 0xd

    .line 67
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->g(II)I

    .line 70
    move-result v3

    .line 71
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 74
    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [Landroid/graphics/drawable/ColorDrawable;

    .line 77
    const/4 v4, 0x0

    .line 78
    aput-object v1, v3, v4

    .line 80
    const/4 v1, 0x1

    .line 81
    aput-object v2, v3, v1

    .line 83
    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method
