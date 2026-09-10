.class public abstract Lcom/baidu/input/ime/cand/CandHandler;
.super Lcom/baidu/input/panel/render/cand/AbsCandHandler;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/panel/tempinterface/ICandHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;
    }
.end annotation


# static fields
.field public static Q1:Lcom/baidu/input/ime/InputEventHandler;


# instance fields
.field private baiduModDirectTouch:Z

.field private baiduModTraceCount:I

.field private baiduModMoveTraced:Z

.field public A1:Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;

.field public final B1:[I

.field public final C1:[F

.field public final D1:[F

.field public final E1:Ljava/util/List;

.field public final F1:Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;

.field public final G1:Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;

.field public final H1:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;

.field public final I1:Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

.field public final J1:Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;

.field public K1:Lcom/baidu/input/ime/params/StyleParam;

.field public L1:Lcom/baidu/input/ime/params/ImgParam;

.field public M1:Landroid/util/Pair;

.field public N1:J

.field public final O1:[I

.field public final P1:Landroid/graphics/RectF;

.field public final x1:Lcom/baidu/input/ime/newcore/state/CandState2;

.field public y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

.field public z1:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/DefaultCandSizeStrategy;

    invoke-direct {v0}, Lcom/baidu/input/ime/hardkeyboard/view/keymap/DefaultCandSizeStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;-><init>(Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V
    .registers 3

    .line 2
    sget-object v0, Lcom/baidu/input/pub/Global;->T:[I

    .line 3
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    move-result v0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/baidu/input/ime/cand/CandHandler;-><init>(ZLcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V

    return-void
.end method

.method public constructor <init>(ZLcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;-><init>(ZLcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    const/4 p1, 0x2

    .line 7
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/baidu/input/ime/cand/CandHandler;->B1:[I

    .line 8
    new-array p1, p1, [F

    fill-array-data p1, :array_ae

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->C1:[F

    const/4 p1, 0x1

    .line 9
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->D1:[F

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->N1:J

    const/4 p1, 0x4

    .line 11
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/baidu/input/ime/cand/CandHandler;->O1:[I

    .line 12
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/baidu/input/ime/cand/CandHandler;->P1:Landroid/graphics/RectF;

    .line 13
    new-instance p2, Lcom/baidu/input/ime/render/CandRender;

    invoke-direct {p2, p0}, Lcom/baidu/input/ime/render/CandRender;-><init>(Lcom/baidu/input/ime/cand/CandHandler;)V

    iput-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 14
    sget-object p2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    iget-object p2, p2, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 15
    iget-object v0, p2, Lcom/baidu/input/ime/InputEventHandler;->B:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 16
    iput-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 17
    iget-object p2, p2, Lcom/baidu/input/ime/InputEventHandler;->C:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 18
    iput-object p2, p0, Lcom/baidu/input/ime/cand/CandHandler;->x1:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 20
    iget-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    const/16 v0, 0x11

    .line 21
    new-array v0, v0, [Lcom/baidu/input/pub/CoreString;

    .line 22
    iput-object v0, p2, Lcom/baidu/input/ime/newcore/state/CandState2;->e:[Lcom/baidu/input/pub/CoreString;

    const/16 p2, 0x50

    .line 23
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E:[I

    .line 24
    sget-object p2, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 25
    iget-object p2, p2, Lcom/baidu/input/di/ImeComponent;->c:Lcom/baidu/pyramid/annotation/component/DefaultListHolder;

    .line 26
    invoke-virtual {p2}, Lcom/baidu/pyramid/annotation/component/DefaultListHolder;->a()Ljava/util/List;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/baidu/ia;

    invoke-direct {v0, p1}, Lcom/baidu/ia;-><init>(I)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    new-instance p1, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;

    sget-object p2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    invoke-virtual {p2}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/baidu/input/CandViewWrapper;->a()Lcom/baidu/input/ime/view/InputContainerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;-><init>(Lcom/baidu/input/ime/view/InputContainerView;)V

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->F1:Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;

    .line 30
    new-instance p1, Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;

    sget-object p2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    invoke-virtual {p2}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/baidu/input/CandViewWrapper;->a()Lcom/baidu/input/ime/view/InputContainerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;-><init>(Lcom/baidu/input/ime/view/InputContainerView;)V

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->G1:Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;

    .line 31
    new-instance p1, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;

    sget-object p2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    invoke-virtual {p2}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/baidu/input/CandViewWrapper;->a()Lcom/baidu/input/ime/view/InputContainerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;-><init>(Lcom/baidu/input/ime/view/InputContainerView;)V

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->H1:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;

    .line 32
    new-instance p1, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

    invoke-direct {p1}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;-><init>()V

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->I1:Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

    .line 33
    new-instance p1, Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;

    sget-object p2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    invoke-virtual {p2}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/baidu/input/CandViewWrapper;->a()Lcom/baidu/input/ime/view/InputContainerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;-><init>(Lcom/baidu/input/ime/view/InputContainerView;)V

    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->J1:Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;

    return-void

    nop

    :array_ae
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static E2()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/presenter/CandMenuIconPresenter;->g()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->E1()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_29

    .line 15
    invoke-static {}, Lcom/baidu/input/pub/FLauncherManager;->d()Lcom/baidu/input/pub/FLauncherManager;

    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->F:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 21
    invoke-static {v2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/baidu/input/pub/FLauncherManager;->c(S)I

    .line 28
    move-result v1

    .line 29
    if-ltz v1, :cond_27

    .line 31
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d()I

    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_27

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x2

    .line 42
    :cond_29
    :goto_29
    return v0
.end method

.method public static F2()F
    .registers 1

    .line 1
    sget-object v0, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_e

    .line 12
    const/high16 v0, 0x3f800000  # 1.0f

    .line 14
    return v0

    .line 15
    :cond_e
    const v0, 0x3f51eb85  # 0.82f

    .line 18
    return v0
.end method

.method public static H2()F
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 3
    const-string v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 17
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    const/16 v2, 0x21c

    .line 27
    if-eq v0, v2, :cond_20

    .line 29
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    if-ne v0, v2, :cond_34

    .line 33
    :cond_20
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 35
    const/16 v1, 0xf0

    .line 37
    if-ne v0, v1, :cond_34

    .line 39
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->l()Z

    .line 46
    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_34

    .line 47
    if-eqz v0, :cond_34

    .line 49
    const v0, 0x3fb5c28f  # 1.42f

    .line 52
    return v0

    .line 53
    :catch_34
    :cond_34
    const/high16 v0, 0x3f800000  # 1.0f

    .line 55
    return v0
.end method


# virtual methods
.method public A2(I)Z
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final B0(Landroid/graphics/Canvas;Lcom/baidu/input/ime/cloudinput/CloudOutputService;IILandroid/graphics/Rect;Z)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    iget v8, v0, Lcom/baidu/input/ime/render/CandRender;->k:I

    .line 5
    iget-object v6, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    move v7, p6

    .line 13
    invoke-static/range {v1 .. v8}, Lcom/baidu/input/ime/cloudinput/CloudOutputUtils;->c(Landroid/graphics/Canvas;Lcom/baidu/input/ime/cloudinput/CloudOutputService;IILandroid/graphics/Rect;Landroid/text/TextPaint;ZI)V

    .line 16
    return-void
.end method

.method public final B2()V
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g1:[J

    .line 7
    const/4 v3, 0x1

    .line 8
    aget-wide v4, v2, v3

    .line 10
    sub-long/2addr v0, v4

    .line 11
    const-wide/16 v4, 0x10f

    .line 13
    cmp-long v0, v0, v4

    .line 15
    const/4 v1, 0x0

    .line 16
    if-gtz v0, :cond_2e

    .line 18
    sget v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r1:I

    .line 20
    if-gez v0, :cond_22

    .line 22
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    move-result v0

    .line 28
    rsub-int/lit8 v0, v0, 0x0

    .line 30
    shr-int/2addr v0, v3

    .line 31
    invoke-virtual {p0, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U(I)I

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    if-lez v0, :cond_2e

    .line 37
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 42
    move-result v0

    .line 43
    shr-int/2addr v0, v3

    .line 44
    invoke-virtual {p0, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U(I)I

    .line 47
    :cond_2e
    :goto_2e
    sget v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l1:I

    .line 49
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A1()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3b

    .line 55
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1()I

    .line 58
    move-result v2

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 v2, 0x4

    .line 61
    :goto_3c
    mul-int/2addr v2, v0

    .line 62
    sget-object v0, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_54

    .line 73
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j1:[Landroid/graphics/Rect;

    .line 75
    aget-object v3, v0, v1

    .line 77
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 79
    aget-object v0, v0, v2

    .line 81
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 83
    sub-int/2addr v3, v0

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j1:[Landroid/graphics/Rect;

    .line 87
    aget-object v0, v0, v2

    .line 89
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 91
    rsub-int/lit8 v3, v0, 0x0

    .line 93
    :goto_5c
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 95
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 98
    sget v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X0:I

    .line 100
    if-ge v0, v3, :cond_6d

    .line 102
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 104
    const/16 v2, 0x78

    .line 106
    invoke-virtual {v0, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 109
    goto :goto_7f

    .line 110
    :cond_6d
    if-le v0, v3, :cond_7f

    .line 112
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 114
    const/16 v2, 0x7a

    .line 116
    invoke-virtual {v0, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 119
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 121
    const/16 v2, 0x9ac

    .line 123
    const/16 v4, -0x80

    .line 125
    invoke-virtual {v0, v2, v4}, Lcom/baidu/input/pub/Option;->u(II)V

    .line 128
    :cond_7f
    :goto_7f
    sget v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X0:I

    .line 130
    if-eq v0, v3, :cond_86

    .line 132
    invoke-virtual {p0, v1, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n2(BI)V

    .line 135
    :cond_86
    return-void
.end method

.method public final C(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/baidu/input/ime/smscode/SmsCandViewHelper;->a()Lcom/baidu/input/ime/smscode/SmsCandViewHelper;

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-class v2, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 12
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 18
    invoke-interface {v3}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->Oc()Z

    .line 21
    move-result v3

    .line 22
    const-class v4, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 24
    if-eqz v3, :cond_10d

    .line 26
    invoke-static {}, Lcom/baidu/input/ime/ocr/OcrSubCandView;->a()Lcom/baidu/input/ime/ocr/OcrSubCandView;

    .line 29
    move-result-object v3

    .line 30
    iget-boolean v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->k:Z

    .line 32
    iget-object v6, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->f:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 34
    iget-object v7, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->b:Landroid/graphics/Rect;

    .line 36
    iget-object v8, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->l:Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;

    .line 38
    const/16 v9, 0xff

    .line 40
    const/4 v10, 0x0

    .line 41
    if-nez v5, :cond_44

    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->g:Landroid/graphics/LightingColorFilter;

    .line 57
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->j:Landroid/graphics/Bitmap;

    .line 62
    invoke-static {p1, v7, v5, v6}, Lcom/baidu/input/common/utils/DrawUtils;->drawImgCenterInBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 65
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
    goto :goto_5c

    .line 69
    :cond_44
    iget v5, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->i:I

    .line 71
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->h:Landroid/graphics/LightingColorFilter;

    .line 82
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 85
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->j:Landroid/graphics/Bitmap;

    .line 87
    invoke-static {p1, v7, v5, v6}, Lcom/baidu/input/common/utils/DrawUtils;->drawImgCenterInBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 90
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    :goto_5c
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_6c

    .line 103
    sget-boolean v5, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 105
    if-nez v5, :cond_6c

    .line 107
    move v5, v1

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v5, v0

    .line 110
    :goto_6d
    iget-object v7, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->c:Landroid/graphics/Rect;

    .line 112
    if-eqz v5, :cond_77

    .line 114
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->i:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p1, v5, v10, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    goto :goto_84

    .line 120
    :cond_77
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->g:Landroid/graphics/LightingColorFilter;

    .line 122
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    iget-object v5, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->i:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p1, v5, v10, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 133
    :goto_84
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 139
    invoke-interface {v2}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->getContent()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_156

    .line 149
    iget v5, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->k:I

    .line 151
    int-to-float v5, v5

    .line 152
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    iget v5, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->b:I

    .line 157
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v3, v3, Lcom/baidu/input/ime/ocr/OcrSubCandView;->d:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 165
    move-result v5

    .line 166
    iget v7, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->j:I

    .line 168
    sub-int/2addr v5, v7

    .line 169
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 171
    const v9, 0x7f1206e2

    .line 174
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object v7

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    aput-object v2, v1, v0

    .line 182
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 189
    move-result v2

    .line 190
    invoke-virtual {v6, v1, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 193
    move-result v7

    .line 194
    int-to-float v5, v5

    .line 195
    cmpg-float v7, v7, v5

    .line 197
    if-gtz v7, :cond_c7

    .line 199
    goto :goto_f0

    .line 200
    :cond_c7
    const-string v7, "…"

    .line 202
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 205
    move-result v9

    .line 206
    :cond_cd
    add-int/lit8 v2, v2, -0x1

    .line 208
    if-gez v2, :cond_d4

    .line 210
    const-string v1, ""

    .line 212
    goto :goto_f0

    .line 213
    :cond_d4
    invoke-virtual {v6, v1, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 216
    move-result v10

    .line 217
    add-float/2addr v10, v9

    .line 218
    cmpl-float v10, v10, v5

    .line 220
    if-gtz v10, :cond_cd

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    :goto_f0
    iget v0, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->j:I

    .line 243
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 245
    add-int/2addr v0, v2

    .line 246
    int-to-float v0, v0

    .line 247
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 250
    move-result v2

    .line 251
    iget v5, v8, Lcom/baidu/input/ime/ocr/OcrSubCandView$OcrCandViewParams;->k:I

    .line 253
    add-int/2addr v2, v5

    .line 254
    int-to-float v2, v2

    .line 255
    const/high16 v5, 0x40000000  # 2.0f

    .line 257
    div-float/2addr v2, v5

    .line 258
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 260
    int-to-float v3, v3

    .line 261
    add-float/2addr v2, v3

    .line 262
    sget-byte v3, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 264
    int-to-float v3, v3

    .line 265
    sub-float/2addr v2, v3

    .line 266
    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    goto :goto_156

    .line 270
    :cond_10d
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 272
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    move-result-object v2

    .line 276
    :cond_113
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_14d

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 288
    invoke-interface {v3}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->getId()I

    .line 291
    move-result v5

    .line 292
    if-ne v5, v1, :cond_132

    .line 294
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->Y2()Z

    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_130

    .line 300
    invoke-interface {v3, p1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->onDraw(Landroid/graphics/Canvas;)Z

    .line 303
    move-result v5

    .line 304
    goto :goto_136

    .line 305
    :cond_130
    move v5, v0

    .line 306
    goto :goto_136

    .line 307
    :cond_132
    invoke-interface {v3, p1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->onDraw(Landroid/graphics/Canvas;)Z

    .line 310
    move-result v5

    .line 311
    :goto_136
    invoke-interface {v3, v5}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->d(Z)V

    .line 314
    invoke-static {v4}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 317
    move-result-object v6

    .line 318
    check-cast v6, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 320
    invoke-interface {v6}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->J1()Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {v6}, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->l()Z

    .line 327
    move-result v6

    .line 328
    invoke-interface {v3, v6}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->j(Z)V

    .line 331
    if-eqz v5, :cond_113

    .line 333
    return-void

    .line 334
    :cond_14d
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t2()Z

    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_156

    .line 340
    invoke-virtual {p0, p1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A0(Landroid/graphics/Canvas;)V

    .line 343
    :cond_156
    :goto_156
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->G2()Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 346
    move-result-object p1

    .line 347
    if-eqz p1, :cond_175

    .line 349
    invoke-static {v4}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 355
    invoke-interface {v0}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->J1()Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->m()Z

    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_175

    .line 365
    invoke-interface {p1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->isReady()Z

    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_175

    .line 371
    invoke-interface {p1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->h()V

    .line 374
    :cond_175
    return-void
.end method

.method public final C1()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->O0()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 7
    invoke-virtual {v1}, Lcom/baidu/input/ime/newcore/state/CandState2;->i()I

    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_26

    .line 13
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 15
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->a:Lcom/baidu/input/ime/InputStatMac;

    .line 17
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 19
    const/16 v1, 0x21

    .line 21
    if-ne v0, v1, :cond_24

    .line 23
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 25
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->i()I

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_24

    .line 31
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    :cond_24
    const/4 v0, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v0, 0x0

    .line 40
    :goto_27
    return v0
.end method

.method public final C2(Lcom/baidu/input/ime/params/CandParam;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_8e

    .line 3
    iget-object p1, p1, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 5
    if-eqz p1, :cond_8e

    .line 7
    iget-object p1, p1, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 9
    if-eqz p1, :cond_3d

    .line 11
    iget-object p1, p1, Lcom/baidu/input/ime/params/CandStyleParam;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 13
    invoke-static {p1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_3d

    .line 19
    iget-short v0, p1, Lcom/baidu/input/ime/params/StyleParam;->e:S

    .line 21
    sget-object v1, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_38

    .line 32
    sget-boolean v1, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 34
    if-nez v1, :cond_38

    .line 36
    invoke-static {}, Lcom/baidu/input/ime/pad/FoldUtils;->a()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_38

    .line 42
    iget-short p1, p1, Lcom/baidu/input/ime/params/StyleParam;->c:S

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 51
    mul-float/2addr p1, v0

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result p1

    .line 56
    int-to-short v0, p1

    .line 57
    :cond_38
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;->U2(S)V

    .line 60
    move p1, v0

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    const/16 v0, 0x40

    .line 64
    const/4 p1, -0x1

    .line 65
    :goto_40
    invoke-static {}, Lcom/baidu/input/acgfont/FontUtils;->n()Lcom/baidu/input/ime/cand/fontsize/IFontSizeSetting;

    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1, v0}, Lcom/baidu/input/ime/cand/fontsize/IFontSizeSetting;->c(S)S

    .line 72
    move-result v1

    .line 73
    iput-short v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 75
    invoke-static {}, Lcom/baidu/input/ime/smscode/SmsCandView;->a()Lcom/baidu/input/ime/smscode/SmsCandView;

    .line 78
    move-result-object v1

    .line 79
    iget-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 81
    iget-object v1, v1, Lcom/baidu/input/ime/smscode/SmsCandView;->b:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 83
    int-to-float v2, v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    const v1, 0x3f333333  # 0.7f

    .line 90
    if-eqz v0, :cond_63

    .line 92
    iget-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 94
    int-to-float v2, v2

    .line 95
    mul-float/2addr v2, v1

    .line 96
    int-to-float v3, v0

    .line 97
    div-float/2addr v2, v3

    .line 98
    iput v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->I:F

    .line 100
    :cond_63
    sget-object v2, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 102
    iget v3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->I:F

    .line 104
    div-float/2addr v3, v1

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sput v3, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 110
    const-string v1, "fontSizeInfo:"

    .line 112
    const-string v2, "_"

    .line 114
    invoke-static {v0, v1, p1, v2, v2}, Lcom/baidu/nl;->q(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object p1

    .line 118
    iget-short v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->I:F

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    const/4 v0, 0x0

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    const-string v1, "CandHandler"

    .line 140
    invoke-static {v1, p1, v0}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_8e
    return-void
.end method

.method public final D2(ISI)I
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 7
    if-eqz v0, :cond_3b

    .line 9
    invoke-virtual {p0, p3, p2}, Lcom/baidu/input/ime/cand/CandHandler;->M2(IS)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_97

    .line 15
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_2c

    .line 21
    sget-object v0, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourcePreview;->b:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourcePreview;

    .line 23
    new-instance v1, Landroid/util/Pair;

    .line 25
    sget-object v4, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a:Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 33
    move-result-object p2

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p3

    .line 38
    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->c(Landroid/util/Pair;)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    :cond_2c
    if-eqz v1, :cond_32

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result p1

    .line 51
    :cond_32
    new-instance p2, Landroid/graphics/LightingColorFilter;

    .line 53
    invoke-direct {p2, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 56
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    goto :goto_97

    .line 60
    :cond_3b
    sget-object v0, Lcom/baidu/input/pub/Global;->T:[I

    .line 62
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 64
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 67
    sget-object v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_65

    .line 75
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_65

    .line 81
    invoke-virtual {v0}, Lcom/baidu/input/menutoolapi/data/MenuFunction;->b()Lcom/baidu/input/menutoolapi/data/MenuIconColorType;

    .line 84
    move-result-object v0

    .line 85
    sget-object v4, Lcom/baidu/input/menutoolapi/data/MenuIconColorType;->b:Lcom/baidu/input/menutoolapi/data/MenuIconColorType;

    .line 87
    if-ne v0, v4, :cond_65

    .line 89
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getSelectedColor()I

    .line 92
    move-result p1

    .line 93
    new-instance p2, Landroid/graphics/LightingColorFilter;

    .line 95
    invoke-direct {p2, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 98
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 101
    goto :goto_97

    .line 102
    :cond_65
    invoke-virtual {p0, p3, p2}, Lcom/baidu/input/ime/cand/CandHandler;->M2(IS)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_97

    .line 108
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_89

    .line 114
    sget-object v0, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourcePanel;->b:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourcePanel;

    .line 116
    new-instance v1, Landroid/util/Pair;

    .line 118
    sget-object v4, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a:Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 126
    move-result-object p2

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object p3

    .line 131
    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->c(Landroid/util/Pair;)Ljava/lang/Integer;

    .line 137
    move-result-object v1

    .line 138
    :cond_89
    if-eqz v1, :cond_8f

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result p1

    .line 144
    :cond_8f
    new-instance p2, Landroid/graphics/LightingColorFilter;

    .line 146
    invoke-direct {p2, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 149
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 152
    :cond_97
    :goto_97
    return p1
.end method

.method public final G2()Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 19
    invoke-interface {v1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->getId()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_6

    .line 26
    return-object v1

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method public final H()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->d(Z)V

    .line 23
    invoke-interface {v1, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->j(Z)V

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return-void
.end method

.method public final I()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->d(Z)V

    .line 23
    invoke-interface {v1, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->j(Z)V

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return-void
.end method

.method public final I0()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/icons/CandIconSettings;->a:Lcom/baidu/input/ime/cand/icons/CandIconSettings;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 8
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 14
    invoke-interface {v0}, Lcom/baidu/input/menutoolapi/IMenuTool;->Ea()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public I1(I)B
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_62

    .line 7
    :goto_6
    move v0, v2

    .line 8
    goto :goto_60

    .line 9
    :pswitch_8  #0x17
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->G1()Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_60

    .line 15
    iget-byte p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 17
    invoke-static {p1, v1}, Lcom/baidu/input/common/utils/MathUtils;->bitSet(BB)B

    .line 20
    move-result p1

    .line 21
    iput-byte p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 23
    goto :goto_60

    .line 24
    :pswitch_17  #0x16
    iget-short p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 26
    add-int/2addr p1, v1

    .line 27
    iget v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->D:I

    .line 29
    if-ge p1, v1, :cond_25

    .line 31
    int-to-short p1, p1

    .line 32
    iput-short p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 34
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 37
    goto :goto_60

    .line 38
    :cond_25
    iget-boolean p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 40
    if-eqz p1, :cond_2a

    .line 42
    goto :goto_6

    .line 43
    :cond_2a
    iput-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 45
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 48
    const/4 v0, 0x3

    .line 49
    goto :goto_60

    .line 50
    :pswitch_31  #0x15
    iget-short p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 52
    if-lez p1, :cond_3d

    .line 54
    sub-int/2addr p1, v1

    .line 55
    int-to-short p1, p1

    .line 56
    iput-short p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 58
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 61
    goto :goto_60

    .line 62
    :cond_3d
    iget-boolean p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->q:Z

    .line 64
    if-eqz p1, :cond_42

    .line 66
    goto :goto_6

    .line 67
    :cond_42
    iput-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 69
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 72
    const/4 v0, 0x2

    .line 73
    goto :goto_60

    .line 74
    :pswitch_49  #0x14
    iget-boolean p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 76
    if-eqz p1, :cond_4e

    .line 78
    goto :goto_6

    .line 79
    :cond_4e
    iput-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 81
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 84
    const/4 v0, 0x7

    .line 85
    goto :goto_60

    .line 86
    :pswitch_55  #0x13
    iget-boolean p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->q:Z

    .line 88
    if-eqz p1, :cond_5a

    .line 90
    goto :goto_6

    .line 91
    :cond_5a
    iput-short v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 93
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J1()V

    .line 96
    const/4 v0, 0x6

    .line 97
    :cond_60
    :goto_60
    return v0

    nop

    .line 99
    :pswitch_data_62
    .packed-switch 0x13
        :pswitch_55  #00000013
        :pswitch_49  #00000014
        :pswitch_31  #00000015
        :pswitch_17  #00000016
        :pswitch_8  #00000017
    .end packed-switch
.end method

.method public final I2()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->E2()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1()I

    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public J()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->I2()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    iget-object v1, v0, Lcom/baidu/input/ime/render/CandRender;->s:[Landroid/graphics/Rect;

    .line 11
    iput-object v1, v0, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    iget-object v1, v0, Lcom/baidu/input/ime/render/CandRender;->r:[Landroid/graphics/Rect;

    .line 16
    iput-object v1, v0, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    .line 18
    :goto_11
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L0:I

    .line 21
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 23
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 25
    if-eqz v0, :cond_27

    .line 27
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 29
    if-eqz v0, :cond_27

    .line 31
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->e:I

    .line 37
    int-to-short v0, v0

    .line 38
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L0:I

    .line 40
    :cond_27
    return-void
.end method

.method public final J2(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 7
    if-eqz p2, :cond_7c

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr v1, v0

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    mul-float/2addr v2, v0

    .line 22
    float-to-int v2, v2

    .line 23
    if-eqz p4, :cond_2f

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    move-result p4

    .line 29
    int-to-float p4, p4

    .line 30
    mul-float/2addr p4, v0

    .line 31
    const/high16 v1, 0x42b40000  # 90.0f

    .line 33
    div-float/2addr p4, v1

    .line 34
    const/high16 v2, 0x429c0000  # 78.0f

    .line 36
    mul-float/2addr p4, v2

    .line 37
    float-to-int p4, p4

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    mul-float/2addr v3, v0

    .line 44
    div-float/2addr v3, v1

    .line 45
    mul-float/2addr v3, v2

    .line 46
    float-to-int v2, v3

    .line 47
    move v1, p4

    .line 48
    :cond_2f
    iget-object p4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v0

    .line 57
    if-ne v1, v0, :cond_40

    .line 59
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 62
    move-result v0

    .line 63
    if-eq v2, v0, :cond_59

    .line 65
    :cond_40
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 67
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 70
    move-result v3

    .line 71
    sub-int/2addr v3, v1

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 74
    add-int/2addr v3, v0

    .line 75
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 77
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 80
    move-result p3

    .line 81
    sub-int/2addr p3, v2

    .line 82
    div-int/lit8 p3, p3, 0x2

    .line 84
    add-int/2addr p3, v0

    .line 85
    add-int/2addr v1, v3

    .line 86
    add-int/2addr v2, p3

    .line 87
    invoke-virtual {p4, v3, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    :cond_59
    iget-object p3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 100
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->P:Landroid/graphics/Rect;

    .line 102
    const/4 v2, 0x0

    .line 103
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 105
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    move-result v2

    .line 111
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 113
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    move-result v2

    .line 117
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 119
    invoke-virtual {p1, p2, v1, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    :cond_7c
    return-void
.end method

.method public final K2(IILcom/baidu/input/pub/CoreString;)Lcom/baidu/input/panel/render/cand/slide/CellLayoutParam;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_a

    .line 10
    return-object v3

    .line 11
    :cond_a
    iget-short v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 13
    int-to-float v4, v4

    .line 14
    iget-object v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 16
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isAvailable()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_323

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isVisible()Z

    .line 28
    move-result v4

    .line 29
    const/4 v6, 0x0

    .line 30
    if-nez v4, :cond_27

    .line 32
    new-instance v2, Lcom/baidu/input/panel/render/cand/slide/CellLayoutParam;

    .line 34
    const/16 v3, 0xe

    .line 36
    invoke-direct {v2, v3, v1, v1, v6}, Lcom/baidu/input/panel/render/cand/slide/CellLayoutParam;-><init>(IIII)V

    .line 39
    return-object v2

    .line 40
    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCloudPlaceholder()Z

    .line 43
    move-result v4

    .line 44
    const/4 v7, 0x1

    .line 45
    const/4 v8, -0x1

    .line 46
    const/4 v9, 0x2

    .line 47
    if-eqz v4, :cond_45

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->N0()Landroid/graphics/Bitmap;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 56
    move-result v3

    .line 57
    int-to-float v3, v3

    .line 58
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 61
    move-result-object v4

    .line 62
    iget v4, v4, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 64
    mul-float/2addr v3, v4

    .line 65
    float-to-int v3, v3

    .line 66
    const/16 v4, 0x11

    .line 68
    goto/16 :goto_2b2

    .line 70
    :cond_45
    const/16 v4, 0x80

    .line 72
    invoke-virtual {v2, v4}, Lcom/baidu/input/pub/CoreString;->hasFlag(S)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_57

    .line 78
    sget v3, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 80
    const/high16 v4, 0x42100000  # 36.0f

    .line 82
    mul-float/2addr v3, v4

    .line 83
    float-to-int v3, v3

    .line 84
    const/16 v4, 0xd

    .line 86
    goto/16 :goto_2b2

    .line 88
    :cond_57
    const/16 v4, 0x200

    .line 90
    invoke-virtual {v2, v4}, Lcom/baidu/input/pub/CoreString;->hasFlag(S)Z

    .line 93
    move-result v4

    .line 94
    const/16 v10, 0x10

    .line 96
    if-eqz v4, :cond_68

    .line 98
    invoke-static {v5}, Lcom/baidu/input/emojis/EmojiInvertManager;->d(Landroid/graphics/Paint;)I

    .line 101
    move-result v3

    .line 102
    :goto_65
    move v4, v10

    .line 103
    goto/16 :goto_2b2

    .line 105
    :cond_68
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isEmoji()Z

    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_b1

    .line 111
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->I:F

    .line 113
    invoke-static {v2, v5, v4}, Lcom/baidu/input/emojis/EmotionPkgUtil;->a(Lcom/baidu/input/pub/CoreString;Landroid/text/TextPaint;F)[I

    .line 116
    move-result-object v4

    .line 117
    aget v10, v4, v6

    .line 119
    iget-object v11, v2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 121
    const-string v12, "×"

    .line 123
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_90

    .line 129
    iget-object v11, v2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 134
    move-result v12

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 139
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 142
    move-result v5

    .line 143
    float-to-int v5, v5

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    move v5, v6

    .line 146
    :goto_91
    aget v4, v4, v7

    .line 148
    add-int/2addr v4, v5

    .line 149
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_ac

    .line 155
    if-nez v5, :cond_ac

    .line 157
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->X()F

    .line 164
    move-result v5

    .line 165
    const/high16 v11, 0x42480000  # 50.0f

    .line 167
    mul-float/2addr v5, v11

    .line 168
    float-to-int v5, v5

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 172
    move-result v4

    .line 173
    :cond_ac
    if-ne v4, v8, :cond_af

    .line 175
    return-object v3

    .line 176
    :cond_af
    move v3, v4

    .line 177
    goto :goto_65

    .line 178
    :cond_b1
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCloudType()Z

    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_d8

    .line 184
    iget-object v3, v2, Lcom/baidu/input/pub/CoreString;->cloudOutputService:Lcom/baidu/input/ime/cloudinput/CloudOutputService;

    .line 186
    if-eqz v3, :cond_ca

    .line 188
    iget v4, v3, Lcom/baidu/input/ime/cloudinput/CloudOutputService;->type:I

    .line 190
    const/4 v10, 0x6

    .line 191
    if-ne v4, v10, :cond_cc

    .line 193
    invoke-static {}, Lcom/baidu/input/emojis/YanLxManager;->a()Lcom/baidu/input/emojis/YanLxManager;

    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v4}, Lcom/baidu/input/emojis/YanLxManager;->b()Z

    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_cc

    .line 203
    :cond_ca
    move v3, v6

    .line 204
    goto :goto_d4

    .line 205
    :cond_cc
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f1()Landroid/graphics/Rect;

    .line 208
    move-result-object v4

    .line 209
    invoke-static {v3, v5, v4}, Lcom/baidu/input/ime/cloudinput/CloudOutputUtils;->d(Lcom/baidu/input/ime/cloudinput/CloudOutputService;Landroid/text/TextPaint;Landroid/graphics/Rect;)I

    .line 212
    move-result v3

    .line 213
    :goto_d4
    const/16 v4, 0xf

    .line 215
    goto/16 :goto_2b2

    .line 217
    :cond_d8
    iget-object v3, v2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 219
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isTopKp()Z

    .line 222
    move-result v4

    .line 223
    const/4 v11, 0x7

    .line 224
    if-nez v4, :cond_257

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isTopChChor()Z

    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_e9

    .line 232
    goto/16 :goto_257

    .line 234
    :cond_e9
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isYan()Z

    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_fc

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isYanLX()Z

    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_f6

    .line 246
    goto :goto_fc

    .line 247
    :cond_f6
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 250
    move-result v3

    .line 251
    float-to-int v3, v3

    .line 252
    goto :goto_10f

    .line 253
    :cond_fc
    :goto_fc
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 256
    move-result v4

    .line 257
    const v12, 0x3f333333  # 0.7f

    .line 260
    mul-float/2addr v12, v4

    .line 261
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 264
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 267
    move-result v3

    .line 268
    float-to-int v3, v3

    .line 269
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    :goto_10f
    invoke-virtual {v2, v9}, Lcom/baidu/input/pub/CoreString;->hasFlag(S)Z

    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_12e

    .line 278
    const/16 v4, 0x28

    .line 280
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 287
    move-result v4

    .line 288
    float-to-int v4, v4

    .line 289
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->getPinyinStr()Ljava/lang/String;

    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 296
    move-result v5

    .line 297
    mul-int/2addr v5, v4

    .line 298
    shr-int/lit8 v4, v5, 0x1

    .line 300
    add-int/2addr v3, v4

    .line 301
    goto/16 :goto_25b

    .line 303
    :cond_12e
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->need2MarkCloudCache()Z

    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_13f

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0()Landroid/graphics/Bitmap;

    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 316
    move-result v4

    .line 317
    :goto_13c
    add-int/2addr v3, v4

    .line 318
    goto/16 :goto_25b

    .line 320
    :cond_13f
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCloudPreFetchTag()Z

    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_14e

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0()Landroid/graphics/Bitmap;

    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 333
    move-result v4

    .line 334
    goto :goto_13c

    .line 335
    :cond_14e
    invoke-virtual {v2, v7}, Lcom/baidu/input/pub/CoreString;->hasFlag(S)Z

    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_24b

    .line 341
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isContractAssociate()Z

    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_15c

    .line 347
    goto/16 :goto_24b

    .line 349
    :cond_15c
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isTriggerWord()Z

    .line 352
    move-result v4

    .line 353
    if-eqz v4, :cond_242

    .line 355
    sget-object v4, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 357
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    invoke-static/range {p3 .. p3}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->h(Lcom/baidu/input/pub/CoreString;)I

    .line 363
    move-result v4

    .line 364
    add-int/2addr v4, v3

    .line 365
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_19b

    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_19b

    .line 377
    iget-object v3, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 379
    if-eqz v3, :cond_19b

    .line 381
    iget-boolean v3, v3, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->showAd:Z

    .line 383
    if-ne v3, v7, :cond_19b

    .line 385
    sget-object v3, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 387
    const v12, 0x7f1200a9

    .line 390
    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    move-result-object v3

    .line 394
    const-string v12, "getImeApp().getString(R.string.advertisement)"

    .line 396
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 402
    move-result v3

    .line 403
    float-to-double v12, v3

    .line 404
    const-wide v14, 0x3fd23d70a3d70a3dL  # 0.285

    .line 409
    mul-double/2addr v12, v14

    .line 410
    double-to-int v3, v12

    .line 411
    goto :goto_19c

    .line 412
    :cond_19b
    move v3, v6

    .line 413
    :goto_19c
    add-int/2addr v4, v3

    .line 414
    iget-object v3, v0, Lcom/baidu/input/ime/cand/CandHandler;->O1:[I

    .line 416
    const-string v5, "result"

    .line 418
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 424
    move-result v5

    .line 425
    if-eqz v5, :cond_236

    .line 427
    iget-object v5, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 429
    if-eqz v5, :cond_1b4

    .line 431
    iget v12, v5, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgStyle:I

    .line 433
    if-ne v12, v9, :cond_1b4

    .line 435
    move v12, v7

    .line 436
    goto :goto_1b5

    .line 437
    :cond_1b4
    move v12, v6

    .line 438
    :goto_1b5
    if-eqz v5, :cond_1bd

    .line 440
    iget v5, v5, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgStyle:I

    .line 442
    if-ne v5, v7, :cond_1bd

    .line 444
    move v5, v7

    .line 445
    goto :goto_1be

    .line 446
    :cond_1bd
    move v5, v6

    .line 447
    :goto_1be
    if-nez v12, :cond_1c8

    .line 449
    if-eqz v5, :cond_236

    .line 451
    invoke-static/range {p3 .. p3}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->d(Lcom/baidu/input/pub/CoreString;)Landroid/graphics/Bitmap;

    .line 454
    move-result-object v5

    .line 455
    if-eqz v5, :cond_236

    .line 457
    :cond_1c8
    const/16 v5, 0xc

    .line 459
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 462
    move-result-object v5

    .line 463
    invoke-static {v5}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->j(Ljava/lang/Number;)I

    .line 466
    move-result v5

    .line 467
    int-to-float v5, v5

    .line 468
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->l()F

    .line 471
    move-result v12

    .line 472
    mul-float/2addr v12, v5

    .line 473
    sget v5, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 475
    mul-float/2addr v12, v5

    .line 476
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 479
    move-result-object v5

    .line 480
    invoke-static {v5}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->j(Ljava/lang/Number;)I

    .line 483
    move-result v5

    .line 484
    int-to-float v5, v5

    .line 485
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->l()F

    .line 488
    move-result v13

    .line 489
    mul-float/2addr v13, v5

    .line 490
    sget v5, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 492
    mul-float/2addr v13, v5

    .line 493
    iget-object v5, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 495
    iget-boolean v5, v5, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->showAd:Z

    .line 497
    if-eqz v5, :cond_206

    .line 499
    const/16 v5, 0xa

    .line 501
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 504
    move-result-object v5

    .line 505
    invoke-static {v5}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->j(Ljava/lang/Number;)I

    .line 508
    move-result v5

    .line 509
    int-to-float v5, v5

    .line 510
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->l()F

    .line 513
    move-result v10

    .line 514
    mul-float/2addr v10, v5

    .line 515
    sget v5, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 517
    :goto_204
    mul-float/2addr v10, v5

    .line 518
    goto :goto_217

    .line 519
    :cond_206
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 522
    move-result-object v5

    .line 523
    invoke-static {v5}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->j(Ljava/lang/Number;)I

    .line 526
    move-result v5

    .line 527
    int-to-float v5, v5

    .line 528
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->l()F

    .line 531
    move-result v10

    .line 532
    mul-float/2addr v10, v5

    .line 533
    sget v5, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 535
    goto :goto_204

    .line 536
    :goto_217
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 539
    move-result-object v5

    .line 540
    invoke-static {v5}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->j(Ljava/lang/Number;)I

    .line 543
    move-result v5

    .line 544
    int-to-float v5, v5

    .line 545
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->l()F

    .line 548
    move-result v14

    .line 549
    mul-float/2addr v14, v5

    .line 550
    sget v5, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->b:F

    .line 552
    mul-float/2addr v14, v5

    .line 553
    float-to-int v5, v12

    .line 554
    aput v5, v3, v6

    .line 556
    float-to-int v5, v13

    .line 557
    aput v5, v3, v7

    .line 559
    float-to-int v5, v10

    .line 560
    aput v5, v3, v9

    .line 562
    const/4 v5, 0x3

    .line 563
    float-to-int v10, v14

    .line 564
    aput v10, v3, v5

    .line 566
    goto :goto_23a

    .line 567
    :cond_236
    array-length v5, v3

    .line 568
    invoke-static {v3, v6, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 571
    :goto_23a
    aget v5, v3, v6

    .line 573
    aget v3, v3, v9

    .line 575
    add-int/2addr v5, v3

    .line 576
    add-int v3, v5, v4

    .line 578
    goto :goto_25b

    .line 579
    :cond_242
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCommonQuoteWord()Z

    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_25b

    .line 585
    sget-object v4, Lcom/baidu/input/lazy2core/LazyCandWordHelper;->a:Lcom/baidu/input/lazy2core/LazyCandWordHelper;

    .line 587
    goto :goto_25b

    .line 588
    :cond_24b
    :goto_24b
    invoke-static {v11}, Lcom/baidu/input/ime/params/KeymapLoader;->o(B)Landroid/graphics/Bitmap;

    .line 591
    move-result-object v4

    .line 592
    if-eqz v4, :cond_25b

    .line 594
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 597
    move-result v4

    .line 598
    goto/16 :goto_13c

    .line 600
    :cond_257
    :goto_257
    invoke-static {v2, v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W0(Lcom/baidu/input/pub/CoreString;Landroid/text/TextPaint;)I

    .line 603
    move-result v3

    .line 604
    :cond_25b
    :goto_25b
    sget-object v4, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 606
    invoke-static {v4}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 609
    const/16 v4, -0x1b

    .line 611
    iget v5, v2, Lcom/baidu/input/pub/CoreString;->index:I

    .line 613
    if-ne v4, v5, :cond_268

    .line 615
    sget-object v4, Lcom/baidu/input/ime/event/OperatingCandidateGlobal;->a:Ljava/lang/Object;

    .line 617
    :cond_268
    if-lez p2, :cond_2b1

    .line 619
    invoke-virtual {v2, v7}, Lcom/baidu/input/pub/CoreString;->hasFlag(S)Z

    .line 622
    move-result v4

    .line 623
    if-nez v4, :cond_2a6

    .line 625
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isContractAssociate()Z

    .line 628
    move-result v4

    .line 629
    if-eqz v4, :cond_277

    .line 631
    goto :goto_2a6

    .line 632
    :cond_277
    iget v4, v2, Lcom/baidu/input/pub/CoreString;->index:I

    .line 634
    const/16 v5, -0x12

    .line 636
    if-ne v4, v5, :cond_288

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0()Landroid/graphics/Bitmap;

    .line 641
    move-result-object v4

    .line 642
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 645
    move-result v4

    .line 646
    :goto_285
    add-int/2addr v4, v3

    .line 647
    move v3, v4

    .line 648
    goto :goto_2b1

    .line 649
    :cond_288
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->need2MarkCloudCache()Z

    .line 652
    move-result v4

    .line 653
    if-eqz v4, :cond_297

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0()Landroid/graphics/Bitmap;

    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 662
    move-result v4

    .line 663
    goto :goto_285

    .line 664
    :cond_297
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCloudPreFetchTag()Z

    .line 667
    move-result v4

    .line 668
    if-eqz v4, :cond_2b1

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0()Landroid/graphics/Bitmap;

    .line 673
    move-result-object v4

    .line 674
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 677
    move-result v4

    .line 678
    goto :goto_285

    .line 679
    :cond_2a6
    :goto_2a6
    invoke-static {v11}, Lcom/baidu/input/ime/params/KeymapLoader;->o(B)Landroid/graphics/Bitmap;

    .line 682
    move-result-object v4

    .line 683
    if-eqz v4, :cond_2b1

    .line 685
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 688
    move-result v4

    .line 689
    add-int/2addr v3, v4

    .line 690
    :cond_2b1
    :goto_2b1
    move v4, v6

    .line 691
    :goto_2b2
    invoke-virtual {v0, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1(I)I

    .line 694
    move-result v3

    .line 695
    if-lez v3, :cond_2f3

    .line 697
    if-lez p2, :cond_2c4

    .line 699
    div-int v5, v3, p2

    .line 701
    add-int/2addr v5, v7

    .line 702
    mul-int v5, v5, p2

    .line 704
    sub-int v3, v5, v3

    .line 706
    move v6, v3

    .line 707
    move v3, v5

    .line 708
    goto :goto_2c8

    .line 709
    :cond_2c4
    iget-short v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->K0:S

    .line 711
    add-int/2addr v3, v5

    .line 712
    move v6, v5

    .line 713
    :goto_2c8
    sget-object v5, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 715
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 721
    move-result v5

    .line 722
    if-eqz v5, :cond_2f3

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f1()Landroid/graphics/Rect;

    .line 727
    move-result-object v5

    .line 728
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 731
    move-result v5

    .line 732
    mul-int/lit8 v5, v5, 0x20

    .line 734
    int-to-float v5, v5

    .line 735
    const/high16 v10, 0x41f00000  # 30.0f

    .line 737
    div-float/2addr v5, v10

    .line 738
    const/high16 v10, 0x40800000  # 4.0f

    .line 740
    invoke-static {v10}, Lcom/baidu/input/common/utils/DensityUtils;->dp2px(F)I

    .line 743
    move-result v10

    .line 744
    mul-int/2addr v10, v9

    .line 745
    int-to-float v9, v10

    .line 746
    iget v10, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    .line 748
    mul-float/2addr v9, v10

    .line 749
    add-float/2addr v9, v5

    .line 750
    float-to-int v5, v9

    .line 751
    if-ge v3, v5, :cond_2f3

    .line 753
    sub-int/2addr v5, v3

    .line 754
    add-int/2addr v6, v5

    .line 755
    add-int/2addr v3, v5

    .line 756
    :cond_2f3
    add-int/2addr v3, v1

    .line 757
    shr-int/lit8 v5, v6, 0x1

    .line 759
    if-eq v8, v3, :cond_31d

    .line 761
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/input/pub/CoreString;->isCloudType()Z

    .line 764
    move-result v6

    .line 765
    if-eqz v6, :cond_31d

    .line 767
    iget-object v2, v2, Lcom/baidu/input/pub/CoreString;->cloudOutputService:Lcom/baidu/input/ime/cloudinput/CloudOutputService;

    .line 769
    if-eqz v2, :cond_31d

    .line 771
    iget-boolean v6, v2, Lcom/baidu/input/ime/cloudinput/CloudOutputService;->isInAssociate:Z

    .line 773
    iget-object v2, v2, Lcom/baidu/input/ime/cloudinput/CloudOutputService;->id:Ljava/lang/String;

    .line 775
    if-eqz v6, :cond_313

    .line 777
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->v()Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;

    .line 780
    move-result-object v6

    .line 781
    const v7, 0xc401

    .line 784
    invoke-virtual {v6, v7, v2}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->u(ILjava/lang/String;)V

    .line 787
    goto :goto_31d

    .line 788
    :cond_313
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->v()Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;

    .line 791
    move-result-object v6

    .line 792
    const v7, 0xc3ff

    .line 795
    invoke-virtual {v6, v7, v2}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->u(ILjava/lang/String;)V

    .line 798
    :cond_31d
    :goto_31d
    new-instance v2, Lcom/baidu/input/panel/render/cand/slide/CellLayoutParam;

    .line 800
    invoke-direct {v2, v4, v1, v3, v5}, Lcom/baidu/input/panel/render/cand/slide/CellLayoutParam;-><init>(IIII)V

    .line 803
    return-object v2

    .line 804
    :cond_323
    return-object v3
.end method

.method public final L()V
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 6
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 8
    const/16 v1, 0xaa

    .line 10
    invoke-virtual {v0, v1}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 13
    return-void
.end method

.method public final L1()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_21

    .line 12
    const-class v0, Lcom/baidu/input/aicard/IAICard;

    .line 14
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/baidu/input/aicard/IAICard;

    .line 20
    invoke-interface {v0}, Lcom/baidu/input/aicard/IAICard;->kc()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_21

    .line 26
    invoke-static {}, Lcom/baidu/input/pub/Global;->T()Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_21

    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    :goto_22
    return v0
.end method

.method public L2(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/input/ime/render/CandRender;->u(I)Z

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 9
    iget-short v0, v0, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 11
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 13
    invoke-interface {v1, v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->d(S)V

    .line 16
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 18
    iget v0, v0, Lcom/baidu/input/ime/render/CandRender;->K:I

    .line 20
    sput v0, Lcom/baidu/input/pub/Global;->a1:I

    .line 22
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 25
    move-result-object v0

    .line 26
    iget-byte v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->g:B

    .line 28
    const/4 v2, 0x2

    .line 29
    if-ne v0, v2, :cond_3d

    .line 31
    const-class v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 33
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 39
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3d

    .line 49
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 51
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 53
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 55
    int-to-short v3, v3

    .line 56
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 58
    int-to-short v0, v0

    .line 59
    invoke-interface {v1, v3, v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->i(SS)V

    .line 62
    :cond_3d
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_60

    .line 68
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 70
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->x(B)Lcom/baidu/input/ime/IInputBarView;

    .line 73
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 75
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->g:Lcom/baidu/input/ime/IInputBarView;

    .line 77
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 79
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 84
    move-result v1

    .line 85
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 87
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v2

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/baidu/input/ime/IInputBarView;->C0(II)V

    .line 96
    goto :goto_7d

    .line 97
    :cond_60
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 99
    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/InputEventHandler;->x(B)Lcom/baidu/input/ime/IInputBarView;

    .line 103
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 105
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->g:Lcom/baidu/input/ime/IInputBarView;

    .line 107
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 109
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result v1

    .line 115
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 117
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 122
    move-result v2

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/baidu/input/ime/IInputBarView;->C0(II)V

    .line 126
    :goto_7d
    return p1
.end method

.method public final M(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-static {p1, p2}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->a(Landroid/graphics/Rect;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public final M1()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/newcore/operator/CalculatorHandler;->a()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final M2(IS)Z
    .registers 8

    .line 1
    sget-object v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    return v2

    .line 12
    :cond_b
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    invoke-virtual {v0}, Lcom/baidu/input/menutoolapi/data/MenuFunction;->b()Lcom/baidu/input/menutoolapi/data/MenuIconColorType;

    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lcom/baidu/input/menutoolapi/data/MenuIconColorType;->a:Lcom/baidu/input/menutoolapi/data/MenuIconColorType;

    .line 24
    if-ne v3, v4, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    const/16 v3, 0xf0c

    .line 29
    if-ne p2, v3, :cond_1f

    .line 31
    return v2

    .line 32
    :cond_1f
    sget-object p2, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;

    .line 34
    iget-boolean v3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sput-boolean v3, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->b:Z

    .line 41
    if-eqz v0, :cond_8f

    .line 43
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a()Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;

    .line 46
    move-result-object p2

    .line 47
    new-instance v3, Landroid/util/Pair;

    .line 49
    sget-object v4, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a:Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {v0}, Lcom/baidu/input/ime/reconstruction/data/MenuFunctionConvertor;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object p1, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a:Ljava/util/HashSet;

    .line 70
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz p1, :cond_67

    .line 79
    invoke-virtual {p2}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a()Lcom/baidu/input/ime/params/CandLoader;

    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_8c

    .line 85
    iget-object p2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    check-cast p2, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 89
    invoke-virtual {p1, p2}, Lcom/baidu/input/ime/params/CandLoader;->C(Lcom/baidu/input/ime/params/enumtype/CandIconFunction;)Lcom/baidu/input/ime/params/IconParam;

    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_8c

    .line 95
    iget-object p1, p1, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 97
    if-eqz p1, :cond_8c

    .line 99
    invoke-virtual {p1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 102
    move-result-object v0

    .line 103
    goto :goto_8c

    .line 104
    :cond_67
    invoke-virtual {p2}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a()Lcom/baidu/input/ime/params/CandLoader;

    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_8c

    .line 110
    iget-object p2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 112
    check-cast p2, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 114
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 116
    const-string v4, "key.second"

    .line 118
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    check-cast v3, Ljava/lang/Number;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 126
    move-result v3

    .line 127
    invoke-virtual {p1, p2, v3}, Lcom/baidu/input/ime/params/CandLoader;->E(Lcom/baidu/input/ime/params/enumtype/CandIconFunction;I)Lcom/baidu/input/ime/params/IconParam;

    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_8c

    .line 133
    iget-object p1, p1, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 135
    if-eqz p1, :cond_8c

    .line 137
    invoke-virtual {p1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 140
    move-result-object v0

    .line 141
    :cond_8c
    :goto_8c
    if-eqz v0, :cond_8f

    .line 143
    return v2

    .line 144
    :cond_8f
    return v1
.end method

.method public final N1(Lcom/baidu/input/pub/CoreString;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->n(Lcom/baidu/input/pub/CoreString;)Z

    .line 9
    move-result p1

    .line 10
    xor-int/lit8 p1, p1, 0x1

    .line 12
    return p1
.end method

.method public N2()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->f:Z

    .line 7
    return v0
.end method

.method public final O(Lcom/baidu/input/ime/params/StyleParam;)V
    .registers 8

    .line 1
    new-instance p1, Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;

    .line 3
    invoke-direct {p1, p0}, Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;-><init>(Lcom/baidu/input/ime/cand/CandHandler;)V

    .line 6
    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandHandler;->A1:Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;

    .line 8
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_40

    .line 14
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->c2()V

    .line 17
    sget-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d1:Lcom/baidu/input/ime/KeymapMac;

    .line 19
    iget-boolean p1, p1, Lcom/baidu/input/ime/KeymapMac;->u:Z

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_3e

    .line 24
    sget p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l1:I

    .line 26
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A1()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_24

    .line 32
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1()I

    .line 35
    move-result v1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v1, 0x4

    .line 38
    :goto_25
    mul-int/2addr v1, p1

    .line 39
    sget-boolean p1, Lcom/baidu/input/pub/Global;->I0:Z

    .line 41
    if-eqz p1, :cond_3a

    .line 43
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->E2()I

    .line 46
    move-result p1

    .line 47
    if-ge v1, p1, :cond_3a

    .line 49
    sget-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j1:[Landroid/graphics/Rect;

    .line 51
    aget-object p1, p1, v1

    .line 53
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 55
    neg-int p1, p1

    .line 56
    sput p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X0:I

    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    sput v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l1:I

    .line 61
    sput v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X0:I

    .line 63
    :cond_3e
    :goto_3e
    sput-boolean v0, Lcom/baidu/input/pub/Global;->I0:Z

    .line 65
    :cond_40
    sget-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->c1:Landroid/graphics/Bitmap;

    .line 67
    if-nez p1, :cond_54

    .line 69
    const/16 p1, 0x41

    .line 71
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->h(B)Landroid/graphics/Bitmap;

    .line 74
    move-result-object p1

    .line 75
    sput-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->c1:Landroid/graphics/Bitmap;

    .line 77
    const/16 p1, 0x40

    .line 79
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->h(B)Landroid/graphics/Bitmap;

    .line 82
    move-result-object p1

    .line 83
    sput-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->s1:Landroid/graphics/Bitmap;

    .line 85
    :cond_54
    sget-object p1, Lcom/baidu/input/pub/Global;->w0:[I

    .line 87
    const/4 v0, 0x1

    .line 88
    aget p1, p1, v0

    .line 90
    if-gtz p1, :cond_6a

    .line 92
    sget-object p1, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 94
    const/16 v1, 0x9b0

    .line 96
    invoke-virtual {p1, v1}, Lcom/baidu/input/pub/Option;->g(I)Z

    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_66

    .line 102
    goto :goto_6a

    .line 103
    :cond_66
    const/4 p1, 0x0

    .line 104
    sput-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 106
    goto :goto_76

    .line 107
    :cond_6a
    :goto_6a
    sget-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 109
    if-nez p1, :cond_76

    .line 111
    const/16 p1, 0x4c

    .line 113
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->h(B)Landroid/graphics/Bitmap;

    .line 116
    move-result-object p1

    .line 117
    sput-object p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 119
    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->b3()V

    .line 122
    invoke-static {}, Lcom/baidu/input/ime/smscode/SmsCandView;->a()Lcom/baidu/input/ime/smscode/SmsCandView;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget-object p1, p1, Lcom/baidu/input/ime/smscode/SmsCandView;->b:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 131
    if-eqz p1, :cond_8f

    .line 133
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    :cond_8f
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_e5

    .line 150
    new-instance p1, Landroid/graphics/Rect;

    .line 152
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 157
    invoke-virtual {v1}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 160
    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f1()Landroid/graphics/Rect;

    .line 164
    move-result-object v2

    .line 165
    if-eqz v2, :cond_b0

    .line 167
    if-eqz v1, :cond_b0

    .line 169
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f1()Landroid/graphics/Rect;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    goto :goto_b3

    .line 177
    :cond_b0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 180
    :goto_b3
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 182
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v1, p0}, Lcom/baidu/input/CandViewWrapper;->t(Lcom/baidu/input/ime/cand/CandHandler;)Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 195
    move-result v3

    .line 196
    new-instance v4, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;

    .line 198
    invoke-direct {v4, v1}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;-><init>(Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;)V

    .line 201
    invoke-direct {v2, v3, v4}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;-><init>(ILcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;)V

    .line 204
    instance-of v3, p0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKFloatCand;

    .line 206
    xor-int/2addr v0, v3

    .line 207
    iput-boolean v0, v2, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->m:Z

    .line 209
    new-instance v3, Lcom/baidu/input/panel/render/cand/slide/SlidingView;

    .line 211
    sget-object v4, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 213
    new-instance v5, Lcom/baidu/input/ime/cand/CandHandler$1;

    .line 215
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-direct {v3, v4, p1, v2, v5}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;-><init>(Landroid/app/Application;Landroid/graphics/Rect;Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;Lcom/baidu/input/panel/render/cand/slide/ISlidingViewDependence;)V

    .line 221
    iput-boolean v0, v3, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->v:Z

    .line 223
    new-instance p1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;

    .line 225
    invoke-direct {p1, v1, v2, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;-><init>(Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;Lcom/baidu/input/panel/render/cand/slide/SlidingView;)V

    .line 228
    iput-object p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;

    .line 230
    :cond_e5
    invoke-static {}, Lcom/baidu/input/pub/FLauncherManager;->d()Lcom/baidu/input/pub/FLauncherManager;

    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/baidu/input/pub/FLauncherManager;->a()V

    .line 237
    return-void
.end method

.method public final O1()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 3
    const/16 v1, 0x9

    .line 5
    aget-boolean v1, v0, v1

    .line 7
    if-nez v1, :cond_e

    .line 9
    const/16 v1, 0x68

    .line 11
    aget-boolean v0, v0, v1

    .line 13
    if-eqz v0, :cond_15

    .line 15
    :cond_e
    sget-byte v0, Lcom/baidu/input/pub/Global;->i0:B

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_15

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return v0
.end method

.method public O2()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->h:Z

    .line 7
    return v0
.end method

.method public P()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 5
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->W2()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;->C2(Lcom/baidu/input/ime/params/CandParam;)V

    .line 11
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/baidu/input/pub/Global;->S()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_33

    .line 21
    invoke-static {}, Lcom/baidu/input/util/SmartCloudWordGuideUtils;->d()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_25

    .line 27
    sget-object v1, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_33

    .line 38
    :cond_25
    const-class v1, Lcom/baidu/input/theme/diy/DiyThemeCandHandler;

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_33

    .line 46
    sget-byte v1, Lcom/baidu/input/pub/Global;->i0:B

    .line 48
    const/4 v2, 0x1

    .line 49
    if-ne v1, v2, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 v2, 0x0

    .line 53
    :goto_34
    iput-boolean v2, v0, Lcom/baidu/skinrender/SkinRenderStatus;->d:Z

    .line 55
    return-void
.end method

.method public final P0()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->E2()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public P2()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->b()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_43

    .line 16
    :cond_f
    invoke-static {}, Lcom/baidu/input/common/utils/RomUtil;->hasM()Z

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_18

    .line 23
    :cond_16
    move v1, v2

    .line 24
    goto :goto_43

    .line 25
    :cond_18
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->h()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_16

    .line 31
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->b()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_16

    .line 49
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 51
    const-string v3, "PREF_KEY_PRIVACY_UPDATE_SHOW"

    .line 53
    invoke-interface {v0, v3, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_16

    .line 59
    const-string v3, "pref_key_logo_menu_permission_show_count"

    .line 61
    invoke-interface {v0, v3, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getInt(Ljava/lang/String;I)I

    .line 64
    move-result v0

    .line 65
    const/4 v3, 0x3

    .line 66
    if-ge v0, v3, :cond_16

    .line 68
    :goto_43
    return v1
.end method

.method public final Q0()Landroid/graphics/Rect;
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public Q1()V
    .registers 6

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->g:Lcom/baidu/input/ime/IInputBarView;

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 11
    iget-object v2, v1, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 13
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 15
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 22
    move-result v4

    .line 23
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/baidu/input/ime/IInputBarView;->Y(Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;Lcom/baidu/input/ime/params/ThemeLoader;B)V

    .line 26
    :cond_19
    return-void
.end method

.method public Q2()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->g:Z

    .line 7
    return v0
.end method

.method public final R2()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->H1:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;

    .line 3
    const-string v1, ""

    .line 5
    iput-object v1, v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->b:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->d:Lcom/baidu/input/ime/cand/minorword/a;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    iget-object v2, v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->d:Lcom/baidu/input/ime/cand/minorword/a;

    .line 19
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->f()V

    .line 22
    iget-object v0, v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->c:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer$AnimCanvasView;

    .line 24
    if-eqz v0, :cond_30

    .line 26
    sget-object v0, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->e:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer$Companion;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer$Companion;->a()[Lcom/baidu/input/ime/cand/minorword/AISmartCloudAnim;

    .line 34
    move-result-object v0

    .line 35
    array-length v2, v0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_24
    if-ge v3, v2, :cond_30

    .line 39
    aget-object v4, v0, v3

    .line 41
    iget-object v4, v4, Lcom/baidu/input/ime/cand/minorword/AISmartCloudAnim;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_24

    .line 49
    :cond_30
    return-void
.end method

.method public final S1(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, v0, Lcom/baidu/input/ime/cand/CandHandler;->I1:Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

    .line 12
    invoke-virtual {v5}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;->b()Z

    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v7, ""

    .line 24
    if-eqz v5, :cond_5f

    .line 26
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 28
    if-eqz v5, :cond_5f

    .line 30
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 32
    if-eqz v5, :cond_5f

    .line 34
    iget-object v5, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 36
    sget-object v8, Lcom/baidu/input/ime/cand/minorword/MinorCandType;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 38
    if-eq v5, v8, :cond_37

    .line 40
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 42
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 44
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 46
    iget-object v5, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 48
    invoke-virtual {v5}, Lcom/baidu/input/ime/cand/minorword/MinorCandType;->n()Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_37

    .line 54
    move v5, v4

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v5, v6

    .line 57
    :goto_38
    sget-object v8, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 59
    iget-object v8, v8, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 61
    iget-object v8, v8, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 63
    iget-object v8, v8, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->l:Ljava/lang/String;

    .line 65
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 68
    move-result v8

    .line 69
    xor-int/lit8 v9, v8, 0x1

    .line 71
    sget-object v10, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 73
    iget-object v10, v10, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 75
    iget-object v10, v10, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 77
    iget-object v10, v10, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->e:Lcom/baidu/iptcore/info/IptCoreCandInfo;

    .line 79
    if-eqz v10, :cond_54

    .line 81
    invoke-virtual {v10}, Lcom/baidu/iptcore/info/IptCoreCandInfo;->toString()Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 85
    :cond_54
    if-nez v8, :cond_61

    .line 87
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 89
    iget-object v7, v7, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 91
    iget-object v7, v7, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 93
    iget-object v7, v7, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->l:Ljava/lang/String;

    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    move v5, v6

    .line 97
    move v9, v5

    .line 98
    :cond_61
    :goto_61
    invoke-static {}, Lcom/baidu/input/ime/newcore/operator/CalculatorHandler;->a()Z

    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_77

    .line 104
    sget-object v8, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 106
    const/16 v10, 0x9

    .line 108
    aget-boolean v8, v8, v10

    .line 110
    if-eqz v8, :cond_75

    .line 112
    sget-byte v8, Lcom/baidu/input/pub/Global;->i0:B

    .line 114
    const/4 v10, 0x2

    .line 115
    if-eq v8, v10, :cond_75

    .line 117
    goto :goto_77

    .line 118
    :cond_75
    move v8, v6

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    :goto_77
    move v8, v4

    .line 121
    :goto_78
    iget-object v10, v0, Lcom/baidu/input/ime/cand/CandHandler;->H1:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;

    .line 123
    if-eqz v5, :cond_81

    .line 125
    invoke-virtual {v10, v1, v3, v7}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 128
    goto/16 :goto_156

    .line 130
    :cond_81
    if-eqz v8, :cond_95

    .line 132
    if-eqz v9, :cond_8a

    .line 134
    invoke-virtual {v10, v1, v3, v7}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 137
    goto/16 :goto_156

    .line 139
    :cond_8a
    invoke-virtual {v10, v6}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->g(Z)Z

    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_156

    .line 145
    invoke-static {v1, v3}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 148
    goto/16 :goto_156

    .line 150
    :cond_95
    invoke-virtual {v10, v4}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->g(Z)Z

    .line 153
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 156
    move-result-object v5

    .line 157
    iget-boolean v5, v5, Lcom/baidu/skinrender/SkinRenderSettings;->z:Z

    .line 159
    if-nez v5, :cond_cd

    .line 161
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 163
    if-eqz v5, :cond_cd

    .line 165
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 167
    if-eqz v5, :cond_cd

    .line 169
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 171
    if-eqz v5, :cond_cd

    .line 173
    iget-object v5, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 175
    sget-object v7, Lcom/baidu/input/ime/cand/minorword/MinorCandType;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 177
    if-eq v5, v7, :cond_cd

    .line 179
    invoke-static {}, Lcom/baidu/input/pub/Global;->T()Z

    .line 182
    move-result v5

    .line 183
    if-nez v5, :cond_cd

    .line 185
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 187
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 189
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 191
    iget-object v7, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 193
    iget-object v5, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->e:Lcom/baidu/iptcore/info/IptCoreCandInfo;

    .line 195
    invoke-virtual {v7, v5}, Lcom/baidu/input/ime/cand/minorword/MinorCandType;->p(Lcom/baidu/iptcore/info/IptCoreCandInfo;)Z

    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_cd

    .line 201
    invoke-static {v1, v3}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 204
    goto/16 :goto_156

    .line 206
    :cond_cd
    sget-object v5, Lcom/baidu/input/ime/params/enumtype/FacadeState;->b:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 208
    move-object/from16 v7, p4

    .line 210
    if-ne v7, v5, :cond_d8

    .line 212
    iget-object v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 214
    iget v5, v5, Lcom/baidu/input/ime/render/CandRender;->E:I

    .line 216
    goto :goto_dc

    .line 217
    :cond_d8
    iget-object v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 219
    iget v5, v5, Lcom/baidu/input/ime/render/CandRender;->F:I

    .line 221
    :goto_dc
    const-string v7, "canvas"

    .line 223
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string v7, "paint"

    .line 228
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string v7, "drawRect"

    .line 233
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v7, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer;->e:Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer$Companion;

    .line 238
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudDrawer$Companion;->a()[Lcom/baidu/input/ime/cand/minorword/AISmartCloudAnim;

    .line 244
    move-result-object v7

    .line 245
    array-length v8, v7

    .line 246
    move v9, v6

    .line 247
    :goto_f6
    if-ge v9, v8, :cond_156

    .line 249
    aget-object v10, v7, v9

    .line 251
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-virtual {v10, v1, v3}, Lcom/baidu/input/ime/cand/minorword/AISmartCloudAnim;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 257
    sget-object v11, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 259
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    move-result-object v11

    .line 263
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    .line 265
    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    iput-boolean v6, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 270
    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 272
    const v13, 0x7f080fe3

    .line 275
    invoke-static {v11, v13, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 278
    move-result-object v11

    .line 279
    if-eqz v11, :cond_150

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 284
    move-result-object v12

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 288
    move-result v13

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->isDither()Z

    .line 292
    move-result v14

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 296
    move-result v15

    .line 297
    new-instance v4, Landroid/graphics/LightingColorFilter;

    .line 299
    invoke-direct {v4, v6, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 302
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 312
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 315
    iget-object v4, v10, Lcom/baidu/input/ime/cand/minorword/AISmartCloudAnim;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 317
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 320
    move-result-object v4

    .line 321
    const/4 v10, 0x0

    .line 322
    invoke-virtual {v1, v11, v10, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 325
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 328
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 334
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 337
    :cond_150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 340
    const/4 v4, 0x1

    .line 341
    add-int/2addr v9, v4

    .line 342
    goto :goto_f6

    .line 343
    :cond_156
    :goto_156
    return-void
.end method

.method public final S2(Landroid/view/MotionEvent;)Z
    .registers 28

    # p0/p1 exceed v15: preserve the register map and use /range.
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModBeginTouch(Landroid/view/MotionEvent;)V

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v5

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    if-nez v5, :cond_30

    .line 16
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    .line 19
    move-result-object v5

    .line 20
    iget-object v8, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 22
    iget-object v8, v8, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->c:Landroid/animation/Animator;

    .line 24
    if-eqz v8, :cond_1c

    .line 26
    invoke-virtual {v8}, Landroid/animation/Animator;->end()V

    .line 29
    :cond_1c
    iget-object v5, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 31
    iput-object v6, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->c:Landroid/animation/Animator;

    .line 33
    const/4 v8, 0x0

    .line 34
    iput v8, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->a:F

    .line 36
    iput v8, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->b:F

    .line 38
    iput v8, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->d:F

    .line 40
    iput v8, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->e:F

    .line 42
    sget-object v5, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 44
    const/16 v8, 0xade

    .line 46
    invoke-virtual {v5, v8, v7}, Lcom/baidu/input/pub/Option;->v(IZ)V

    .line 49
    :cond_30
    invoke-static {}, Lcom/baidu/input/ime/smscode/SmsCandViewHelper;->a()Lcom/baidu/input/ime/smscode/SmsCandViewHelper;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-object v5, v0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 58
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v5

    .line 62
    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_63

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 74
    invoke-interface {v8}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->getId()I

    .line 77
    move-result v9

    .line 78
    if-ne v9, v4, :cond_5c

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->Y2()Z

    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_5a

    .line 86
    invoke-interface {v8, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    move-result v8

    .line 90
    goto/16 :goto_60

    .line 91
    :cond_5a
    move v8, v7

    .line 92
    goto/16 :goto_60

    .line 93
    :cond_5c
    invoke-interface {v8, v2}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 96
    move-result v8

    .line 97
    :goto_60
    if-eqz v8, :cond_3d

    .line 99
    return v4

    .line 100
    :cond_63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 103
    move-result v5

    .line 104
    if-ne v5, v4, :cond_79

    .line 106
    sget-object v5, Lcom/baidu/input/ime/cand/minorword/AILoveIntentCache;->a:Lcom/baidu/input/ime/cand/minorword/AILoveIntentCache;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/AILoveIntentCache;->a()V

    .line 114
    sget-object v5, Lcom/baidu/input/ime/scene/goodsmessage/GoodsMessageBarRemover;->a:Lcom/baidu/input/ime/scene/goodsmessage/GoodsMessageBarRemover;

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Lcom/baidu/input/ime/scene/goodsmessage/GoodsMessageBarRemover;->a()V

    .line 122
    :cond_79
    const-class v5, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 124
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 130
    invoke-interface {v8}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->Oc()Z

    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_117

    .line 136
    invoke-static {}, Lcom/baidu/input/ime/ocr/OcrSubCandView;->a()Lcom/baidu/input/ime/ocr/OcrSubCandView;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 146
    move-result v3

    .line 147
    float-to-int v3, v3

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 151
    move-result v6

    .line 152
    float-to-int v6, v6

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_10c

    .line 159
    if-eq v2, v4, :cond_a2

    .line 161
    goto/16 :goto_116

    .line 163
    :cond_a2
    iget-boolean v1, v1, Lcom/baidu/input/ime/ocr/OcrSubCandView;->k:Z

    .line 165
    if-eqz v1, :cond_b0

    .line 167
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 173
    invoke-interface {v1}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->ib()V

    .line 176
    goto/16 :goto_116

    .line 177
    :cond_b0
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/baidu/input/ocrapi/IOcrApiProvider;

    .line 183
    invoke-interface {v1}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->getContent()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_108

    .line 193
    const-class v2, Lcom/baidu/input/cocomodule/input/IBaseInput;

    .line 195
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/baidu/input/cocomodule/input/IBaseInput;

    .line 201
    sget-object v3, Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;->c:Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;

    .line 203
    invoke-interface {v2, v3}, Lcom/baidu/input/cocomodule/input/IBaseInput;->C0(Lcom/baidu/input/cocomodule/input/BaiduIMEInputType;)V

    .line 206
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 208
    invoke-virtual {v2}, Lcom/baidu/input/ImeService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 211
    move-result-object v2

    .line 212
    invoke-interface {v1}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->getContent()Ljava/lang/String;

    .line 215
    move-result-object v3

    .line 216
    sget-object v5, Lcom/baidu/input/ime/ocr/OcrSubCandView;->n:Lcom/baidu/input/ime/ocr/OcrSubCandView;

    .line 218
    sget-object v5, Lorg/aspectj/runtime/reflect/Factory;->c:Ljava/util/Hashtable;

    .line 220
    instance-of v5, v3, Ljava/lang/String;

    .line 222
    if-eqz v5, :cond_102

    .line 224
    invoke-static {}, Lcom/baidu/input/log/aspectj/InputConnectionAspect;->b()Lcom/baidu/input/log/aspectj/InputConnectionAspect;

    .line 227
    move-result-object v5

    .line 228
    invoke-static {v5}, Lcom/baidu/input/log/aspectj/InputConnectionAspect;->a(Lcom/baidu/input/log/aspectj/InputConnectionAspect;)Z

    .line 231
    move-result v5

    .line 232
    if-nez v5, :cond_f2

    .line 234
    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 237
    move-result v2

    .line 238
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 241
    move-result-object v2

    .line 242
    goto/16 :goto_fe

    .line 243
    :cond_f2
    invoke-static {v2}, Lcom/baidu/input/ime/connection/InputConnectionProxyFactory;->b(Landroid/view/inputmethod/InputConnection;)Lcom/baidu/input/ime/connection/SysInputConnectionProxy;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2, v3, v7}, Lcom/baidu/input/ime/connection/AbsInputConnectionProxy;->commitText(Ljava/lang/CharSequence;I)Z

    .line 250
    move-result v2

    .line 251
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    move-result-object v2

    .line 255
    :goto_fe
    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->a(Ljava/lang/Object;)Z

    .line 258
    goto/16 :goto_105

    .line 259
    :cond_102
    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 262
    :goto_105
    invoke-interface {v1}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->m8()V

    .line 265
    :cond_108
    invoke-interface {v1}, Lcom/baidu/input/ocrapi/IOcrApiProvider;->s4()V

    .line 268
    goto/16 :goto_116

    .line 269
    :cond_10c
    iget-object v2, v1, Lcom/baidu/input/ime/ocr/OcrSubCandView;->b:Landroid/graphics/Rect;

    .line 271
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_116

    .line 277
    iput-boolean v4, v1, Lcom/baidu/input/ime/ocr/OcrSubCandView;->k:Z

    .line 279
    :cond_116
    :goto_116
    return v4

    .line 280
    :cond_117
    iget-boolean v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 282
    if-eqz v5, :cond_126

    .line 284
    const-class v5, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 286
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 289
    move-result-object v5

    .line 290
    check-cast v5, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 292
    invoke-interface {v5}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->Ni()V

    .line 295
    :cond_126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 298
    move-result v5

    .line 299
    float-to-int v8, v5

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 303
    move-result v5

    .line 304
    float-to-int v5, v5

    .line 305
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 307
    invoke-virtual {v9}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 310
    move-result v9

    .line 311
    if-nez v9, :cond_163

    .line 313
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0:Landroid/graphics/Rect;

    .line 315
    if-eqz v9, :cond_163

    .line 317
    invoke-virtual {v9, v8, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 320
    move-result v9

    .line 321
    if-nez v9, :cond_154

    .line 323
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A1()Z

    .line 326
    move-result v9

    .line 327
    if-eqz v9, :cond_163

    .line 329
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M0:Landroid/graphics/Rect;

    .line 331
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    .line 334
    move-result v10

    .line 335
    invoke-virtual {v9, v8, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 338
    move-result v9

    .line 339
    if-eqz v9, :cond_163

    .line 341
    :cond_154
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->N0:Lcom/baidu/input/ime/cand/FixedSwitchLayout;

    .line 343
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    iget-object v9, v9, Lcom/baidu/input/ime/cand/FixedSwitchLayout;->h:Lcom/baidu/input/ime/cand/FixedSwitchLayout$gestureDetector$1;

    .line 348
    invoke-virtual {v9, v2}, Lcom/baidu/input/ime/cand/FixedSwitchLayout$gestureDetector$1;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_163

    .line 354
    goto/16 :goto_6f2

    .line 356
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f1()Landroid/graphics/Rect;

    .line 359
    move-result-object v9

    .line 360
    if-eqz v9, :cond_193

    .line 362
    iget-object v10, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 364
    invoke-virtual {v10}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 367
    move-result v10

    .line 368
    if-eqz v10, :cond_193

    .line 370
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A1()Z

    .line 373
    move-result v10

    .line 374
    if-eqz v10, :cond_193

    .line 376
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 378
    if-ge v5, v10, :cond_193

    .line 380
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 382
    if-lt v8, v10, :cond_193

    .line 384
    iget v10, v9, Landroid/graphics/Rect;->right:I

    .line 386
    if-gt v8, v10, :cond_193

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 391
    move-result v5

    .line 392
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 394
    add-int/2addr v9, v4

    .line 395
    int-to-float v9, v9

    .line 396
    invoke-virtual {v2, v5, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 402
    move-result v5

    .line 403
    float-to-int v5, v5

    .line 404
    :cond_193
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 407
    move-result v9

    .line 408
    const/4 v11, 0x3

    .line 409
    if-eqz v9, :cond_583

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_1b6

    .line 417
    iput-boolean v7, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z

    .line 419
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;

    .line 421
    iget-boolean v12, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;->d:Z

    .line 423
    if-eqz v12, :cond_1b6

    .line 425
    iget-object v9, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingView;

    .line 427
    iget-object v9, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->a:Landroid/graphics/Rect;

    .line 429
    if-eqz v9, :cond_1b6

    .line 431
    invoke-virtual {v9, v8, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 434
    move-result v9

    .line 435
    if-eqz v9, :cond_1b6

    .line 437
    iput-boolean v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z

    .line 439
    :cond_1b6
    iget-boolean v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z

    .line 441
    if-eqz v9, :cond_583

    .line 443
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;

    .line 445
    iget-object v9, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingView;

    .line 447
    iget-object v12, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b:Landroid/graphics/Rect;

    .line 449
    if-nez v12, :cond_1c4

    .line 451
    goto/16 :goto_583

    .line 453
    :cond_1c4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 456
    move-result v12

    .line 457
    float-to-int v12, v12

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 461
    move-result v13

    .line 462
    float-to-int v13, v13

    .line 463
    iget-object v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 465
    if-nez v14, :cond_1d8

    .line 467
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 470
    move-result-object v14

    .line 471
    iput-object v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 473
    :cond_1d8
    iput v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->t:I

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 478
    move-result v14

    .line 479
    iget-object v15, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->i:Landroid/widget/Scroller;

    .line 481
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->d:Lcom/baidu/input/panel/render/cand/slide/ISlidingViewDependence;

    .line 483
    iget-object v10, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 485
    if-eqz v14, :cond_498

    .line 487
    if-eq v14, v4, :cond_233

    .line 489
    if-eq v14, v3, :cond_208

    .line 491
    if-eq v14, v11, :cond_1f0

    .line 493
    :cond_1ec
    :goto_1ec
    move/from16 v25, v5

    .line 495
    goto/16 :goto_576

    .line 497
    :cond_1f0
    invoke-virtual {v15, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 500
    iput-byte v7, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 502
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 504
    if-eqz v1, :cond_1fc

    .line 506
    invoke-interface {v1, v7}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->g(Z)V

    .line 509
    :cond_1fc
    iput-boolean v7, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 511
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 513
    if-eqz v1, :cond_1ec

    .line 515
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 518
    iput-object v6, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 520
    goto/16 :goto_1ec

    .line 521
    :cond_208
    iget-boolean v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 523
    if-nez v1, :cond_227

    .line 525
    iget-boolean v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->v:Z

    .line 527
    if-eqz v1, :cond_227

    .line 529
    iget v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->g:I

    .line 531
    sub-int v1, v12, v1

    .line 533
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 536
    move-result v10

    .line 537
    if-lez v10, :cond_22b

    .line 539
    iput-boolean v4, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 541
    iput-byte v4, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 543
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 545
    if-eqz v1, :cond_225

    .line 547
    invoke-interface {v1, v7}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->g(Z)V

    .line 550
    :cond_225
    iget-boolean v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModDirectTouch:Z
    if-nez v1, :cond_227
    move v1, v7

    .line 551
    goto/16 :goto_22b

    .line 552
    :cond_227
    iget v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->h:I

    .line 554
    sub-int v1, v12, v1

    .line 556
    :cond_22b
    :goto_22b
    iget-boolean v10, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 558
    if-eqz v10, :cond_1ec

    .line 560
    invoke-virtual {v9, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b(I)V
    const-string v1, "move/sliding"
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTraceMove(Ljava/lang/String;)V

    .line 563
    goto/16 :goto_1ec

    .line 564
    :cond_233
    iget-boolean v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 566
    if-eqz v14, :cond_46a

    iget-boolean v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModDirectTouch:Z
    if-eqz v14, :baidu_mod_sliding_release_original
    iget v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->h:I
    sub-int v14, v12, v14
    invoke-virtual {v9, v14}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b(I)V
    invoke-virtual {v9}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModStopScroll()V
    const-string v14, "release/sliding"
    invoke-virtual {v0, v14}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTrace(Ljava/lang/String;)V
    # Continue original pressed-cell and VelocityTracker cleanup, without fling.
    goto/16 :goto_2e1
    :baidu_mod_sliding_release_original
    .line 568
    iget-object v13, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 570
    iget v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->n:I

    .line 572
    int-to-float v11, v14

    .line 573
    const/16 v6, 0x1f4

    .line 575
    invoke-virtual {v13, v6, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 578
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 581
    move-result v6

    .line 582
    float-to-int v6, v6

    .line 583
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 586
    move-result v11

    .line 587
    float-to-int v11, v11

    .line 588
    if-gez v6, :cond_24f

    .line 590
    move v13, v4

    .line 591
    goto/16 :goto_250

    .line 592
    :cond_24f
    move v13, v7

    .line 593
    :goto_250
    neg-int v3, v14

    .line 594
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    .line 597
    move-result v6

    .line 598
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 601
    move-result v6

    .line 602
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 605
    move-result v11

    .line 606
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 609
    move-result v3

    .line 610
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 613
    move-result v11

    .line 614
    iget v14, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->m:I

    .line 616
    if-lt v11, v14, :cond_26d

    .line 618
    move v7, v6

    .line 619
    move/from16 v18, v7

    .line 621
    goto/16 :goto_2c5

    .line 622
    :cond_26d
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 625
    move-result v11

    .line 626
    if-ge v11, v14, :cond_2c2

    .line 628
    if-eqz v6, :cond_2c2

    .line 630
    if-eqz v13, :cond_2a0

    .line 632
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 635
    move-result v11

    .line 636
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 639
    move-result v7

    .line 640
    if-le v11, v7, :cond_287

    .line 642
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 645
    move-result v7

    .line 646
    neg-int v7, v7

    .line 647
    goto/16 :goto_288

    .line 648
    :cond_287
    move v7, v6

    .line 649
    :goto_288
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 652
    move-result v11

    .line 653
    if-le v11, v14, :cond_29c

    .line 655
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 658
    move-result v7

    .line 659
    neg-int v7, v7

    .line 660
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 663
    move-result v3

    .line 664
    neg-int v3, v3

    .line 665
    :goto_298
    move/from16 v18, v7

    .line 667
    move v7, v3

    .line 668
    goto/16 :goto_2c5

    .line 669
    :cond_29c
    neg-int v3, v14

    .line 670
    move/from16 v18, v3

    .line 672
    goto/16 :goto_2c5

    .line 673
    :cond_2a0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 676
    move-result v7

    .line 677
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 680
    move-result v11

    .line 681
    if-le v7, v11, :cond_2af

    .line 683
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 686
    move-result v7

    .line 687
    goto/16 :goto_2b0

    .line 688
    :cond_2af
    move v7, v6

    .line 689
    :goto_2b0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 692
    move-result v11

    .line 693
    if-le v11, v14, :cond_2bf

    .line 695
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 698
    move-result v7

    .line 699
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 702
    move-result v3

    .line 703
    goto/16 :goto_298

    .line 704
    :cond_2bf
    move/from16 v18, v14

    .line 706
    goto/16 :goto_2c5

    .line 707
    :cond_2c2
    move v7, v6

    .line 708
    const/16 v18, 0x0

    .line 710
    :goto_2c5
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    .line 713
    move-result v3

    .line 714
    iget v11, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->k:I

    .line 716
    if-ge v3, v14, :cond_2d7

    .line 718
    iget v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->g:I

    .line 720
    sub-int v3, v12, v3

    .line 722
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 725
    move-result v3

    .line 726
    if-le v3, v11, :cond_2d9

    .line 728
    :cond_2d7
    const/4 v3, 0x2

    .line 729
    goto/16 :goto_2e5

    .line 730
    :cond_2d9
    invoke-virtual {v15, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 733
    const/4 v1, 0x0

    .line 734
    iput-byte v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 736
    iput-boolean v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->u:Z

    .line 738
    :cond_2e1
    :goto_2e1
    move/from16 v25, v5

    .line 740
    goto/16 :goto_47a

    .line 742
    :goto_2e5
    iput-byte v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 744
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->c:I

    .line 746
    if-nez v3, :cond_306

    .line 748
    if-nez v13, :cond_306

    .line 750
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 752
    neg-int v3, v3

    .line 753
    invoke-virtual {v9, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 756
    const/4 v3, 0x0

    .line 757
    iput v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->r:I

    .line 759
    invoke-virtual {v10, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 762
    move-result-object v6

    .line 763
    if-eqz v6, :cond_2e1

    .line 765
    invoke-interface {v6}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getContent()Lcom/baidu/input/pub/CoreString;

    .line 768
    move-result-object v3

    .line 769
    check-cast v1, Lcom/baidu/input/ime/cand/CandHandler$1;

    .line 771
    invoke-virtual {v1, v3}, Lcom/baidu/input/ime/cand/CandHandler$1;->a(Lcom/baidu/input/pub/CoreString;)V

    .line 774
    goto/16 :goto_2e1

    .line 775
    :cond_306
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d:I

    .line 777
    iget-object v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b:Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;

    .line 779
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I

    .line 782
    move-result v16

    .line 783
    move/from16 v25, v5

    .line 785
    const/16 v17, 0x1

    .line 787
    add-int/lit8 v5, v16, -0x1

    .line 789
    if-ne v3, v5, :cond_322

    .line 791
    if-eqz v13, :cond_322

    .line 793
    iget v1, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->g:I

    .line 795
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 797
    sub-int/2addr v1, v3

    .line 798
    invoke-virtual {v9, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 801
    goto/16 :goto_47a

    .line 803
    :cond_322
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    .line 806
    move-result v3

    .line 807
    if-lt v3, v14, :cond_332

    .line 809
    iget v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->g:I

    .line 811
    sub-int v3, v12, v3

    .line 813
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 816
    move-result v3

    .line 817
    if-gt v3, v11, :cond_338

    .line 819
    :cond_332
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    .line 822
    move-result v3

    .line 823
    if-lt v3, v14, :cond_47a

    .line 825
    :cond_338
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    .line 828
    move-result v3

    .line 829
    const/16 v5, 0x15e

    .line 831
    if-lt v3, v5, :cond_43c

    .line 833
    if-eqz v13, :cond_3c2

    .line 835
    iget-object v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->k:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 837
    if-nez v3, :cond_35d

    .line 839
    iget v1, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 841
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->g:I

    .line 843
    const/16 v19, 0x0

    .line 845
    const/16 v21, 0x0

    .line 847
    const/16 v17, 0x0

    .line 849
    const/16 v22, 0x0

    .line 851
    const/16 v23, 0x0

    .line 853
    move/from16 v16, v1

    .line 855
    move/from16 v20, v3

    .line 857
    invoke-virtual/range {v15 .. v23}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 860
    goto/16 :goto_47a

    .line 862
    :cond_35d
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 865
    move-result v5

    .line 866
    iput v5, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->r:I

    .line 868
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 871
    move-result v5

    .line 872
    iput v5, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->s:I

    .line 874
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getContent()Lcom/baidu/input/pub/CoreString;

    .line 877
    move-result-object v5

    .line 878
    check-cast v1, Lcom/baidu/input/ime/cand/CandHandler$1;

    .line 880
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/cand/CandHandler$1;->a(Lcom/baidu/input/pub/CoreString;)V

    .line 883
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I

    .line 886
    move-result v1

    .line 887
    const/4 v4, 0x1

    .line 888
    sub-int/2addr v1, v4

    .line 889
    invoke-virtual {v10, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 892
    move-result-object v1

    .line 893
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 896
    move-result v4

    .line 897
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getStart()I

    .line 900
    move-result v5

    .line 901
    sub-int/2addr v4, v5

    .line 902
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 905
    move-result v3

    .line 906
    iget v5, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 908
    add-int/2addr v3, v5

    .line 909
    iget v5, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I

    .line 911
    if-lt v3, v5, :cond_394

    .line 913
    sub-int/2addr v3, v5

    .line 914
    sub-int/2addr v4, v3

    .line 915
    sub-int/2addr v5, v4

    .line 916
    goto/16 :goto_398

    .line 917
    :cond_394
    sub-int v3, v5, v3

    .line 919
    add-int/2addr v3, v4

    .line 920
    sub-int/2addr v5, v3

    .line 921
    :goto_398
    if-eqz v1, :cond_3bc

    .line 923
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 926
    move-result v3

    .line 927
    const v4, -0x7fffffff

    .line 930
    if-eq v4, v3, :cond_3bc

    .line 932
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 935
    move-result v1

    .line 936
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 938
    add-int/2addr v1, v3

    .line 939
    sub-int v3, v1, v5

    .line 941
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I

    .line 943
    if-gt v3, v4, :cond_3b6

    .line 945
    sub-int/2addr v4, v1

    .line 946
    invoke-virtual {v9, v4}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 949
    goto/16 :goto_47a

    .line 951
    :cond_3b6
    neg-int v1, v5

    .line 952
    invoke-virtual {v9, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 955
    goto/16 :goto_47a

    .line 957
    :cond_3bc
    neg-int v1, v5

    .line 958
    invoke-virtual {v9, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 961
    goto/16 :goto_47a

    .line 963
    :cond_3c2
    iget-object v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->l:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 965
    if-nez v3, :cond_3dd

    .line 967
    iget v1, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 969
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->g:I

    .line 971
    const/16 v19, 0x0

    .line 973
    const/16 v21, 0x0

    .line 975
    const/16 v17, 0x0

    .line 977
    const/16 v22, 0x0

    .line 979
    const/16 v23, 0x0

    .line 981
    move/from16 v16, v1

    .line 983
    move/from16 v20, v3

    .line 985
    invoke-virtual/range {v15 .. v23}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 988
    goto/16 :goto_47a

    .line 990
    :cond_3dd
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 993
    move-result v4

    .line 994
    iput v4, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->r:I

    .line 996
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 999
    move-result v4

    .line 1000
    iput v4, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->s:I

    .line 1002
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getContent()Lcom/baidu/input/pub/CoreString;

    .line 1005
    move-result-object v4

    .line 1006
    check-cast v1, Lcom/baidu/input/ime/cand/CandHandler$1;

    .line 1008
    invoke-virtual {v1, v4}, Lcom/baidu/input/ime/cand/CandHandler$1;->a(Lcom/baidu/input/pub/CoreString;)V

    .line 1011
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 1014
    move-result v1

    .line 1015
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getStart()I

    .line 1018
    move-result v4

    .line 1019
    sub-int/2addr v1, v4

    .line 1020
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1022
    const/4 v5, 0x1

    .line 1023
    sub-int/2addr v4, v5

    .line 1024
    if-gez v4, :cond_402

    .line 1026
    const/4 v4, 0x0

    .line 1027
    :cond_402
    const-class v5, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 1029
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1032
    move-result-object v6

    .line 1033
    check-cast v6, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 1035
    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 1038
    move-result-object v6

    .line 1039
    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->V()S

    .line 1042
    move-result v6

    .line 1043
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1046
    move-result-object v5

    .line 1047
    check-cast v5, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 1049
    invoke-interface {v5}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 1052
    move-result-object v5

    .line 1053
    invoke-interface {v5}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->I()S

    .line 1056
    move-result v5

    .line 1057
    sub-int/2addr v5, v6

    .line 1058
    mul-int/2addr v5, v4

    .line 1059
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 1061
    sub-int/2addr v5, v4

    .line 1062
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 1065
    move-result v3

    .line 1066
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 1068
    add-int/2addr v3, v4

    .line 1069
    if-ltz v3, :cond_433

    .line 1071
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 1074
    move-result v1

    .line 1075
    goto/16 :goto_434

    .line 1076
    :cond_433
    sub-int/2addr v1, v3

    .line 1077
    :goto_434
    if-le v1, v5, :cond_437

    .line 1079
    goto/16 :goto_438

    .line 1080
    :cond_437
    move v5, v1

    .line 1081
    :goto_438
    invoke-virtual {v9, v5}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c(I)V

    .line 1084
    goto/16 :goto_47a

    .line 1085
    :cond_43c
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 1088
    move-result v1

    .line 1089
    if-lt v1, v14, :cond_44b

    .line 1091
    if-gez v7, :cond_447

    .line 1093
    const/16 v1, -0x708

    .line 1095
    goto/16 :goto_449

    .line 1096
    :cond_447
    const/16 v1, 0x708

    .line 1098
    :goto_449
    move/from16 v18, v1

    .line 1100
    :cond_44b
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 1103
    move-result v1

    .line 1104
    if-lt v1, v14, :cond_454

    .line 1106
    const/4 v1, 0x1

    .line 1107
    iput-boolean v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->u:Z

    .line 1109
    :cond_454
    iget v1, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 1111
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->g:I

    .line 1113
    const/16 v22, 0x0

    .line 1115
    const/16 v23, 0x0

    .line 1117
    const/16 v17, 0x0

    .line 1119
    const/16 v19, 0x0

    .line 1121
    const/16 v21, 0x0

    .line 1123
    move/from16 v16, v1

    .line 1125
    move/from16 v20, v3

    .line 1127
    invoke-virtual/range {v15 .. v23}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1130
    goto/16 :goto_47a

    .line 1131
    :cond_46a
    move/from16 v25, v5

    .line 1133
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1135
    if-eqz v1, :cond_47a

    .line 1137
    invoke-virtual {v9, v12, v13}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->a(II)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1140
    move-result-object v3

    .line 1141
    if-ne v1, v3, :cond_47a

    .line 1143
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1145
    iput-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->f:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1147
    :cond_47a
    :goto_47a
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 1149
    if-eqz v1, :cond_481

    .line 1151
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 1154
    :cond_481
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1156
    const/4 v3, 0x0

    .line 1157
    if-eqz v1, :cond_489

    .line 1159
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->g(Z)V

    .line 1162
    :cond_489
    iput-boolean v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 1164
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 1166
    if-eqz v1, :cond_495

    .line 1168
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1171
    const/4 v1, 0x0

    .line 1172
    iput-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 1174
    :cond_495
    const/4 v1, 0x1

    .line 1175
    goto/16 :goto_577

    .line 1177
    :cond_498
    move/from16 v25, v5

    .line 1179
    move v3, v7

    .line 1180
    iput-byte v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 1182
    iput-boolean v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->o:Z

    .line 1184
    iput v12, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->g:I

    .line 1186
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->c:I

    .line 1188
    iput v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1190
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d:I

    .line 1192
    iput v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1194
    if-ne v3, v4, :cond_4ba

    .line 1196
    iget-object v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b:Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;

    .line 1198
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I

    .line 1201
    move-result v4

    .line 1202
    const/4 v5, 0x1

    .line 1203
    sub-int/2addr v4, v5

    .line 1204
    if-eq v3, v4, :cond_4ba

    .line 1206
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1208
    add-int/2addr v3, v5

    .line 1209
    iput v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1211
    :cond_4ba
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1213
    invoke-virtual {v10, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1216
    move-result-object v3

    .line 1217
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1219
    invoke-virtual {v10, v4}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1222
    move-result-object v4

    .line 1223
    if-eqz v4, :cond_4e1

    .line 1225
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->h()Z

    .line 1228
    move-result v5

    .line 1229
    if-eqz v5, :cond_4d7

    .line 1231
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1233
    const/4 v5, 0x1

    .line 1234
    add-int/2addr v3, v5

    .line 1235
    invoke-virtual {v10, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1238
    move-result-object v4

    .line 1239
    goto/16 :goto_4e9

    .line 1240
    :cond_4d7
    const/4 v5, 0x1

    .line 1241
    if-eqz v3, :cond_4e9

    .line 1243
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 1246
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 1249
    goto/16 :goto_4e9

    .line 1250
    :cond_4e1
    const/4 v5, 0x1

    .line 1251
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->j:I

    .line 1253
    sub-int/2addr v3, v5

    .line 1254
    invoke-virtual {v10, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1257
    move-result-object v4

    .line 1258
    :cond_4e9
    :goto_4e9
    iput-object v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->k:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1260
    iget v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1262
    invoke-virtual {v10, v3}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1265
    move-result-object v3

    .line 1266
    if-eqz v3, :cond_506

    .line 1268
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->h()Z

    .line 1271
    move-result v4

    .line 1272
    if-eqz v4, :cond_506

    .line 1274
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1276
    add-int/lit8 v6, v4, -0x1

    .line 1278
    if-gez v6, :cond_500

    .line 1280
    goto/16 :goto_50c

    .line 1281
    :cond_500
    invoke-virtual {v10, v6}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1284
    move-result-object v3

    .line 1285
    move v4, v6

    .line 1286
    goto/16 :goto_50c

    .line 1287
    :cond_506
    iget v4, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->i:I

    .line 1289
    invoke-virtual {v10, v4}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1292
    move-result-object v3

    .line 1293
    :goto_50c
    if-nez v3, :cond_510

    .line 1295
    const/4 v3, 0x0

    .line 1296
    goto/16 :goto_550

    .line 1297
    :cond_510
    iget v5, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I

    .line 1299
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 1302
    move-result v3

    .line 1303
    iget v6, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 1305
    add-int/2addr v3, v6

    .line 1306
    sub-int/2addr v5, v3

    .line 1307
    add-int/2addr v5, v6

    .line 1308
    if-ltz v5, :cond_51f

    .line 1310
    :goto_51d
    const/4 v3, 0x1

    .line 1311
    goto/16 :goto_521

    .line 1312
    :cond_51f
    move v6, v5

    .line 1313
    goto/16 :goto_51d

    .line 1314
    :goto_521
    add-int/lit8 v5, v4, -0x1

    .line 1316
    :goto_523
    if-ltz v5, :cond_54c

    .line 1318
    invoke-virtual {v10, v5}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1321
    move-result-object v3

    .line 1322
    if-eqz v3, :cond_546

    .line 1324
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 1327
    move-result v7

    .line 1328
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getStart()I

    .line 1331
    move-result v11

    .line 1332
    sub-int/2addr v7, v11

    .line 1333
    invoke-interface {v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 1336
    move-result v3

    .line 1337
    add-int/2addr v3, v6

    .line 1338
    if-ge v3, v7, :cond_544

    .line 1340
    const/4 v11, 0x2

    .line 1341
    div-int/2addr v7, v11

    .line 1342
    if-lt v3, v7, :cond_540

    .line 1344
    goto/16 :goto_548

    .line 1345
    :cond_540
    const/4 v3, 0x1

    .line 1346
    add-int/lit8 v4, v5, 0x1

    .line 1348
    goto/16 :goto_54c

    .line 1349
    :cond_544
    const/4 v3, -0x1

    .line 1350
    goto/16 :goto_54a

    .line 1351
    :cond_546
    if-nez v5, :cond_544

    .line 1353
    :goto_548
    move v4, v5

    .line 1354
    goto/16 :goto_54c

    .line 1355
    :goto_54a
    add-int/2addr v5, v3

    .line 1356
    goto/16 :goto_523

    .line 1357
    :cond_54c
    :goto_54c
    invoke-virtual {v10, v4}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1360
    move-result-object v3

    .line 1361
    :goto_550
    iput-object v3, v10, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->l:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1363
    const/4 v3, 0x1

    .line 1364
    invoke-virtual {v15, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1367
    invoke-virtual {v9, v12, v13}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->a(II)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1370
    move-result-object v4

    .line 1371
    iput-object v4, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 1373
    if-eqz v4, :cond_576

    .line 1375
    invoke-interface {v4, v3}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->g(Z)V

    .line 1378
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 1381
    move-result v3

    .line 1382
    iput v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->r:I

    .line 1384
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->c()I

    .line 1387
    move-result v3

    .line 1388
    iput v3, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->t:I

    .line 1390
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getContent()Lcom/baidu/input/pub/CoreString;

    .line 1393
    move-result-object v3

    .line 1394
    check-cast v1, Lcom/baidu/input/ime/cand/CandHandler$1;

    .line 1396
    invoke-virtual {v1, v3}, Lcom/baidu/input/ime/cand/CandHandler$1;->a(Lcom/baidu/input/pub/CoreString;)V

    .line 1399
    :cond_576
    :goto_576
    const/4 v1, 0x0

    .line 1400
    :goto_577
    iput v12, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->h:I

    .line 1402
    if-nez v1, :cond_585

    .line 1404
    iget-object v1, v9, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->j:Landroid/view/VelocityTracker;

    .line 1406
    if-eqz v1, :cond_585

    .line 1408
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1411
    goto/16 :goto_585

    .line 1412
    :cond_583
    :goto_583
    move/from16 v25, v5

    .line 1414
    :cond_585
    :goto_585
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1417
    move-result v1

    .line 1418
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g:Landroid/widget/Scroller;

    .line 1420
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->p:[I

    .line 1422
    if-eqz v1, :cond_672

    .line 1424
    const/4 v4, 0x1

    .line 1425
    if-eq v1, v4, :cond_5f6

    .line 1427
    const/4 v5, 0x2

    .line 1428
    if-eq v1, v5, :cond_5bc

    .line 1430
    const/4 v5, 0x3

    .line 1431
    if-eq v1, v5, :cond_59a

    .line 1433
    goto/16 :goto_69f

    .line 1435
    :cond_59a
    iget-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1437
    if-eqz v1, :cond_5b3

    .line 1439
    invoke-virtual {v9, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1442
    const/4 v1, 0x0

    .line 1443
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1445
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l:Z

    .line 1447
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1449
    if-eqz v4, :cond_5b0

    .line 1451
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 1454
    const/4 v4, 0x0

    .line 1455
    iput-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1457
    :cond_5b0
    const/16 v24, 0x1

    .line 1459
    goto/16 :goto_5b6

    .line 1460
    :cond_5b3
    const/4 v1, 0x0

    .line 1461
    move/from16 v24, v1

    .line 1463
    :goto_5b6
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->S0:Z

    .line 1465
    :goto_5b8
    move/from16 v1, v24

    .line 1467
    goto/16 :goto_6a0

    .line 1469
    :cond_5bc
    const/4 v1, 0x0

    .line 1470
    iget-boolean v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1472
    if-nez v4, :cond_5d9

    .line 1474
    iget-boolean v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l:Z

    .line 1476
    if-eqz v4, :cond_5d9

    .line 1478
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e:I

    .line 1480
    sub-int v4, v8, v4

    .line 1482
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 1485
    move-result v5

    .line 1486
    if-lez v5, :cond_5d7

    .line 1488
    const/4 v5, 0x1

    .line 1489
    iput-boolean v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1491
    invoke-virtual {v0, v1, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u(ZZ)V

    .line 1494
    iget-boolean v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModDirectTouch:Z
    if-nez v1, :cond_5d9
    const/4 v1, 0x0

    .line 1495
    goto/16 :goto_5dd

    .line 1496
    :cond_5d7
    move v1, v4

    .line 1497
    goto/16 :goto_5dd

    .line 1498
    :cond_5d9
    iget v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f:I

    .line 1500
    sub-int v1, v8, v1

    .line 1502
    :goto_5dd
    iget-boolean v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1504
    if-eqz v4, :cond_69f

    .line 1506
    invoke-virtual {v0, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->k2(I)V
    const-string v1, "move/legacy"
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTraceMove(Ljava/lang/String;)V

    .line 1509
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1511
    if-nez v1, :cond_5ee

    .line 1513
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1516
    move-result-object v1

    .line 1517
    iput-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1519
    :cond_5ee
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1521
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1524
    const/4 v1, 0x1

    .line 1525
    goto/16 :goto_6a0

    .line 1527
    :cond_5f6
    const/4 v1, 0x0

    .line 1528
    aput v1, v3, v1

    .line 1530
    const/4 v4, 0x1

    .line 1531
    aput v1, v3, v4

    .line 1533
    iget-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1535
    if-eqz v1, :cond_66b

    iget-boolean v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModDirectTouch:Z
    if-eqz v1, :baidu_mod_legacy_release_original
    iget v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f:I
    sub-int v1, v8, v1
    invoke-virtual {v0, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->k2(I)V
    invoke-virtual {v9, v4}, Landroid/widget/Scroller;->forceFinished(Z)V
    const-string v1, "release/legacy"
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTrace(Ljava/lang/String;)V
    goto/16 :goto_631
    :baidu_mod_legacy_release_original
    .line 1537
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1539
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j:I

    .line 1541
    int-to-float v4, v4

    .line 1542
    const/16 v5, 0x1f4

    .line 1544
    invoke-virtual {v1, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1547
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1550
    move-result v1

    .line 1551
    float-to-int v12, v1

    .line 1552
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 1555
    move-result v1

    .line 1556
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i:I

    .line 1558
    if-le v1, v4, :cond_633

    .line 1560
    iget v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e:I

    .line 1562
    sub-int v1, v8, v1

    .line 1564
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 1567
    move-result v1

    .line 1568
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->k:I

    .line 1570
    if-le v1, v4, :cond_633

    .line 1572
    iget v14, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T0:I

    .line 1574
    sget v10, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1:I

    .line 1576
    const/16 v16, 0x0

    .line 1578
    const/16 v17, 0x0

    .line 1580
    const/4 v11, 0x0

    .line 1581
    const/4 v13, 0x0

    .line 1582
    const/4 v15, 0x0

    .line 1583
    invoke-virtual/range {v9 .. v17}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1586
    :goto_631
    const/4 v1, 0x0

    .line 1587
    goto/16 :goto_65a

    .line 1588
    :cond_633
    sget v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1:I

    .line 1590
    neg-int v4, v1

    .line 1591
    iget v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U0:I

    .line 1593
    const/4 v6, 0x2

    .line 1594
    div-int/lit8 v7, v5, 0x2

    .line 1596
    add-int/2addr v7, v4

    .line 1597
    div-int/2addr v7, v5

    .line 1598
    mul-int/2addr v7, v5

    .line 1599
    neg-int v4, v7

    .line 1600
    sub-int v12, v4, v1

    .line 1602
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 1605
    move-result v1

    .line 1606
    const/16 v4, 0xfa

    .line 1608
    if-le v1, v4, :cond_64b

    .line 1610
    move v14, v4

    .line 1611
    goto/16 :goto_64c

    .line 1612
    :cond_64b
    move v14, v1

    .line 1613
    :goto_64c
    iget-object v9, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g:Landroid/widget/Scroller;

    .line 1615
    const/4 v1, 0x1

    .line 1616
    invoke-virtual {v9, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1619
    sget v10, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1:I

    .line 1621
    const/4 v11, 0x0

    .line 1622
    const/4 v13, 0x0

    .line 1623
    invoke-virtual/range {v9 .. v14}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1626
    goto/16 :goto_631

    .line 1627
    :goto_65a
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1629
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l:Z

    .line 1631
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1633
    if-eqz v4, :cond_668

    .line 1635
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 1638
    const/4 v4, 0x0

    .line 1639
    iput-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1641
    :cond_668
    const/16 v24, 0x1

    .line 1643
    goto/16 :goto_66e

    .line 1644
    :cond_66b
    const/4 v1, 0x0

    .line 1645
    move/from16 v24, v1

    .line 1647
    :goto_66e
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->S0:Z

    .line 1649
    goto/16 :goto_5b8

    .line 1651
    :cond_672
    const/4 v1, 0x0

    .line 1652
    iget v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T0:I

    .line 1654
    if-eqz v4, :cond_69c

    .line 1656
    sget-object v4, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 1658
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    .line 1661
    move-result v5

    .line 1662
    invoke-virtual {v4, v8, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 1665
    move-result v4

    .line 1666
    if-eqz v4, :cond_69c

    .line 1668
    const/4 v4, 0x1

    .line 1669
    iput-boolean v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l:Z

    .line 1671
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d:Z

    .line 1673
    iput v8, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e:I

    .line 1675
    invoke-virtual {v9, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1678
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1680
    if-nez v1, :cond_697

    .line 1682
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1685
    move-result-object v1

    .line 1686
    iput-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1688
    :cond_697
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h:Landroid/view/VelocityTracker;

    .line 1690
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1693
    :cond_69c
    const/4 v1, 0x1

    .line 1694
    iput-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->S0:Z

    .line 1696
    :cond_69f
    :goto_69f
    const/4 v1, 0x0

    .line 1697
    :goto_6a0
    iput v8, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->f:I

    .line 1699
    if-eqz v1, :cond_6a6

    .line 1701
    const/4 v4, 0x1

    .line 1702
    goto/16 :goto_6f2

    .line 1703
    :cond_6a6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1706
    move-result v1

    .line 1707
    if-eqz v1, :cond_6c0

    .line 1709
    const/4 v4, 0x2

    .line 1710
    if-eq v1, v4, :cond_6b7

    .line 1712
    move/from16 v5, v25

    .line 1714
    invoke-virtual {v0, v8, v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b2(II)Z

    .line 1717
    move-result v1

    .line 1718
    :goto_6b5
    move v4, v1

    .line 1719
    goto/16 :goto_6f0

    .line 1720
    :cond_6b7
    move/from16 v5, v25

    .line 1722
    iget v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W:I

    .line 1724
    invoke-virtual {v0, v8, v5, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z1(III)Z

    .line 1727
    move-result v1

    .line 1728
    goto/16 :goto_6b5

    .line 1729
    :cond_6c0
    move/from16 v5, v25

    .line 1731
    invoke-virtual {v0, v8, v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a2(II)Z

    .line 1734
    move-result v9

    .line 1735
    iget-short v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 1737
    const/4 v1, 0x0

    .line 1738
    aget v5, v3, v1

    .line 1740
    const/4 v1, 0x1

    .line 1741
    aget v6, v3, v1

    .line 1743
    sget-object v1, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->a:Landroid/graphics/Point;

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->G1()Z

    .line 1748
    move-result v1

    .line 1749
    if-eqz v1, :cond_6e4

    .line 1751
    const/4 v7, -0x1

    .line 1752
    const/4 v10, -0x1

    .line 1753
    const/4 v1, 0x1

    .line 1754
    move-object/from16 v2, p1

    .line 1756
    move v3, v4

    .line 1757
    move v4, v5

    .line 1758
    move v5, v6

    .line 1759
    move v6, v7

    .line 1760
    move v7, v10

    .line 1761
    invoke-static/range {v1 .. v7}, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->b(ILandroid/view/MotionEvent;IIIII)V

    .line 1764
    goto/16 :goto_6ef

    .line 1765
    :cond_6e4
    const/4 v6, -0x1

    .line 1766
    const/4 v7, -0x1

    .line 1767
    const/4 v1, 0x1

    .line 1768
    const/4 v3, -0x1

    .line 1769
    const/4 v4, -0x1

    .line 1770
    const/4 v5, -0x1

    .line 1771
    move-object/from16 v2, p1

    .line 1773
    invoke-static/range {v1 .. v7}, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->b(ILandroid/view/MotionEvent;IIIII)V

    .line 1776
    :goto_6ef
    move v4, v9

    .line 1777
    :goto_6f0
    iput v8, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W:I

    .line 1779
    :goto_6f2
    return v4
.end method

.method public final T1(IILcom/baidu/input/pub/CoreString;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->a:Landroid/graphics/Point;

    .line 3
    const-string v0, "cs"

    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->f:Lcom/baidu/input/ime/cand/SelectedWordInfo;

    .line 10
    iget v1, v0, Lcom/baidu/input/ime/cand/SelectedWordInfo;->a:I

    .line 12
    iget v2, p3, Lcom/baidu/input/pub/CoreString;->index:I

    .line 14
    if-ne v1, v2, :cond_3f

    .line 16
    iget-object v1, v0, Lcom/baidu/input/ime/cand/SelectedWordInfo;->b:Ljava/lang/String;

    .line 18
    iget-object v2, p3, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3f

    .line 26
    sget-object v1, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->a:Landroid/graphics/Point;

    .line 28
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 30
    add-int/2addr p1, v2

    .line 31
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 33
    add-int/2addr v2, p2

    .line 34
    sget p2, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->c:I

    .line 36
    add-int/2addr p2, v1

    .line 37
    iget-object v3, v0, Lcom/baidu/input/ime/cand/SelectedWordInfo;->d:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v3, p1, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    new-instance v3, Landroid/graphics/Rect;

    .line 44
    invoke-direct {v3, p1, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    invoke-static {}, Lcom/baidu/input/common/rx/RxUtils;->e()Ljava/util/concurrent/Executor;

    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Lcom/baidu/et;

    .line 53
    const/16 v1, 0x1d

    .line 55
    invoke-direct {p2, p3, v3, v1}, Lcom/baidu/et;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/SelectedWordInfo;->a()V

    .line 64
    :cond_3f
    return-void
.end method

.method public T2()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;->C2(Lcom/baidu/input/ime/params/CandParam;)V

    .line 12
    :cond_b
    return-void
.end method

.method public final U0()I
    .registers 5

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->A:Lcom/baidu/input/ime/newcore/state/InputBarState2;

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/newcore/state/InputBarState2;->a:Lcom/baidu/input/support/state/InputState;

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_10

    .line 10
    iget-object v0, v0, Lcom/baidu/input/support/state/InputState;->d:Lcom/baidu/iptcore/info/IptCoreShowInfo;

    .line 12
    invoke-virtual {v0}, Lcom/baidu/iptcore/info/IptCoreShowInfo;->listLen()I

    .line 15
    move-result v0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v1

    .line 18
    :goto_11
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 20
    iget-object v2, v2, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 22
    iget-object v2, v2, Lcom/baidu/input/ime/InputEventHandler;->a:Lcom/baidu/input/ime/InputStatMac;

    .line 24
    iget-byte v2, v2, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 26
    const/16 v3, 0x21

    .line 28
    if-ne v2, v3, :cond_35

    .line 30
    sget-boolean v2, Lcom/baidu/input/ime/ImePref;->o:Z

    .line 32
    if-eqz v2, :cond_3a

    .line 34
    sget-byte v2, Lcom/baidu/input/pub/Global;->i0:B

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v2, v3, :cond_2a

    .line 39
    sget-boolean v2, Lcom/baidu/input/ime/ImePref;->A:Z

    .line 41
    if-eqz v2, :cond_33

    .line 43
    :cond_2a
    sget-byte v2, Lcom/baidu/input/pub/Global;->i0:B

    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v2, v3, :cond_3a

    .line 48
    sget-boolean v2, Lcom/baidu/input/ime/ImePref;->z:Z

    .line 50
    if-nez v2, :cond_3a

    .line 52
    :cond_33
    :goto_33
    move v1, v0

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    const/16 v3, 0x11

    .line 56
    if-ne v2, v3, :cond_3a

    .line 58
    goto :goto_33

    .line 59
    :cond_3a
    :goto_3a
    return v1
.end method

.method public U2(S)V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/ime/font/FontSizeKv;->a:Lcom/baidu/input/ime/font/FontSizeKv;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 8
    const-string v1, "KEY_OPT_NOW_CANDSIZE"

    .line 10
    invoke-interface {v0, p1, v1}, Lcom/baidu/input/common/storage/sp/IPreference;->h(ILjava/lang/String;)Lcom/baidu/input/common/storage/sp/IPreference;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/baidu/input/common/storage/sp/IPreference;->apply()V

    .line 17
    return-void
.end method

.method public final V2(F)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->h()F

    .line 4
    move-result v0

    .line 5
    mul-float/2addr v0, p1

    .line 6
    sget p1, Lcom/baidu/input/ime/reconstruction/DraggableManager;->j:I

    .line 8
    if-gez p1, :cond_16

    .line 10
    float-to-double v1, v0

    .line 11
    const-wide/high16 v3, 0x3ff4000000000000L  # 1.25

    .line 13
    cmpg-double v1, v1, v3

    .line 15
    if-gez v1, :cond_16

    .line 17
    const p1, 0x3f833333  # 1.025f

    .line 20
    iput p1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    const v1, 0x3f51eb85  # 0.82f

    .line 26
    if-lez p1, :cond_24

    .line 28
    const/high16 p1, 0x3f800000  # 1.0f

    .line 30
    cmpl-float p1, v0, p1

    .line 32
    if-lez p1, :cond_24

    .line 34
    iput v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    mul-float/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    .line 40
    :goto_27
    return-void
.end method

.method public final W2()V
    .registers 3

    .line 1
    sget v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->j:I

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 11
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;->V2(F)V

    .line 14
    goto :goto_25

    .line 15
    :cond_e
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->h()F

    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    .line 22
    move-result v1

    .line 23
    mul-float/2addr v1, v0

    .line 24
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 30
    mul-float/2addr v1, v0

    .line 31
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    .line 34
    move-result v0

    .line 35
    mul-float/2addr v0, v1

    .line 36
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    .line 38
    :goto_25
    return-void
.end method

.method public final X()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/pub/FLauncherManager;->d()Lcom/baidu/input/pub/FLauncherManager;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/baidu/input/menutoolapi/data/MenuFunction;->F:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 7
    invoke-static {v1}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/baidu/input/pub/FLauncherManager;->c(S)I

    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_21

    .line 17
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_21

    .line 23
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/presenter/CandMenuIconPresenter;->g()I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o0:I

    .line 29
    const/high16 v0, -0x80000000

    .line 31
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n0:I

    .line 33
    goto :goto_2b

    .line 34
    :cond_21
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/presenter/CandMenuIconPresenter;->g()I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n0:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    iput v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o0:I

    .line 44
    :goto_2b
    return-void
.end method

.method public final X0()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/loginguide/LoginManager;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public X2(Lcom/baidu/facemoji/input/SuggestedWords;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->x1:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 3
    iput-object p1, v0, Lcom/baidu/input/ime/newcore/state/CandState2;->c:Lcom/baidu/facemoji/input/SuggestedWords;

    .line 5
    return-void
.end method

.method public final Y0()Lcom/baidu/input/ime/params/ImgParam;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->L1:Lcom/baidu/input/ime/params/ImgParam;

    .line 3
    if-nez v0, :cond_34

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->K1:Lcom/baidu/input/ime/params/StyleParam;

    .line 7
    if-nez v0, :cond_22

    .line 9
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 11
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 13
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 15
    sget-object v1, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;->a:Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 17
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/params/CandLoader;->C(Lcom/baidu/input/ime/params/enumtype/CandIconFunction;)Lcom/baidu/input/ime/params/IconParam;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_22

    .line 23
    iget-object v0, v0, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 25
    if-eqz v0, :cond_22

    .line 27
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_22

    .line 33
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->K1:Lcom/baidu/input/ime/params/StyleParam;

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->K1:Lcom/baidu/input/ime/params/StyleParam;

    .line 37
    if-eqz v0, :cond_34

    .line 39
    sget-object v1, Lcom/baidu/input/ime/params/enumtype/FacadeState;->a:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 41
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/params/StyleParam;->p(Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_34

    .line 47
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->L1:Lcom/baidu/input/ime/params/ImgParam;

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->L1:Lcom/baidu/input/ime/params/ImgParam;

    .line 55
    return-object v0
.end method

.method public final Y1(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Z)V
    .registers 12

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->e:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_67

    .line 10
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 13
    move-result-object p5

    .line 14
    iget-object v0, p5, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->m:Landroid/animation/ValueAnimator;

    .line 16
    if-eqz v0, :cond_18

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_34

    .line 25
    :cond_18
    iget-object p5, p5, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->q:Landroid/animation/ValueAnimator;

    .line 27
    if-eqz p5, :cond_23

    .line 29
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 32
    move-result p5

    .line 33
    if-eqz p5, :cond_23

    .line 35
    goto :goto_34

    .line 36
    :cond_23
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 39
    move-result-object p5

    .line 40
    new-instance v0, Lcom/baidu/input/ime/cand/CandHandler$4;

    .line 42
    invoke-direct {v0, p0}, Lcom/baidu/input/ime/cand/CandHandler$4;-><init>(Lcom/baidu/input/ime/cand/CandHandler;)V

    .line 45
    new-instance v2, Lcom/baidu/input/ime/cand/CandHandler$5;

    .line 47
    invoke-direct {v2}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 50
    invoke-virtual {p5, v0, v2}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->o(Lcom/baidu/input/ime/logoanim/LogoAnimManager$OnLogoAnimUpdateListener;Landroid/animation/AnimatorListenerAdapter;)V

    .line 53
    :goto_34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    iget-object p5, p0, Lcom/baidu/input/ime/cand/CandHandler;->B1:[I

    .line 58
    const/4 v0, 0x0

    .line 59
    aget v2, p5, v0

    .line 61
    int-to-float v2, v2

    .line 62
    const/4 v3, 0x1

    .line 63
    aget p5, p5, v3

    .line 65
    int-to-float p5, p5

    .line 66
    invoke-virtual {p1, v2, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object p5, p0, Lcom/baidu/input/ime/cand/CandHandler;->C1:[F

    .line 71
    aget p5, p5, v0

    .line 73
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    iget-object p5, p0, Lcom/baidu/input/ime/cand/CandHandler;->D1:[F

    .line 78
    aget p5, p5, v0

    .line 80
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 83
    move-result v0

    .line 84
    int-to-float v0, v0

    .line 85
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 87
    int-to-float v2, v2

    .line 88
    invoke-virtual {p1, p5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    iget-object p5, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 93
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {p1, p2, p3, v1, p4}, Lcom/baidu/input/ime/params/KeymapLoader;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/IconParam;)Z

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    goto/16 :goto_d6

    .line 104
    :cond_67
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->N2()Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_75

    .line 110
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2, p1, p3, p5}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 117
    goto :goto_d6

    .line 118
    :cond_75
    invoke-static {p1, p2, p3, v1, p4}, Lcom/baidu/input/ime/params/KeymapLoader;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/IconParam;)Z

    .line 121
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    .line 124
    move-result p2

    .line 125
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 128
    move-result-object p4

    .line 129
    iget p4, p4, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 131
    mul-float/2addr p2, p4

    .line 132
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    .line 135
    move-result p4

    .line 136
    mul-float v5, p4, p2

    .line 138
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->O2()Z

    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_9f

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 150
    move-result-object p2

    .line 151
    iget-object p4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {p2, p1, p4, p3}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->p(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    goto :goto_d6

    .line 160
    :cond_9f
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->P2()Z

    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_b1

    .line 166
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 169
    move-result-object v0

    .line 170
    const/4 v3, 0x1

    .line 171
    const/4 v4, 0x0

    .line 172
    move-object v1, p3

    .line 173
    move-object v2, p1

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 177
    goto :goto_d6

    .line 178
    :cond_b1
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 181
    move-result-object p2

    .line 182
    iget-boolean p2, p2, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->i:Z

    .line 184
    if-eqz p2, :cond_c5

    .line 186
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 189
    move-result-object v0

    .line 190
    const/4 v3, 0x2

    .line 191
    const/4 v4, 0x0

    .line 192
    move-object v1, p3

    .line 193
    move-object v2, p1

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 197
    goto :goto_d6

    .line 198
    :cond_c5
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->Q2()Z

    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_d6

    .line 204
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 207
    move-result-object v0

    .line 208
    const/4 v3, 0x0

    .line 209
    const/4 v4, 0x0

    .line 210
    move-object v1, p3

    .line 211
    move-object v2, p1

    .line 212
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 215
    :cond_d6
    :goto_d6
    return-void
.end method

.method public final Y2()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->G2()Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-interface {v0}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->isReady()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    const-class v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 16
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 22
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->J1()Lcom/baidu/input/clipboard/manager/BDClipboardManager;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/baidu/input/clipboard/manager/BDClipboardManager;->m()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_22

    .line 32
    if-eqz v0, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    return v1
.end method

.method public Z2(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;SII)V
    .registers 12

    .line 1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 6
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 8
    const/16 v1, 0xf06

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p3, v1, :cond_2c

    .line 14
    sget-object v1, Lcom/baidu/input/pub/Global;->w0:[I

    .line 16
    aget v1, v1, v3

    .line 18
    if-lez v1, :cond_2c

    .line 20
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 22
    if-eqz v1, :cond_2c

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    move-result v1

    .line 28
    shr-int/2addr v1, v3

    .line 29
    sub-int/2addr p5, v1

    .line 30
    if-gez p5, :cond_20

    .line 32
    move p5, v2

    .line 33
    :cond_20
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v4

    .line 39
    add-int/2addr v4, p4

    .line 40
    int-to-float v4, v4

    .line 41
    int-to-float v5, p5

    .line 42
    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    :cond_2c
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 47
    if-eqz v1, :cond_5f

    .line 49
    const/16 v1, 0xf07

    .line 51
    if-ne p3, v1, :cond_58

    .line 53
    sget-object v1, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 55
    const/16 v4, 0x9b0

    .line 57
    invoke-virtual {v1, v4}, Lcom/baidu/input/pub/Option;->g(I)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3f

    .line 63
    goto :goto_58

    .line 64
    :cond_3f
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 69
    move-result v1

    .line 70
    shr-int/2addr v1, v3

    .line 71
    sub-int/2addr p5, v1

    .line 72
    if-gez p5, :cond_4a

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v2, p5

    .line 76
    :goto_4b
    sget-object p5, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 81
    move-result p2

    .line 82
    add-int/2addr p2, p4

    .line 83
    int-to-float p2, p2

    .line 84
    int-to-float p4, v2

    .line 85
    invoke-virtual {p1, p5, p2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    goto :goto_5f

    .line 89
    :cond_58
    :goto_58
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    :cond_5f
    :goto_5f
    const/16 p2, 0xf0c

    .line 98
    const/high16 p4, 0x40c00000  # 6.0f

    .line 100
    iget-object p5, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    .line 102
    if-ne p3, p2, :cond_8c

    .line 104
    iget-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d0:Lcom/baidu/pyramid/annotation/component/DefaultHolder;

    .line 106
    invoke-virtual {p2}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lcom/baidu/input/panel/render/cand/IThirdServiceManager;

    .line 112
    invoke-interface {p2}, Lcom/baidu/input/panel/render/cand/IThirdServiceManager;->a()Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_c2

    .line 118
    const p2, -0x18a091

    .line 121
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget p2, p5, Landroid/graphics/Rect;->right:I

    .line 129
    add-int/lit8 p2, p2, 0x5

    .line 131
    int-to-float p2, p2

    .line 132
    iget p3, p5, Landroid/graphics/Rect;->top:I

    .line 134
    add-int/lit8 p3, p3, -0x2

    .line 136
    int-to-float p3, p3

    .line 137
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    goto :goto_c2

    .line 141
    :cond_8c
    sget-object p2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->z:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 143
    invoke-static {p2}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    .line 146
    move-result p2

    .line 147
    if-ne p3, p2, :cond_c2

    .line 149
    const-class p2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 151
    invoke-static {p2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 157
    invoke-interface {p2}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->dk()Z

    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_c2

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 166
    move-result-object p2

    .line 167
    const/high16 p3, -0x10000

    .line 169
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    const/4 p3, 0x0

    .line 173
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 176
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget p3, p5, Landroid/graphics/Rect;->right:I

    .line 181
    add-int/lit8 p3, p3, 0x5

    .line 183
    int-to-float p3, p3

    .line 184
    iget p5, p5, Landroid/graphics/Rect;->top:I

    .line 186
    add-int/lit8 p5, p5, -0x2

    .line 188
    int-to-float p5, p5

    .line 189
    invoke-virtual {p1, p3, p5, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    :cond_c2
    :goto_c2
    return-void
.end method

.method public final a0(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->I1:Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->Y0()Lcom/baidu/input/ime/params/ImgParam;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;->b()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5b

    .line 13
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;->a()Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandHandler;->M1:Landroid/util/Pair;

    .line 19
    if-eqz v2, :cond_31

    .line 21
    if-eqz v0, :cond_23

    .line 23
    invoke-virtual {v0}, Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;->g()J

    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, p0, Lcom/baidu/input/ime/cand/CandHandler;->N1:J

    .line 29
    cmp-long v0, v2, v4

    .line 31
    if-nez v0, :cond_31

    .line 33
    goto :goto_23

    .line 34
    :catch_21
    move-exception p1

    .line 35
    goto :goto_63

    .line 36
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->M1:Landroid/util/Pair;

    .line 38
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result v0

    .line 46
    sget-boolean v2, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 48
    if-eq v0, v2, :cond_34

    .line 50
    :cond_31
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/cand/CandHandler;->a3(Lcom/baidu/input/ime/params/ImgParam;)V

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->M1:Landroid/util/Pair;

    .line 55
    if-eqz v0, :cond_5b

    .line 57
    iget-wide v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->N1:J

    .line 59
    const-wide/16 v2, 0x0

    .line 61
    cmp-long v0, v0, v2

    .line 63
    if-lez v0, :cond_51

    .line 65
    const-class v0, Lcom/baidu/input/aicard/IAICard;

    .line 67
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/baidu/input/aicard/IAICard;

    .line 73
    invoke-interface {v0}, Lcom/baidu/input/aicard/IAICard;->b9()Lcom/baidu/input/aicard/impl/AICardImpl$getAIIconConfig$1;

    .line 76
    move-result-object v0

    .line 77
    iget-wide v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->N1:J

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/baidu/input/aicard/impl/AICardImpl$getAIIconConfig$1;->c(J)V

    .line 82
    :cond_51
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->M1:Landroid/util/Pair;

    .line 84
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    check-cast v0, Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/input/ime/cand/CandHandler;->J2(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    .line 91
    return-void

    .line 92
    :cond_5b
    if-eqz v1, :cond_73

    .line 94
    iget-object v0, v1, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/input/ime/cand/CandHandler;->J2(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_21

    .line 99
    goto :goto_73

    .line 100
    :goto_63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_6b

    .line 106
    const-string p1, "empty message"

    .line 108
    :cond_6b
    const/4 p2, 0x0

    .line 109
    new-array p2, p2, [Ljava/lang/Object;

    .line 111
    const-string p3, "drawIconBackground"

    .line 113
    invoke-static {p3, p1, p2}, Lcom/baidu/input/FLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_73
    :goto_73
    return-void
.end method

.method public final a3(Lcom/baidu/input/ime/params/ImgParam;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->I1:Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_6
    sget v1, Lkotlin/Result;->a:I

    .line 9
    const-class v1, Lcom/baidu/input/aicard/IAICard;

    .line 11
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/baidu/input/aicard/IAICard;

    .line 17
    invoke-interface {v1}, Lcom/baidu/input/aicard/IAICard;->b9()Lcom/baidu/input/aicard/impl/AICardImpl$getAIIconConfig$1;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;->a()Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_27

    .line 27
    sget-boolean v3, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/baidu/input/aicard/impl/AICardImpl$getAIIconConfig$1;->b(Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;Z)Landroid/graphics/Bitmap;

    .line 32
    move-result-object v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    .line 33
    goto :goto_27

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    sget v2, Lkotlin/Result;->a:I

    .line 37
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 40
    :cond_27
    :goto_27
    if-eqz p1, :cond_55

    .line 42
    if-eqz v0, :cond_55

    .line 44
    iget-object p1, p1, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 46
    if-eqz p1, :cond_55

    .line 48
    invoke-static {}, Lcom/baidu/input/ime/cand/minorword/RemoteIconDrawerHelper;->a()Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_55

    .line 54
    invoke-virtual {v1}, Lcom/baidu/input/aicard/SuperCreateCandIconTransDataBean;->g()J

    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->N1:J

    .line 60
    new-instance v1, Landroid/util/Pair;

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 69
    move-result p1

    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-static {v0, v2, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 74
    move-result-object p1

    .line 75
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iput-object v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->M1:Landroid/util/Pair;

    .line 86
    :cond_55
    return-void
.end method

.method public final b0(Landroid/graphics/Canvas;Lcom/baidu/input/pub/CoreString;Landroid/graphics/Rect;IIZ)V
    .registers 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    const-class v5, Lcom/baidu/input/cocomodule/skin/ISkin;

    .line 13
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Lcom/baidu/input/cocomodule/skin/ISkin;

    .line 19
    invoke-interface {v5}, Lcom/baidu/input/cocomodule/skin/ISkin;->z7()Lcom/baidu/input/cocomodule/skin/ISkin$ISkinStatus;

    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v5}, Lcom/baidu/input/cocomodule/skin/ISkin$ISkinStatus;->c()Z

    .line 26
    move-result v5

    .line 27
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 29
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 31
    sub-int v7, v4, v7

    .line 33
    sub-int/2addr v6, v7

    .line 34
    sget-object v7, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static/range {p2 .. p2}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->n(Lcom/baidu/input/pub/CoreString;)Z

    .line 42
    move-result v7

    .line 43
    iget-object v8, v0, Lcom/baidu/input/ime/cand/CandHandler;->P1:Landroid/graphics/RectF;

    .line 45
    const/4 v9, 0x2

    .line 46
    iget-object v10, v0, Lcom/baidu/input/ime/cand/CandHandler;->O1:[I

    .line 48
    const/4 v13, 0x1

    .line 49
    iget-object v15, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 51
    if-eqz v7, :cond_124

    .line 53
    int-to-float v14, v4

    .line 54
    iget v12, v3, Landroid/graphics/Rect;->top:I

    .line 56
    aget v16, v10, v13

    .line 58
    add-int v12, v12, v16

    .line 60
    int-to-float v12, v12

    .line 61
    int-to-float v13, v6

    .line 62
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 64
    const/16 v17, 0x3

    .line 66
    aget v17, v10, v17

    .line 68
    sub-int v11, v11, v17

    .line 70
    int-to-float v11, v11

    .line 71
    invoke-virtual {v8, v14, v12, v13, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 77
    move-result v11

    .line 78
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 81
    move-result v12

    .line 82
    const/16 v13, 0xff

    .line 84
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_f2

    .line 93
    iget-object v13, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 95
    if-eqz v13, :cond_f2

    .line 97
    iget v13, v13, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgStyle:I

    .line 99
    if-ne v13, v9, :cond_f2

    .line 101
    invoke-virtual {v15}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 104
    move-result-object v13

    .line 105
    if-nez v5, :cond_80

    .line 107
    iget-boolean v14, v2, Lcom/baidu/input/pub/CoreString;->isNeedIconColor:Z

    .line 109
    if-nez v14, :cond_6f

    .line 111
    goto :goto_80

    .line 112
    :cond_6f
    iget-object v14, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 114
    iget v14, v14, Lcom/baidu/input/ime/render/CandRender;->k:I

    .line 116
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/16 v14, 0xf

    .line 121
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    :goto_7b
    move/from16 v26, v5

    .line 126
    move/from16 v25, v6

    .line 128
    goto :goto_da

    .line 129
    :cond_80
    :goto_80
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 132
    move-result v14

    .line 133
    if-eqz v14, :cond_a9

    .line 135
    iget-object v14, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 137
    if-eqz v14, :cond_a9

    .line 139
    iget v3, v14, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgStyle:I

    .line 141
    if-ne v3, v9, :cond_a9

    .line 143
    if-eqz v14, :cond_97

    .line 145
    iget v3, v14, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgColor1:I

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v3

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    const/4 v3, 0x0

    .line 153
    :goto_98
    iget-object v14, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 155
    if-eqz v14, :cond_a3

    .line 157
    iget v14, v14, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgColor2:I

    .line 159
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v14

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    const/4 v14, 0x0

    .line 165
    :goto_a4
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    move-result v3

    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    const/4 v3, 0x0

    .line 171
    :goto_aa
    if-eqz v3, :cond_b4

    .line 173
    iget-object v3, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 175
    iget v3, v3, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgColor1:I

    .line 177
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    goto :goto_7b

    .line 181
    :cond_b4
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 183
    iget v14, v8, Landroid/graphics/RectF;->left:F

    .line 185
    iget v9, v8, Landroid/graphics/RectF;->right:F

    .line 187
    move/from16 v25, v6

    .line 189
    iget-object v6, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 191
    move/from16 v26, v5

    .line 193
    iget v5, v6, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgColor1:I

    .line 195
    iget v6, v6, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->bgColor2:I

    .line 197
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 199
    const/16 v19, 0x0

    .line 201
    const/16 v21, 0x0

    .line 203
    move-object/from16 v17, v3

    .line 205
    move/from16 v18, v14

    .line 207
    move/from16 v20, v9

    .line 209
    move/from16 v22, v5

    .line 211
    move/from16 v23, v6

    .line 213
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 216
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 219
    :goto_da
    if-eqz p6, :cond_e9

    .line 221
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 224
    move-result v3

    .line 225
    int-to-float v3, v3

    .line 226
    const v5, 0x3f333333  # 0.7f

    .line 229
    mul-float/2addr v3, v5

    .line 230
    float-to-int v3, v3

    .line 231
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    :cond_e9
    const/high16 v3, 0x42c80000  # 100.0f

    .line 236
    invoke-virtual {v1, v8, v3, v3, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 242
    goto :goto_11c

    .line 243
    :cond_f2
    move/from16 v26, v5

    .line 245
    move/from16 v25, v6

    .line 247
    invoke-static/range {p2 .. p2}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->d(Lcom/baidu/input/pub/CoreString;)Landroid/graphics/Bitmap;

    .line 250
    move-result-object v3

    .line 251
    if-eqz v3, :cond_11c

    .line 253
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_11c

    .line 259
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 262
    move-result-object v5

    .line 263
    if-eqz p6, :cond_115

    .line 265
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 268
    move-result v6

    .line 269
    int-to-float v6, v6

    .line 270
    const v9, 0x3f333333  # 0.7f

    .line 273
    mul-float/2addr v6, v9

    .line 274
    float-to-int v6, v6

    .line 275
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    :cond_115
    const/4 v6, 0x0

    .line 279
    invoke-virtual {v1, v3, v6, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 282
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 285
    :cond_11c
    :goto_11c
    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    :goto_122
    const/4 v3, 0x0

    .line 292
    goto :goto_129

    .line 293
    :cond_124
    move/from16 v26, v5

    .line 295
    move/from16 v25, v6

    .line 297
    goto :goto_122

    .line 298
    :goto_129
    aget v5, v10, v3

    .line 300
    add-int v3, v4, v5

    .line 302
    int-to-float v4, v3

    .line 303
    invoke-static/range {p2 .. p2}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->e(Lcom/baidu/input/pub/CoreString;)Landroid/graphics/Bitmap;

    .line 306
    move-result-object v5

    .line 307
    invoke-static/range {p2 .. p2}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->h(Lcom/baidu/input/pub/CoreString;)I

    .line 310
    move-result v6

    .line 311
    invoke-static/range {p2 .. p2}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->f(Lcom/baidu/input/pub/CoreString;)I

    .line 314
    move-result v9

    .line 315
    const/4 v11, 0x2

    .line 316
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 319
    move-result-object v12

    .line 320
    invoke-static {v12}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->i(Ljava/lang/Number;)I

    .line 323
    move-result v11

    .line 324
    invoke-static {}, Lcom/baidu/input/common/utils/RomUtil;->isMiui()Z

    .line 327
    move-result v12

    .line 328
    if-eqz v12, :cond_155

    .line 330
    sget v12, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 332
    const/high16 v13, 0x40400000  # 3.0f

    .line 334
    mul-float/2addr v12, v13

    .line 335
    sget v13, Lcom/baidu/input/pub/ImeBaseGlobal;->q:F

    .line 337
    div-float/2addr v12, v13

    .line 338
    float-to-int v12, v12

    .line 339
    move/from16 v13, p5

    .line 341
    goto :goto_158

    .line 342
    :cond_155
    move/from16 v13, p5

    .line 344
    const/4 v12, 0x0

    .line 345
    :goto_158
    int-to-float v13, v13

    .line 346
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 349
    move-result-object v14

    .line 350
    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 352
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 355
    move-result v14

    .line 356
    sub-float v14, v13, v14

    .line 358
    move-object/from16 v17, v10

    .line 360
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 363
    move-result-object v10

    .line 364
    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->leading:F

    .line 366
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 369
    move-result v10

    .line 370
    sub-float/2addr v14, v10

    .line 371
    int-to-float v10, v12

    .line 372
    add-float/2addr v14, v10

    .line 373
    float-to-int v12, v14

    .line 374
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 377
    move-result-object v14

    .line 378
    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 380
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 383
    move-result v14

    .line 384
    add-float/2addr v14, v13

    .line 385
    add-float/2addr v14, v10

    .line 386
    float-to-int v10, v14

    .line 387
    sub-int/2addr v10, v12

    .line 388
    sub-int/2addr v10, v9

    .line 389
    const/4 v14, 0x2

    .line 390
    div-int/2addr v10, v14

    .line 391
    add-int/2addr v10, v12

    .line 392
    iput v4, v8, Landroid/graphics/RectF;->left:F

    .line 394
    int-to-float v4, v10

    .line 395
    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 397
    add-int/2addr v3, v6

    .line 398
    int-to-float v3, v3

    .line 399
    iput v3, v8, Landroid/graphics/RectF;->right:F

    .line 401
    add-int/2addr v10, v9

    .line 402
    int-to-float v4, v10

    .line 403
    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->hasCloudIntent()Z

    .line 408
    move-result v4

    .line 409
    const-string v6, "canvas"

    .line 411
    if-eqz v4, :cond_222

    .line 413
    iget-object v4, v2, Lcom/baidu/input/pub/CoreString;->imgUrl:Ljava/lang/String;

    .line 415
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_222

    .line 421
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->getTopLevelCloudIntent()Lcom/baidu/iptcore/info/IptIntentItem$TopLevelIntention;

    .line 424
    move-result-object v4

    .line 425
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->getSecondLevelCloudIntent()Lcom/baidu/iptcore/info/IptIntentItem$SecondLevelIntention;

    .line 428
    move-result-object v5

    .line 429
    iget-object v9, v0, Lcom/baidu/input/ime/cand/CandHandler;->F1:Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;

    .line 431
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    const-string v6, "topLevelIntention"

    .line 439
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    const-string v6, "secondLevelCloudIntent"

    .line 444
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    sget-object v6, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconAnimResource;->a:Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconAnimResource;

    .line 449
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    sget-object v6, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconAnimResource;->b:Ljava/util/List;

    .line 454
    move-object v10, v6

    .line 455
    check-cast v10, Ljava/lang/Iterable;

    .line 457
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 460
    move-result-object v11

    .line 461
    :goto_1cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    move-result v12

    .line 465
    if-eqz v12, :cond_1e7

    .line 467
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    move-result-object v12

    .line 471
    move-object v14, v12

    .line 472
    check-cast v14, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;

    .line 474
    move-object/from16 p4, v11

    .line 476
    iget-object v11, v14, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;->c:Lcom/baidu/iptcore/info/IptIntentItem$TopLevelIntention;

    .line 478
    if-ne v11, v4, :cond_1e4

    .line 480
    iget-object v11, v14, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;->d:Lcom/baidu/iptcore/info/IptIntentItem$SecondLevelIntention;

    .line 482
    if-ne v11, v5, :cond_1e4

    .line 484
    goto :goto_1e8

    .line 485
    :cond_1e4
    move-object/from16 v11, p4

    .line 487
    goto :goto_1cc

    .line 488
    :cond_1e7
    const/4 v12, 0x0

    .line 489
    :goto_1e8
    check-cast v12, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;

    .line 491
    if-nez v12, :cond_206

    .line 493
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    move-result-object v5

    .line 497
    :cond_1f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    move-result v10

    .line 501
    if-eqz v10, :cond_203

    .line 503
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    move-result-object v10

    .line 507
    move-object v11, v10

    .line 508
    check-cast v11, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;

    .line 510
    iget-object v11, v11, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;->c:Lcom/baidu/iptcore/info/IptIntentItem$TopLevelIntention;

    .line 512
    if-ne v11, v4, :cond_1f0

    .line 514
    move-object v12, v10

    .line 515
    goto :goto_204

    .line 516
    :cond_203
    const/4 v12, 0x0

    .line 517
    :goto_204
    check-cast v12, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconLottieAnim;

    .line 519
    :cond_206
    if-eqz v12, :cond_209

    .line 521
    goto :goto_210

    .line 522
    :cond_209
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)Ljava/lang/Object;

    .line 525
    move-result-object v4

    .line 526
    move-object v12, v4

    .line 527
    check-cast v12, Lcom/baidu/input/ime/cand/recommendation/icon/IRecommendationIconAnimation;

    .line 529
    :goto_210
    invoke-interface {v12}, Lcom/baidu/input/ime/cand/recommendation/icon/IRecommendationIconAnimation;->isRunning()Z

    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_21a

    .line 535
    invoke-interface {v12, v1, v8}, Lcom/baidu/input/ime/cand/recommendation/icon/IRecommendationIconAnimation;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 538
    goto :goto_21f

    .line 539
    :cond_21a
    iget-object v4, v9, Lcom/baidu/input/ime/cand/recommendation/icon/RecommendationIconDrawer;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 541
    invoke-interface {v12, v1, v8, v4}, Lcom/baidu/input/ime/cand/recommendation/icon/IRecommendationIconAnimation;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/baidu/input/ime/view/InputContainerView;)V

    .line 544
    :cond_21f
    :goto_21f
    const/4 v11, 0x0

    .line 545
    goto/16 :goto_2f7

    .line 547
    :cond_222
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCloudAISearchTriggerWord()Z

    .line 550
    move-result v4

    .line 551
    if-eqz v4, :cond_261

    .line 553
    iget-object v4, v2, Lcom/baidu/input/pub/CoreString;->imgUrl:Ljava/lang/String;

    .line 555
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 558
    move-result v4

    .line 559
    if-eqz v4, :cond_261

    .line 561
    iget v4, v8, Landroid/graphics/RectF;->top:F

    .line 563
    int-to-float v5, v11

    .line 564
    sub-float/2addr v4, v5

    .line 565
    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 567
    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 569
    sub-float/2addr v4, v5

    .line 570
    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 572
    iget-object v4, v0, Lcom/baidu/input/ime/cand/CandHandler;->G1:Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;

    .line 574
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    sget-object v5, Lcom/baidu/input/ime/cand/aisearch/AISearchIconAnimResource;->a:Lcom/baidu/input/ime/cand/aisearch/AISearchIconAnimResource;

    .line 582
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    sget-object v5, Lcom/baidu/input/ime/cand/aisearch/AISearchIconAnimResource;->b:Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;

    .line 587
    iget-object v6, v5, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->c:Lcom/airbnb/lottie/LottieDrawable;

    .line 589
    if-eqz v6, :cond_253

    .line 591
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieDrawable;->f()Z

    .line 594
    move-result v6

    .line 595
    goto :goto_254

    .line 596
    :cond_253
    const/4 v6, 0x0

    .line 597
    :goto_254
    if-eqz v6, :cond_25a

    .line 599
    invoke-virtual {v5, v1, v8}, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 602
    goto :goto_21f

    .line 603
    :cond_25a
    iget-object v4, v4, Lcom/baidu/input/ime/cand/aisearch/AISearchIconDrawer;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 605
    const/4 v6, 0x1

    .line 606
    invoke-virtual {v5, v1, v8, v4, v6}, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/baidu/input/ime/view/InputContainerView;Z)V

    .line 609
    goto :goto_21f

    .line 610
    :cond_261
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCloudAIWishMasterTriggerWord()Z

    .line 613
    move-result v4

    .line 614
    if-eqz v4, :cond_2a1

    .line 616
    iget-object v4, v2, Lcom/baidu/input/pub/CoreString;->imgUrl:Ljava/lang/String;

    .line 618
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 621
    move-result v4

    .line 622
    if-eqz v4, :cond_2a1

    .line 624
    iget v4, v8, Landroid/graphics/RectF;->top:F

    .line 626
    int-to-float v5, v11

    .line 627
    sub-float/2addr v4, v5

    .line 628
    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 630
    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 632
    sub-float/2addr v4, v5

    .line 633
    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 635
    iget-object v4, v0, Lcom/baidu/input/ime/cand/CandHandler;->J1:Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;

    .line 637
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    sget-object v5, Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconAnimResource;->a:Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconAnimResource;

    .line 645
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    sget-object v5, Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconAnimResource;->b:Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;

    .line 650
    iget-object v6, v5, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->c:Lcom/airbnb/lottie/LottieDrawable;

    .line 652
    if-eqz v6, :cond_292

    .line 654
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieDrawable;->f()Z

    .line 657
    move-result v6

    .line 658
    goto :goto_293

    .line 659
    :cond_292
    const/4 v6, 0x0

    .line 660
    :goto_293
    if-eqz v6, :cond_299

    .line 662
    invoke-virtual {v5, v1, v8}, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 665
    goto :goto_21f

    .line 666
    :cond_299
    iget-object v4, v4, Lcom/baidu/input/ime/cand/aiwish/AIWishMasterIconDrawer;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 668
    const/4 v6, 0x1

    .line 669
    invoke-virtual {v5, v1, v8, v4, v6}, Lcom/baidu/input/ime/cand/aisearch/AISearchIconLottieAnim;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/baidu/input/ime/view/InputContainerView;Z)V

    .line 672
    goto/16 :goto_21f

    .line 674
    :cond_2a1
    if-eqz v5, :cond_21f

    .line 676
    iget-boolean v4, v2, Lcom/baidu/input/pub/CoreString;->isNeedIconColor:Z

    .line 678
    if-eqz v4, :cond_2ad

    .line 680
    if-eqz v7, :cond_2ab

    .line 682
    if-nez v26, :cond_2ad

    .line 684
    :cond_2ab
    const/4 v4, 0x1

    .line 685
    goto :goto_2ae

    .line 686
    :cond_2ad
    const/4 v4, 0x0

    .line 687
    :goto_2ae
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 690
    move-result v6

    .line 691
    if-eqz p6, :cond_2bf

    .line 693
    if-eqz v7, :cond_2bf

    .line 695
    int-to-float v9, v6

    .line 696
    const v10, 0x3f333333  # 0.7f

    .line 699
    mul-float/2addr v9, v10

    .line 700
    float-to-int v9, v9

    .line 701
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 704
    :cond_2bf
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCloudTriggerWord()Z

    .line 707
    move-result v9

    .line 708
    if-nez v9, :cond_2d4

    .line 710
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isMapTriggerWord()Z

    .line 713
    move-result v9

    .line 714
    if-nez v9, :cond_2d4

    .line 716
    if-eqz v4, :cond_2ce

    .line 718
    goto :goto_2d4

    .line 719
    :cond_2ce
    const/4 v9, 0x0

    .line 720
    invoke-virtual {v1, v5, v9, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 723
    const/4 v11, 0x0

    .line 724
    goto :goto_2f4

    .line 725
    :cond_2d4
    :goto_2d4
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 728
    move-result-object v9

    .line 729
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 732
    move-result v10

    .line 733
    if-eqz v7, :cond_2e4

    .line 735
    if-eqz v4, :cond_2e4

    .line 737
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 739
    iget v10, v4, Lcom/baidu/input/ime/render/CandRender;->k:I

    .line 741
    :cond_2e4
    new-instance v4, Landroid/graphics/LightingColorFilter;

    .line 743
    const/4 v11, 0x0

    .line 744
    invoke-direct {v4, v11, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 747
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 750
    const/4 v4, 0x0

    .line 751
    invoke-virtual {v1, v5, v4, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 754
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 757
    :goto_2f4
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 760
    :goto_2f7
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 763
    move-result v4

    .line 764
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 767
    move-result v5

    .line 768
    if-nez v7, :cond_312

    .line 770
    iget-object v6, v2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 772
    sget-object v7, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 774
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->g()I

    .line 780
    move-result v7

    .line 781
    int-to-float v7, v7

    .line 782
    add-float/2addr v3, v7

    .line 783
    invoke-virtual {v1, v6, v3, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 786
    goto :goto_36e

    .line 787
    :cond_312
    sget-object v6, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 789
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 795
    move-result v6

    .line 796
    if-eqz v6, :cond_328

    .line 798
    iget-object v6, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 800
    if-eqz v6, :cond_328

    .line 802
    iget v6, v6, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->wordStyle:I

    .line 804
    const/4 v7, 0x1

    .line 805
    if-ne v6, v7, :cond_328

    .line 807
    const/4 v6, 0x1

    .line 808
    goto :goto_329

    .line 809
    :cond_328
    move v6, v11

    .line 810
    :goto_329
    if-eqz v26, :cond_33a

    .line 812
    if-eqz v6, :cond_332

    .line 814
    iget-object v6, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 816
    iget v6, v6, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->wordColor:I

    .line 818
    goto :goto_336

    .line 819
    :cond_332
    iget-object v6, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 821
    iget v6, v6, Lcom/baidu/input/ime/render/CandRender;->h:I

    .line 823
    :goto_336
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    goto :goto_354

    .line 827
    :cond_33a
    iget-boolean v7, v2, Lcom/baidu/input/pub/CoreString;->isNeedIconColor:Z

    .line 829
    if-eqz v7, :cond_346

    .line 831
    iget-object v6, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 833
    iget v6, v6, Lcom/baidu/input/ime/render/CandRender;->k:I

    .line 835
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 838
    goto :goto_354

    .line 839
    :cond_346
    if-eqz v6, :cond_34d

    .line 841
    iget-object v6, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 843
    iget v6, v6, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->wordColor:I

    .line 845
    goto :goto_351

    .line 846
    :cond_34d
    iget-object v6, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 848
    iget v6, v6, Lcom/baidu/input/ime/render/CandRender;->h:I

    .line 850
    :goto_351
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 853
    :goto_354
    if-eqz p6, :cond_363

    .line 855
    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    .line 858
    move-result v6

    .line 859
    int-to-float v6, v6

    .line 860
    const v7, 0x3f333333  # 0.7f

    .line 863
    mul-float/2addr v6, v7

    .line 864
    float-to-int v6, v6

    .line 865
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 868
    :cond_363
    iget-object v6, v2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 870
    invoke-static {}, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->g()I

    .line 873
    move-result v7

    .line 874
    int-to-float v7, v7

    .line 875
    add-float/2addr v3, v7

    .line 876
    invoke-virtual {v1, v6, v3, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 879
    :goto_36e
    sget-object v3, Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;->a:Lcom/baidu/input/ime/cand/brandexposure/BrandWordLxGlobal;

    .line 881
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/input/pub/CoreString;->isCommonTriggerWord()Z

    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_384

    .line 890
    iget-object v2, v2, Lcom/baidu/input/pub/CoreString;->triggerWordStyle:Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;

    .line 892
    if-eqz v2, :cond_384

    .line 894
    iget-boolean v2, v2, Lcom/baidu/iptcore/info/IptCoreCandInfo$CommonTriggerWordStyle;->showAd:Z

    .line 896
    const/4 v3, 0x1

    .line 897
    if-ne v2, v3, :cond_384

    .line 899
    move v13, v3

    .line 900
    goto :goto_385

    .line 901
    :cond_384
    move v13, v11

    .line 902
    :goto_385
    if-eqz v13, :cond_3bd

    .line 904
    sget-object v2, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 906
    const v3, 0x7f1200a9

    .line 909
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 912
    move-result-object v2

    .line 913
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    .line 916
    move-result v3

    .line 917
    const/16 v6, 0x42

    .line 919
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 922
    const v6, 0x3e91eb85  # 0.285f

    .line 925
    mul-float/2addr v6, v3

    .line 926
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 929
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 932
    move-result v6

    .line 933
    float-to-int v6, v6

    .line 934
    sub-int v7, v25, v6

    .line 936
    const/4 v8, 0x2

    .line 937
    aget v8, v17, v8

    .line 939
    sub-int/2addr v7, v8

    .line 940
    int-to-float v7, v7

    .line 941
    move-object/from16 v8, p3

    .line 943
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 945
    int-to-float v8, v8

    .line 946
    int-to-float v6, v6

    .line 947
    const v9, 0x3f8ccccd  # 1.1f

    .line 950
    mul-float/2addr v6, v9

    .line 951
    add-float/2addr v6, v8

    .line 952
    invoke-virtual {v1, v2, v7, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 955
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 958
    :cond_3bd
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 961
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 964
    return-void
.end method

.method public final b3()V
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 5
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->B:Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 12
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->K0()Landroid/graphics/Rect;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->N(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 21
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_37

    .line 27
    iget-object v2, v1, Lcom/baidu/input/ime/params/CandStyleParam;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 29
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandStyleParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 31
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandHandler;->E1:Ljava/util/List;

    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v3

    .line 37
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_37

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;

    .line 49
    invoke-interface {v4, v2, v1}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;Lcom/baidu/input/ime/params/patch/StyleIndex;)V

    .line 52
    invoke-interface {v4, v0}, Lcom/baidu/input/panel/tempinterface/IMainCandDelegate;->b(Landroid/graphics/Rect;)V

    .line 55
    goto :goto_24

    .line 56
    :cond_37
    return-void
.end method

.method public final c0(Landroid/graphics/Canvas;Lcom/baidu/input/pub/CoreString;Landroid/graphics/Rect;IIZZ)V
    .registers 15

    .line 1
    iget-object v0, p2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 3
    int-to-float p4, p4

    .line 4
    int-to-float p5, p5

    .line 5
    iget-object v4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 7
    invoke-virtual {p1, v0, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 10
    iget-object v3, p2, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 12
    if-nez p7, :cond_13

    .line 14
    if-eqz p6, :cond_10

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const/4 p2, 0x0

    .line 18
    :goto_11
    move v6, p2

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    :goto_13
    const/4 p2, 0x1

    .line 21
    goto :goto_11

    .line 22
    :goto_15
    const/4 v5, 0x0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p3

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/baidu/input/lazy2core/LazyCandWordHelper;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;Landroid/text/TextPaint;ZZ)V

    .line 28
    return-void
.end method

.method public final c1()I
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->w0:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public final f0(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/baidu/input/pub/CoreString;)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 3
    invoke-static {p1, p3, p2}, Lcom/baidu/input/emojis/EmojiInvertManager;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public final h()V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 7
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/baidu/input/CandViewWrapper;->G()V

    .line 14
    :cond_d
    return-void
.end method

.method public final h1()Lcom/baidu/input/ime/params/patch/StyleIndex;
    .registers 6

    .line 1
    sget-object v0, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;->b:Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 3
    sget-object v1, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;

    .line 5
    iget-boolean v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sput-boolean v2, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->b:Z

    .line 12
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a()Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;

    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Landroid/util/Pair;

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a:Ljava/util/HashSet;

    .line 31
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v0, :cond_3a

    .line 40
    invoke-virtual {v1}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a()Lcom/baidu/input/ime/params/CandLoader;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_59

    .line 46
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    check-cast v1, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 50
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/params/CandLoader;->C(Lcom/baidu/input/ime/params/enumtype/CandIconFunction;)Lcom/baidu/input/ime/params/IconParam;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_59

    .line 56
    iget-object v3, v0, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 58
    goto :goto_59

    .line 59
    :cond_3a
    invoke-virtual {v1}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->a()Lcom/baidu/input/ime/params/CandLoader;

    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_59

    .line 65
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 67
    check-cast v1, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 69
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    const-string v4, "key.second"

    .line 73
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    check-cast v2, Ljava/lang/Number;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 81
    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/baidu/input/ime/params/CandLoader;->E(Lcom/baidu/input/ime/params/enumtype/CandIconFunction;I)Lcom/baidu/input/ime/params/IconParam;

    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_59

    .line 88
    iget-object v3, v0, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 90
    :cond_59
    :goto_59
    return-object v3
.end method

.method public final i(Landroid/graphics/Canvas;Lcom/baidu/input/ime/params/ThemeLoader;ILcom/baidu/input/ime/params/IconParam;ZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .registers 8

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i(Landroid/graphics/Canvas;Lcom/baidu/input/ime/params/ThemeLoader;ILcom/baidu/input/ime/params/IconParam;ZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 4
    invoke-static {}, Lcom/baidu/input/panel/util/CoreAutomatedTestUtilKt;->a()Z

    .line 7
    return-void
.end method

.method public final i1()Lcom/baidu/input/ime/params/patch/StyleIndex;
    .registers 5

    .line 1
    sget-object v0, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;->b:Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 3
    sget-object v1, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;

    .line 5
    iget-boolean v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sput-boolean v2, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->b:Z

    .line 12
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a()Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;

    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Landroid/util/Pair;

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1, v2}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->b(Landroid/util/Pair;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final j1(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    sget-boolean v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->k()V

    .line 8
    :cond_7
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/LogoIconSource;->d()Lcom/baidu/input/ime/reconstruction/source/LogoIconSource;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/baidu/input/menutoolapi/data/MenuFunction;->a()I

    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/baidu/input/ime/reconstruction/source/LogoIconSource;->c(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final k0(Landroid/graphics/Canvas;IILcom/baidu/input/ime/params/ThemeLoader;B)V
    .registers 43

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v13, p3

    move-object/from16 v12, p4

    const/4 v11, 0x1

    .line 1
    iget-object v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->c0:Lcom/baidu/pyramid/annotation/component/DefaultHolder;

    .line 2
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 4
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v0, v15

    .line 5
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iput v15, v0, Landroid/graphics/Rect;->left:I

    .line 6
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v13

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 9
    sget v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1:I

    sget-object v8, Lcom/baidu/input/ime/params/enumtype/FacadeState;->a:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    if-nez v0, :cond_93

    .line 10
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 11
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 12
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget v1, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0:I

    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/params/CandLoader;->D(I)Lcom/baidu/input/ime/params/IconParam;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 13
    iget-object v0, v0, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    if-eqz v0, :cond_50

    .line 14
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_52

    :cond_50
    move-object/from16 v16, v7

    .line 15
    :goto_52
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 16
    iget-boolean v0, v0, Lcom/baidu/input/ime/render/CandRender;->w:Z

    if-eqz v0, :cond_72

    .line 17
    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/baidu/input/ime/params/KeymapLoader;->I(Lcom/baidu/input/ime/params/ThemeLoader;Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;ZLcom/baidu/input/ime/params/StyleParam;)Z

    :cond_6a
    :goto_6a
    move-object v5, v7

    move-object v4, v8

    move v3, v9

    move-object/from16 v16, v10

    move v0, v11

    move v1, v13

    goto :goto_96

    :cond_72
    move-object/from16 v18, v4

    if-eqz v16, :cond_6a

    .line 18
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    if-eqz p5, :cond_7c

    move v1, v11

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    const/4 v2, 0x0

    move-object v5, v7

    move-object/from16 v7, v16

    move-object v4, v8

    move-object/from16 v8, p1

    move v3, v9

    move-object/from16 v9, v18

    move-object/from16 v16, v10

    move-object v10, v0

    move v0, v11

    move-object v11, v4

    move v12, v1

    move v1, v13

    move v13, v2

    .line 19
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    goto :goto_96

    :cond_93
    move-object/from16 v18, v4

    goto :goto_6a

    .line 20
    :goto_96
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 21
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 22
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v2, v2, Lcom/baidu/input/ime/params/CandLoader;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v2}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 23
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 24
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 25
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v2, v2, Lcom/baidu/input/ime/params/CandLoader;->o:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v2}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v2

    .line 26
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 27
    iget-object v7, v7, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 28
    iget-object v7, v7, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v7, v7, Lcom/baidu/input/ime/params/CandLoader;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v7}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v13

    .line 29
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 30
    iget-object v7, v7, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 31
    iget-object v7, v7, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v7, v7, Lcom/baidu/input/ime/params/CandLoader;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v7}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v12

    if-eqz v2, :cond_d6

    .line 32
    iget v2, v2, Lcom/baidu/input/ime/params/StyleParam;->f:I

    if-ne v2, v0, :cond_cf

    move v11, v0

    move-object/from16 v2, v18

    goto :goto_d2

    :cond_cf
    move-object/from16 v2, v18

    const/4 v11, 0x0

    :goto_d2
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_d8

    :cond_d6
    move-object/from16 v2, v18

    .line 33
    :goto_d8
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_f8

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_f8

    .line 36
    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    .line 37
    sget v8, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1:I

    sub-int/2addr v7, v8

    .line 38
    invoke-virtual {v6, v7}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->k2(I)V

    .line 39
    :cond_f8
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->E2()I

    move-result v11

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_101
    if-ge v10, v11, :cond_b13

    .line 40
    sget-object v7, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j1:[Landroid/graphics/Rect;

    array-length v7, v7

    if-ge v10, v7, :cond_b13

    .line 41
    invoke-virtual {v6, v10}, Lcom/baidu/input/ime/cand/CandHandler;->A2(I)Z

    move-result v7

    if-nez v7, :cond_11f

    move v7, v1

    move-object v8, v2

    move v9, v3

    move-object/from16 v22, v4

    move/from16 v19, v11

    move-object/from16 v28, v12

    move-object/from16 v21, v13

    const/4 v11, 0x0

    move v1, v0

    move-object v0, v5

    move v12, v10

    goto/16 :goto_b02

    .line 42
    :cond_11f
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    sget-object v8, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j1:[Landroid/graphics/Rect;

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v7, v15, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 44
    iget-object v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    sget-object v7, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 47
    sget-object v9, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v9

    move-object/from16 v20, v13

    iget-object v13, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    if-eqz v9, :cond_1f6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->Y0()Lcom/baidu/input/ime/params/ImgParam;

    move-result-object v9

    if-eqz v9, :cond_1ea

    .line 49
    iget-object v5, v9, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1ea

    iget-object v5, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A0:Lcom/baidu/input/ime/render/CandRender$CandRenderParams;

    if-eqz v5, :cond_1ea

    .line 50
    invoke-virtual {v13, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    move-result v5

    .line 52
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    move-result-object v8

    .line 53
    iget v8, v8, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    mul-float/2addr v5, v8

    .line 54
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    move-result v8

    mul-float/2addr v8, v5

    .line 55
    invoke-virtual {v9, v8}, Lcom/baidu/input/ime/params/ImgParam;->m(F)[I

    move-result-object v5

    .line 56
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    .line 57
    aget v8, v5, v9

    if-lez v8, :cond_1a4

    aget v8, v5, v0

    if-lez v8, :cond_1a4

    .line 58
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    aget v19, v5, v9

    sub-int v8, v8, v19

    shr-int/2addr v8, v0

    .line 59
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v19

    aget v22, v5, v0

    sub-int v19, v19, v22

    shr-int/lit8 v19, v19, 0x1

    .line 60
    iget v0, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v8

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 61
    iget v8, v13, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v19

    iput v8, v13, Landroid/graphics/Rect;->top:I

    .line 62
    aget v5, v5, v9

    add-int/2addr v0, v5

    iput v0, v13, Landroid/graphics/Rect;->right:I

    add-int v8, v8, v22

    .line 63
    iput v8, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_1a7

    .line 64
    :cond_1a4
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 65
    :goto_1a7
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 68
    iget-object v9, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->S:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    invoke-virtual {v14, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 70
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    const/4 v5, 0x0

    .line 71
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    iget-object v7, v6, Lcom/baidu/input/ime/cand/CandHandler;->K1:Lcom/baidu/input/ime/params/StyleParam;

    const/4 v5, 0x0

    const/16 v22, 0x0

    .line 73
    iget-object v9, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    move-object/from16 v8, p1

    move-object/from16 v19, v9

    move-object v9, v2

    move/from16 v24, v10

    move-object/from16 v10, v19

    move/from16 v19, v11

    move-object v11, v4

    move-object/from16 v25, v12

    move v12, v5

    move-object/from16 v26, v13

    move-object/from16 v5, v20

    move/from16 v13, v22

    invoke-virtual/range {v7 .. v13}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 74
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1f4

    :cond_1ea
    move/from16 v24, v10

    move/from16 v19, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v5, v20

    :goto_1f4
    const/4 v7, 0x0

    goto :goto_203

    :cond_1f6
    move-object v7, v5

    move/from16 v24, v10

    move/from16 v19, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v5, v20

    .line 75
    iput-object v7, v6, Lcom/baidu/input/ime/cand/CandHandler;->L1:Lcom/baidu/input/ime/params/ImgParam;

    .line 76
    :goto_203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 79
    iget v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n0:I

    move/from16 v13, v24

    if-ne v13, v0, :cond_21b

    .line 80
    sget-object v0, Lcom/baidu/input/menutoolapi/data/MenuFunction;->a:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    const/16 v0, 0xf40

    :goto_218
    int-to-short v0, v0

    :goto_219
    move v12, v0

    goto :goto_22f

    .line 81
    :cond_21b
    iget v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o0:I

    if-ne v13, v0, :cond_224

    .line 82
    sget-object v0, Lcom/baidu/input/menutoolapi/data/MenuFunction;->a:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    const/16 v0, 0xf44

    goto :goto_218

    .line 83
    :cond_224
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    invoke-interface {v0, v13}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->d(I)S

    move-result v0

    goto :goto_219

    .line 84
    :goto_22f
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->a(S)Z

    move-result v0

    if-eqz v0, :cond_284

    .line 85
    sget-object v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/baidu/input/menutoolapi/data/IMenuIcon;->getCode()S

    move-result v8

    invoke-static {v8}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->a(S)Z

    move-result v8

    if-eqz v8, :cond_27e

    instance-of v8, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    if-eqz v8, :cond_27e

    .line 89
    check-cast v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 90
    iget-object v0, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;

    .line 91
    invoke-static {}, Lcom/baidu/input/circle/CircleCandDataCacherKt;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_260
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/input/circle/CandCircleInfoCache;

    .line 92
    iget-object v10, v9, Lcom/baidu/input/circle/CandCircleInfoCache;->a:Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;

    .line 93
    iget-wide v10, v10, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;->id:J

    move-object/from16 v20, v8

    iget-wide v7, v0, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;->id:J

    cmp-long v7, v10, v7

    if-nez v7, :cond_27a

    move-object v7, v9

    goto :goto_27f

    :cond_27a
    move-object/from16 v8, v20

    const/4 v7, 0x0

    goto :goto_260

    :cond_27e
    const/4 v7, 0x0

    :goto_27f
    if-eqz v7, :cond_307

    :goto_281
    move-object v11, v7

    goto/16 :goto_308

    .line 94
    :cond_284
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->d(S)Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 95
    sget-object v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/baidu/input/menutoolapi/data/IMenuIcon;->getCode()S

    move-result v7

    invoke-static {v7}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->d(S)Z

    move-result v7

    if-eqz v7, :cond_2cf

    instance-of v7, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    if-eqz v7, :cond_2cf

    .line 99
    check-cast v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 100
    iget-object v0, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 101
    invoke-static {}, Lcom/baidu/input/ime/cand/ScrmCustomIconHandlerKt;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2b5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2cf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/input/ime/cand/CandScrmInfoCache;

    .line 102
    iget-object v9, v8, Lcom/baidu/input/ime/cand/CandScrmInfoCache;->a:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 103
    invoke-virtual {v9}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    move-result v9

    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    move-result v10

    if-ne v9, v10, :cond_2b5

    move-object v7, v8

    goto :goto_2d0

    :cond_2cf
    const/4 v7, 0x0

    :goto_2d0
    if-eqz v7, :cond_307

    goto :goto_281

    .line 104
    :cond_2d3
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->b(S)Z

    move-result v0

    if-eqz v0, :cond_307

    .line 105
    sget-object v0, Lcom/baidu/input/ime/reconstruction/DraggableManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    move-result-object v0

    .line 108
    instance-of v7, v0, Lcom/baidu/input/logo/customize/DistributeMenuIcon;

    if-eqz v7, :cond_302

    move-object v7, v0

    check-cast v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 109
    iget-short v7, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->e:S

    .line 110
    invoke-static {v7}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->b(S)Z

    move-result v7

    if-eqz v7, :cond_302

    .line 111
    check-cast v0, Lcom/baidu/input/logo/customize/DistributeMenuIcon;

    .line 112
    iget-object v0, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    .line 113
    check-cast v0, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 114
    invoke-static {v0}, Lcom/baidu/input/ime/cand/DistributionIconHandlerKt;->a(Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;)Lcom/baidu/input/ime/cand/DistributionIconHandler;

    move-result-object v7

    goto :goto_303

    :cond_302
    const/4 v7, 0x0

    :goto_303
    if-eqz v7, :cond_307

    goto/16 :goto_281

    :cond_307
    const/4 v11, 0x0

    .line 115
    :goto_308
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->e:Z

    iget v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->k0:I

    if-eqz v0, :cond_335

    .line 116
    iget v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->K:I

    if-eq v0, v13, :cond_333

    iget v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->x:I

    if-eq v7, v13, :cond_333

    if-ne v10, v13, :cond_31b

    const/4 v7, -0x3

    if-eq v0, v7, :cond_333

    :cond_31b
    iget v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n0:I

    if-ne v7, v13, :cond_322

    const/4 v7, -0x4

    if-eq v0, v7, :cond_333

    :cond_322
    iget v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o0:I

    if-ne v7, v13, :cond_329

    const/4 v7, -0x5

    if-eq v0, v7, :cond_333

    :cond_329
    iget v7, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l0:I

    if-ne v7, v13, :cond_331

    const/4 v7, -0x6

    if-ne v0, v7, :cond_331

    goto :goto_333

    :cond_331
    const/4 v0, 0x0

    goto :goto_337

    :cond_333
    :goto_333
    const/4 v0, 0x1

    goto :goto_337

    :cond_335
    move/from16 v0, v17

    .line 117
    :goto_337
    sget-byte v7, Lcom/baidu/input/pub/Global;->A0:B

    if-eqz v7, :cond_346

    const/16 v7, 0xf04

    if-eq v12, v7, :cond_343

    const/16 v7, 0xf06

    if-ne v12, v7, :cond_346

    :cond_343
    const/16 v17, 0x0

    goto :goto_348

    :cond_346
    move/from16 v17, v0

    .line 118
    :goto_348
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 119
    iget-boolean v7, v0, Lcom/baidu/input/ime/render/CandRender;->x:Z

    const/high16 v8, -0x78000000

    const v9, 0xffffff

    if-eqz v7, :cond_376

    if-eqz v17, :cond_36e

    .line 120
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    move-object/from16 v7, p4

    invoke-static {v7, v14, v2, v0, v5}, Lcom/baidu/input/ime/params/KeymapLoader;->L(Lcom/baidu/input/ime/params/ThemeLoader;Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/StyleParam;)V

    .line 121
    iget v0, v7, Lcom/baidu/input/ime/params/ThemeLoader;->Q:I

    move/from16 v18, v0

    :goto_360
    move-object/from16 v22, v2

    move/from16 v27, v3

    move-object/from16 v21, v5

    :goto_366
    move v5, v10

    move-object v1, v11

    move v0, v12

    move v2, v13

    move-object/from16 v7, v25

    goto/16 :goto_3eb

    :cond_36e
    move-object/from16 v7, p4

    .line 122
    iget v0, v0, Lcom/baidu/input/ime/render/CandRender;->F:I

    and-int/2addr v0, v9

    or-int v18, v0, v8

    goto :goto_360

    :cond_376
    move-object/from16 v7, p4

    .line 123
    iget-boolean v8, v0, Lcom/baidu/input/ime/render/CandRender;->w:Z

    if-eqz v8, :cond_3a8

    if-eqz v17, :cond_398

    .line 124
    iget-object v8, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    const/4 v9, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v22, v2

    move/from16 v27, v3

    move-object v3, v8

    move-object v8, v4

    move v4, v9

    move-object/from16 v21, v5

    const/4 v9, 0x0

    invoke-static/range {v0 .. v5}, Lcom/baidu/input/ime/params/KeymapLoader;->I(Lcom/baidu/input/ime/params/ThemeLoader;Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/graphics/Rect;ZLcom/baidu/input/ime/params/StyleParam;)Z

    .line 125
    iget v0, v7, Lcom/baidu/input/ime/params/ThemeLoader;->z:I

    move/from16 v18, v0

    :goto_396
    move-object v4, v8

    goto :goto_366

    :cond_398
    move-object/from16 v22, v2

    move/from16 v27, v3

    move-object v8, v4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .line 126
    iget v0, v0, Lcom/baidu/input/ime/render/CandRender;->F:I

    and-int/2addr v0, v9

    const/high16 v1, -0x78000000

    or-int v18, v0, v1

    goto :goto_396

    :cond_3a8
    move-object/from16 v22, v2

    move/from16 v27, v3

    move-object v8, v4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    if-eqz v21, :cond_3d7

    if-eqz v17, :cond_3b7

    .line 127
    sget-object v0, Lcom/baidu/input/ime/params/enumtype/FacadeState;->b:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    goto :goto_3b8

    :cond_3b7
    move-object v0, v8

    .line 128
    :goto_3b8
    iget-object v1, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    if-nez v17, :cond_3c0

    if-eqz p5, :cond_3c0

    const/4 v2, 0x1

    goto :goto_3c1

    :cond_3c0
    const/4 v2, 0x0

    :goto_3c1
    const/4 v3, 0x0

    move-object/from16 v7, v21

    move-object v4, v8

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    move v5, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v0

    move v0, v12

    move v12, v2

    move v2, v13

    move v13, v3

    .line 129
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    :goto_3d4
    move-object/from16 v7, v25

    goto :goto_3dd

    :cond_3d7
    move-object v4, v8

    move v5, v10

    move-object v1, v11

    move v0, v12

    move v2, v13

    goto :goto_3d4

    :goto_3dd
    if-eqz v7, :cond_3eb

    if-eqz v17, :cond_3e6

    .line 130
    iget v3, v7, Lcom/baidu/input/ime/params/StyleParam;->h:I

    :goto_3e3
    move/from16 v18, v3

    goto :goto_3eb

    .line 131
    :cond_3e6
    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 132
    iget v3, v3, Lcom/baidu/input/ime/render/CandRender;->F:I

    goto :goto_3e3

    .line 133
    :cond_3eb
    :goto_3eb
    sget-object v3, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 134
    invoke-static {v3}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    const/4 v8, 0x2

    const/16 v9, 0xf0c

    const/16 v10, 0xf02

    const/16 v11, 0xf01

    if-eq v0, v11, :cond_4f4

    if-eq v0, v10, :cond_4ba

    if-eq v0, v9, :cond_4ac

    if-eqz v1, :cond_422

    .line 135
    invoke-interface {v1}, Lcom/baidu/input/ime/cand/ICustomIconHandler;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 136
    invoke-static {v0}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->a(S)Z

    move-result v13

    if-eqz v13, :cond_412

    iget v13, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m0:I

    const/high16 v10, -0x80000000

    if-ne v13, v10, :cond_412

    .line 137
    iput v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m0:I

    goto :goto_41a

    .line 138
    :cond_412
    invoke-static {v0}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->d(S)Z

    move-result v10

    if-eqz v10, :cond_41a

    .line 139
    iput v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l0:I

    :cond_41a
    :goto_41a
    move-object v9, v12

    move/from16 v13, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_526

    :cond_422
    if-ne v2, v5, :cond_44b

    .line 140
    invoke-static {}, Lcom/baidu/input/circle/CircleCandDataCacherKt;->b()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_440

    .line 141
    invoke-static {}, Lcom/baidu/input/circle/CircleCandDataCacherKt;->b()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/input/circle/CandCircleInfoCache;

    .line 142
    iget-object v10, v10, Lcom/baidu/input/circle/CandCircleInfoCache;->b:Lcom/baidu/input/circle/CandCircleInfoCache$AvatarCache;

    .line 143
    iget-object v10, v10, Lcom/baidu/input/circle/CandCircleInfoCache$AvatarCache;->b:Landroid/graphics/Bitmap;

    goto :goto_442

    :cond_440
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 144
    :goto_442
    iput v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m0:I

    :goto_444
    move-object v9, v10

    move/from16 v13, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_526

    :cond_44b
    const/4 v12, 0x0

    .line 145
    iget v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n0:I

    if-ne v2, v10, :cond_45b

    .line 146
    sget-object v10, Lcom/baidu/input/menutoolapi/data/MenuFunction;->F:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 147
    invoke-static {v10}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    move-result v10

    .line 148
    invoke-static {v2, v10}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f(IS)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_444

    .line 149
    :cond_45b
    iget v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o0:I

    if-ne v2, v10, :cond_4a7

    .line 150
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    move-result-object v10

    invoke-interface {v10}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->e0()Z

    move-result v10

    if-eqz v10, :cond_488

    .line 151
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->d()Z

    move-result v10

    if-eqz v10, :cond_47d

    .line 152
    sget-object v10, Lcom/baidu/input/ime/cand/util/PadCandUtilKt;->a:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    const-string v13, "<get-gameHarmonyOpenIcon>(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/graphics/Bitmap;

    goto :goto_444

    .line 153
    :cond_47d
    sget-object v10, Lcom/baidu/input/menutoolapi/data/MenuFunction;->J:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 154
    invoke-static {v10}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    move-result v10

    .line 155
    invoke-static {v2, v10}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f(IS)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_444

    .line 156
    :cond_488
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->d()Z

    move-result v10

    if-eqz v10, :cond_49c

    .line 157
    sget-object v10, Lcom/baidu/input/ime/cand/util/PadCandUtilKt;->b:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    const-string v13, "<get-gameHarmonyCloseIcon>(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/graphics/Bitmap;

    goto :goto_444

    .line 158
    :cond_49c
    sget-object v10, Lcom/baidu/input/menutoolapi/data/MenuFunction;->K:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 159
    invoke-static {v10}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    move-result v10

    .line 160
    invoke-static {v2, v10}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f(IS)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_444

    .line 161
    :cond_4a7
    invoke-static {v2, v0}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f(IS)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_444

    :cond_4ac
    const/4 v12, 0x0

    .line 162
    iget-object v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d0:Lcom/baidu/pyramid/annotation/component/DefaultHolder;

    invoke-virtual {v10}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/input/panel/render/cand/IThirdServiceManager;

    invoke-interface {v10}, Lcom/baidu/input/panel/render/cand/IThirdServiceManager;->b()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_444

    :cond_4ba
    const/4 v12, 0x0

    .line 163
    iget-object v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 164
    iget-object v10, v10, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 165
    iget-object v10, v10, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v10, v10, Lcom/baidu/input/ime/params/CandLoader;->q:Lcom/baidu/input/ime/params/enumtype/KeymapNameMode;

    const/4 v10, 0x1

    .line 166
    invoke-static {v10, v10}, Lcom/baidu/input/ime/KeyMapSwitcher;->d(IZ)I

    move-result v13

    .line 167
    sget-boolean v23, Lcom/baidu/input/acgfont/FontUtils;->c:Z

    if-nez v23, :cond_4d9

    .line 168
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v11, v23

    check-cast v11, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    invoke-interface {v11, v13}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->e(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4da

    :cond_4d9
    const/4 v11, 0x0

    .line 169
    :goto_4da
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v9, v23

    check-cast v9, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    invoke-interface {v9, v13}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->a(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 170
    invoke-static {v8}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v13

    if-eqz v13, :cond_4f1

    .line 171
    iget-object v13, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 172
    iget v13, v13, Lcom/baidu/input/ime/render/CandRender;->E:I

    goto :goto_526

    :cond_4f1
    move/from16 v13, v18

    goto :goto_526

    :cond_4f4
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 173
    iget-object v9, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 174
    iget-object v9, v9, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 175
    iget-object v9, v9, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget-object v9, v9, Lcom/baidu/input/ime/params/CandLoader;->q:Lcom/baidu/input/ime/params/enumtype/KeymapNameMode;

    .line 176
    invoke-static {v12, v10}, Lcom/baidu/input/ime/KeyMapSwitcher;->d(IZ)I

    move-result v9

    .line 177
    sget-boolean v11, Lcom/baidu/input/acgfont/FontUtils;->c:Z

    if-nez v11, :cond_511

    .line 178
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    invoke-interface {v11, v9}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->e(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_512

    :cond_511
    const/4 v11, 0x0

    .line 179
    :goto_512
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    invoke-interface {v13, v9}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->a(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 180
    invoke-static {v10}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v13

    if-eqz v13, :cond_4f1

    .line 181
    iget-object v13, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 182
    iget v13, v13, Lcom/baidu/input/ime/render/CandRender;->E:I

    :goto_526
    if-eqz v9, :cond_acf

    const/high16 v18, 0x3f800000  # 1.0f

    .line 183
    iget-object v10, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->P:Landroid/graphics/Rect;

    const/16 v8, 0xf0c

    if-ne v0, v8, :cond_57e

    .line 184
    iput v12, v10, Landroid/graphics/Rect;->left:I

    .line 185
    iput v12, v10, Landroid/graphics/Rect;->top:I

    .line 186
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 187
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget-object v5, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 189
    iget-object v5, v5, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 190
    iget-object v5, v5, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    iget v8, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    invoke-virtual {v5, v8}, Lcom/baidu/input/ime/params/CandLoader;->D(I)Lcom/baidu/input/ime/params/IconParam;

    move-result-object v5

    .line 191
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 192
    iget-object v12, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    move-object/from16 v28, v7

    .line 193
    iget-object v7, v12, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    move-object/from16 v29, v3

    .line 194
    iget v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    aget-object v3, v7, v3

    .line 195
    invoke-virtual {v12, v8, v3, v5, v4}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    move-object/from16 v7, v26

    const/4 v3, 0x0

    .line 196
    iput v3, v7, Landroid/graphics/Rect;->left:I

    .line 197
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 198
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 199
    iget v3, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v2

    move-object/from16 v8, v22

    move-object/from16 v22, v4

    goto/16 :goto_6c7

    :cond_57e
    move-object/from16 v29, v3

    move-object/from16 v28, v7

    move-object/from16 v7, v26

    if-eq v2, v5, :cond_588

    if-eqz v1, :cond_58e

    :cond_588
    move-object/from16 v8, v22

    move-object/from16 v22, v4

    goto/16 :goto_63e

    .line 200
    :cond_58e
    invoke-virtual {v6, v13, v0, v2}, Lcom/baidu/input/ime/cand/CandHandler;->D2(ISI)I

    move-result v13

    move-object/from16 v8, v22

    .line 201
    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 202
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 203
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 204
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 205
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 206
    iput v3, v7, Landroid/graphics/Rect;->left:I

    .line 207
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 208
    sget-object v3, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v3

    if-eqz v3, :cond_5c4

    const/16 v3, 0xf01

    if-eq v0, v3, :cond_5c0

    const/16 v3, 0xf02

    if-eq v0, v3, :cond_5c0

    goto :goto_5c4

    :cond_5c0
    const v3, 0x3f2aaaab

    goto :goto_5c6

    :cond_5c4
    :goto_5c4
    move/from16 v3, v18

    .line 209
    :goto_5c6
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->e()Z

    move-result v5

    if-eqz v5, :cond_60b

    .line 210
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/DefLogoIconSource;->c()Lcom/baidu/input/ime/reconstruction/source/DefLogoIconSource;

    move-result-object v5

    .line 211
    iget v5, v5, Lcom/baidu/input/ime/reconstruction/source/DefLogoIconSource;->f:I

    .line 212
    const-class v12, Lcom/baidu/input/cocomodule/panel/IPanel;

    invoke-static {v12}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/input/cocomodule/panel/IPanel;

    invoke-interface/range {v22 .. v22}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    move-result v22

    if-nez v22, :cond_601

    .line 213
    invoke-static {v12}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/input/cocomodule/panel/IPanel;

    invoke-interface {v12}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->h()Z

    move-result v12

    if-eqz v12, :cond_5f5

    goto :goto_601

    :cond_5f5
    if-lez v5, :cond_60b

    const/16 v12, 0x438

    if-ge v5, v12, :cond_60b

    const/high16 v12, 0x44870000  # 1080.0f

    int-to-float v5, v5

    div-float/2addr v12, v5

    mul-float/2addr v3, v12

    goto :goto_60b

    :cond_601
    :goto_601
    if-lez v5, :cond_60b

    const/16 v12, 0x2d0

    if-ge v5, v12, :cond_60b

    const v5, 0x3f99999a  # 1.2f

    mul-float/2addr v3, v5

    .line 214
    :cond_60b
    :goto_60b
    iget v5, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    move-object/from16 v22, v4

    iget v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v12, v4

    float-to-int v4, v12

    add-int/2addr v5, v4

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 215
    iget v4, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v5, v3

    float-to-int v3, v5

    add-int/2addr v4, v3

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 216
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->a()Z

    move-result v3

    if-nez v3, :cond_637

    invoke-static {}, Lcom/baidu/input/ime/pad/FoldUtils;->a()Z

    move-result v3

    if-eqz v3, :cond_63a

    .line 217
    :cond_637
    invoke-virtual {v6, v9, v7}, Lcom/baidu/input/ime/cand/CandHandler;->z2(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_63a
    move/from16 v26, v2

    goto/16 :goto_6c7

    .line 218
    :goto_63e
    invoke-virtual {v6, v13, v0, v2}, Lcom/baidu/input/ime/cand/CandHandler;->D2(ISI)I

    move-result v13

    .line 219
    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 220
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 221
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 222
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 223
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 224
    iput v3, v7, Landroid/graphics/Rect;->left:I

    .line 225
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 226
    sget-object v3, Lcom/baidu/input/menutoolapi/data/MenuFunction;->a:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 227
    invoke-static {v3}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->a(Lcom/baidu/input/menutoolapi/data/MenuFunction;)S

    move-result v3

    invoke-static {v2, v3}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->f(IS)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->Y0()Lcom/baidu/input/ime/params/ImgParam;

    move-result-object v4

    .line 229
    sget-object v5, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v5

    if-eqz v5, :cond_695

    if-eqz v4, :cond_695

    iget-object v4, v4, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_695

    instance-of v4, v1, Lcom/baidu/input/circle/CandCircleInfoCache;

    if-nez v4, :cond_691

    .line 230
    invoke-interface {v1}, Lcom/baidu/input/ime/cand/ICustomIconHandler;->a()Lcom/baidu/input/ime/cand/ICustomIconHandler;

    move-result-object v4

    instance-of v4, v4, Lcom/baidu/input/circle/CandCircleInfoCache;

    if-nez v4, :cond_691

    instance-of v4, v1, Lcom/baidu/input/ime/cand/CandScrmInfoCache;

    if-nez v4, :cond_691

    .line 231
    invoke-interface {v1}, Lcom/baidu/input/ime/cand/ICustomIconHandler;->a()Lcom/baidu/input/ime/cand/ICustomIconHandler;

    move-result-object v4

    instance-of v4, v4, Lcom/baidu/input/ime/cand/CandScrmInfoCache;

    if-eqz v4, :cond_695

    :cond_691
    const v4, 0x3f9d70a4  # 1.23f

    goto :goto_698

    :cond_695
    const v4, 0x3f666666  # 0.9f

    .line 232
    :goto_698
    iget v5, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move/from16 v26, v2

    iget v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v12, v2

    mul-float/2addr v12, v4

    float-to-int v2, v12

    add-int/2addr v5, v2

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 233
    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 234
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->a()Z

    move-result v2

    if-nez v2, :cond_6c4

    invoke-static {}, Lcom/baidu/input/ime/pad/FoldUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_6c7

    .line 235
    :cond_6c4
    invoke-virtual {v6, v9, v7}, Lcom/baidu/input/ime/cand/CandHandler;->z2(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 236
    :cond_6c7
    :goto_6c7
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v12, 0x40000000  # 2.0f

    if-gt v2, v3, :cond_741

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_6e2

    goto :goto_741

    .line 237
    :cond_6e2
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 238
    iget-object v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 239
    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 240
    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 241
    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 242
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 243
    sget-object v3, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v3

    if-eqz v3, :cond_73b

    const/16 v3, 0xf01

    if-ne v0, v3, :cond_727

    const/4 v3, 0x1

    .line 244
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v5

    if-nez v5, :cond_732

    :cond_727
    const/16 v3, 0xf02

    if-ne v0, v3, :cond_73b

    const/4 v3, 0x2

    .line 245
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v5

    if-eqz v5, :cond_73b

    .line 246
    :cond_732
    iget v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    neg-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_73b
    move/from16 v30, v2

    move/from16 v31, v4

    goto/16 :goto_7bc

    .line 247
    :cond_741
    :goto_741
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_78b

    .line 248
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v3, v2

    .line 249
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v7, Landroid/graphics/Rect;->top:I

    .line 250
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 251
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 252
    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 253
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iput v3, v7, Landroid/graphics/Rect;->right:I

    move/from16 v30, v2

    const/16 v31, 0x0

    goto :goto_7bc

    .line 254
    :cond_78b
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v3, v2

    .line 255
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 256
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v7, Landroid/graphics/Rect;->right:I

    .line 257
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 258
    iget-object v3, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, v7, Landroid/graphics/Rect;->top:I

    .line 259
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v2

    const/16 v30, 0x0

    .line 260
    :goto_7bc
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v2

    iget-boolean v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->a:Z

    if-eqz v2, :cond_7d3

    .line 261
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    invoke-static {v0}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    move-result-object v3

    if-ne v2, v3, :cond_7d3

    const/16 v32, 0x1

    goto :goto_7d5

    :cond_7d3
    const/16 v32, 0x0

    :goto_7d5
    const/4 v5, 0x0

    if-eqz v32, :cond_82c

    .line 262
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v2

    .line 263
    iget-object v3, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 264
    iget-object v3, v3, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->c:Landroid/animation/Animator;

    if-eqz v3, :cond_7ef

    .line 265
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_7ef

    .line 266
    iget-object v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 267
    iget-object v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->c:Landroid/animation/Animator;

    .line 268
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 269
    :cond_7ef
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 270
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v2

    .line 271
    iget-object v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 272
    iget v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->a:F

    .line 273
    invoke-virtual {v14, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v2

    .line 275
    iget-object v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 276
    iget v2, v2, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->b:F

    .line 277
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v4

    .line 278
    iget-object v4, v4, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 279
    iget v4, v4, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->d:F

    mul-float/2addr v3, v4

    .line 280
    iget v4, v7, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 281
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/baidu/input/ime/logoanim/CandAnimManger;->b()Lcom/baidu/input/ime/logoanim/CandAnimManger;

    move-result-object v5

    .line 282
    iget-object v5, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger;->c:Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;

    .line 283
    iget v5, v5, Lcom/baidu/input/ime/logoanim/CandAnimManger$AnimationWrapper;->e:F

    mul-float/2addr v4, v5

    .line 284
    iget v5, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 285
    invoke-virtual {v14, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 286
    :cond_82c
    sget-object v2, Lcom/baidu/input/ime/aisearch/AISearchGuideManager;->a:Lcom/baidu/input/ime/aisearch/AISearchGuideManager;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    const-class v34, Lcom/baidu/input/logo/provider/ILogoModule;

    if-eqz v1, :cond_956

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_956

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_956

    .line 289
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    move-result v2

    .line 290
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    move-result-object v3

    .line 291
    iget v3, v3, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    mul-float/2addr v2, v3

    .line 292
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    move-result v3

    mul-float v5, v3, v2

    .line 293
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    move v11, v0

    move-object v0, v1

    move-object v4, v1

    move-object/from16 v1, p1

    move/from16 v3, v26

    move v12, v3

    move-object v3, v8

    move-object/from16 v35, v9

    move-object v9, v4

    move v4, v13

    move/from16 v33, v13

    const/4 v13, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/input/ime/cand/ICustomIconHandler;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/text/TextPaint;IF)V

    .line 294
    instance-of v0, v9, Lcom/baidu/input/ime/cand/CandScrmInfoCache;

    if-eqz v0, :cond_8f6

    .line 295
    move-object v0, v9

    check-cast v0, Lcom/baidu/input/ime/cand/CandScrmInfoCache;

    .line 296
    iget-object v0, v0, Lcom/baidu/input/ime/cand/CandScrmInfoCache;->a:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    move-result v1

    if-gez v1, :cond_87a

    const/4 v1, 0x0

    goto :goto_87b

    :cond_87a
    const/4 v1, 0x1

    .line 297
    :goto_87b
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->b()Lcom/baidu/input/pocketdocs/impl/repo/PocketNotiManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    iget-object v2, v2, Lcom/baidu/input/pocketdocs/impl/repo/PocketNotiManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a5

    .line 299
    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v2, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/NotiEntity;

    iput v12, v2, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/NotiEntity;->candIndex:I

    .line 300
    :cond_8a5
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    move-result-object v2

    .line 301
    iget-object v2, v2, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->h:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    if-eqz v2, :cond_8bb

    .line 302
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    move-result-object v2

    .line 303
    iget-object v2, v2, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->h:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    if-eqz v2, :cond_8bb

    .line 304
    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    invoke-virtual {v2}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    .line 305
    :cond_8bb
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->g()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseShowingHelper;

    move-result-object v2

    .line 306
    iput v12, v2, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseShowingHelper;->a:I

    .line 307
    iget-object v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move/from16 v5, v27

    if-ge v3, v5, :cond_8d6

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v2, v15, :cond_8ce

    goto :goto_8d6

    .line 308
    :cond_8ce
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->g()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseShowingHelper;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8dd

    .line 310
    :cond_8d6
    :goto_8d6
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->g()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseShowingHelper;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    :goto_8dd
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getIsSuperAdmin()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "enterprise.isSuperAdmin"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_91c

    .line 314
    iput v12, v2, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->j:I

    goto :goto_91c

    :cond_8f6
    move/from16 v5, v27

    .line 315
    instance-of v0, v9, Lcom/baidu/input/ime/cand/DistributionIconHandler;

    if-eqz v0, :cond_91b

    .line 316
    :try_start_8fc
    move-object v0, v9

    check-cast v0, Lcom/baidu/input/ime/cand/DistributionIconHandler;

    .line 317
    iget-object v0, v0, Lcom/baidu/input/ime/cand/DistributionIconHandler;->a:Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 318
    invoke-virtual {v0}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->c()I

    move-result v0

    .line 319
    iget-object v1, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v5, :cond_911

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v1, v15, :cond_911

    const/4 v1, 0x1

    goto :goto_912

    :cond_911
    const/4 v1, 0x0

    .line 320
    :goto_912
    invoke-static/range {v34 .. v34}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/input/logo/provider/ILogoModule;

    .line 321
    invoke-interface {v2, v0, v1}, Lcom/baidu/input/logo/provider/ILogoModule;->Qc(IZ)V
    :try_end_91b
    .catch Ljava/lang/Exception; {:try_start_8fc .. :try_end_91b} :catch_91b

    :catch_91b
    :cond_91b
    const/4 v1, 0x1

    .line 322
    :cond_91c
    :goto_91c
    invoke-static {v11}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->a(S)Z

    move-result v0

    if-nez v0, :cond_92a

    invoke-static {v11}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->d(S)Z

    move-result v0

    if-eqz v0, :cond_951

    if-eqz v1, :cond_951

    .line 323
    :cond_92a
    sget-object v0, Lcom/baidu/input/ime/editor/popupdelegate/CircleEntranceHintDelegate;->r0:Lcom/baidu/input/ime/editor/popupdelegate/CircleEntranceHintDelegate$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    sget-object v0, Lcom/baidu/input/manager/PreferenceManager;->c:Lcom/baidu/input/common/storage/sp/IPreference;

    const-string v1, "pref_circle_cand_entrance_hint_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_951

    .line 325
    const-string v1, "pref_key_show_circle_icon_on_cand"

    invoke-interface {v0, v1, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_943

    goto :goto_951

    .line 326
    :cond_943
    invoke-static {}, Lcom/baidu/input/common/rx/RxUtils;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/baidu/w;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lcom/baidu/w;-><init>(I)V

    .line 327
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_951
    :goto_951
    move v3, v11

    :goto_952
    move-object/from16 v9, v35

    goto/16 :goto_9ec

    :cond_956
    move v3, v0

    move-object/from16 v35, v9

    move/from16 v33, v13

    move/from16 v12, v26

    move/from16 v5, v27

    const/4 v13, 0x0

    const/16 v20, 0x0

    .line 328
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a4

    .line 329
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 330
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 331
    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 332
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 333
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 334
    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v9, 0x1

    shr-int/2addr v4, v9

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 335
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 336
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    iget v13, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v4, v13, v4

    const/high16 v26, 0x40000000  # 2.0f

    div-float v4, v4, v26

    add-float/2addr v4, v9

    sub-float/2addr v4, v13

    .line 337
    invoke-virtual {v14, v11, v2, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 338
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_952

    :cond_9a4
    move-object/from16 v9, v35

    .line 340
    invoke-virtual {v14, v9, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    move-result-object v0

    .line 342
    instance-of v1, v0, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    if-eqz v1, :cond_9ec

    .line 343
    move-object v1, v0

    check-cast v1, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 344
    iget-object v2, v1, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    if-eqz v2, :cond_9ec

    .line 345
    check-cast v0, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 346
    iget v0, v0, Lcom/baidu/input/menutoolapi/data/MenuIcon;->i:I

    if-lez v0, :cond_9ec

    .line 347
    invoke-static/range {v34 .. v34}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/input/logo/provider/ILogoModule;

    .line 348
    iget-object v1, v1, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 349
    invoke-interface {v0, v1}, Lcom/baidu/input/logo/provider/ILogoModule;->Td(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Z

    move-result v0

    if-eqz v0, :cond_9ec

    .line 350
    invoke-static/range {v34 .. v34}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/input/logo/provider/ILogoModule;

    .line 351
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    move-result v1

    .line 352
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    move-result-object v2

    .line 353
    iget v2, v2, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    mul-float/2addr v1, v2

    .line 354
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    move-result v2

    mul-float/2addr v2, v1

    .line 355
    invoke-interface {v0, v14, v7, v2}, Lcom/baidu/input/logo/provider/ILogoModule;->P8(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    :cond_9ec
    :goto_9ec
    if-eqz v32, :cond_9f1

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 357
    :cond_9f1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 358
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    const/16 v0, 0xf01

    if-ne v3, v0, :cond_a01

    const/4 v0, 0x1

    .line 359
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v1

    if-nez v1, :cond_a0c

    :cond_a01
    const/16 v0, 0xf02

    if-ne v3, v0, :cond_ab1

    const/4 v0, 0x2

    .line 360
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    move-result v1

    if-eqz v1, :cond_ab1

    .line 361
    :cond_a0c
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 362
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/pyramid/annotation/component/DefaultHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/baidu/input/panel/render/cand/ICandMenuIconPresenter;->f(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a1f

    goto/16 :goto_ab1

    .line 363
    :cond_a1f
    sget-object v2, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v2

    if-eqz v2, :cond_a37

    const v18, 0x3ee8ba2f

    const v2, 0x3f155555

    move/from16 v36, v18

    move/from16 v18, v2

    move/from16 v2, v36

    goto :goto_a39

    :cond_a37
    move/from16 v2, v18

    .line 364
    :goto_a39
    iput v15, v10, Landroid/graphics/Rect;->left:I

    move/from16 v7, p3

    .line 365
    iput v7, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v15

    .line 366
    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 367
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    iget v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v7

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 368
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v11, 0x2

    div-int/2addr v4, v11

    sub-int/2addr v0, v4

    .line 369
    sget v4, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 370
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v13

    if-eqz v13, :cond_a66

    goto :goto_a68

    :cond_a66
    move/from16 v20, v4

    .line 371
    :goto_a68
    iget-object v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 372
    invoke-static {v11, v4, v10}, Lcom/baidu/oa;->c(IILandroid/graphics/Rect;)I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v20

    float-to-int v4, v4

    .line 373
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 374
    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 375
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v4, v0

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 376
    iget v0, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    iget v4, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 377
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_aa9

    .line 378
    iget v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_aaa

    :cond_aa9
    const/4 v11, 0x0

    .line 379
    :goto_aaa
    iget-object v0, v6, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_ab4

    :cond_ab1
    :goto_ab1
    move/from16 v7, p3

    const/4 v11, 0x0

    .line 380
    :goto_ab4
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->a()Lcom/baidu/input/di/ImeBuildConfig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v4, v30

    move v9, v5

    move/from16 v5, v31

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/cand/CandHandler;->Z2(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;SII)V

    const/4 v0, 0x0

    .line 382
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move/from16 v13, v33

    goto :goto_ade

    :cond_acf
    move-object/from16 v28, v7

    move v11, v12

    move/from16 v18, v13

    move-object/from16 v8, v22

    move/from16 v9, v27

    const/4 v0, 0x0

    move/from16 v7, p3

    move v12, v2

    move-object/from16 v22, v4

    .line 383
    :goto_ade
    iget-object v1, v6, Lcom/baidu/input/ime/cand/CandHandler;->A1:Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;

    .line 384
    sget-object v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    sget-object v2, Lcom/baidu/input/pub/ImeBaseGlobal;->a:Ljava/lang/String;

    .line 386
    iget-object v1, v1, Lcom/baidu/input/ime/cand/CandHandler$CandHandlerInner;->d:Lcom/baidu/input/ime/cand/CandHandler;

    iget-object v2, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 387
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->h()I

    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 388
    sget-object v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 389
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v18, v13

    const/4 v1, 0x1

    :goto_b02
    add-int/lit8 v10, v12, 0x1

    move-object v5, v0

    move v0, v1

    move v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v11, v19

    move-object/from16 v13, v21

    move-object/from16 v4, v22

    move-object/from16 v12, v28

    goto/16 :goto_101

    .line 391
    :cond_b13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final k1()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/icons/CandIconSettings;->a:Lcom/baidu/input/ime/cand/icons/CandIconSettings;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/baidu/input/aicard/IAICard;

    .line 8
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/baidu/input/aicard/IAICard;

    .line 14
    invoke-interface {v0}, Lcom/baidu/input/aicard/IAICard;->kc()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1b

    .line 20
    invoke-static {}, Lcom/baidu/input/pub/Global;->T()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    return v0
.end method

.method public m()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1e

    .line 8
    invoke-static {}, Lcom/baidu/input/ime/newcore/operator/CalculatorHandler;->a()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1d

    .line 14
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandHandler;->O1()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1d

    .line 20
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 22
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getSmartPredictor()Lcom/baidu/input/ime/SmartPredictorBase;

    .line 25
    move-result-object v0

    .line 26
    iget-boolean v0, v0, Lcom/baidu/input/ime/SmartPredictorBase;->e:Z

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    :cond_1d
    return v1

    .line 31
    :cond_1e
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 33
    if-eqz v0, :cond_31

    .line 35
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->S:Lcom/baidu/input/ime/voicerecognize/VoiceKeyModeStateManager;

    .line 37
    if-eqz v0, :cond_31

    .line 39
    iget-object v0, v0, Lcom/baidu/input/ime/voicerecognize/VoiceKeyModeStateManager;->d:Ljava/lang/Object;

    .line 41
    if-eqz v0, :cond_31

    .line 43
    invoke-interface {v0}, Lcom/baidu/input/ime/cand/ICandRenderMods;->d()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method public final n(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n(Landroid/graphics/Canvas;)V

    .line 4
    invoke-static {}, Lcom/baidu/input/panel/util/CoreAutomatedTestUtilKt;->a()Z

    .line 7
    invoke-static {}, Lcom/baidu/input/panel/util/CoreAutomatedTestUtilKt;->a()Z

    .line 10
    return-void
.end method

.method public final n0(Landroid/graphics/Canvas;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move-object/from16 v9, p2

    .line 7
    move-object/from16 v10, p3

    .line 9
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 11
    iget-object v11, v1, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    .line 13
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 16
    move-result-object v1

    .line 17
    iget-boolean v1, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->h:Z

    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x0

    .line 21
    if-nez v1, :cond_21

    .line 23
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 26
    move-result-object v1

    .line 27
    iget-boolean v1, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->i:Z

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    move v1, v13

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    move v1, v12

    .line 35
    :goto_22
    sget-object v2, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/baidu/input/flavor/FlavorMacroDependencies;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/baidu/input/oem/OemChannel;->c()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_42

    .line 55
    sget-object v2, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const/16 v2, 0x1f

    .line 62
    invoke-static {v2}, Lcom/baidu/input/ime/InputEventHandler;->R(I)Z

    .line 65
    move-result v2

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v2, v13

    .line 68
    :goto_43
    if-eqz v2, :cond_5f

    .line 70
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 72
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 74
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 76
    aget-object v5, v11, v2

    .line 78
    sget-object v7, Lcom/baidu/input/ime/params/enumtype/FacadeState;->d:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 80
    move-object/from16 v2, p1

    .line 82
    move-object v3, v4

    .line 83
    move-object/from16 v6, p2

    .line 85
    invoke-virtual/range {v1 .. v7}, Lcom/baidu/input/ime/render/CandRender;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V

    .line 88
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 90
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 92
    iput v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 94
    goto/16 :goto_4fb

    .line 96
    :cond_5f
    sget-object v2, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->a:Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {}, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->h()Z

    .line 104
    move-result v2

    .line 105
    sget-object v14, Lcom/baidu/input/ime/params/enumtype/FacadeState;->b:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 107
    const/4 v15, 0x0

    .line 108
    if-eqz v2, :cond_24d

    .line 110
    if-eqz v1, :cond_7e

    .line 112
    invoke-static {}, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->h()Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_7b

    .line 118
    sget-boolean v1, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->i:Z

    .line 120
    if-eqz v1, :cond_7b

    .line 122
    move v1, v12

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move v1, v13

    .line 125
    :goto_7c
    if-eqz v1, :cond_24d

    .line 127
    :cond_7e
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 129
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 131
    if-eqz v1, :cond_a1

    .line 133
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 135
    if-eqz v1, :cond_a1

    .line 137
    if-ne v10, v14, :cond_a1

    .line 139
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandLoader;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 141
    invoke-static {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_a1

    .line 147
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 149
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 151
    aget-object v4, v11, v2

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    move-object/from16 v2, p1

    .line 157
    move-object/from16 v5, p3

    .line 159
    invoke-virtual/range {v1 .. v7}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 162
    :cond_a1
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 164
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 166
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 168
    aget-object v3, v11, v3

    .line 170
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 173
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 175
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 177
    iput v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 179
    if-ne v10, v14, :cond_b6

    .line 181
    move v2, v12

    .line 182
    goto :goto_b7

    .line 183
    :cond_b6
    move v2, v13

    .line 184
    :goto_b7
    const-string v3, "canvas"

    .line 186
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v3, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    sget-object v4, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->c:Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;

    .line 193
    sget-boolean v5, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->i:Z

    .line 195
    if-nez v5, :cond_184

    .line 197
    sget-boolean v5, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->h:Z

    .line 199
    if-eqz v5, :cond_184

    .line 201
    sput-boolean v12, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->j:Z

    .line 203
    sput-boolean v12, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->i:Z

    .line 205
    if-eqz v4, :cond_184

    .line 207
    const-class v5, Lcom/baidu/stats/impl/StreamStats;

    .line 209
    invoke-static {v5}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/baidu/stats/impl/StreamStats;

    .line 215
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;->f()J

    .line 218
    move-result-wide v6

    .line 219
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    move-result-object v6

    .line 223
    const-string v7, "BISParamConfigID"

    .line 225
    invoke-static {v6, v7}, Lcom/baidu/l5;->s(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/Map;

    .line 228
    move-result-object v6

    .line 229
    const-string v7, "BIEElementBearIconDistribution"

    .line 231
    const-string v9, "BIEPageToolBar"

    .line 233
    const-string v10, "BISEventDisplay"

    .line 235
    invoke-virtual {v5, v9, v10, v7, v6}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    sget-object v5, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->e:Ljava/util/Map;

    .line 240
    if-eqz v5, :cond_100

    .line 242
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;->f()J

    .line 245
    move-result-wide v6

    .line 246
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    move-result-object v6

    .line 250
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;

    .line 256
    goto :goto_101

    .line 257
    :cond_100
    move-object v5, v15

    .line 258
    :goto_101
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 260
    const-string v7, "yyyy-MM-dd"

    .line 262
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 264
    invoke-direct {v6, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 267
    new-instance v7, Ljava/util/Date;

    .line 269
    invoke-static {}, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->e()J

    .line 272
    move-result-wide v9

    .line 273
    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 276
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    const-string v7, ":1"

    .line 282
    if-nez v5, :cond_13b

    .line 284
    sget-object v5, Lcom/baidu/input/ime/cand/bearicon/BearIconDistributionManager;->e:Ljava/util/Map;

    .line 286
    if-eqz v5, :cond_184

    .line 288
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;->f()J

    .line 291
    move-result-wide v9

    .line 292
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    move-result-object v9

    .line 296
    new-instance v10, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;

    .line 298
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;->f()J

    .line 301
    move-result-wide v11

    .line 302
    invoke-static {v6, v7}, Lcom/baidu/l5;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    move-result-object v6

    .line 306
    invoke-direct {v10, v11, v12, v6}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;-><init>(JLjava/lang/String;)V

    .line 309
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-result-object v5

    .line 313
    check-cast v5, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;

    .line 315
    goto :goto_184

    .line 316
    :cond_13b
    invoke-virtual {v5}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->c()I

    .line 319
    move-result v9

    .line 320
    add-int/2addr v9, v12

    .line 321
    invoke-virtual {v5, v9}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->f(I)V

    .line 324
    invoke-virtual {v5}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->a()Ljava/lang/String;

    .line 327
    move-result-object v9

    .line 328
    const-string v10, "today"

    .line 330
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-static {v9, v6, v13}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_17d

    .line 339
    const/16 v7, 0x3a

    .line 341
    invoke-static {v6, v7}, Lcom/baidu/ft;->r(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    .line 344
    move-result-object v6

    .line 345
    invoke-virtual {v5}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->a()Ljava/lang/String;

    .line 348
    move-result-object v7

    .line 349
    const-string v9, ":"

    .line 351
    filled-new-array {v9}, [Ljava/lang/String;

    .line 354
    move-result-object v9

    .line 355
    const/4 v10, 0x6

    .line 356
    invoke-static {v7, v9, v13, v10}, Lkotlin/text/StringsKt;->P(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    .line 359
    move-result-object v7

    .line 360
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object v7

    .line 364
    check-cast v7, Ljava/lang/String;

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 369
    move-result v7

    .line 370
    add-int/2addr v7, v12

    .line 371
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v5, v6}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->d(Ljava/lang/String;)V

    .line 381
    goto :goto_184

    .line 382
    :cond_17d
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v5, v6}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfDisplayRecord;->d(Ljava/lang/String;)V

    .line 389
    :cond_184
    :goto_184
    if-eqz v4, :cond_245

    .line 391
    if-eqz v3, :cond_245

    .line 393
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 400
    move-result v5

    .line 401
    if-nez v5, :cond_245

    .line 403
    const/16 v5, 0x18

    .line 405
    int-to-float v5, v5

    .line 406
    sget v6, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 408
    mul-float/2addr v5, v6

    .line 409
    float-to-int v5, v5

    .line 410
    invoke-static {}, Lcom/baidu/input/pub/Global;->r()I

    .line 413
    move-result v6

    .line 414
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 417
    move-result v5

    .line 418
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 423
    move-result v7

    .line 424
    div-int/lit8 v5, v5, 0x2

    .line 426
    sub-int/2addr v7, v5

    .line 427
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 429
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 432
    move-result v10

    .line 433
    add-int/2addr v10, v5

    .line 434
    invoke-virtual {v1, v6, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 440
    move-result v5

    .line 441
    if-lez v5, :cond_1ce

    .line 443
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 446
    move-result-object v5

    .line 447
    if-eqz v5, :cond_1ce

    .line 449
    if-eqz v2, :cond_1c9

    .line 451
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 454
    move-result-object v2

    .line 455
    iget v2, v2, Lcom/baidu/input/ime/params/ThemeLoader;->z:I

    .line 457
    goto :goto_210

    .line 458
    :cond_1c9
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 461
    move-result v2

    .line 462
    goto :goto_210

    .line 463
    :cond_1ce
    if-eqz v2, :cond_20c

    .line 465
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 468
    move-result v2

    .line 469
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 471
    invoke-virtual {v5}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 474
    move-result-object v5

    .line 475
    if-eqz v5, :cond_210

    .line 477
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 479
    invoke-virtual {v5}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 482
    move-result-object v5

    .line 483
    invoke-interface {v5}, Lcom/baidu/input/CandViewWrapper;->g()Lcom/baidu/input/CandHandlerWrapper;

    .line 486
    move-result-object v5

    .line 487
    if-eqz v5, :cond_210

    .line 489
    invoke-interface {v5}, Lcom/baidu/input/CandHandlerWrapper;->e0()Lcom/baidu/input/ime/params/CandParam;

    .line 492
    move-result-object v6

    .line 493
    if-eqz v6, :cond_210

    .line 495
    invoke-interface {v5}, Lcom/baidu/input/CandHandlerWrapper;->e0()Lcom/baidu/input/ime/params/CandParam;

    .line 498
    move-result-object v6

    .line 499
    iget-object v6, v6, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 501
    if-eqz v6, :cond_210

    .line 503
    invoke-interface {v5}, Lcom/baidu/input/CandHandlerWrapper;->e0()Lcom/baidu/input/ime/params/CandParam;

    .line 506
    move-result-object v2

    .line 507
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 509
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandLoader;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 511
    invoke-static {v2}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 514
    move-result-object v2

    .line 515
    if-eqz v2, :cond_207

    .line 517
    iget v2, v2, Lcom/baidu/input/ime/params/StyleParam;->h:I

    .line 519
    goto :goto_210

    .line 520
    :cond_207
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getSelectedColor()I

    .line 523
    move-result v2

    .line 524
    goto :goto_210

    .line 525
    :cond_20c
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 528
    move-result v2

    .line 529
    :cond_210
    :goto_210
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    .line 536
    move-result v5

    .line 537
    if-eq v5, v2, :cond_23c

    .line 539
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/bearicon/model/BearIconDistributionConfig;->l()I

    .line 542
    move-result v4

    .line 543
    if-nez v4, :cond_22d

    .line 545
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 548
    move-result-object v2

    .line 549
    const/high16 v4, -0x1000000

    .line 551
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    invoke-virtual {v3, v15}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 557
    goto :goto_23c

    .line 558
    :cond_22d
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    new-instance v4, Landroid/graphics/LightingColorFilter;

    .line 567
    invoke-direct {v4, v13, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 570
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 573
    :cond_23c
    :goto_23c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 576
    invoke-static {v8, v3, v1}, Lcom/baidu/input/ime/editor/popupdelegate/guide/GuideUtils;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 582
    :cond_245
    sget-boolean v1, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 584
    if-eqz v1, :cond_4fb

    .line 586
    sput-boolean v13, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 588
    goto/16 :goto_4fb

    .line 590
    :cond_24d
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 593
    move-result-object v1

    .line 594
    iget-boolean v1, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->e:Z

    .line 596
    if-eqz v1, :cond_32d

    .line 598
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 600
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 602
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 604
    aget-object v4, v11, v2

    .line 606
    move-object/from16 v2, p1

    .line 608
    move-object/from16 v5, p2

    .line 610
    move-object/from16 v6, p3

    .line 612
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/render/CandRender;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V

    .line 615
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 617
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 619
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 621
    aget-object v3, v11, v3

    .line 623
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 626
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 628
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 630
    iput v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 632
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v1}, Lcom/baidu/skinrender/SkinRenderStatus;->h()Z

    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_2bf

    .line 642
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 644
    if-nez v1, :cond_28e

    .line 646
    sput-boolean v12, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 648
    new-instance v1, Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 650
    invoke-direct {v1}, Lcom/baidu/input/ime/cand/SceneCandHandler;-><init>()V

    .line 653
    iput-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 655
    :cond_28e
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 657
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 660
    move-result v1

    .line 661
    if-nez v1, :cond_4fb

    .line 663
    iget-object v1, v9, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 665
    if-nez v1, :cond_29c

    .line 667
    move-object v1, v15

    .line 668
    goto :goto_2a0

    .line 669
    :cond_29c
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 672
    move-result-object v1

    .line 673
    :goto_2a0
    if-eqz v1, :cond_4fb

    .line 675
    invoke-virtual {v1, v10}, Lcom/baidu/input/ime/params/StyleParam;->p(Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 678
    move-result-object v1

    .line 679
    if-nez v1, :cond_2a9

    .line 681
    goto :goto_2ad

    .line 682
    :cond_2a9
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 685
    move-result-object v15

    .line 686
    :goto_2ad
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 688
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 690
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 692
    invoke-virtual {v1, v2, v8, v3, v15}, Lcom/baidu/input/ime/cand/SceneCandHandler;->a(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/text/TextPaint;Lcom/baidu/input/ime/params/ImgParam;)V

    .line 695
    sget-object v1, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 697
    const/16 v2, 0xa96

    .line 699
    invoke-virtual {v1, v2, v12}, Lcom/baidu/input/pub/Option;->v(IZ)V

    .line 702
    goto/16 :goto_4fb

    .line 704
    :cond_2bf
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 707
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 710
    move-result-object v1

    .line 711
    iget-object v2, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->m:Landroid/animation/ValueAnimator;

    .line 713
    if-eqz v2, :cond_2d2

    .line 715
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 718
    move-result v2

    .line 719
    if-eqz v2, :cond_2d2

    .line 721
    :goto_2d0
    move v1, v12

    .line 722
    goto :goto_2de

    .line 723
    :cond_2d2
    iget-object v1, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->q:Landroid/animation/ValueAnimator;

    .line 725
    if-eqz v1, :cond_2dd

    .line 727
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_2dd

    .line 733
    goto :goto_2d0

    .line 734
    :cond_2dd
    move v1, v13

    .line 735
    :goto_2de
    if-nez v1, :cond_2f1

    .line 737
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 740
    move-result-object v1

    .line 741
    new-instance v2, Lcom/baidu/input/ime/cand/CandHandler$2;

    .line 743
    invoke-direct {v2, v0}, Lcom/baidu/input/ime/cand/CandHandler$2;-><init>(Lcom/baidu/input/ime/cand/CandHandler;)V

    .line 746
    new-instance v3, Lcom/baidu/input/ime/cand/CandHandler$3;

    .line 748
    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 751
    invoke-virtual {v1, v2, v3}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->o(Lcom/baidu/input/ime/logoanim/LogoAnimManager$OnLogoAnimUpdateListener;Landroid/animation/AnimatorListenerAdapter;)V

    .line 754
    :cond_2f1
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->B1:[I

    .line 756
    aget v2, v1, v13

    .line 758
    int-to-float v2, v2

    .line 759
    aget v1, v1, v12

    .line 761
    int-to-float v1, v1

    .line 762
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 765
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->C1:[F

    .line 767
    aget v1, v1, v13

    .line 769
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 772
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->D1:[F

    .line 774
    aget v1, v1, v13

    .line 776
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 778
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 781
    move-result v2

    .line 782
    int-to-float v2, v2

    .line 783
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 785
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 787
    int-to-float v3, v3

    .line 788
    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 791
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 793
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 795
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 797
    aget-object v5, v11, v2

    .line 799
    move-object/from16 v2, p1

    .line 801
    move-object v3, v4

    .line 802
    move-object/from16 v6, p2

    .line 804
    move-object/from16 v7, p3

    .line 806
    invoke-virtual/range {v1 .. v7}, Lcom/baidu/input/ime/render/CandRender;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    goto/16 :goto_4fb

    .line 814
    :cond_32d
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->N2()Z

    .line 817
    move-result v1

    .line 818
    if-eqz v1, :cond_382

    .line 820
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 822
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 824
    if-eqz v1, :cond_356

    .line 826
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 828
    if-eqz v1, :cond_356

    .line 830
    if-ne v10, v14, :cond_356

    .line 832
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandLoader;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 834
    invoke-static {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 837
    move-result-object v1

    .line 838
    if-eqz v1, :cond_356

    .line 840
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 842
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 844
    aget-object v4, v11, v2

    .line 846
    const/4 v7, 0x0

    .line 847
    const/4 v6, 0x0

    .line 848
    move-object/from16 v2, p1

    .line 850
    move-object/from16 v5, p3

    .line 852
    invoke-virtual/range {v1 .. v7}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 855
    :cond_356
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 857
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 859
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 861
    aget-object v3, v11, v3

    .line 863
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 866
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 868
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 870
    iput v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 872
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 875
    move-result v1

    .line 876
    if-nez v1, :cond_37a

    .line 878
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 881
    move-result-object v1

    .line 882
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 884
    if-ne v10, v14, :cond_376

    .line 886
    goto :goto_377

    .line 887
    :cond_376
    move v12, v13

    .line 888
    :goto_377
    invoke-virtual {v1, v8, v2, v12}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 891
    :cond_37a
    sget-boolean v1, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 893
    if-eqz v1, :cond_4fb

    .line 895
    sput-boolean v13, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 897
    goto/16 :goto_4fb

    .line 899
    :cond_382
    sget-boolean v1, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 901
    if-eqz v1, :cond_3e5

    .line 903
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 906
    move-result-object v1

    .line 907
    invoke-virtual {v1}, Lcom/baidu/skinrender/SkinRenderStatus;->h()Z

    .line 910
    move-result v1

    .line 911
    if-eqz v1, :cond_3e5

    .line 913
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 915
    if-nez v1, :cond_39b

    .line 917
    new-instance v1, Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 919
    invoke-direct {v1}, Lcom/baidu/input/ime/cand/SceneCandHandler;-><init>()V

    .line 922
    iput-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 924
    :cond_39b
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 926
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 928
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 930
    aget-object v4, v11, v2

    .line 932
    move-object/from16 v2, p1

    .line 934
    move-object/from16 v5, p2

    .line 936
    move-object/from16 v6, p3

    .line 938
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/render/CandRender;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V

    .line 941
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 943
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 945
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 947
    aget-object v3, v11, v3

    .line 949
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 952
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 954
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 956
    iput v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 958
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 961
    move-result v1

    .line 962
    if-nez v1, :cond_4fb

    .line 964
    iget-object v1, v9, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 966
    if-nez v1, :cond_3c9

    .line 968
    move-object v1, v15

    .line 969
    goto :goto_3cd

    .line 970
    :cond_3c9
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 973
    move-result-object v1

    .line 974
    :goto_3cd
    if-eqz v1, :cond_4fb

    .line 976
    invoke-virtual {v1, v10}, Lcom/baidu/input/ime/params/StyleParam;->p(Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 979
    move-result-object v1

    .line 980
    if-nez v1, :cond_3d6

    .line 982
    goto :goto_3da

    .line 983
    :cond_3d6
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 986
    move-result-object v15

    .line 987
    :goto_3da
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 989
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 991
    iget-object v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 993
    invoke-virtual {v1, v2, v8, v3, v15}, Lcom/baidu/input/ime/cand/SceneCandHandler;->a(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/text/TextPaint;Lcom/baidu/input/ime/params/ImgParam;)V

    .line 996
    goto/16 :goto_4fb

    .line 998
    :cond_3e5
    sget-boolean v1, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 1000
    if-nez v1, :cond_40e

    .line 1002
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 1004
    if-eqz v1, :cond_40e

    .line 1006
    iput-boolean v13, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->a:Z

    .line 1008
    iget-object v2, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->b:Landroid/graphics/Bitmap;

    .line 1010
    if-eqz v2, :cond_400

    .line 1012
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1015
    move-result v2

    .line 1016
    if-nez v2, :cond_400

    .line 1018
    iget-object v2, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->b:Landroid/graphics/Bitmap;

    .line 1020
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1023
    iput-object v15, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->b:Landroid/graphics/Bitmap;

    .line 1025
    :cond_400
    iget-object v2, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->c:Landroid/graphics/Bitmap;

    .line 1027
    if-eqz v2, :cond_40c

    .line 1029
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1032
    move-result v2

    .line 1033
    if-nez v2, :cond_40c

    .line 1035
    iput-object v15, v1, Lcom/baidu/input/ime/cand/SceneCandHandler;->c:Landroid/graphics/Bitmap;

    .line 1037
    :cond_40c
    iput-object v15, v0, Lcom/baidu/input/ime/cand/CandHandler;->y1:Lcom/baidu/input/ime/cand/SceneCandHandler;

    .line 1039
    :cond_40e
    sget-object v1, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a:Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;

    .line 1041
    iget-boolean v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 1043
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    sput-boolean v2, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->b:Z

    .line 1048
    invoke-static {}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSourceManager;->a()Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;

    .line 1051
    move-result-object v1

    .line 1052
    new-instance v2, Landroid/util/Pair;

    .line 1054
    sget-object v3, Lcom/baidu/input/ime/params/enumtype/CandIconFunction;->a:Lcom/baidu/input/ime/params/enumtype/CandIconFunction;

    .line 1056
    const/4 v4, -0x1

    .line 1057
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1060
    move-result-object v4

    .line 1061
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1064
    invoke-virtual {v1, v2}, Lcom/baidu/input/ime/reconstruction/source/SkinCandIconSource;->b(Landroid/util/Pair;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 1067
    move-result-object v1

    .line 1068
    if-eqz v1, :cond_42f

    .line 1070
    iput-object v1, v9, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 1072
    :cond_42f
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1074
    iget-object v4, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 1076
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1078
    aget-object v5, v11, v2

    .line 1080
    move-object/from16 v2, p1

    .line 1082
    move-object v3, v4

    .line 1083
    move-object/from16 v6, p2

    .line 1085
    move-object/from16 v7, p3

    .line 1087
    invoke-virtual/range {v1 .. v7}, Lcom/baidu/input/ime/render/CandRender;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)V

    .line 1090
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1092
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1094
    iput v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->X:I

    .line 1096
    iget-boolean v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->j0:Z

    .line 1098
    if-nez v1, :cond_4fb

    .line 1100
    iget v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1102
    aget-object v1, v11, v1

    .line 1104
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1106
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->F2()F

    .line 1109
    move-result v1

    .line 1110
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 1113
    move-result-object v2

    .line 1114
    iget v2, v2, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 1116
    mul-float/2addr v1, v2

    .line 1117
    invoke-static {}, Lcom/baidu/input/ime/cand/CandHandler;->H2()F

    .line 1120
    move-result v2

    .line 1121
    mul-float v6, v2, v1

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->O2()Z

    .line 1126
    move-result v1

    .line 1127
    if-eqz v1, :cond_488

    .line 1129
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1131
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1133
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1135
    aget-object v3, v11, v3

    .line 1137
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 1140
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1143
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 1146
    move-result-object v1

    .line 1147
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1149
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1151
    aget-object v3, v11, v3

    .line 1153
    invoke-virtual {v1, v8, v2, v3}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->p(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1156
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1159
    goto/16 :goto_4fb

    .line 1161
    :cond_488
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->P2()Z

    .line 1164
    move-result v1

    .line 1165
    if-eqz v1, :cond_4ae

    .line 1167
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1169
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1171
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1173
    aget-object v3, v11, v3

    .line 1175
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 1178
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1180
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1183
    move-result v1

    .line 1184
    if-nez v1, :cond_4fb

    .line 1186
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 1189
    move-result-object v1

    .line 1190
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1192
    const/4 v4, 0x1

    .line 1193
    move-object/from16 v3, p1

    .line 1195
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 1198
    goto :goto_4fb

    .line 1199
    :cond_4ae
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 1202
    move-result-object v1

    .line 1203
    iget-boolean v1, v1, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->i:Z

    .line 1205
    if-eqz v1, :cond_4d6

    .line 1207
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1209
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1211
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1213
    aget-object v3, v11, v3

    .line 1215
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 1218
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1220
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1223
    move-result v1

    .line 1224
    if-nez v1, :cond_4fb

    .line 1226
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 1229
    move-result-object v1

    .line 1230
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1232
    const/4 v4, 0x2

    .line 1233
    move-object/from16 v3, p1

    .line 1235
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 1238
    goto :goto_4fb

    .line 1239
    :cond_4d6
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandHandler;->Q2()Z

    .line 1242
    move-result v1

    .line 1243
    if-eqz v1, :cond_4fb

    .line 1245
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1247
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1249
    iget v3, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 1251
    aget-object v3, v11, v3

    .line 1253
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/baidu/input/ime/render/CandRender;->r(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/IconParam;Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/StyleParam;

    .line 1256
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1258
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1261
    move-result v1

    .line 1262
    if-nez v1, :cond_4fb

    .line 1264
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 1267
    move-result-object v1

    .line 1268
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 1270
    const/4 v4, 0x0

    .line 1271
    move-object/from16 v3, p1

    .line 1273
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->b(Landroid/graphics/Rect;Landroid/graphics/Canvas;IIF)V

    .line 1276
    :cond_4fb
    :goto_4fb
    return-void
.end method

.method public final o0(ZIILandroid/graphics/Canvas;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_f

    .line 10
    sget-boolean p1, Lcom/baidu/input/ime/editor/popupdelegate/MoreEmojiIconDisplayDelegate;->A0:Z

    .line 12
    if-eqz p1, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move p1, v2

    .line 17
    :goto_10
    new-instance v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;

    .line 19
    invoke-direct {v3}, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;-><init>()V

    .line 22
    iget-object v4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 24
    iget v4, v4, Lcom/baidu/input/ime/render/CandRender;->h:I

    .line 26
    iput v4, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 28
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_33

    .line 38
    if-eqz p1, :cond_da

    .line 40
    sget v2, Lcom/baidu/input/ime/editor/popupdelegate/MoreEmojiIconDisplayDelegate;->B0:I

    .line 42
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 44
    invoke-static {v2}, Lcom/baidu/util/ColorReplaceHelper;->getSelectedColor(I)I

    .line 47
    move-result v2

    .line 48
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 50
    goto/16 :goto_da

    .line 52
    :cond_33
    if-eqz p1, :cond_ce

    .line 54
    iget-object v4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 56
    iget v5, v4, Lcom/baidu/input/ime/render/CandRender;->l:I

    .line 58
    iput v5, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 60
    iget v4, v4, Lcom/baidu/input/ime/render/CandRender;->n:I

    .line 62
    if-eqz v4, :cond_43

    .line 64
    iput v4, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->b:I

    .line 66
    goto/16 :goto_da

    .line 68
    :cond_43
    iget-object v4, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0:Lcom/baidu/input/ime/params/StyleParam;

    .line 70
    if-eqz v4, :cond_b9

    .line 72
    iget v5, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    .line 74
    if-nez v5, :cond_b9

    .line 76
    iget-object v5, v4, Lcom/baidu/input/ime/params/StyleParam;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 78
    if-eqz v5, :cond_8f

    .line 80
    iget v6, v5, Lcom/baidu/input/ime/params/patch/StyleIndex;->b:I

    .line 82
    if-eqz v6, :cond_8f

    .line 84
    invoke-virtual {v5}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_8f

    .line 90
    const/16 v6, 0xff

    .line 92
    iput-short v6, v5, Lcom/baidu/input/ime/params/ImgParam;->h:S

    .line 94
    iget-object v6, v5, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 96
    if-nez v6, :cond_90

    .line 98
    iget-object v6, v5, Lcom/baidu/input/ime/params/ImgParam;->f:Landroid/graphics/NinePatch;

    .line 100
    if-eqz v6, :cond_8f

    .line 102
    iget-object v6, v5, Lcom/baidu/input/ime/params/ImgParam;->c:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 107
    move-result v6

    .line 108
    iget-object v7, v5, Lcom/baidu/input/ime/params/ImgParam;->c:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 113
    move-result v7

    .line 114
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 119
    move-result-object v6

    .line 120
    new-instance v7, Landroid/graphics/Canvas;

    .line 122
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v5, v5, Lcom/baidu/input/ime/params/ImgParam;->f:Landroid/graphics/NinePatch;

    .line 127
    new-instance v8, Landroid/graphics/Rect;

    .line 129
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 132
    move-result v9

    .line 133
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 136
    move-result v10

    .line 137
    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    invoke-virtual {v5, v7, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    const/4 v6, 0x0

    .line 145
    :cond_90
    :goto_90
    if-eqz v6, :cond_a4

    .line 147
    :try_start_92
    new-instance v5, Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 152
    move-result v7

    .line 153
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 156
    move-result v8

    .line 157
    invoke-direct {v5, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    invoke-static {v6, v5}, Lcom/baidu/util/GraphicsLibrary;->getAvgClrAll(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    .line 163
    move-result v5
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a3} :catch_a4

    .line 164
    goto :goto_a5

    .line 165
    :catch_a4
    :cond_a4
    move v5, v2

    .line 166
    :goto_a5
    if-eqz v5, :cond_a9

    .line 168
    :goto_a7
    move v2, v5

    .line 169
    goto :goto_b7

    .line 170
    :cond_a9
    iget v5, v4, Lcom/baidu/input/ime/params/StyleParam;->h:I

    .line 172
    if-eqz v5, :cond_ae

    .line 174
    goto :goto_a7

    .line 175
    :cond_ae
    iget v5, v4, Lcom/baidu/input/ime/params/StyleParam;->k:I

    .line 177
    if-lez v5, :cond_b7

    .line 179
    iget v4, v4, Lcom/baidu/input/ime/params/StyleParam;->j:I

    .line 181
    if-eqz v4, :cond_b7

    .line 183
    move v2, v4

    .line 184
    :cond_b7
    :goto_b7
    iput v2, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    .line 186
    :cond_b9
    iget v2, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    .line 188
    if-nez v2, :cond_c9

    .line 190
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 192
    iget v2, v2, Lcom/baidu/input/ime/render/CandRender;->i:I

    .line 194
    const v4, -0x3b000001  # -2047.9999f

    .line 197
    and-int/2addr v4, v2

    .line 198
    iput v4, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    .line 200
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 202
    :cond_c9
    iget v2, p0, Lcom/baidu/input/ime/cand/CandHandler;->z1:I

    .line 204
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->b:I

    .line 206
    goto :goto_da

    .line 207
    :cond_ce
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getFloatColor()I

    .line 210
    move-result v2

    .line 211
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 213
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 215
    iget v2, v2, Lcom/baidu/input/ime/render/CandRender;->h:I

    .line 217
    iput v2, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->b:I

    .line 219
    :cond_da
    :goto_da
    new-instance v2, Landroid/graphics/Rect;

    .line 221
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 224
    if-nez p2, :cond_e2

    .line 226
    goto :goto_e6

    .line 227
    :cond_e2
    iget-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 229
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 231
    :goto_e6
    iget-object p2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 233
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 235
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 238
    move-result p2

    .line 239
    sget v5, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 241
    const/high16 v6, 0x41c00000  # 24.0f

    .line 243
    mul-float v7, v5, v6

    .line 245
    float-to-int v7, v7

    .line 246
    const/4 v8, 0x2

    .line 247
    invoke-static {p2, v7, v8, v4}, La;->a(IIII)I

    .line 250
    move-result p2

    .line 251
    const/high16 v4, 0x42100000  # 36.0f

    .line 253
    mul-float/2addr v5, v4

    .line 254
    float-to-int v4, v5

    .line 255
    add-int/2addr v4, p3

    .line 256
    iget-object v5, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0:Landroid/graphics/Rect;

    .line 258
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 260
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 263
    move-result v5

    .line 264
    sget v9, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 266
    mul-float/2addr v9, v6

    .line 267
    float-to-int v6, v9

    .line 268
    sub-int/2addr v5, v6

    .line 269
    div-int/2addr v5, v8

    .line 270
    add-int/2addr v5, v7

    .line 271
    add-int/2addr v5, v6

    .line 272
    invoke-virtual {v2, p3, p2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    sget-object p2, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 277
    iget-object p2, p2, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 279
    invoke-static {p2}, Lcom/baidu/input/emojis/CandTextSymManager;->a(Landroid/content/Context;)Lcom/baidu/input/emojis/CandTextSymManager;

    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    iget p3, v2, Landroid/graphics/Rect;->left:I

    .line 288
    int-to-float p3, p3

    .line 289
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 292
    move-result v4

    .line 293
    int-to-float v4, v4

    .line 294
    const/high16 v5, 0x3e800000  # 0.25f

    .line 296
    mul-float/2addr v4, v5

    .line 297
    add-float/2addr v4, p3

    .line 298
    iget p3, v2, Landroid/graphics/Rect;->top:I

    .line 300
    int-to-float p3, p3

    .line 301
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 304
    move-result v5

    .line 305
    int-to-float v5, v5

    .line 306
    const v6, 0x3f19999a  # 0.6f

    .line 309
    mul-float/2addr v5, v6

    .line 310
    add-float/2addr v5, p3

    .line 311
    iget-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 313
    if-nez p3, :cond_16e

    .line 315
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 317
    sget-object v6, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 319
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 322
    move-result-object v6

    .line 323
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 325
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 328
    move-result-object v7

    .line 329
    const v8, 0x7f081353

    .line 332
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 335
    move-result-object v7

    .line 336
    invoke-direct {p3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 339
    iput-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 341
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 343
    sget-object v6, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 345
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    move-result-object v6

    .line 349
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 351
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 354
    move-result-object v7

    .line 355
    const v8, 0x7f081356

    .line 358
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 361
    move-result-object v7

    .line 362
    invoke-direct {p3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 365
    iput-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 367
    :cond_16e
    if-eqz p1, :cond_1a8

    .line 369
    iget-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 371
    if-nez p3, :cond_1a8

    .line 373
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 375
    sget-object v6, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 377
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 380
    move-result-object v6

    .line 381
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 383
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 386
    move-result-object v7

    .line 387
    const v8, 0x7f081354

    .line 390
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 393
    move-result-object v7

    .line 394
    invoke-direct {p3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 397
    iput-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 399
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 401
    sget-object v6, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 403
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 406
    move-result-object v6

    .line 407
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 409
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 412
    move-result-object v7

    .line 413
    const v8, 0x7f081355

    .line 416
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 419
    move-result-object v7

    .line 420
    invoke-direct {p3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 423
    iput-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->e:Landroid/graphics/drawable/BitmapDrawable;

    .line 425
    :cond_1a8
    if-eqz p1, :cond_1ad

    .line 427
    iget-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 429
    goto :goto_1af

    .line 430
    :cond_1ad
    iget-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->b:Landroid/graphics/drawable/BitmapDrawable;

    .line 432
    :goto_1af
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 435
    iget v6, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->b:I

    .line 437
    const/4 v7, -0x1

    .line 438
    if-eq v6, v7, :cond_1bc

    .line 440
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 442
    invoke-virtual {p3, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 445
    :cond_1bc
    sget-boolean v6, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 447
    if-nez v6, :cond_1c6

    .line 449
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 452
    move-result v6

    .line 453
    if-eqz v6, :cond_1dc

    .line 455
    :cond_1c6
    new-instance v6, Landroid/graphics/ColorMatrix;

    .line 457
    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 460
    const/4 v7, 0x0

    .line 461
    invoke-virtual {v6, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 464
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    .line 466
    invoke-direct {v7, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 469
    invoke-virtual {p3, v7}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 472
    const/16 v6, 0x50

    .line 474
    invoke-virtual {p3, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 477
    :cond_1dc
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 480
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    sget-boolean p3, Lcom/baidu/input/ime/editor/popupdelegate/MoreEmojiIconDisplayDelegate;->A0:Z

    .line 485
    iget p3, v3, Lcom/baidu/input/emojis/CandTextSymManager$YanMoreColor;->a:I

    .line 487
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    sget p3, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 492
    const v3, 0x414428f6  # 12.26f

    .line 495
    mul-float/2addr p3, v3

    .line 496
    const/high16 v3, 0x3f800000  # 1.0f

    .line 498
    mul-float/2addr p3, v3

    .line 499
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 502
    iget-object p3, p2, Lcom/baidu/input/emojis/CandTextSymManager;->a:Landroid/content/Context;

    .line 504
    const v3, 0x7f120aff

    .line 507
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 510
    move-result-object p3

    .line 511
    invoke-virtual {p4, p3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 514
    if-eqz p1, :cond_206

    .line 516
    iget-object p1, p2, Lcom/baidu/input/emojis/CandTextSymManager;->e:Landroid/graphics/drawable/BitmapDrawable;

    .line 518
    goto :goto_208

    .line 519
    :cond_206
    iget-object p1, p2, Lcom/baidu/input/emojis/CandTextSymManager;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 521
    :goto_208
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 530
    return-void
.end method

.method public final p2()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/baidu/input/pub/Global;->g0:Z

    .line 4
    return-void
.end method

.method public final q1()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->e:Z

    .line 3
    return v0
.end method

.method public final r1()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/emojis/YanLxManager;->a()Lcom/baidu/input/emojis/YanLxManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/input/emojis/YanLxManager;->b()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final s0(Landroid/graphics/Canvas;I)V
    .registers 3

    .line 1
    sget-object p1, Lcom/baidu/input/ime/event/OperatingCandidateGlobal;->a:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public final s2()V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 3
    const/16 v1, 0x71

    .line 5
    const/4 v2, 0x0

    .line 6
    aput-boolean v2, v0, v1

    .line 8
    return-void
.end method

.method public final w0(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a3

    .line 13
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    iget-object v1, v1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 20
    if-eqz v1, :cond_1e

    .line 22
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->B:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    invoke-virtual {v1}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 29
    move-result v1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v1, v2

    .line 32
    :goto_1f
    invoke-static {}, Lcom/baidu/input/ime/newcore/operator/CalculatorHandler;->a()Z

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x2

    .line 37
    if-nez v3, :cond_35

    .line 39
    sget-object v3, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 41
    const/16 v5, 0x9

    .line 43
    aget-boolean v3, v3, v5

    .line 45
    if-eqz v3, :cond_33

    .line 47
    sget-byte v3, Lcom/baidu/input/pub/Global;->i0:B

    .line 49
    if-eq v3, v4, :cond_33

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    move v3, v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    :goto_35
    move v3, v0

    .line 55
    :goto_36
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 57
    if-eqz v5, :cond_57

    .line 59
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 61
    if-eqz v5, :cond_57

    .line 63
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 65
    if-eqz v5, :cond_57

    .line 67
    invoke-static {}, Lcom/baidu/input/pub/Global;->T()Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_57

    .line 73
    sget-object v5, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 75
    iget-object v5, v5, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 77
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 79
    iget-object v6, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->a:Lcom/baidu/input/ime/cand/minorword/MinorCandType;

    .line 81
    iget-object v5, v5, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->e:Lcom/baidu/iptcore/info/IptCoreCandInfo;

    .line 83
    invoke-virtual {v6, v5}, Lcom/baidu/input/ime/cand/minorword/MinorCandType;->p(Lcom/baidu/iptcore/info/IptCoreCandInfo;)Z

    .line 86
    move-result v5

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v5, v2

    .line 89
    :goto_58
    const-class v6, Lcom/baidu/input/aicard/IAICard;

    .line 91
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lcom/baidu/input/aicard/IAICard;

    .line 97
    invoke-interface {v6}, Lcom/baidu/input/aicard/IAICard;->kc()Z

    .line 100
    move-result v6

    .line 101
    if-eqz v1, :cond_68

    .line 103
    if-eqz v3, :cond_1a3

    .line 105
    :cond_68
    if-eqz v5, :cond_1a3

    .line 107
    if-eqz v6, :cond_1a3

    .line 109
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 112
    move-result-object v1

    .line 113
    iget v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 115
    const/high16 v5, 0x41800000  # 16.0f

    .line 117
    mul-float/2addr v1, v5

    .line 118
    float-to-int v1, v1

    .line 119
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 122
    move-result-object v5

    .line 123
    iget v5, v5, Lcom/baidu/skinrender/SkinRenderStatus;->i:F

    .line 125
    const/high16 v6, 0x41100000  # 9.0f

    .line 127
    mul-float/2addr v5, v6

    .line 128
    float-to-int v5, v5

    .line 129
    if-eqz v3, :cond_87

    .line 131
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->G0()Landroid/graphics/Rect;

    .line 134
    move-result-object v3

    .line 135
    goto :goto_8b

    .line 136
    :cond_87
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0()Landroid/graphics/Rect;

    .line 139
    move-result-object v3

    .line 140
    :goto_8b
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 143
    move-result v3

    .line 144
    int-to-float v3, v3

    .line 145
    int-to-float v6, v1

    .line 146
    const/high16 v7, 0x40000000  # 2.0f

    .line 148
    div-float/2addr v6, v7

    .line 149
    sub-float/2addr v3, v6

    .line 150
    float-to-int v3, v3

    .line 151
    new-instance v6, Landroid/graphics/Rect;

    .line 153
    add-int/2addr v1, v3

    .line 154
    invoke-direct {v6, v3, v2, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Q:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    iget-object v3, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 164
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    .line 167
    move-result v5

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 171
    move-result-object v6

    .line 172
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 174
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 179
    if-eqz v7, :cond_172

    .line 181
    iget-object v7, v7, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 183
    if-eqz v7, :cond_172

    .line 185
    iget-object v7, v7, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 187
    if-eqz v7, :cond_172

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 192
    move-result v8

    .line 193
    iget-object v7, v7, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->c:Lcom/baidu/input/ime/cand/minorword/MinorWordCandView;

    .line 195
    iget-object v9, v7, Lcom/baidu/input/ime/cand/minorword/MinorWordCandView;->d:Lcom/baidu/input/ime/cand/view/MinorWordTextView;

    .line 197
    if-eqz v9, :cond_16e

    .line 199
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 202
    move-result-object v10

    .line 203
    instance-of v11, v10, Landroid/graphics/drawable/StateListDrawable;

    .line 205
    if-eqz v11, :cond_d4

    .line 207
    check-cast v10, Landroid/graphics/drawable/StateListDrawable;

    .line 209
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 212
    move-result-object v10

    .line 213
    :cond_d4
    instance-of v11, v10, Lcom/baidu/input/ime/cand/bg/IGradientBg;

    .line 215
    if-eqz v11, :cond_df

    .line 217
    check-cast v10, Lcom/baidu/input/ime/cand/bg/IGradientBg;

    .line 219
    invoke-interface {v10}, Lcom/baidu/input/ime/cand/bg/IGradientBg;->a()[I

    .line 222
    move-result-object v10

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    const/4 v10, 0x0

    .line 225
    :goto_e0
    if-eqz v10, :cond_16e

    .line 227
    iget-object v7, v7, Lcom/baidu/input/ime/cand/minorword/MinorWordCandView;->c:Landroid/view/ViewGroup;

    .line 229
    if-eqz v7, :cond_16e

    .line 231
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 234
    move-result v11

    .line 235
    if-lez v11, :cond_16e

    .line 237
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 240
    move-result v11

    .line 241
    sub-int/2addr v8, v11

    .line 242
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 245
    move-result v7

    .line 246
    sub-int/2addr v8, v7

    .line 247
    int-to-float v7, v8

    .line 248
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 251
    move-result v8

    .line 252
    int-to-float v8, v8

    .line 253
    div-float/2addr v7, v8

    .line 254
    const/high16 v8, 0x3f800000  # 1.0f

    .line 256
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    .line 259
    move-result v7

    .line 260
    const/4 v9, 0x0

    .line 261
    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    .line 264
    move-result v7

    .line 265
    :try_start_108
    array-length v9, v10

    .line 266
    if-nez v9, :cond_10c

    .line 268
    goto :goto_16e

    .line 269
    :cond_10c
    array-length v9, v10

    .line 270
    if-ne v9, v0, :cond_112

    .line 272
    aget v2, v10, v2

    .line 274
    goto :goto_16e

    .line 275
    :cond_112
    array-length v9, v10

    .line 276
    sub-int/2addr v9, v0

    .line 277
    int-to-float v9, v9

    .line 278
    mul-float/2addr v7, v9

    .line 279
    float-to-int v9, v7

    .line 280
    array-length v11, v10

    .line 281
    sub-int/2addr v11, v4

    .line 282
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 285
    move-result v4

    .line 286
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 289
    move-result v4

    .line 290
    add-int/lit8 v9, v4, 0x1

    .line 292
    array-length v11, v10

    .line 293
    sub-int/2addr v11, v0

    .line 294
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 297
    move-result v0

    .line 298
    int-to-float v9, v4

    .line 299
    sub-float/2addr v7, v9

    .line 300
    aget v4, v10, v4

    .line 302
    aget v0, v10, v0

    .line 304
    sget-object v9, Landroidx/core/graphics/ColorUtils;->a:Ljava/lang/ThreadLocal;

    .line 306
    sub-float/2addr v8, v7

    .line 307
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 310
    move-result v9

    .line 311
    int-to-float v9, v9

    .line 312
    mul-float/2addr v9, v8

    .line 313
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 316
    move-result v10

    .line 317
    int-to-float v10, v10

    .line 318
    mul-float/2addr v10, v7

    .line 319
    add-float/2addr v10, v9

    .line 320
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 323
    move-result v9

    .line 324
    int-to-float v9, v9

    .line 325
    mul-float/2addr v9, v8

    .line 326
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 329
    move-result v11

    .line 330
    int-to-float v11, v11

    .line 331
    mul-float/2addr v11, v7

    .line 332
    add-float/2addr v11, v9

    .line 333
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 336
    move-result v9

    .line 337
    int-to-float v9, v9

    .line 338
    mul-float/2addr v9, v8

    .line 339
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 342
    move-result v12

    .line 343
    int-to-float v12, v12

    .line 344
    mul-float/2addr v12, v7

    .line 345
    add-float/2addr v12, v9

    .line 346
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 349
    move-result v4

    .line 350
    int-to-float v4, v4

    .line 351
    mul-float/2addr v4, v8

    .line 352
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 355
    move-result v0

    .line 356
    int-to-float v0, v0

    .line 357
    mul-float/2addr v0, v7

    .line 358
    add-float/2addr v0, v4

    .line 359
    float-to-int v4, v10

    .line 360
    float-to-int v7, v11

    .line 361
    float-to-int v8, v12

    .line 362
    float-to-int v0, v0

    .line 363
    invoke-static {v4, v7, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 366
    move-result v2
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_16e} :catch_16e

    .line 367
    :catch_16e
    :cond_16e
    :goto_16e
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    goto :goto_175

    .line 371
    :cond_172
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    :goto_175
    new-instance v0, Landroid/graphics/Path;

    .line 376
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 379
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 381
    int-to-float v2, v2

    .line 382
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 384
    int-to-float v4, v4

    .line 385
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 388
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 390
    int-to-float v2, v2

    .line 391
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 393
    int-to-float v4, v4

    .line 394
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 400
    move-result v2

    .line 401
    int-to-float v2, v2

    .line 402
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 404
    int-to-float v1, v1

    .line 405
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 411
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 414
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    :cond_1a3
    return-void
.end method

.method public final w2()V
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/ime/InputEventHandler;->I0()V

    .line 9
    return-void
.end method

.method public final x1()V
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/baidu/input/CandViewWrapper;->g()Lcom/baidu/input/CandHandlerWrapper;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2d

    .line 13
    invoke-interface {v0}, Lcom/baidu/input/CandHandlerWrapper;->e0()Lcom/baidu/input/ime/params/CandParam;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2d

    .line 19
    invoke-interface {v0}, Lcom/baidu/input/CandHandlerWrapper;->e0()Lcom/baidu/input/ime/params/CandParam;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/CandParam;->l()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_24

    .line 29
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 31
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 33
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->n()V

    .line 36
    goto :goto_2d

    .line 37
    :cond_24
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 39
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/baidu/input/CandViewWrapper;->invalidate()V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public x2(Z)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/baidu/input/pub/Global;->S()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e8

    .line 7
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 9
    iget-object v1, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 11
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 13
    invoke-static {}, Lcom/baidu/input/pub/Global;->S()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_14

    .line 19
    goto/16 :goto_d9

    .line 21
    :cond_14
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 23
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/baidu/input/CandViewWrapper;->g()Lcom/baidu/input/CandHandlerWrapper;

    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_22

    .line 33
    goto/16 :goto_d9

    .line 35
    :cond_22
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 38
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 41
    move-result v1

    .line 42
    sget-object v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper;->a:Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;

    .line 44
    if-nez v2, :cond_34

    .line 46
    new-instance v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;

    .line 48
    invoke-direct {v2}, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;-><init>()V

    .line 51
    sput-object v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper;->a:Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;

    .line 53
    :cond_34
    sget-object v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper;->a:Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-object v3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 60
    iget-object v3, v3, Lcom/baidu/input/ImeService;->r:Lcom/baidu/input/ime/cand/CandLayoutManager;

    .line 62
    invoke-virtual {v3}, Lcom/baidu/input/ime/cand/CandLayoutManager;->b()I

    .line 65
    move-result v3

    .line 66
    iput v3, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->c:I

    .line 68
    sget-object v3, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_5a

    .line 79
    iget v3, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->c:I

    .line 81
    int-to-float v3, v3

    .line 82
    const/high16 v4, 0x3f880000  # 1.0625f

    .line 84
    mul-float/2addr v3, v4

    .line 85
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 88
    move-result v3

    .line 89
    iput v3, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->c:I

    .line 91
    :cond_5a
    if-eqz v0, :cond_6d

    .line 93
    iget-object v3, v0, Lcom/baidu/input/ime/params/SubCandParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 95
    if-eqz v3, :cond_6d

    .line 97
    invoke-virtual {v3}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_6d

    .line 103
    iget-object v0, v0, Lcom/baidu/input/ime/params/SubCandParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 105
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 108
    move-result-object v0

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    const/4 v0, 0x0

    .line 111
    :goto_6e
    if-eqz v0, :cond_7b

    .line 113
    if-nez v1, :cond_7b

    .line 115
    iget v1, v0, Lcom/baidu/input/ime/params/StyleParam;->h:I

    .line 117
    iput v1, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->a:I

    .line 119
    iget v0, v0, Lcom/baidu/input/ime/params/StyleParam;->g:I

    .line 121
    iput v0, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->b:I

    .line 123
    goto :goto_d9

    .line 124
    :cond_7b
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->l()Lcom/baidu/skinrender/IRenderStateCallback;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/baidu/input/ime/params/SkinRenderCallback;

    .line 130
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/SkinRenderCallback;->r()Lcom/baidu/input/ime/params/ICandParamWrapper;

    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_cd

    .line 136
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->f()Lcom/baidu/input/ime/params/CandParam;

    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_cd

    .line 142
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->f()Lcom/baidu/input/ime/params/CandParam;

    .line 145
    move-result-object v1

    .line 146
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 148
    if-eqz v1, :cond_cd

    .line 150
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->f()Lcom/baidu/input/ime/params/CandParam;

    .line 153
    move-result-object v1

    .line 154
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 156
    iget-object v1, v1, Lcom/baidu/input/ime/params/CandLoader;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 158
    if-eqz v1, :cond_cd

    .line 160
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->c()[I

    .line 163
    move-result-object v1

    .line 164
    const/16 v3, 0xe

    .line 166
    aget v1, v1, v3

    .line 168
    if-lez v1, :cond_cd

    .line 170
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->f()Lcom/baidu/input/ime/params/CandParam;

    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_cd

    .line 176
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->f()Lcom/baidu/input/ime/params/CandParam;

    .line 179
    move-result-object v1

    .line 180
    iget v1, v1, Lcom/baidu/input/ime/params/CandParam;->c:I

    .line 182
    if-eqz v1, :cond_cd

    .line 184
    const/4 v3, 0x1

    .line 185
    if-eq v1, v3, :cond_cd

    .line 187
    const/4 v3, 0x2

    .line 188
    if-eq v1, v3, :cond_c0

    .line 190
    const/4 v3, 0x3

    .line 191
    if-eq v1, v3, :cond_cd

    .line 193
    :cond_c0
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->a()I

    .line 196
    move-result v1

    .line 197
    iput v1, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->a:I

    .line 199
    invoke-interface {v0}, Lcom/baidu/input/ime/params/ICandParamWrapper;->b()I

    .line 202
    move-result v0

    .line 203
    iput v0, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->b:I

    .line 205
    goto :goto_d9

    .line 206
    :cond_cd
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getSelectedColor()I

    .line 209
    move-result v0

    .line 210
    iput v0, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->a:I

    .line 212
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 215
    move-result v0

    .line 216
    iput v0, v2, Lcom/baidu/input/ime/cand/minorword/MinorPaintHelper$CandViewParams;->b:I

    .line 218
    :goto_d9
    if-eqz p1, :cond_e8

    .line 220
    sget-object p1, Lcom/baidu/input/ime/cand/CandHandler;->Q1:Lcom/baidu/input/ime/InputEventHandler;

    .line 222
    if-eqz p1, :cond_e8

    .line 224
    iget-object p1, p1, Lcom/baidu/input/ime/InputEventHandler;->u:Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;

    .line 226
    if-eqz p1, :cond_e8

    .line 228
    iget-object p1, p1, Lcom/baidu/input/ime/cand/minorword/MinorCandPresenter;->c:Lcom/baidu/input/ime/cand/minorword/MinorWordCandView;

    .line 230
    invoke-virtual {p1}, Lcom/baidu/input/ime/cand/minorword/MinorWordCandView;->r()V

    .line 233
    :cond_e8
    return-void
.end method

.method public final y1()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 3
    const/16 v1, 0x9

    .line 5
    aget-boolean v0, v0, v1

    .line 7
    return v0
.end method

.method public final z1()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/baidu/input/pub/Global;->k0:Z

    .line 3
    return v0
.end method

.method public final z2(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 3
    sget-object v1, Lcom/baidu/input/ime/cand/util/PadCandUtilKt;->a:Lkotlin/Lazy;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_14

    .line 8
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandParam;->d:Landroid/graphics/Rect;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    if-nez v0, :cond_2d

    .line 24
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->a()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_25

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 32
    const/16 v2, 0x35

    .line 34
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    goto :goto_48

    .line 38
    :cond_25
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    const/16 v2, 0x3e

    .line 42
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    goto :goto_48

    .line 46
    :cond_2d
    invoke-static {}, Lcom/baidu/input/ime/pad/PadUtils;->a()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3c

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 56
    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    :goto_3a
    move-object v0, v2

    .line 60
    goto :goto_48

    .line 61
    :cond_3c
    new-instance v2, Landroid/graphics/Rect;

    .line 63
    int-to-float v0, v0

    .line 64
    const v3, 0x3f19999a  # 0.6f

    .line 67
    mul-float/2addr v0, v3

    .line 68
    float-to-int v0, v0

    .line 69
    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    goto :goto_3a

    .line 73
    :goto_48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 76
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    const/high16 v2, 0x3f800000  # 1.0f

    .line 80
    mul-float/2addr v1, v2

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    div-float/2addr v1, p1

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 90
    move-result p1

    .line 91
    int-to-float v0, p1

    .line 92
    mul-float/2addr v1, v0

    .line 93
    float-to-int v0, v1

    .line 94
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 96
    add-int/2addr v1, v0

    .line 97
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 99
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 101
    add-int/2addr v0, p1

    .line 102
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 104
    return-void
.end method

.method public final baiduModBeginTouch(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :done
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModMoveTraced:Z
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;
    if-eqz v1, :configured
    invoke-virtual {v1}, Lcom/baidu/input/ime/InputStatMac;->f()B
    move-result v2
    const/16 v3, 0x21
    if-ne v2, v3, :configured
    iget-byte v2, v1, Lcom/baidu/input/ime/InputStatMac;->d:B
    const/4 v3, 0x1
    if-ne v2, v3, :configured
    iget-byte v2, v1, Lcom/baidu/input/ime/InputStatMac;->g:B
    if-nez v2, :configured
    move v0, v3
    :configured
    iget-boolean v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModDirectTouch:Z
    iput-boolean v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModDirectTouch:Z
    if-eq v0, v1, :same_mode
    const/4 v1, 0x0
    iput v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTraceCount:I
    :same_mode
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;
    if-eqz v1, :legacy
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingView;
    if-eqz v1, :legacy
    iput-boolean v0, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModDirectTouch:Z
    if-eqz v0, :legacy
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModStopScroll()V
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b(I)V
    :legacy
    if-eqz v0, :trace
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g:Landroid/widget/Scroller;
    if-eqz v1, :trace
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V
    :trace
    const-string v0, "down/top"
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTrace(Ljava/lang/String;)V
    :done
    return-void
.end method

.method public final baiduModTraceMove(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModMoveTraced:Z
    if-nez v0, :done
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModMoveTraced:Z
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTrace(Ljava/lang/String;)V
    :done
    return-void
.end method

# At most twelve entries per handler/mode; no input or candidate text.
.method public final baiduModTrace(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTraceCount:I
    const/16 v1, 0xc
    if-ge v0, v1, :done
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModTraceCount:I
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "1.1.2 "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " enabled="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/baidu/input/ime/cand/CandHandler;->baiduModDirectTouch:Z
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;
    if-eqz v2, :position
    const-string v1, " layout="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-byte v1, v2, Lcom/baidu/input/ime/InputStatMac;->d:B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :position
    const-string v1, " offset="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1:I
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;
    if-eqz v2, :append_offset
    iget-boolean v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z
    if-eqz v2, :append_offset
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a0:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;
    iget-object v2, v2, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;->b:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;
    if-eqz v2, :append_offset
    iget v1, v2, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I
    :append_offset
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BaiduInputModScroll"
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    return-void
.end method
