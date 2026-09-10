.class public Lcom/baidu/input/emotion/common/skin/SkinColor;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(I)I
    .registers 2

    .line 1
    sget-short v0, Lcom/baidu/input/emotion/util/Global;->T:S

    .line 3
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/baidu/skinrender/SkinRenderSettings;->a:Z

    .line 9
    if-eqz v0, :cond_e

    .line 11
    invoke-static {p0}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    .line 14
    move-result p0

    .line 15
    :cond_e
    return p0
.end method

.method public static b(FI)I
    .registers 3

    .line 1
    const/high16 v0, 0x437f0000  # 255.0f

    .line 3
    mul-float/2addr p0, v0

    .line 4
    float-to-int p0, p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result p0

    .line 10
    const/16 v0, 0xff

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 15
    move-result p0

    .line 16
    shl-int/lit8 p0, p0, 0x18

    .line 18
    const v0, 0xffffff

    .line 21
    and-int/2addr p1, v0

    .line 22
    add-int/2addr p0, p1

    .line 23
    return p0
.end method

.method public static c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_11

    .line 11
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->h()Landroid/graphics/LightingColorFilter;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 18
    :cond_11
    return-object p0
.end method

.method public static d()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->b()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 15
    move-result v0

    .line 16
    if-gtz v0, :cond_16

    .line 18
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getFloatColor()I

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getFloatColor()I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public static e()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    sget-boolean v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a:Z

    .line 9
    if-nez v0, :cond_11

    .line 11
    sget v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->f:I

    .line 13
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/SkinColor;->a(I)I

    .line 16
    move-result v0

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    const v0, 0x7f0602f8

    .line 21
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 24
    move-result v0

    .line 25
    :goto_18
    return v0

    .line 26
    :cond_19
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->j()I

    .line 29
    move-result v0

    .line 30
    const v1, 0xffffff

    .line 33
    and-int/2addr v0, v1

    .line 34
    const/high16 v1, 0xd000000

    .line 36
    or-int/2addr v0, v1

    .line 37
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->d()I

    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->e(II)I

    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public static f()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->e()I

    .line 10
    move-result v0

    .line 11
    const v1, 0x7f0602fa

    .line 14
    invoke-static {v1}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 17
    move-result v1

    .line 18
    new-instance v2, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;

    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v0, v1, v3}, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;-><init>(III)V

    .line 24
    return-object v2

    .line 25
    :cond_18
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->e()I

    .line 30
    move-result v1

    .line 31
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 34
    return-object v0
.end method

.method public static g()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    sget-object v0, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0808cb

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_14
    sget-object v0, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f0808cc

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->d()I

    .line 37
    move-result v1

    .line 38
    if-eqz v0, :cond_30

    .line 40
    new-instance v2, Landroid/graphics/LightingColorFilter;

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, v3, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 49
    :cond_30
    return-object v0
.end method

.method public static h()Landroid/graphics/LightingColorFilter;
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->j()I

    .line 7
    move-result v2

    .line 8
    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 11
    return-object v0
.end method

.method public static i()Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    const v0, 0x7f0602fa

    .line 10
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 13
    move-result v0

    .line 14
    new-instance v1, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;

    .line 16
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->d()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v1, v2, v0, v3}, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;-><init>(III)V

    .line 24
    return-object v1

    .line 25
    :cond_18
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->d()I

    .line 28
    move-result v0

    .line 29
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->e()I

    .line 32
    move-result v1

    .line 33
    new-instance v2, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;

    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-direct {v2, v0, v1, v3}, Lcom/baidu/input/emotion/common/skin/SkinColor$SplitLineDrawable;-><init>(III)V

    .line 39
    return-object v2
.end method

.method public static j()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    sget-boolean v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a:Z

    .line 9
    if-nez v0, :cond_11

    .line 11
    sget v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->h:I

    .line 13
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/SkinColor;->a(I)I

    .line 16
    move-result v0

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    const v0, 0x7f0602f6

    .line 21
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 24
    move-result v0

    .line 25
    :goto_18
    return v0

    .line 26
    :cond_19
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 29
    move-result v0

    .line 30
    const v1, -0x33000001  # -1.3421772E8f

    .line 33
    and-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public static k()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    sget-boolean v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a:Z

    .line 9
    if-nez v0, :cond_11

    .line 11
    sget v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->g:I

    .line 13
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/SkinColor;->a(I)I

    .line 16
    move-result v0

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    const v0, 0x7f0602f7

    .line 21
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 24
    move-result v0

    .line 25
    :goto_18
    return v0

    .line 26
    :cond_19
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getSelectedColor()I

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public static l()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    sget-boolean v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a:Z

    .line 9
    if-nez v0, :cond_11

    .line 11
    sget v0, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->k:I

    .line 13
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/SkinColor;->a(I)I

    .line 16
    move-result v0

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    const v0, 0x7f0602ff

    .line 21
    invoke-static {v0}, Lcom/baidu/input/emotion/common/skin/DefaultSkinColor;->a(I)I

    .line 24
    move-result v0

    .line 25
    :goto_18
    return v0

    .line 26
    :cond_19
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->j()I

    .line 29
    move-result v0

    .line 30
    const v1, 0xffffff

    .line 33
    and-int/2addr v0, v1

    .line 34
    const/high16 v1, 0xd000000

    .line 36
    or-int/2addr v0, v1

    .line 37
    invoke-static {}, Lcom/baidu/input/emotion/common/skin/SkinColor;->d()I

    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->e(II)I

    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public static m()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    sget-boolean v0, Lcom/baidu/input/emotion/util/ImeStateConfig;->e:Z

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public static n()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    sget-boolean v0, Lcom/baidu/input/emotion/util/ImeStateConfig;->e:Z

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method
