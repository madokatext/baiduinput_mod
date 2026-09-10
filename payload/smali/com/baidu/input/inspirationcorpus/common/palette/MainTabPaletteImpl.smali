.class final Lcom/baidu/input/inspirationcorpus/common/palette/MainTabPaletteImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/inspirationcorpus/common/palette/IMainTabPalette;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "Lcom/baidu/input/inspirationcorpus/common/palette/MainTabPaletteImpl;",
        "Lcom/baidu/input/inspirationcorpus/common/palette/IMainTabPalette;",
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
    if-eqz v0, :cond_13

    .line 11
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 18
    move-result v0

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 27
    move-result v0

    .line 28
    :goto_1b
    return v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    sget-object v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 8
    if-eqz v0, :cond_15

    .line 10
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    const-string v1, "#4D454547"

    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    goto :goto_67

    .line 22
    :cond_15
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3d

    .line 32
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_31

    .line 42
    const v0, 0x7f08122a

    .line 45
    invoke-static {v0}, Lcom/baidu/input/inspirationcorpus/common/util/ResUtilsKt;->a(I)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_62

    .line 50
    :cond_31
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    const-string v1, "#454547"

    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    move-result v1

    .line 58
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 61
    goto :goto_62

    .line 62
    :cond_3d
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 64
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->F()I

    .line 71
    move-result v1

    .line 72
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 77
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 84
    move-result v2

    .line 85
    const/16 v3, 0xd

    .line 87
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->g(II)I

    .line 90
    move-result v2

    .line 91
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 93
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    :goto_62
    const-string v1, "{\n            if (SkinRe…e\n            }\n        }"

    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    :goto_67
    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 8
    if-eqz v0, :cond_f

    .line 10
    new-instance v0, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultDarkThemeBgDrawable;

    .line 12
    invoke-direct {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultDarkThemeBgDrawable;-><init>()V

    .line 15
    goto :goto_34

    .line 16
    :cond_f
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2f

    .line 26
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_29

    .line 36
    new-instance v0, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultThemeBgDrawable;

    .line 38
    invoke-direct {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultThemeBgDrawable;-><init>()V

    .line 41
    goto :goto_34

    .line 42
    :cond_29
    new-instance v0, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultDarkThemeBgDrawable;

    .line 44
    invoke-direct {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlDefaultDarkThemeBgDrawable;-><init>()V

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    new-instance v0, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlThirdThemeBgDrawable;

    .line 50
    invoke-direct {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/TabItemHlThirdThemeBgDrawable;-><init>()V

    .line 53
    :goto_34
    return-object v0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    sget-object v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 8
    const/4 v1, -0x1

    .line 9
    const-string v2, "drawable.mutate()"

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 22
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 24
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 30
    goto :goto_5e

    .line 31
    :cond_1e
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_45

    .line 41
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_33

    .line 51
    goto :goto_5e

    .line 52
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 61
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 63
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    goto :goto_5e

    .line 70
    :cond_45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 79
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 86
    move-result v1

    .line 87
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 89
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    :goto_5e
    return-object p1
.end method

.method public final f()I
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
    if-eqz v0, :cond_1d

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
    const-string v0, "#4E5158"

    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    const/4 v0, -0x1

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 37
    move-result v0

    .line 38
    :goto_25
    return v0
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    sget-object v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 8
    const-string v1, "drawable.mutate()"

    .line 10
    if-eqz v0, :cond_20

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 21
    const v1, -0xb6b6b2

    .line 24
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    goto :goto_4c

    .line 33
    :cond_20
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4d

    .line 43
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    goto :goto_4c

    .line 54
    :cond_35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 63
    const-string v1, "#454547"

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    move-result v1

    .line 69
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 71
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    :goto_4c
    return-object p1

    .line 78
    :cond_4d
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    return-object p1
.end method

.method public final h()Landroid/graphics/drawable/GradientDrawable;
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
    const-string v1, "#26000000"

    .line 11
    if-eqz v0, :cond_44

    .line 13
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2e

    .line 23
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 25
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 27
    const-string v2, "#00D2D0D0"

    .line 29
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    move-result v2

    .line 33
    const-string v3, "#26D2D0D0"

    .line 35
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    filled-new-array {v2, v3}, [I

    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 46
    goto :goto_6d

    .line 47
    :cond_2e
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 49
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 51
    const-string v3, "#00000000"

    .line 53
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    move-result v3

    .line 57
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 60
    move-result v1

    .line 61
    filled-new-array {v3, v1}, [I

    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 68
    goto :goto_6d

    .line 69
    :cond_44
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 71
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 73
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 80
    move-result v3

    .line 81
    const/16 v4, 0x1a

    .line 83
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->g(II)I

    .line 86
    move-result v3

    .line 87
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->F()I

    .line 94
    move-result v4

    .line 95
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->e(II)I

    .line 98
    move-result v3

    .line 99
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 102
    move-result v1

    .line 103
    filled-new-array {v3, v1}, [I

    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 110
    :goto_6d
    return-object v0
.end method

.method public final i()Landroid/graphics/drawable/StateListDrawable;
    .registers 9

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 11
    const/16 v2, 0x14

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    invoke-static {v1, v3}, Lcom/baidu/l5;->h(Landroid/graphics/drawable/GradientDrawable;F)Landroid/graphics/drawable/GradientDrawable;

    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    sget-object v2, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-boolean v2, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 41
    const-string v4, "#B8959697"

    .line 43
    const-wide v5, 0x3fd3333333333333L  # 0.3

    .line 48
    if-eqz v2, :cond_55

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 57
    move-result v2

    .line 58
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 61
    move-result-object v7

    .line 62
    invoke-interface {v7}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 65
    move-result v7

    .line 66
    invoke-virtual {v1, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 76
    move-result v2

    .line 77
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 80
    move-result v4

    .line 81
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 84
    goto/16 :goto_dd

    .line 86
    :cond_55
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_b1

    .line 96
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_8e

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 113
    move-result v2

    .line 114
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 121
    move-result v4

    .line 122
    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 132
    move-result v2

    .line 133
    const-string v4, "#26000000"

    .line 135
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 138
    move-result v4

    .line 139
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 142
    goto :goto_dd

    .line 143
    :cond_8e
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 150
    move-result v2

    .line 151
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 154
    move-result-object v7

    .line 155
    invoke-interface {v7}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 158
    move-result v7

    .line 159
    invoke-virtual {v1, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 169
    move-result v2

    .line 170
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    move-result v4

    .line 174
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 177
    goto :goto_dd

    .line 178
    :cond_b1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 181
    move-result-object v2

    .line 182
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 185
    move-result v2

    .line 186
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 189
    move-result-object v4

    .line 190
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->a()I

    .line 193
    move-result v4

    .line 194
    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 200
    move-result-object v2

    .line 201
    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 204
    move-result v2

    .line 205
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v4}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 212
    move-result v4

    .line 213
    const/16 v5, 0x99

    .line 215
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->g(II)I

    .line 218
    move-result v4

    .line 219
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 222
    :goto_dd
    const v2, 0x10100a1

    .line 225
    filled-new-array {v2}, [I

    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 232
    const/4 v1, 0x0

    .line 233
    new-array v1, v1, [I

    .line 235
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 238
    return-object v0
.end method

.method public final j()Landroid/graphics/drawable/GradientDrawable;
    .registers 11

    .line 1
    sget-object v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 8
    const-string v1, "#454547"

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x14

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/16 v6, 0x8

    .line 17
    if-eqz v0, :cond_39

    .line 19
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 21
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 24
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31
    new-array v1, v6, [F

    .line 33
    :goto_20
    if-ge v5, v6, :cond_34

    .line 35
    if-le v5, v4, :cond_2e

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v7

    .line 41
    invoke-static {v7}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 44
    move-result v7

    .line 45
    int-to-float v7, v7

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v7, v2

    .line 48
    :goto_2f
    aput v7, v1, v5

    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 52
    goto :goto_20

    .line 53
    :cond_34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 56
    goto/16 :goto_eb

    .line 58
    :cond_39
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_aa

    .line 68
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->k()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_84

    .line 78
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 80
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 82
    const-string v7, "#FAFDFF"

    .line 84
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 87
    move-result v7

    .line 88
    const-string v8, "#F9FBFF"

    .line 90
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    move-result v8

    .line 94
    const-string v9, "#FDFCFF"

    .line 96
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 99
    move-result v9

    .line 100
    filled-new-array {v7, v8, v9}, [I

    .line 103
    move-result-object v7

    .line 104
    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 107
    new-array v1, v6, [F

    .line 109
    :goto_6c
    if-ge v5, v6, :cond_80

    .line 111
    if-le v5, v4, :cond_7a

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v7

    .line 117
    invoke-static {v7}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 120
    move-result v7

    .line 121
    int-to-float v7, v7

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v7, v2

    .line 124
    :goto_7b
    aput v7, v1, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    .line 128
    goto :goto_6c

    .line 129
    :cond_80
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 132
    goto :goto_eb

    .line 133
    :cond_84
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 135
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 145
    new-array v1, v6, [F

    .line 147
    :goto_92
    if-ge v5, v6, :cond_a6

    .line 149
    if-le v5, v4, :cond_a0

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v7

    .line 155
    invoke-static {v7}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 158
    move-result v7

    .line 159
    int-to-float v7, v7

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v7, v2

    .line 162
    :goto_a1
    aput v7, v1, v5

    .line 164
    add-int/lit8 v5, v5, 0x1

    .line 166
    goto :goto_92

    .line 167
    :cond_a6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 170
    goto :goto_eb

    .line 171
    :cond_aa
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 173
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 176
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->F()I

    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 189
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 192
    move-result-object v7

    .line 193
    invoke-interface {v7}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->q()I

    .line 196
    move-result v7

    .line 197
    const/16 v8, 0x1a

    .line 199
    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->g(II)I

    .line 202
    move-result v7

    .line 203
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 205
    invoke-direct {v1, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 211
    new-array v1, v6, [F

    .line 213
    :goto_d4
    if-ge v5, v6, :cond_e8

    .line 215
    if-le v5, v4, :cond_e2

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v7

    .line 221
    invoke-static {v7}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    .line 224
    move-result v7

    .line 225
    int-to-float v7, v7

    .line 226
    goto :goto_e3

    .line 227
    :cond_e2
    move v7, v2

    .line 228
    :goto_e3
    aput v7, v1, v5

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 232
    goto :goto_d4

    .line 233
    :cond_e8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 236
    :goto_eb
    return-object v0
.end method
