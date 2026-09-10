.class public final Lcom/baidu/input/ime/cand/CandidateView;
.super Lcom/baidu/input/ime/keymap/AbsCandView;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/ime/cand/ICandBackParams;
.implements Lcom/baidu/input/hardkeyboard/api/IHardKeyControlView;
.implements Lcom/baidu/input/auto/viewdumper/custom/ICustomViewHolder;


# static fields
.field public static r0:B


# instance fields
.field public final D:Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;

.field public E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

.field public F:Lcom/baidu/input/ime/cand/CandHandler;

.field public G:I

.field public H:Ljava/util/ArrayList;

.field public final I:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public J:J

.field public K:J

.field public L:J

.field public final M:Lcom/baidu/input/ime/KeyAction;

.field public N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

.field public final O:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

.field public final P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

.field public final Q:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

.field public final R:Lcom/baidu/input/ime/params/util/SkinAnimationUtil;

.field public S:Landroid/view/VelocityTracker;

.field public final T:Lcom/baidu/input/menutoolapi/data/MenuIcon;

.field public final U:Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

.field public V:Z

.field public W:I

.field public X:Z

.field public Y:Lcom/baidu/input/cocomodule/core/IKeyboardInputController$OnCandModeChangeListener;

.field public Z:Lcom/baidu/input/ime/cand/CandBackParams;

.field public a0:Landroid/graphics/Bitmap;

.field public final b0:Lcom/baidu/input/ime/cand/CandBackRender;

.field public final c0:Lcom/baidu/input/auto/util/CandidateViewTreeDumper;

.field public k0:Z


# direct methods
.method public constructor <init>(Lcom/baidu/input/ImeService;Lcom/baidu/input/ime/view/InputContainerView;Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;)V
    .registers 11

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/input/ime/AbsSoftView;-><init>(Lcom/baidu/input/ImeService;BLcom/baidu/input/ime/view/InputContainerView;)V

    .line 5
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 7
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->I:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 12
    new-instance v0, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 14
    invoke-direct {v0}, Lcom/baidu/input/menutoolapi/data/MenuIcon;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->T:Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->V:Z

    .line 22
    iput v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 24
    new-instance v1, Lcom/baidu/input/ime/cand/CandBackRender;

    .line 26
    invoke-direct {v1}, Lcom/baidu/input/ime/cand/CandBackRender;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->b0:Lcom/baidu/input/ime/cand/CandBackRender;

    .line 31
    iput-boolean v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->k0:Z

    .line 33
    new-instance v2, Lcom/baidu/input/auto/util/CandidateViewTreeDumper;

    .line 35
    invoke-direct {v2, p2}, Lcom/baidu/input/auto/util/CandidateViewTreeDumper;-><init>(Lcom/baidu/input/ime/view/InputContainerView;)V

    .line 38
    iput-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->c0:Lcom/baidu/input/auto/util/CandidateViewTreeDumper;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p2, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 44
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 46
    const/4 v4, 0x0

    .line 47
    iput-object v4, v3, Lcom/baidu/input/ime/newcore/state/CandState2;->c:Lcom/baidu/facemoji/input/SuggestedWords;

    .line 49
    invoke-static {}, Lcom/baidu/input/ime/editor/DeleterDialog;->b()Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->o:Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 55
    iget-object v3, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 57
    iget-object v3, v3, Lcom/baidu/input/ime/InputEventHandler;->q:Lcom/baidu/input/ime/KeyAction;

    .line 59
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->M:Lcom/baidu/input/ime/KeyAction;

    .line 61
    new-instance v3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 63
    invoke-direct {v3}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;-><init>()V

    .line 66
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 68
    new-instance v3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 70
    invoke-direct {v3}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->O:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 75
    new-instance v3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 77
    invoke-direct {v3}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;-><init>()V

    .line 80
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->Q:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 82
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 84
    invoke-virtual {v3}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_74

    .line 90
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 92
    if-eqz v3, :cond_74

    .line 94
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_6d

    .line 100
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 103
    move-result-object v3

    .line 104
    iget-object v3, v3, Lcom/baidu/input/ime/params/CandStyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 106
    invoke-static {v3}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 109
    move-result-object v4

    .line 110
    :cond_6d
    if-eqz v4, :cond_74

    .line 112
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->O:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 114
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 116
    goto :goto_78

    .line 117
    :cond_74
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 119
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 121
    :goto_78
    new-instance v3, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;

    .line 123
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-byte v0, v3, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->g:B

    .line 128
    iput-object p2, v3, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 130
    new-instance p2, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 132
    invoke-direct {p2}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 135
    iput-object p2, v3, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->h:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 137
    iput-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->R:Lcom/baidu/input/ime/params/util/SkinAnimationUtil;

    .line 139
    sget-object p2, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 154
    move-result-object p1

    .line 155
    const/high16 p2, 0x43960000  # 300.0f

    .line 157
    sget v3, Lcom/baidu/input/pub/ImeBaseGlobal;->o:F

    .line 159
    mul-float/2addr v3, p2

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 163
    move-result p1

    .line 164
    int-to-float p1, p1

    .line 165
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    .line 168
    sget-object p1, Lcom/baidu/input/pub/Global;->L0:Lcom/baidu/input/accessibility/AccessibilityHelperManager;

    .line 170
    if-eqz p1, :cond_b2

    .line 172
    invoke-virtual {p1, v0}, Lcom/baidu/input/accessibility/AccessibilityHelperManager;->d(I)Lcom/baidu/input/accessibility/AccessibilityHelper;

    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, v0, p0, p2}, Lcom/baidu/input/accessibility/AccessibilityHelperManager;->f(ILcom/baidu/input/accessibility/IAccessibilityView;Lcom/baidu/input/accessibility/AccessibilityHelper;)V

    .line 179
    :cond_b2
    new-instance p1, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 181
    iget-object p2, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 183
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 185
    iget-object v3, v3, Lcom/baidu/input/ime/InputEventHandler;->A:Lcom/baidu/input/ime/newcore/state/InputBarState2;

    .line 187
    invoke-direct {p1, p2, v3}, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;-><init>(Lcom/baidu/input/ime/newcore/state/CandState2;Lcom/baidu/input/ime/newcore/state/InputBarState2;)V

    .line 190
    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->U:Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 192
    invoke-static {}, Lcom/baidu/input/ime/util/ViewEventManager;->a()Lcom/baidu/input/ime/util/ViewEventManager;

    .line 195
    move-result-object p1

    .line 196
    iget-object p2, p1, Lcom/baidu/input/ime/util/ViewEventManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_de

    .line 204
    invoke-static {}, Lcom/baidu/input/eventbus/InnerEventBus;->a()Lcom/baidu/input/eventbus/InnerEventBus;

    .line 207
    move-result-object p2

    .line 208
    iget-object p1, p1, Lcom/baidu/input/ime/util/ViewEventManager;->e:Lkotlin/Lazy;

    .line 210
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lcom/baidu/input/eventbus/IPostEvent;

    .line 216
    sget-object v2, Lcom/baidu/input/eventbus/ThreadMode;->a:Lcom/baidu/input/eventbus/ThreadMode;

    .line 218
    const-class v3, Lcom/baidu/input/ime/searchservice/event/SearchChangeEvent;

    .line 220
    invoke-virtual {p2, p1, v3, v0, v2}, Lcom/baidu/input/eventbus/InnerEventBus;->g(Ljava/lang/Object;Ljava/lang/Class;ZLcom/baidu/input/eventbus/ThreadMode;)V

    .line 223
    :cond_de
    iput-object p0, v1, Lcom/baidu/input/ime/cand/CandBackRender;->a:Lcom/baidu/input/ime/cand/CandidateView;

    .line 225
    iput-object p4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 227
    iput-object p3, p0, Lcom/baidu/input/ime/cand/CandidateView;->D:Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;

    .line 229
    return-void
.end method

.method public static Q()Z
    .registers 3

    .line 1
    sget-byte v0, Lcom/baidu/input/pub/Global;->i0:B

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return v2

    .line 8
    :cond_7
    invoke-static {}, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->b()Lcom/baidu/input/ime/params/scene/SceneAnimHolder;

    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->a:Lcom/baidu/input/ime/params/scene/SceneAnimHandler;

    .line 14
    if-nez v0, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->D:Z

    .line 23
    if-eqz v0, :cond_19

    .line 25
    return v2

    .line 26
    :cond_19
    invoke-static {}, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->b()Lcom/baidu/input/ime/params/scene/SceneAnimHolder;

    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->a:Lcom/baidu/input/ime/params/scene/SceneAnimHandler;

    .line 32
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHandler;->f:Lcom/baidu/input/ime/params/scene/SceneLayoutManager;

    .line 34
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneLayoutManager;->c:Lcom/baidu/input/ime/params/scene/BackLayerRender;

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_3e

    .line 39
    invoke-static {}, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->b()Lcom/baidu/input/ime/params/scene/SceneAnimHolder;

    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->a:Lcom/baidu/input/ime/params/scene/SceneAnimHandler;

    .line 45
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHandler;->f:Lcom/baidu/input/ime/params/scene/SceneLayoutManager;

    .line 47
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneLayoutManager;->c:Lcom/baidu/input/ime/params/scene/BackLayerRender;

    .line 49
    iget-boolean v0, v0, Lcom/baidu/input/ime/render/ComparableRender;->b:Z

    .line 51
    if-eqz v0, :cond_3e

    .line 53
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 55
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    return v2

    .line 62
    :cond_3d
    return v1

    .line 63
    :cond_3e
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->m()Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_5e

    .line 73
    invoke-static {}, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->b()Lcom/baidu/input/ime/params/scene/SceneAnimHolder;

    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/baidu/input/ime/params/scene/SceneAnimHolder;->a:Lcom/baidu/input/ime/params/scene/SceneAnimHandler;

    .line 79
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/scene/SceneAnimHandler;->e()Landroid/graphics/Bitmap;

    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5e

    .line 85
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 87
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5d

    .line 93
    return v2

    .line 94
    :cond_5d
    return v1

    .line 95
    :cond_5e
    sget-boolean v0, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 97
    if-nez v0, :cond_65

    .line 99
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 102
    :cond_65
    return v2
.end method

.method public static W()F
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->m()Z

    .line 8
    move-result v0

    .line 9
    const v1, 0x3f0dd2f2  # 0.554f

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    sget-object v0, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_25

    .line 26
    sget-boolean v0, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 28
    if-eqz v0, :cond_21

    .line 30
    const v0, 0x3f283a84

    .line 33
    return v0

    .line 34
    :cond_21
    const v0, 0x3f2b7ec2

    .line 37
    return v0

    .line 38
    :cond_25
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_35

    .line 44
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/baidu/skinrender/SkinRenderStatus;->l()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3b

    .line 54
    :cond_35
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3f

    .line 60
    :cond_3b
    const v0, 0x3f19999a  # 0.6f

    .line 63
    return v0

    .line 64
    :cond_3f
    return v1
.end method

.method public static j0()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->isHardKeyboardCandState()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_24

    .line 9
    sget-boolean v0, Lcom/baidu/util/VersionUtils;->TEMP:Z

    .line 11
    sget-boolean v0, Lcom/baidu/input/pub/ImeBaseGlobal;->t:Z

    .line 13
    if-nez v0, :cond_24

    .line 15
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->c:Lcom/baidu/skinrender/SkinType;

    .line 21
    sget-object v1, Lcom/baidu/skinrender/SkinType;->c:Lcom/baidu/skinrender/SkinType;

    .line 23
    if-ne v0, v1, :cond_24

    .line 25
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->m()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_24

    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return v0
.end method


# virtual methods
.method public final F()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/PadHKUtils;->c()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 9
    instance-of v1, v0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKBottomCand;

    .line 11
    if-nez v1, :cond_10

    .line 13
    instance-of v0, v0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKFloatCand;

    .line 15
    if-eqz v0, :cond_12

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-super {p0}, Lcom/baidu/input/ime/AbsSoftView;->F()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final K(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    sget-object v0, Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;->h:Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;

    .line 3
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->I:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-virtual {v0, v2, p1, v1}, Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;->e(BLandroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 17
    iget-boolean v3, v0, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 19
    if-nez v3, :cond_1d

    .line 21
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->c:Lcom/baidu/input/ime/InputStatMac;

    .line 23
    invoke-virtual {v3}, Lcom/baidu/input/ime/InputStatMac;->l()Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1d

    .line 29
    return-void

    .line 30
    :cond_1d
    const/4 v3, 0x0

    .line 31
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 33
    iget-boolean v4, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 35
    if-eqz v4, :cond_2e

    .line 37
    iget-object v4, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 39
    invoke-virtual {v4}, Lcom/baidu/input/ime/SubList;->t()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2e

    .line 45
    iput-boolean v2, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 47
    :cond_2e
    iget-object v4, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 49
    invoke-virtual {v4}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_53

    .line 55
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 57
    if-eqz v4, :cond_53

    .line 59
    invoke-virtual {v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_4b

    .line 65
    invoke-virtual {v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 68
    move-result-object v4

    .line 69
    iget-object v4, v4, Lcom/baidu/input/ime/params/CandStyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 71
    invoke-static {v4}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 74
    move-result-object v4

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    const/4 v4, 0x0

    .line 77
    :goto_4c
    if-eqz v4, :cond_53

    .line 79
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->O:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 81
    iput-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 86
    iput-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 88
    :goto_57
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->Q()Z

    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_6c

    .line 94
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->S()Z

    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_64

    .line 100
    goto :goto_6c

    .line 101
    :cond_64
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->Z:Lcom/baidu/input/ime/cand/CandBackParams;

    .line 103
    if-eqz v1, :cond_c9

    .line 105
    invoke-virtual {v1}, Lcom/baidu/input/ime/cand/CandBackParams;->a()V

    .line 108
    goto :goto_c9

    .line 109
    :cond_6c
    :goto_6c
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->b0:Lcom/baidu/input/ime/cand/CandBackRender;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const-string v5, "canvas"

    .line 116
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v5, "paint"

    .line 121
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v5, v4, Lcom/baidu/input/ime/cand/CandBackRender;->b:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {v4}, Lcom/baidu/input/ime/cand/CandBackRender;->a()Lcom/baidu/input/ime/cand/CandBackParams;

    .line 132
    move-result-object v4

    .line 133
    iget-object v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->d:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 135
    sget-object v6, Lcom/baidu/input/ime/cand/StrategyConsts;->g:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 137
    sget-object v7, Lcom/baidu/input/ime/cand/StrategyConsts;->d:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 139
    if-eq v5, v6, :cond_96

    .line 141
    sget-object v6, Lcom/baidu/input/ime/cand/StrategyConsts;->a:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 143
    if-eq v5, v6, :cond_96

    .line 145
    if-eq v5, v7, :cond_96

    .line 147
    sget-object v6, Lcom/baidu/input/ime/cand/StrategyConsts;->h:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 149
    if-ne v5, v6, :cond_c9

    .line 151
    :cond_96
    iget-object v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->a:Landroid/graphics/Bitmap;

    .line 153
    if-eqz v5, :cond_c9

    .line 155
    const/16 v5, 0xff

    .line 157
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget-object v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->d:Lcom/baidu/input/ime/cand/StrategyConsts;

    .line 165
    if-ne v5, v7, :cond_b0

    .line 167
    iget v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->j:I

    .line 169
    iget v6, v4, Lcom/baidu/input/ime/cand/CandBackParams;->k:I

    .line 171
    iget v7, v4, Lcom/baidu/input/ime/cand/CandBackParams;->f:I

    .line 173
    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 176
    goto :goto_b7

    .line 177
    :cond_b0
    iget v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->i:I

    .line 179
    iget v6, v4, Lcom/baidu/input/ime/cand/CandBackParams;->f:I

    .line 181
    invoke-virtual {p1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 184
    :goto_b7
    iget-object v5, v4, Lcom/baidu/input/ime/cand/CandBackParams;->a:Landroid/graphics/Bitmap;

    .line 186
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 189
    iget v6, v4, Lcom/baidu/input/ime/cand/CandBackParams;->f:I

    .line 191
    iget v4, v4, Lcom/baidu/input/ime/cand/CandBackParams;->g:I

    .line 193
    sub-int/2addr v6, v4

    .line 194
    int-to-float v4, v6

    .line 195
    const/4 v6, 0x0

    .line 196
    invoke-virtual {p1, v5, v6, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    :cond_c9
    :goto_c9
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 204
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->isSearchServiceOn()Z

    .line 207
    move-result v1

    .line 208
    iget-object v4, p0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 210
    iget-object v5, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 212
    const/4 v6, 0x2

    .line 213
    if-nez v1, :cond_123

    .line 215
    invoke-virtual {v5}, Lcom/baidu/input/ime/InputEventHandler;->T()Z

    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_123

    .line 221
    sget-object v1, Lcom/baidu/input/pocketdocs/impl/ScrmRouter;->e:Ljava/util/Stack;

    .line 223
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_123

    .line 229
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 231
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->hasSceneOn()Z

    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_ee

    .line 237
    sget-object v1, Lcom/baidu/input/ime/ImePref;->a:[Z

    .line 239
    :cond_ee
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 241
    iget-object v1, v1, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 243
    invoke-virtual {v1}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->a0()Z

    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_123

    .line 249
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->N:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 251
    invoke-virtual {v1, v2}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->c(Z)I

    .line 254
    move-result v1

    .line 255
    if-lez v1, :cond_12b

    .line 257
    sget-object v7, Lcom/baidu/input/ime/ImePref;->a:[Z

    .line 259
    sget-byte v7, Lcom/baidu/input/pub/Global;->i0:B

    .line 261
    if-eq v7, v6, :cond_10e

    .line 263
    iget-object v7, v5, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 265
    invoke-virtual {v7}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_12b

    .line 271
    :cond_10e
    iget-object v7, v5, Lcom/baidu/input/ime/InputEventHandler;->j:Lcom/baidu/input/ime/cand/ThemeOrnView;

    .line 273
    if-nez v7, :cond_119

    .line 275
    new-instance v7, Lcom/baidu/input/ime/cand/ThemeOrnView;

    .line 277
    invoke-direct {v7, v4}, Lcom/baidu/input/ime/cand/ThemeOrnView;-><init>(Landroid/view/View;)V

    .line 280
    iput-object v7, v5, Lcom/baidu/input/ime/InputEventHandler;->j:Lcom/baidu/input/ime/cand/ThemeOrnView;

    .line 282
    :cond_119
    new-instance v5, Lcom/baidu/m1;

    .line 284
    const/4 v7, 0x5

    .line 285
    invoke-direct {v5, p0, v1, v7}, Lcom/baidu/m1;-><init>(Ljava/lang/Object;II)V

    .line 288
    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 291
    goto :goto_12b

    .line 292
    :cond_123
    iget-object v1, v5, Lcom/baidu/input/ime/InputEventHandler;->j:Lcom/baidu/input/ime/cand/ThemeOrnView;

    .line 294
    if-eqz v1, :cond_12a

    .line 296
    invoke-virtual {v1}, Lcom/baidu/input/ime/cand/ThemeOrnView;->b()V

    .line 299
    :cond_12a
    move v1, v3

    .line 300
    :cond_12b
    :goto_12b
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 302
    iget-object v7, p0, Lcom/baidu/input/ime/AbsSoftView;->u:Ljava/lang/Runnable;

    .line 304
    const-wide/16 v8, 0x5dc

    .line 306
    if-eqz v5, :cond_14a

    .line 308
    invoke-virtual {p0}, Lcom/baidu/input/ime/AbsSoftView;->C()Z

    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_145

    .line 314
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->q:Z

    .line 316
    iget-object v5, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 318
    if-eqz v5, :cond_142

    .line 320
    invoke-virtual {v5, v2, v3}, Lcom/baidu/input/ime/SubList;->B(ZZ)V

    .line 323
    :cond_142
    invoke-virtual {p0, v7, v8, v9}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->o(Ljava/lang/Runnable;J)V

    .line 326
    :cond_145
    iget-object v5, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 328
    invoke-virtual {v5, p1, v3, v3}, Lcom/baidu/input/ime/SubList;->w(Landroid/graphics/Canvas;IZ)V

    .line 331
    :cond_14a
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 333
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 335
    if-eqz v5, :cond_182

    .line 337
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 340
    move-result-object v5

    .line 341
    iget-byte v5, v5, Lcom/baidu/skinrender/SkinRenderStatus;->g:B

    .line 343
    if-ne v5, v6, :cond_182

    .line 345
    iput-boolean v2, p0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 352
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 355
    move-result v5

    .line 356
    iget-object v6, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 358
    invoke-interface {v6}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 361
    move-result v6

    .line 362
    invoke-virtual {p1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 365
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 367
    invoke-virtual {v5, p1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W1(Landroid/graphics/Canvas;)V

    .line 370
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 372
    invoke-virtual {v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->D1()Z

    .line 375
    move-result v5

    .line 376
    if-eqz v5, :cond_17d

    .line 378
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/AbsCandView;->p()V

    .line 381
    goto :goto_17f

    .line 382
    :cond_17d
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeymapMac;->l:Z

    .line 384
    :goto_17f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 387
    :cond_182
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 389
    if-eqz v5, :cond_1b5

    .line 391
    invoke-virtual {p0}, Lcom/baidu/input/ime/AbsSoftView;->G()Z

    .line 394
    move-result v5

    .line 395
    if-nez v5, :cond_1b0

    .line 397
    invoke-virtual {p0}, Lcom/baidu/input/ime/AbsSoftView;->I()Z

    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_193

    .line 403
    goto :goto_1b0

    .line 404
    :cond_193
    iget-byte v5, p0, Lcom/baidu/input/ime/AbsSoftView;->r:B

    .line 406
    const/4 v6, 0x3

    .line 407
    if-ne v5, v6, :cond_1a1

    .line 409
    iget-object v5, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 411
    if-eqz v5, :cond_1a1

    .line 413
    invoke-virtual {v5}, Lcom/baidu/input/ime/SubList;->u()Z

    .line 416
    move-result v5

    .line 417
    goto :goto_1a2

    .line 418
    :cond_1a1
    move v5, v3

    .line 419
    :goto_1a2
    if-eqz v5, :cond_1ac

    .line 421
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->q:Z

    .line 423
    invoke-virtual {p0, v7}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->q(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {p0, v7, v8, v9}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->o(Ljava/lang/Runnable;J)V

    .line 429
    :cond_1ac
    invoke-virtual {v0, v6, v3}, Lcom/baidu/input/ime/KeymapMac;->d(BZ)V

    .line 432
    goto :goto_1b5

    .line 433
    :cond_1b0
    :goto_1b0
    const-wide/16 v5, 0xf

    .line 435
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 438
    :cond_1b5
    :goto_1b5
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->R:Lcom/baidu/input/ime/params/util/SkinAnimationUtil;

    .line 440
    iget-boolean v5, v0, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->b:Z

    .line 442
    if-eqz v5, :cond_1c2

    .line 444
    invoke-static {}, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->d()Z

    .line 447
    move-result v5

    .line 448
    if-eqz v5, :cond_1c2

    .line 450
    goto :goto_1c3

    .line 451
    :cond_1c2
    move v2, v3

    .line 452
    :goto_1c3
    if-eqz v2, :cond_1cd

    .line 454
    neg-int v1, v1

    .line 455
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 458
    move-result v2

    .line 459
    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/input/ime/params/util/SkinAnimationUtil;->b(Landroid/graphics/Canvas;II)V

    .line 462
    :cond_1cd
    return-void
.end method

.method public final P(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ThemeLoader;->N:B

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->f()Lcom/baidu/skinrender/SkinSession;

    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/baidu/skinrender/SkinSession;->m:Lcom/baidu/input/ime/params/theme/ThemeData;

    .line 18
    iget v0, v0, Lcom/baidu/input/ime/params/theme/ThemeData;->e:I

    .line 20
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-lez v1, :cond_1c

    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    :goto_1d
    if-gtz v0, :cond_20

    .line 32
    move v1, v2

    .line 33
    :cond_20
    if-eqz v1, :cond_32

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    .line 37
    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 42
    invoke-interface {p1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 45
    move-result p1

    .line 46
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 48
    invoke-static {v0, v1, p1, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->y0(Landroid/graphics/Canvas;Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;II)Z

    .line 51
    :cond_32
    return-void
.end method

.method public final S()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->T()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_15

    .line 8
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->c:Lcom/baidu/skinrender/SkinType;

    .line 14
    sget-object v2, Lcom/baidu/skinrender/SkinType;->c:Lcom/baidu/skinrender/SkinType;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    .line 16
    if-ne v1, v2, :cond_15

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_15

    .line 20
    :catch_13
    move-exception v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    return v0

    .line 23
    :goto_16
    invoke-static {v1}, Lcom/baidu/input/devtool/log/BDLog;->k(Ljava/lang/Throwable;)V

    .line 26
    return v0
.end method

.method public final T()Z
    .registers 4

    .line 1
    sget-byte v0, Lcom/baidu/input/pub/Global;->i0:B

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return v2

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 10
    if-eqz v0, :cond_16

    .line 12
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 14
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/SubCandParam;->l()Z

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_16
    return v2
.end method

.method public final U(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 3
    iget v1, v0, Lcom/baidu/input/ime/SubList;->o:I

    .line 5
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->M:Lcom/baidu/input/ime/KeyAction;

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/input/ime/SubList;->k(IZLcom/baidu/input/ime/KeyAction;)B

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_e

    .line 14
    goto :goto_1b

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 17
    iget-object v0, p1, Lcom/baidu/input/ime/InputEventHandler;->D:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 19
    iput v1, v0, Lcom/baidu/input/ime/newcore/state/ListState2;->d:I

    .line 21
    const/4 v0, 0x0

    .line 22
    const v1, 0xf00d

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 28
    :goto_1b
    return-void
.end method

.method public final Z(Z)I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_1d

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 16
    iget v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 18
    sub-int/2addr v3, v1

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Short;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 28
    move-result v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    move v0, v2

    .line 31
    :goto_1e
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eqz p1, :cond_2a

    .line 36
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->U:Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 38
    invoke-virtual {p1, v2}, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;->b(I)I

    .line 41
    move-result p1

    .line 42
    goto :goto_3d

    .line 43
    :cond_2a
    sget-byte p1, Lcom/baidu/input/pub/Global;->i0:B

    .line 45
    if-ne v4, p1, :cond_33

    .line 47
    invoke-virtual {v3, v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->g(I)I

    .line 50
    move-result p1

    .line 51
    goto :goto_3d

    .line 52
    :cond_33
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 54
    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 56
    iget-object p1, p1, Lcom/baidu/input/ime/InputEventHandler;->A:Lcom/baidu/input/ime/newcore/state/InputBarState2;

    .line 58
    invoke-virtual {v3, v0, p1}, Lcom/baidu/input/ime/newcore/state/CandState2;->d(ILcom/baidu/input/ime/newcore/state/InputBarState2;)V

    .line 61
    move p1, v2

    .line 62
    :goto_3d
    invoke-virtual {v3}, Lcom/baidu/input/ime/newcore/state/CandState2;->j()Z

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4a

    .line 68
    iget-object v5, p0, Lcom/baidu/input/ime/AbsSoftView;->o:Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 70
    iget-object v3, v3, Lcom/baidu/input/ime/newcore/state/CandState2;->k:Lcom/baidu/input/pub/CoreString;

    .line 72
    invoke-virtual {v5, v3}, Lcom/baidu/input/ime/editor/DeleterDialog;->f(Lcom/baidu/input/pub/CoreString;)V

    .line 75
    :cond_4a
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 77
    iget-object v5, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 79
    iget-object v5, v5, Lcom/baidu/input/ime/newcore/state/CandState2;->e:[Lcom/baidu/input/pub/CoreString;

    .line 81
    if-eqz v5, :cond_60

    .line 83
    array-length v5, v5

    .line 84
    if-nez v5, :cond_56

    .line 86
    goto :goto_60

    .line 87
    :cond_56
    iget-object v5, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 89
    iget-object v5, v5, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 94
    move-result v5

    .line 95
    if-gtz v5, :cond_62

    .line 97
    :cond_60
    :goto_60
    move v3, v2

    .line 98
    goto :goto_77

    .line 99
    :cond_62
    iput v2, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->D:I

    .line 101
    const/4 v5, -0x1

    .line 102
    iput-short v5, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->M:S

    .line 104
    iget-short v5, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F:S

    .line 106
    int-to-float v5, v5

    .line 107
    iget-object v6, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n:Landroid/text/TextPaint;

    .line 109
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iput-boolean v2, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->q:Z

    .line 114
    iput-boolean v2, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 116
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->V1()I

    .line 119
    move-result v3

    .line 120
    :goto_77
    add-int/2addr v3, v0

    .line 121
    sget-byte v5, Lcom/baidu/input/pub/Global;->i0:B

    .line 123
    if-ne v4, v5, :cond_7d

    .line 125
    add-int/2addr v3, p1

    .line 126
    :cond_7d
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 128
    if-nez v0, :cond_83

    .line 130
    move v0, v1

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    move v0, v2

    .line 133
    :goto_84
    iput-boolean v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->q:Z

    .line 135
    iget-boolean v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 137
    if-nez v0, :cond_96

    .line 139
    iget-object v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 141
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->i()I

    .line 144
    move-result v0

    .line 145
    if-lt v3, v0, :cond_93

    .line 147
    goto :goto_94

    .line 148
    :cond_93
    move v1, v2

    .line 149
    :goto_94
    iput-boolean v1, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 151
    :cond_96
    sput-byte v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1:B

    .line 153
    sget-byte p1, Lcom/baidu/input/pub/Global;->i0:B

    .line 155
    if-ne p1, v4, :cond_a4

    .line 157
    sget-byte p1, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 159
    if-ne p1, v4, :cond_a4

    .line 161
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 163
    iput-short v2, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 165
    :cond_a4
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 167
    invoke-virtual {p1}, Lcom/baidu/input/ImeService;->getCurentState()Lcom/baidu/input/ime/searchservice/frame/ICandState;

    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_dc

    .line 173
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 175
    invoke-virtual {p1}, Lcom/baidu/input/ImeService;->getCurentState()Lcom/baidu/input/ime/searchservice/frame/ICandState;

    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Lcom/baidu/input/ime/searchservice/frame/ICandState;->getType()I

    .line 182
    move-result p1

    .line 183
    const/4 v0, 0x6

    .line 184
    if-ne p1, v0, :cond_dc

    .line 186
    sget-boolean p1, Lcom/baidu/util/VersionUtils;->TEMP:Z

    .line 188
    sget-boolean p1, Lcom/baidu/input/pub/ImeBaseGlobal;->t:Z

    .line 190
    if-nez p1, :cond_dc

    .line 192
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 194
    invoke-virtual {p1}, Lcom/baidu/input/ImeService;->getCurentState()Lcom/baidu/input/ime/searchservice/frame/ICandState;

    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/baidu/input/ime/searchservice/frame/HardKeyboardCandState;

    .line 200
    iget-object p1, p1, Lcom/baidu/input/ime/searchservice/frame/HardKeyboardCandState;->e:Lcom/baidu/input/hardkeyboard/api/IHardKeyboardWindowManager;

    .line 202
    if-lez v3, :cond_d9

    .line 204
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboardWindowManager;->isShowing()Z

    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_dc

    .line 210
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 212
    iget-object v0, v0, Lcom/baidu/input/ImeService;->n:Lcom/baidu/input/ime/floatmode/FakeSoftView;

    .line 214
    invoke-interface {p1, v0}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboardWindowManager;->h(Landroid/view/View;)V

    .line 217
    goto :goto_dc

    .line 218
    :cond_d9
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboardWindowManager;->dismiss()V

    .line 221
    :cond_dc
    :goto_dc
    return v3
.end method

.method public final a0()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/baidu/input/panel/session/PanelSession;->b:Lcom/baidu/input/panel/cand/CandStatus;

    .line 7
    iget-short v0, v0, Lcom/baidu/input/panel/cand/CandStatus;->b:S

    .line 9
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/baidu/input/panel/session/PanelSession;->b:Lcom/baidu/input/panel/cand/CandStatus;

    .line 15
    iget-short v1, v1, Lcom/baidu/input/panel/cand/CandStatus;->a:S

    .line 17
    sub-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 20
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 23
    move-result v1

    .line 24
    if-eq v0, v1, :cond_b1

    .line 26
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 28
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 34
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 37
    move-result v1

    .line 38
    sget-object v2, Lcom/baidu/input/ime/cand/CandLayoutManager;->i:Landroid/graphics/Bitmap;

    .line 40
    invoke-static {v0, v1, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u1(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_af

    .line 46
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 48
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 54
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 57
    move-result v1

    .line 58
    iget-boolean v2, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 60
    sget-object v3, Lcom/baidu/input/ime/cand/CandLayoutManager;->i:Landroid/graphics/Bitmap;

    .line 62
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 64
    const/4 v5, 0x0

    .line 65
    if-nez v4, :cond_44

    .line 67
    :cond_42
    move-object v4, v5

    .line 68
    goto :goto_54

    .line 69
    :cond_44
    invoke-virtual {v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_42

    .line 75
    invoke-virtual {v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 78
    move-result-object v4

    .line 79
    iget-object v4, v4, Lcom/baidu/input/ime/params/CandStyleParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 81
    invoke-static {v4}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 84
    move-result-object v4

    .line 85
    :goto_54
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->f()Lcom/baidu/skinrender/SkinSession;

    .line 88
    move-result-object v6

    .line 89
    iget-object v6, v6, Lcom/baidu/skinrender/SkinSession;->m:Lcom/baidu/input/ime/params/theme/ThemeData;

    .line 91
    iget v6, v6, Lcom/baidu/input/ime/params/theme/ThemeData;->e:I

    .line 93
    if-nez v1, :cond_60

    .line 95
    :cond_5e
    :goto_5e
    move-object v0, v3

    .line 96
    goto :goto_af

    .line 97
    :cond_60
    if-lez v6, :cond_5e

    .line 99
    invoke-static {v0, v1, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 102
    move-result-object v3

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    .line 105
    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    const/4 v7, 0x0

    .line 109
    invoke-static {v0, v5, v7, v7, v7}, Lcom/baidu/input/ime/params/KeymapLoader;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIB)V

    .line 112
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 115
    move-result v5

    .line 116
    if-lez v5, :cond_77

    .line 118
    const/4 v5, 0x1

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v5, v7

    .line 121
    :goto_78
    if-gtz v6, :cond_7b

    .line 123
    move v5, v7

    .line 124
    :cond_7b
    if-eqz v5, :cond_84

    .line 126
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 129
    move-result v6

    .line 130
    const/4 v8, 0x3

    .line 131
    if-eq v6, v8, :cond_5e

    .line 133
    :cond_84
    if-eqz v2, :cond_5e

    .line 135
    new-instance v2, Landroid/graphics/Rect;

    .line 137
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 140
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 143
    move-result-object v6

    .line 144
    iget-object v6, v6, Lcom/baidu/input/panel/session/PanelSession;->b:Lcom/baidu/input/panel/cand/CandStatus;

    .line 146
    iget-short v6, v6, Lcom/baidu/input/panel/cand/CandStatus;->a:S

    .line 148
    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 150
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 153
    move-result-object v6

    .line 154
    iget-object v6, v6, Lcom/baidu/input/panel/session/PanelSession;->b:Lcom/baidu/input/panel/cand/CandStatus;

    .line 156
    iget-short v6, v6, Lcom/baidu/input/panel/cand/CandStatus;->b:S

    .line 158
    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 160
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 162
    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 164
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 167
    new-instance v1, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 169
    invoke-direct {v1}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 172
    invoke-static {v0, v1, v5, v2, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r0(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;ZLandroid/graphics/Rect;Lcom/baidu/input/ime/params/StyleParam;)V

    .line 175
    goto :goto_5e

    .line 176
    :cond_af
    :goto_af
    sput-object v0, Lcom/baidu/input/ime/cand/CandLayoutManager;->i:Landroid/graphics/Bitmap;

    .line 178
    :cond_b1
    return-void
.end method

.method public final b()Landroid/os/IBinder;
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/baidu/input/pub/Global;->Q()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 21
    iget-object v0, v0, Lcom/baidu/input/ImeService;->s:Lcom/baidu/input/ime/floatmode/FakeSoftView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1b
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2c

    .line 34
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 36
    iget-object v0, v0, Lcom/baidu/input/ImeService;->s:Lcom/baidu/input/ime/floatmode/FakeSoftView;

    .line 38
    if-eqz v0, :cond_2c

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public final b0()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->v()Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_30

    .line 7
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 9
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 12
    move-result v4

    .line 13
    const/4 v1, 0x0

    .line 14
    if-lez v4, :cond_2e

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    move-result v2

    .line 24
    if-le v4, v2, :cond_1a

    .line 26
    goto :goto_2e

    .line 27
    :cond_1a
    new-instance v5, Landroid/graphics/Matrix;

    .line 29
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    const/high16 v1, 0x3f800000  # 1.0f

    .line 34
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/cand/CandidateView;->P(Landroid/graphics/Bitmap;)V

    .line 47
    :cond_2e
    :goto_2e
    iput-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->a0:Landroid/graphics/Bitmap;

    .line 49
    :cond_30
    return-void
.end method

.method public final c(ZIIII)V
    .registers 6

    .line 1
    sget-object p1, Lcom/baidu/input/ime/cand/SelectedCandWordRecorder;->a:Landroid/graphics/Point;

    .line 3
    new-instance p1, Lcom/baidu/m1;

    .line 5
    const/4 p2, 0x1

    .line 6
    const/16 p3, 0x13

    .line 8
    invoke-direct {p1, p0, p2, p3}, Lcom/baidu/m1;-><init>(Ljava/lang/Object;II)V

    .line 11
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method

.method public final d(IIII)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 3
    iget-boolean p1, p1, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 5
    if-eqz p1, :cond_19

    .line 7
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 9
    if-eqz p1, :cond_19

    .line 11
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 18
    move-result-object p1

    .line 19
    iget-boolean p1, p1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->p0()V

    .line 26
    :cond_19
    return-void
.end method

.method public final e0()V
    .registers 15

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->j0()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d4

    .line 7
    sget-short v0, Lcom/baidu/input/pub/ImeBaseGlobal;->h:S

    .line 9
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 11
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->D:Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;

    .line 17
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->d()Landroid/graphics/Bitmap;

    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W0:[B

    .line 23
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->h()Lcom/baidu/input/ime/params/KeyMapParams;

    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_8c

    .line 30
    iget-object v6, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 32
    if-eqz v6, :cond_8c

    .line 34
    iget-object v6, v6, Lcom/baidu/input/ime/params/PanelParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 36
    if-eqz v6, :cond_8c

    .line 38
    invoke-virtual {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_8c

    .line 44
    iget-object v6, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 46
    iget-object v6, v6, Lcom/baidu/input/ime/params/PanelParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 48
    invoke-virtual {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 51
    move-result-object v6

    .line 52
    iget-object v6, v6, Lcom/baidu/input/ime/params/StyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 54
    if-eqz v6, :cond_8c

    .line 56
    iget-object v6, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 58
    iget-object v7, v6, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 60
    if-eqz v7, :cond_8c

    .line 62
    iget-object v6, v6, Lcom/baidu/input/ime/params/PanelParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 64
    invoke-virtual {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 67
    move-result-object v7

    .line 68
    iget-object v6, v7, Lcom/baidu/input/ime/params/StyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 70
    invoke-virtual {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 73
    move-result-object v6

    .line 74
    if-eqz v6, :cond_5e

    .line 76
    iget-object v6, v7, Lcom/baidu/input/ime/params/StyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 78
    invoke-virtual {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 81
    move-result-object v6

    .line 82
    iget-object v6, v6, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 84
    if-eqz v6, :cond_5e

    .line 86
    iget-object v4, v7, Lcom/baidu/input/ime/params/StyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 88
    invoke-virtual {v4}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 91
    move-result-object v4

    .line 92
    iget-object v4, v4, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 94
    goto :goto_8d

    .line 95
    :cond_5e
    iget-object v4, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 97
    iget-object v4, v4, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 99
    new-instance v10, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v10, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 104
    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 106
    add-int/2addr v4, v1

    .line 107
    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 109
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 112
    move-result v4

    .line 113
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 116
    move-result v6

    .line 117
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    invoke-static {v4, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 122
    move-result-object v4

    .line 123
    new-instance v8, Landroid/graphics/Canvas;

    .line 125
    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v9, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 130
    invoke-direct {v9}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 133
    sget-object v11, Lcom/baidu/input/ime/params/enumtype/FacadeState;->a:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 135
    const/4 v13, 0x0

    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    move-object v4, v5

    .line 142
    :goto_8d
    if-nez v4, :cond_90

    .line 144
    goto :goto_cf

    .line 145
    :cond_90
    invoke-static {v0, v1, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->R(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 148
    move-result-object v3

    .line 149
    new-instance v6, Landroid/graphics/Canvas;

    .line 151
    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance v7, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 156
    invoke-direct {v7}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 159
    new-instance v8, Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 164
    move-result v9

    .line 165
    const/4 v10, 0x0

    .line 166
    invoke-direct {v8, v10, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    .line 171
    const-string v11, "initDynamicCandBack candRectInPanelBackBitmap="

    .line 173
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v9

    .line 183
    new-array v11, v10, [Ljava/lang/Object;

    .line 185
    const-string v12, "CandHandler"

    .line 187
    invoke-static {v12, v9, v11}, Lcom/baidu/input/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    new-instance v9, Landroid/graphics/Rect;

    .line 192
    invoke-direct {v9, v10, v10, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_cf

    .line 201
    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 204
    invoke-virtual {v6, v4, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    move-object v5, v3

    .line 208
    :cond_cf
    :goto_cf
    if-eqz v5, :cond_d4

    .line 210
    invoke-interface {v2, v5}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->a(Landroid/graphics/Bitmap;)V

    .line 213
    :cond_d4
    return-void
.end method

.method public final f()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 3
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f0()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/CandHandler;->I2()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 16
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 19
    move-result v9

    .line 20
    const-class v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 22
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 28
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->f()B

    .line 35
    move-result v8

    .line 36
    iget-object v2, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 38
    const/4 v13, 0x0

    .line 39
    if-eqz v2, :cond_33

    .line 41
    new-instance v3, Lcom/baidu/input/panel/render/cand/params/SubListWrapper;

    .line 43
    iget v4, v2, Lcom/baidu/input/ime/SubList;->w:I

    .line 45
    iget-object v2, v2, Lcom/baidu/input/ime/SubList;->F:Lcom/baidu/input/ime/params/StyleParam;

    .line 47
    invoke-direct {v3, v4, v2}, Lcom/baidu/input/panel/render/cand/params/SubListWrapper;-><init>(ILcom/baidu/input/ime/params/StyleParam;)V

    .line 50
    move-object v4, v3

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move-object v4, v13

    .line 53
    :goto_34
    iget-object v14, p0, Lcom/baidu/input/ime/cand/CandidateView;->D:Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;

    .line 55
    if-eqz v0, :cond_89

    .line 57
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 59
    if-eqz v0, :cond_89

    .line 61
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_4d

    .line 67
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 73
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 76
    move-result-object v0

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move-object v0, v13

    .line 79
    :goto_4e
    if-eqz v0, :cond_89

    .line 81
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 83
    iget-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 85
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 87
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 89
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->q()S

    .line 92
    move-result v6

    .line 93
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 95
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 98
    move-result v7

    .line 99
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 102
    move-result-object v0

    .line 103
    iget-object v11, v0, Lcom/baidu/skinrender/SkinRenderStatus;->s:Landroid/graphics/Bitmap;

    .line 105
    if-nez v2, :cond_6c

    .line 107
    move-object v12, v13

    .line 108
    goto :goto_7f

    .line 109
    :cond_6c
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_7d

    .line 115
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 118
    move-result-object v0

    .line 119
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 121
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 124
    move-result-object v0

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move-object v0, v13

    .line 127
    :goto_7e
    move-object v12, v0

    .line 128
    :goto_7f
    iget-object v10, p0, Lcom/baidu/input/ime/cand/CandidateView;->Q:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 130
    invoke-static/range {v2 .. v12}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1(Lcom/baidu/input/panel/render/cand/AbsCandHandler;ZLcom/baidu/input/panel/render/cand/params/SubListWrapper;ZIIBILcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;Landroid/graphics/Bitmap;Lcom/baidu/input/ime/params/StyleParam;)Landroid/graphics/Bitmap;

    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v14, v0}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->a(Landroid/graphics/Bitmap;)V

    .line 137
    goto :goto_c3

    .line 138
    :cond_89
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 140
    iget-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 142
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 144
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 146
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->q()S

    .line 149
    move-result v6

    .line 150
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 152
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 155
    move-result v7

    .line 156
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W0:[B

    .line 158
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 161
    move-result-object v0

    .line 162
    iget-object v11, v0, Lcom/baidu/skinrender/SkinRenderStatus;->s:Landroid/graphics/Bitmap;

    .line 164
    if-nez v2, :cond_a7

    .line 166
    move-object v12, v13

    .line 167
    goto :goto_ba

    .line 168
    :cond_a7
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_b8

    .line 174
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 180
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 183
    move-result-object v0

    .line 184
    goto :goto_b9

    .line 185
    :cond_b8
    move-object v0, v13

    .line 186
    :goto_b9
    move-object v12, v0

    .line 187
    :goto_ba
    iget-object v10, p0, Lcom/baidu/input/ime/cand/CandidateView;->P:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 189
    invoke-static/range {v2 .. v12}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1(Lcom/baidu/input/panel/render/cand/AbsCandHandler;ZLcom/baidu/input/panel/render/cand/params/SubListWrapper;ZIIBILcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;Landroid/graphics/Bitmap;Lcom/baidu/input/ime/params/StyleParam;)Landroid/graphics/Bitmap;

    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v14, v0}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->a(Landroid/graphics/Bitmap;)V

    .line 196
    :goto_c3
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 198
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 201
    move-result v9

    .line 202
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 204
    if-eqz v0, :cond_145

    .line 206
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 209
    move-result-object v2

    .line 210
    if-eqz v2, :cond_de

    .line 212
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 215
    move-result-object v0

    .line 216
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 218
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 221
    move-result-object v0

    .line 222
    goto :goto_df

    .line 223
    :cond_de
    move-object v0, v13

    .line 224
    :goto_df
    if-eqz v0, :cond_145

    .line 226
    iget-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 228
    if-eqz v3, :cond_f4

    .line 230
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 232
    if-eqz v0, :cond_f4

    .line 234
    new-instance v2, Lcom/baidu/input/panel/render/cand/params/SubListWrapper;

    .line 236
    iget v4, v0, Lcom/baidu/input/ime/SubList;->w:I

    .line 238
    iget-object v0, v0, Lcom/baidu/input/ime/SubList;->F:Lcom/baidu/input/ime/params/StyleParam;

    .line 240
    invoke-direct {v2, v4, v0}, Lcom/baidu/input/panel/render/cand/params/SubListWrapper;-><init>(ILcom/baidu/input/ime/params/StyleParam;)V

    .line 243
    move-object v4, v2

    .line 244
    goto :goto_f5

    .line 245
    :cond_f4
    move-object v4, v13

    .line 246
    :goto_f5
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 248
    iget-boolean v5, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 250
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 252
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->q()S

    .line 255
    move-result v6

    .line 256
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 258
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 261
    move-result v7

    .line 262
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 268
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->f()B

    .line 275
    move-result v8

    .line 276
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 279
    move-result-object v0

    .line 280
    iget-object v11, v0, Lcom/baidu/skinrender/SkinRenderStatus;->t:Landroid/graphics/Bitmap;

    .line 282
    if-nez v2, :cond_11d

    .line 284
    :cond_11b
    :goto_11b
    move-object v12, v13

    .line 285
    goto :goto_12e

    .line 286
    :cond_11d
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 289
    move-result-object v0

    .line 290
    if-eqz v0, :cond_11b

    .line 292
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J0()Lcom/baidu/input/ime/params/CandStyleParam;

    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 298
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 301
    move-result-object v13

    .line 302
    goto :goto_11b

    .line 303
    :goto_12e
    iget-object v10, p0, Lcom/baidu/input/ime/cand/CandidateView;->O:Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 305
    invoke-static/range {v2 .. v12}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->t1(Lcom/baidu/input/panel/render/cand/AbsCandHandler;ZLcom/baidu/input/panel/render/cand/params/SubListWrapper;ZIIBILcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;Landroid/graphics/Bitmap;Lcom/baidu/input/ime/params/StyleParam;)Landroid/graphics/Bitmap;

    .line 308
    move-result-object v0

    .line 309
    invoke-interface {v14, v0}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->b(Landroid/graphics/Bitmap;)V

    .line 312
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 315
    move-result-object v0

    .line 316
    iget-boolean v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->D:Z

    .line 318
    if-eqz v0, :cond_145

    .line 320
    invoke-interface {v14}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->c()Landroid/graphics/Bitmap;

    .line 323
    move-result-object v0

    .line 324
    sput-object v0, Lcom/baidu/input/ime/cand/CandBackCache;->b:Landroid/graphics/Bitmap;

    .line 326
    :cond_145
    return-void
.end method

.method public final g0()V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "initDynamicCandBackCache start"

    .line 6
    const-string v3, "CandHandler"

    .line 8
    invoke-static {v3, v2, v1}, Lcom/baidu/input/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->a()Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/baidu/input/gamekeyboard/api/IGameKeyboard;->m()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_a4

    .line 21
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 23
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 29
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 32
    move-result v2

    .line 33
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 36
    move-result-object v4

    .line 37
    iget-boolean v4, v4, Lcom/baidu/skinrender/SkinRenderStatus;->D:Z

    .line 39
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->D:Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;

    .line 41
    if-eqz v4, :cond_2d

    .line 43
    sget-object v4, Lcom/baidu/input/ime/cand/CandBackCache;->c:Landroid/graphics/Bitmap;

    .line 45
    goto :goto_31

    .line 46
    :cond_2d
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->d()Landroid/graphics/Bitmap;

    .line 49
    move-result-object v4

    .line 50
    :goto_31
    invoke-static {v1, v2, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u1(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    const-string v4, "initDynamicCandBackCache end dynamic="

    .line 58
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    new-array v4, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {v3, v2, v4}, Lcom/baidu/input/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    if-eqz v1, :cond_a4

    .line 75
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 78
    move-result-object v2

    .line 79
    iget-boolean v2, v2, Lcom/baidu/skinrender/SkinRenderStatus;->D:Z

    .line 81
    if-eqz v2, :cond_a1

    .line 83
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->d()Landroid/graphics/Bitmap;

    .line 86
    move-result-object v2

    .line 87
    sput-object v2, Lcom/baidu/input/ime/cand/CandBackCache;->a:Landroid/graphics/Bitmap;

    .line 89
    sput-object v1, Lcom/baidu/input/ime/cand/CandBackCache;->c:Landroid/graphics/Bitmap;

    .line 91
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->d()Landroid/graphics/Bitmap;

    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Landroid/graphics/Rect;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    move-result v4

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 104
    move-result v6

    .line 105
    invoke-direct {v3, v0, v0, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 111
    move-result v4

    .line 112
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 115
    move-result v6

    .line 116
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 118
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 121
    move-result-object v4

    .line 122
    new-instance v6, Landroid/graphics/Canvas;

    .line 124
    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 130
    move-result v7

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 134
    move-result v8

    .line 135
    sub-int/2addr v7, v8

    .line 136
    new-instance v8, Landroid/graphics/Rect;

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 141
    move-result v9

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 145
    move-result v10

    .line 146
    invoke-direct {v8, v0, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->I:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 151
    const/4 v7, 0x0

    .line 152
    invoke-virtual {v6, v1, v7, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 155
    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    invoke-interface {v5, v4}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->a(Landroid/graphics/Bitmap;)V

    .line 161
    goto :goto_a4

    .line 162
    :cond_a1
    invoke-interface {v5, v1}, Lcom/baidu/input/panel/render/cand/ICandBackDrawStrategy;->a(Landroid/graphics/Bitmap;)V

    .line 165
    :cond_a4
    :goto_a4
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 3
    return-object v0
.end method

.method public final getSelf()Lcom/baidu/input/auto/viewdumper/custom/ICustomView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->c0:Lcom/baidu/input/auto/util/CandidateViewTreeDumper;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper;->a:Lcom/baidu/input/auto/viewdumper/custom/CustomViewGroup;

    .line 5
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 3
    return-object v0
.end method

.method public final h(Landroid/view/View;Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    new-instance v0, Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 8
    check-cast p2, Lcom/baidu/input/accessibility/CandAccessibilityHelper;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 20
    move-result v3

    .line 21
    float-to-int v3, v3

    .line 22
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 25
    move-result v4

    .line 26
    float-to-int v4, v4

    .line 27
    const/4 v5, 0x7

    .line 28
    const/16 v6, 0xa

    .line 30
    const/16 v7, 0x9

    .line 32
    if-eq v2, v5, :cond_39

    .line 34
    if-eq v2, v7, :cond_31

    .line 36
    if-eq v2, v6, :cond_26

    .line 38
    goto :goto_67

    .line 39
    :cond_26
    invoke-virtual {v1, v3, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0(II)B

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U1(Lcom/baidu/input/accessibility/CandAccessibilityHelper;Landroid/view/MotionEvent;BLcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;)V

    .line 46
    const/4 p2, 0x0

    .line 47
    iput-byte p2, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T:B

    .line 49
    goto :goto_67

    .line 50
    :cond_31
    invoke-virtual {v1, v3, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0(II)B

    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U1(Lcom/baidu/input/accessibility/CandAccessibilityHelper;Landroid/view/MotionEvent;BLcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;)V

    .line 57
    goto :goto_67

    .line 58
    :cond_39
    invoke-virtual {v1, v3, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->C0(II)B

    .line 61
    move-result v0

    .line 62
    iget-byte v2, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T:B

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eq v2, v0, :cond_64

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 70
    move-result v2

    .line 71
    if-lez v2, :cond_4d

    .line 73
    invoke-static {p3}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 76
    move-result-object v2

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 81
    move-result-object v2

    .line 82
    :goto_51
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 85
    iget-byte v4, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T:B

    .line 87
    invoke-virtual {v1, p2, v2, v4, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U1(Lcom/baidu/input/accessibility/CandAccessibilityHelper;Landroid/view/MotionEvent;BLcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;)V

    .line 90
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 93
    invoke-virtual {v1, p2, v2, v0, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U1(Lcom/baidu/input/accessibility/CandAccessibilityHelper;Landroid/view/MotionEvent;BLcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;)V

    .line 96
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 99
    iput-byte v0, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->T:B

    .line 101
    :cond_64
    invoke-virtual {v1, p2, p3, v0, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->U1(Lcom/baidu/input/accessibility/CandAccessibilityHelper;Landroid/view/MotionEvent;BLcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$MutableBoolean;)V

    .line 104
    :goto_67
    invoke-static {p3, p1}, Lcom/baidu/input/accessibility/AccessibilityUtil;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 107
    const/4 p1, 0x1

    .line 108
    return p1
.end method

.method public final h0()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 4
    move-result v0

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 7
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 10
    move-result v0

    .line 11
    const-class v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 13
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 19
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_39

    .line 29
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 31
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 37
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->c()I

    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 44
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 50
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->c()I

    .line 53
    move-result v2

    .line 54
    sub-int/2addr v1, v2

    .line 55
    move v2, v0

    .line 56
    move v3, v1

    .line 57
    goto :goto_41

    .line 58
    :cond_39
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 60
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 63
    move-result v1

    .line 64
    move v3, v0

    .line 65
    move v2, v1

    .line 66
    :goto_41
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 68
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->o()I

    .line 71
    move-result v5

    .line 72
    iget-boolean v4, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 74
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 76
    if-eqz v0, :cond_67

    .line 78
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 80
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 82
    if-eqz v0, :cond_67

    .line 84
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/SubCandParam;->l()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_67

    .line 90
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 92
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 94
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 96
    iget-object v0, v0, Lcom/baidu/input/ime/params/SubCandParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 98
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->d()Lcom/baidu/input/ime/params/StyleParam;

    .line 101
    move-result-object v0

    .line 102
    :goto_65
    move-object v7, v0

    .line 103
    goto :goto_69

    .line 104
    :cond_67
    const/4 v0, 0x0

    .line 105
    goto :goto_65

    .line 106
    :goto_69
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W0:[B

    .line 108
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 115
    move-result-object v1

    .line 116
    iget-object v6, v1, Lcom/baidu/skinrender/SkinRenderStatus;->u:Landroid/graphics/Bitmap;

    .line 118
    invoke-static/range {v2 .. v7}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v1(IIZILandroid/graphics/Bitmap;Lcom/baidu/input/ime/params/StyleParam;)Landroid/graphics/Bitmap;

    .line 121
    move-result-object v1

    .line 122
    iput-object v1, v0, Lcom/baidu/skinrender/SkinRenderStatus;->u:Landroid/graphics/Bitmap;

    .line 124
    return-void
.end method

.method public final i0()V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z:Lcom/baidu/input/panel/render/cand/CandSlideHandler;

    .line 5
    if-nez v1, :cond_21a

    .line 7
    new-instance v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;

    .line 9
    iget-object v2, p0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 11
    iget v3, v2, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 13
    invoke-virtual {v2, v3}, Lcom/baidu/input/ime/SinglePointerHandler;->b(I)Landroid/graphics/Point;

    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 19
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 26
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 28
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v4, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e1:Landroid/graphics/Rect;

    .line 35
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v5, 0x0

    .line 41
    iput v5, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->c:I

    .line 43
    iput v5, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->d:I

    .line 45
    iput v5, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->j:I

    .line 47
    iput-boolean v5, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->k:Z

    .line 49
    iput v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->a:I

    .line 51
    iput v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->b:I

    .line 53
    iput v3, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->g:I

    .line 55
    iput v4, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->h:I

    .line 57
    sget-object v2, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 66
    move-result-object v2

    .line 67
    const/high16 v3, 0x41600000  # 14.0f

    .line 69
    const/4 v4, 0x1

    .line 70
    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    move-result v2

    .line 74
    float-to-int v2, v2

    .line 75
    iput v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->d:I

    .line 77
    const-class v3, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 79
    invoke-static {v3}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 85
    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_6e

    .line 95
    invoke-static {v3}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 101
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->h()Z

    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_78

    .line 111
    :cond_6e
    int-to-float v2, v2

    .line 112
    sget v3, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 114
    sget v6, Lcom/baidu/input/pub/ImeBaseGlobal;->q:F

    .line 116
    div-float/2addr v3, v6

    .line 117
    mul-float/2addr v3, v2

    .line 118
    float-to-int v2, v3

    .line 119
    iput v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->d:I

    .line 121
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "cursorMoveGap = "

    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget v3, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->d:I

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    new-array v3, v5, [Ljava/lang/Object;

    .line 139
    const-string v6, "CandSlideHandler"

    .line 141
    invoke-static {v6, v2, v3}, Lcom/baidu/input/devtool/log/BDLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v2, Landroid/os/Handler;

    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 149
    move-result-object v3

    .line 150
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    iput-object v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->e:Landroid/os/Handler;

    .line 155
    new-instance v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;

    .line 157
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 160
    iput v5, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->h:I

    .line 162
    iput v5, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->i:I

    .line 164
    iput-boolean v5, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->j:Z

    .line 166
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 168
    iput-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->a:Landroid/view/View;

    .line 170
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 173
    move-result-object v3

    .line 174
    sget v6, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 176
    sget v7, Lcom/baidu/input/pub/ImeBaseGlobal;->q:F

    .line 178
    div-float/2addr v6, v7

    .line 179
    new-instance v7, Landroid/os/Handler;

    .line 181
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 184
    move-result-object v8

    .line 185
    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    iput-object v7, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->k:Landroid/os/Handler;

    .line 190
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object v7

    .line 194
    const v8, 0x7f080738

    .line 197
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 200
    move-result-object v7

    .line 201
    iput-object v7, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->b:Landroid/graphics/Bitmap;

    .line 203
    const/4 v7, 0x4

    .line 204
    new-array v8, v7, [Landroid/graphics/Bitmap;

    .line 206
    iput-object v8, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 208
    new-array v7, v7, [Landroid/graphics/Bitmap;

    .line 210
    iput-object v7, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    move-result-object v7

    .line 216
    const v9, 0x7f080739

    .line 219
    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 222
    move-result-object v7

    .line 223
    aput-object v7, v8, v5

    .line 225
    iget-object v7, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 227
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object v3

    .line 231
    const v8, 0x7f08073a

    .line 234
    invoke-static {v3, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 237
    move-result-object v3

    .line 238
    aput-object v3, v7, v5

    .line 240
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_109

    .line 250
    const v3, -0x413c35

    .line 253
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 256
    move-result v7

    .line 257
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 260
    move-result v8

    .line 261
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 264
    move-result v3

    .line 265
    goto :goto_140

    .line 266
    :cond_109
    invoke-static {}, Lcom/baidu/util/ColorPicker;->getUnSelectedColor()I

    .line 269
    move-result v3

    .line 270
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 273
    move-result v7

    .line 274
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 277
    move-result v8

    .line 278
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 281
    move-result v9

    .line 282
    iget-object v10, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->b:Landroid/graphics/Bitmap;

    .line 284
    invoke-static {v10, v3}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 287
    move-result-object v3

    .line 288
    iput-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->b:Landroid/graphics/Bitmap;

    .line 290
    iget-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 292
    aget-object v10, v3, v5

    .line 294
    const/16 v11, 0xff

    .line 296
    invoke-static {v11, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 299
    move-result v12

    .line 300
    invoke-static {v10, v12}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 303
    move-result-object v10

    .line 304
    aput-object v10, v3, v5

    .line 306
    iget-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 308
    aget-object v10, v3, v5

    .line 310
    invoke-static {v11, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 313
    move-result v11

    .line 314
    invoke-static {v10, v11}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 317
    move-result-object v10

    .line 318
    aput-object v10, v3, v5

    .line 320
    move v3, v9

    .line 321
    :goto_140
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 323
    aget-object v10, v9, v5

    .line 325
    const/16 v11, 0x99

    .line 327
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 330
    move-result v12

    .line 331
    invoke-static {v10, v12}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 334
    move-result-object v10

    .line 335
    aput-object v10, v9, v4

    .line 337
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 339
    aget-object v10, v9, v5

    .line 341
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 344
    move-result v11

    .line 345
    invoke-static {v10, v11}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 348
    move-result-object v10

    .line 349
    aput-object v10, v9, v4

    .line 351
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 353
    aget-object v10, v9, v5

    .line 355
    const/16 v11, 0x4c

    .line 357
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 360
    move-result v12

    .line 361
    invoke-static {v10, v12}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 364
    move-result-object v10

    .line 365
    const/4 v12, 0x2

    .line 366
    aput-object v10, v9, v12

    .line 368
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 370
    aget-object v10, v9, v5

    .line 372
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 375
    move-result v11

    .line 376
    invoke-static {v10, v11}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 379
    move-result-object v10

    .line 380
    aput-object v10, v9, v12

    .line 382
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 384
    aget-object v10, v9, v5

    .line 386
    const/16 v11, 0x19

    .line 388
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 391
    move-result v12

    .line 392
    invoke-static {v10, v12}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 395
    move-result-object v10

    .line 396
    const/4 v12, 0x3

    .line 397
    aput-object v10, v9, v12

    .line 399
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->g:[Landroid/graphics/Bitmap;

    .line 401
    aget-object v10, v9, v5

    .line 403
    invoke-static {v11, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 406
    move-result v3

    .line 407
    invoke-static {v10, v3}, Lcom/baidu/input/common/utils/BitmapUtils;->getBitmapByColorWithAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 410
    move-result-object v3

    .line 411
    aput-object v3, v9, v12

    .line 413
    iget-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->b:Landroid/graphics/Bitmap;

    .line 415
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 418
    move-result v3

    .line 419
    int-to-float v3, v3

    .line 420
    mul-float/2addr v3, v6

    .line 421
    float-to-int v3, v3

    .line 422
    iget-object v7, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->b:Landroid/graphics/Bitmap;

    .line 424
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 427
    move-result v7

    .line 428
    int-to-float v7, v7

    .line 429
    mul-float/2addr v7, v6

    .line 430
    float-to-int v7, v7

    .line 431
    iget-object v8, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 433
    aget-object v8, v8, v5

    .line 435
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 438
    move-result v8

    .line 439
    int-to-float v8, v8

    .line 440
    mul-float/2addr v8, v6

    .line 441
    float-to-int v8, v8

    .line 442
    iget-object v9, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->f:[Landroid/graphics/Bitmap;

    .line 444
    aget-object v9, v9, v5

    .line 446
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 449
    move-result v9

    .line 450
    int-to-float v9, v9

    .line 451
    mul-float/2addr v9, v6

    .line 452
    float-to-int v9, v9

    .line 453
    sget v10, Lcom/baidu/input/pub/ImeBaseGlobal;->o:F

    .line 455
    const/high16 v11, 0x41b00000  # 22.0f

    .line 457
    mul-float/2addr v11, v10

    .line 458
    mul-float/2addr v11, v6

    .line 459
    float-to-int v11, v11

    .line 460
    const/high16 v13, 0x41400000  # 12.0f

    .line 462
    mul-float/2addr v10, v13

    .line 463
    mul-float/2addr v10, v6

    .line 464
    float-to-int v6, v10

    .line 465
    new-instance v10, Landroid/graphics/Rect;

    .line 467
    neg-int v13, v3

    .line 468
    shr-int/2addr v13, v4

    .line 469
    shr-int/2addr v3, v4

    .line 470
    invoke-direct {v10, v13, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 473
    iput-object v10, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->c:Landroid/graphics/Rect;

    .line 475
    new-array v3, v12, [Landroid/graphics/Rect;

    .line 477
    iput-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->d:[Landroid/graphics/Rect;

    .line 479
    new-array v3, v12, [Landroid/graphics/Rect;

    .line 481
    iput-object v3, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->e:[Landroid/graphics/Rect;

    .line 483
    move v3, v5

    .line 484
    :goto_1e3
    iget-object v4, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->e:[Landroid/graphics/Rect;

    .line 486
    array-length v4, v4

    .line 487
    if-ge v3, v4, :cond_216

    .line 489
    iget-object v4, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->d:[Landroid/graphics/Rect;

    .line 491
    new-instance v7, Landroid/graphics/Rect;

    .line 493
    neg-int v10, v11

    .line 494
    iget-object v12, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->d:[Landroid/graphics/Rect;

    .line 496
    array-length v13, v12

    .line 497
    sub-int/2addr v13, v3

    .line 498
    mul-int/2addr v13, v6

    .line 499
    sub-int v13, v10, v13

    .line 501
    sub-int/2addr v13, v8

    .line 502
    array-length v12, v12

    .line 503
    sub-int/2addr v12, v3

    .line 504
    mul-int/2addr v12, v6

    .line 505
    sub-int/2addr v10, v12

    .line 506
    invoke-direct {v7, v13, v5, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    aput-object v7, v4, v3

    .line 511
    iget-object v4, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->e:[Landroid/graphics/Rect;

    .line 513
    new-instance v7, Landroid/graphics/Rect;

    .line 515
    iget-object v10, v2, Lcom/baidu/input/panel/render/cand/CandSlideAnimator;->e:[Landroid/graphics/Rect;

    .line 517
    array-length v12, v10

    .line 518
    invoke-static {v12, v3, v6, v11}, Lcom/baidu/oa;->b(IIII)I

    .line 521
    move-result v12

    .line 522
    array-length v10, v10

    .line 523
    sub-int/2addr v10, v3

    .line 524
    mul-int/2addr v10, v6

    .line 525
    add-int/2addr v10, v11

    .line 526
    add-int/2addr v10, v8

    .line 527
    invoke-direct {v7, v12, v5, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 530
    aput-object v7, v4, v3

    .line 532
    add-int/lit8 v3, v3, 0x1

    .line 534
    goto :goto_1e3

    .line 535
    :cond_216
    iput-object v2, v1, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->i:Lcom/baidu/input/panel/render/cand/CandSlideAnimator;

    .line 537
    iput-object v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z:Lcom/baidu/input/panel/render/cand/CandSlideHandler;

    .line 539
    :cond_21a
    return-void
.end method

.method public final init()V
    .registers 11

    .line 1
    sget-byte v0, Lcom/baidu/input/pub/Global;->c0:B

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->u0()Z

    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->j0()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_13

    .line 16
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->e0()V

    .line 19
    goto :goto_25

    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->f0()V

    .line 23
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->g0()V

    .line 26
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->T()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_22

    .line 32
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->h0()V

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->b0()V

    .line 38
    :goto_25
    invoke-static {}, Lcom/baidu/util/ColorPicker;->invalidatePickedColors()V

    .line 41
    iget-boolean v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->V:Z

    .line 43
    iget-object v2, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v1, :cond_35

    .line 48
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 50
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->s1()V

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i2()V

    .line 57
    iput-boolean v3, v2, Lcom/baidu/input/ime/KeymapMac;->l:Z

    .line 59
    :goto_3a
    iget v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 61
    const/4 v4, 0x1

    .line 62
    const/16 v5, 0x6f

    .line 64
    if-lez v1, :cond_e2

    .line 66
    sget-object v1, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 68
    aget-boolean v1, v1, v5

    .line 70
    if-nez v1, :cond_51

    .line 72
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 74
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 76
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->onEvaluateFullscreenMode()Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_e2

    .line 82
    :cond_51
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 84
    if-eqz v1, :cond_c1

    .line 86
    iget v6, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 88
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 90
    iget-object v7, v1, Lcom/baidu/input/ime/render/CandRender;->B:Landroid/graphics/Rect;

    .line 92
    if-eqz v7, :cond_67

    .line 94
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 96
    add-int/2addr v8, v6

    .line 97
    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 99
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 101
    add-int/2addr v8, v6

    .line 102
    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 104
    :cond_67
    iget-object v7, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 106
    if-eqz v7, :cond_75

    .line 108
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 110
    add-int/2addr v8, v6

    .line 111
    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 113
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 115
    add-int/2addr v8, v6

    .line 116
    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 118
    :cond_75
    iget-object v7, v1, Lcom/baidu/input/ime/render/CandRender;->D:Landroid/graphics/Rect;

    .line 120
    if-eqz v7, :cond_83

    .line 122
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 124
    add-int/2addr v8, v6

    .line 125
    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 127
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 129
    add-int/2addr v8, v6

    .line 130
    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 132
    :cond_83
    iget v7, v1, Lcom/baidu/input/ime/render/CandRender;->p:I

    .line 134
    if-lez v7, :cond_c1

    .line 136
    move v7, v4

    .line 137
    :goto_88
    iget v8, v1, Lcom/baidu/input/ime/render/CandRender;->p:I

    .line 139
    if-gt v7, v8, :cond_aa

    .line 141
    iget-object v8, v1, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    .line 143
    aget-object v8, v8, v7

    .line 145
    if-eqz v8, :cond_a7

    .line 147
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 149
    add-int/2addr v9, v6

    .line 150
    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 152
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 154
    add-int/2addr v9, v6

    .line 155
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 157
    iget-object v8, v1, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 159
    iget-object v8, v8, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 161
    invoke-virtual {v8, v7}, Lcom/baidu/input/ime/params/CandLoader;->D(I)Lcom/baidu/input/ime/params/IconParam;

    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v8, v6}, Lcom/baidu/input/ime/params/IconParam;->r(I)V

    .line 168
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    .line 170
    goto :goto_88

    .line 171
    :cond_aa
    move v7, v4

    .line 172
    :goto_ab
    iget-object v8, v1, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 174
    iget-object v8, v8, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 176
    iget-object v9, v8, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 178
    iget v9, v9, Lcom/baidu/input/ime/params/CandStyleParam;->g:I

    .line 180
    if-gt v7, v9, :cond_c1

    .line 182
    invoke-virtual {v8, v7}, Lcom/baidu/input/ime/params/CandLoader;->F(I)Lcom/baidu/input/ime/params/IconParam;

    .line 185
    move-result-object v8

    .line 186
    if-eqz v8, :cond_be

    .line 188
    invoke-virtual {v8, v6}, Lcom/baidu/input/ime/params/IconParam;->r(I)V

    .line 191
    :cond_be
    add-int/lit8 v7, v7, 0x1

    .line 193
    goto :goto_ab

    .line 194
    :cond_c1
    iget-boolean v1, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 196
    if-eqz v1, :cond_e2

    .line 198
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 201
    move-result-object v1

    .line 202
    iget-byte v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 204
    const/4 v6, 0x2

    .line 205
    if-ne v1, v6, :cond_e2

    .line 207
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 209
    iget v6, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 211
    iget-object v7, v1, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 213
    if-eqz v7, :cond_d9

    .line 215
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 218
    :cond_d9
    iget-object v7, v1, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 220
    if-eqz v7, :cond_e0

    .line 222
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 225
    :cond_e0
    iput v6, v1, Lcom/baidu/input/ime/SubList;->M:I

    .line 227
    :cond_e2
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 230
    move-result-object v1

    .line 231
    iget-boolean v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->f:Z

    .line 233
    if-nez v1, :cond_ec

    .line 235
    iput-boolean v3, v2, Lcom/baidu/input/ime/KeymapMac;->l:Z

    .line 237
    :cond_ec
    iput-boolean v4, p0, Lcom/baidu/input/ime/AbsSoftView;->k:Z

    .line 239
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 241
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 243
    if-eqz v0, :cond_103

    .line 245
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 247
    aget-boolean v0, v0, v5

    .line 249
    if-nez v0, :cond_103

    .line 251
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 253
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getKeymapViewManager()Lcom/baidu/input/ime/viewmanager/KeymapViewManager;

    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->o()V

    .line 260
    :cond_103
    sget-boolean v0, Lcom/baidu/util/VersionUtils;->IS_RELEASE_VERSION:Z

    .line 262
    if-nez v0, :cond_176

    .line 264
    iget-boolean v0, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 266
    if-eqz v0, :cond_176

    .line 268
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 270
    if-eqz v0, :cond_176

    .line 272
    new-instance v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;

    .line 274
    invoke-direct {v0}, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 279
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z0()Landroid/graphics/Rect;

    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_121

    .line 285
    iget-object v2, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->a:Landroid/graphics/Rect;

    .line 287
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 290
    :cond_121
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 292
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o1()Landroid/graphics/Rect;

    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_12e

    .line 298
    iget-object v2, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->b:Landroid/graphics/Rect;

    .line 300
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    :cond_12e
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 305
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L0()Landroid/graphics/Rect;

    .line 308
    move-result-object v1

    .line 309
    if-eqz v1, :cond_13b

    .line 311
    iget-object v2, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->c:Landroid/graphics/Rect;

    .line 313
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    :cond_13b
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->c0:Lcom/baidu/input/auto/util/CandidateViewTreeDumper;

    .line 318
    iget-object v1, v1, Lcom/baidu/input/auto/util/CandidateViewTreeDumper;->a:Lcom/baidu/input/auto/viewdumper/custom/CustomViewGroup;

    .line 320
    iget-object v2, v1, Lcom/baidu/input/auto/viewdumper/custom/CustomViewGroup;->a:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v2, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->a:Landroid/graphics/Rect;

    .line 327
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 330
    move-result v2

    .line 331
    iget-object v1, v1, Lcom/baidu/input/auto/viewdumper/custom/CustomViewGroup;->a:Ljava/util/ArrayList;

    .line 333
    if-nez v2, :cond_156

    .line 335
    new-instance v2, Lcom/baidu/input/auto/viewdumper/custom/CustomView;

    .line 337
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_156
    iget-object v2, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->b:Landroid/graphics/Rect;

    .line 345
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_166

    .line 351
    new-instance v2, Lcom/baidu/input/auto/viewdumper/custom/CustomView;

    .line 353
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_166
    iget-object v0, v0, Lcom/baidu/input/auto/util/CandidateViewTreeDumper$InnerBuilder;->c:Landroid/graphics/Rect;

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_176

    .line 367
    new-instance v0, Lcom/baidu/input/auto/viewdumper/custom/CustomView;

    .line 369
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_176
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->a0()V

    .line 378
    return-void
.end method

.method public final k()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 3
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k0(Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    if-eqz v0, :cond_b2

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 7
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 10
    invoke-static {}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->b()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_14

    .line 17
    invoke-static {v1}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->k(Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil$ClickListener;)V

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_22

    .line 28
    const p1, 0x7f120366

    .line 31
    invoke-static {p1, v2}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 34
    return-void

    .line 35
    :cond_22
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 37
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 39
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->Z()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_33

    .line 45
    const p1, 0x7f12020d

    .line 48
    invoke-static {p1, v2}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 51
    return-void

    .line 52
    :cond_33
    if-nez p1, :cond_36

    .line 54
    return-void

    .line 55
    :cond_36
    iget-wide v3, p1, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;->id:J

    .line 57
    sput-wide v3, Lcom/baidu/input/util/CircleReturnUtilKt;->e:J

    .line 59
    sget-object v0, Lcom/baidu/input/util/CircleReturnUtilKt;->f:Landroid/os/Bundle;

    .line 61
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 64
    const-string v3, "user_role"

    .line 66
    iget v4, p1, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;->role:I

    .line 68
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v3, "show_red"

    .line 73
    iget-boolean p1, p1, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;->showRedPoint:Z

    .line 75
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 80
    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 82
    invoke-virtual {p1}, Lcom/baidu/input/ime/InputEventHandler;->j0()V

    .line 85
    const/4 p1, 0x1

    .line 86
    sput-boolean p1, Lcom/baidu/input/util/CircleReturnUtilKt;->d:Z

    .line 88
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 90
    invoke-virtual {p1}, Lcom/baidu/input/ImeService;->getSceneManager()Lcom/baidu/input/ime/scene/ISceneManager;

    .line 93
    move-result-object p1

    .line 94
    const/16 v0, 0x66

    .line 96
    invoke-interface {p1, v0}, Lcom/baidu/input/ime/scene/ISceneManager;->l(I)Z

    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6f

    .line 102
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 104
    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 106
    const v0, 0xf021

    .line 109
    invoke-virtual {p1, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 112
    :cond_6f
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 114
    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 116
    const v0, 0xf020

    .line 119
    invoke-virtual {p1, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 122
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 124
    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {}, Lcom/baidu/input/ime/InputEventHandler;->I0()V

    .line 132
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 134
    invoke-virtual {p1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 137
    const-class p1, Lcom/baidu/stats/impl/StreamStats;

    .line 139
    invoke-static {p1}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/baidu/stats/impl/StreamStats;

    .line 145
    const-string v2, "BIElementMainCandidateCircleBtn"

    .line 147
    const-string v3, "BIEPageMainCandidate"

    .line 149
    const-string v4, "BISEventClick"

    .line 151
    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    .line 156
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string v2, "BISParamCircleEntranceType"

    .line 161
    const-string v3, "cand"

    .line 163
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Lcom/baidu/stats/impl/StreamStats;

    .line 172
    const-string v2, "BIEPageCirclePanel"

    .line 174
    const-string v3, "BISEventEnter"

    .line 176
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    :cond_b2
    return-void
.end method

.method public final l0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3c

    .line 8
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 10
    if-eqz v0, :cond_3c

    .line 12
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 14
    iget-object v3, v1, Lcom/baidu/input/ime/InputEventHandler;->A:Lcom/baidu/input/ime/newcore/state/InputBarState2;

    .line 16
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->b()V

    .line 19
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 21
    iget v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 33
    move-result v0

    .line 34
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 36
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W()V

    .line 39
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_31

    .line 45
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 47
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w1()V

    .line 50
    :cond_31
    iget-object v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 52
    int-to-short v4, v0

    .line 53
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v0, v2

    .line 62
    :goto_3d
    if-nez v0, :cond_4a

    .line 64
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 66
    const/16 v3, 0x9

    .line 68
    aget-boolean v0, v0, v3

    .line 70
    if-eqz v0, :cond_4a

    .line 72
    invoke-virtual {v1, v2}, Lcom/baidu/input/ime/InputEventHandler;->c0(Z)V

    .line 75
    :cond_4a
    return-void
.end method

.method public final m0(Lcom/baidu/input/ime/cand/CandHandler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-eqz p1, :cond_8

    .line 5
    iget-object v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 7
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_d

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move p1, v0

    .line 15
    :goto_e
    iput-boolean p1, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/baidu/input/ime/AbsSoftView;->k:Z

    .line 19
    return-void
.end method

.method public final n0(BZ)V
    .registers 7

    .line 1
    sput-byte p1, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 3
    iget-boolean v0, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_3c

    .line 9
    const/4 v0, -0x1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq p1, v3, :cond_33

    .line 13
    if-eq p1, v1, :cond_1b

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_12

    .line 18
    goto :goto_40

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 21
    iput-boolean v2, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v:Z

    .line 23
    if-eqz p2, :cond_40

    .line 25
    iput-short v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 27
    goto :goto_40

    .line 28
    :cond_1b
    sget-byte p1, Lcom/baidu/input/pub/Global;->i0:B

    .line 30
    if-ne p1, v1, :cond_28

    .line 32
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 34
    instance-of v0, p1, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKBottomCand;

    .line 36
    if-nez v0, :cond_28

    .line 38
    iput-boolean v3, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v:Z

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 43
    iput-boolean v2, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v:Z

    .line 45
    :goto_2c
    if-eqz p2, :cond_40

    .line 47
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 49
    iput-short v2, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 51
    goto :goto_40

    .line 52
    :cond_33
    iget-object p1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 54
    iput-boolean v2, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->v:Z

    .line 56
    if-eqz p2, :cond_40

    .line 58
    iput-short v0, p1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 60
    goto :goto_40

    .line 61
    :cond_3c
    if-ne p1, v1, :cond_40

    .line 63
    sput-byte v2, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public final o0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-eqz v0, :cond_40

    .line 5
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o1()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_40

    .line 11
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/baidu/input/ime/KeymapMac;->l:Z

    .line 16
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/baidu/input/flavor/FlavorMacroDependencies;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Lcom/baidu/input/oem/OemChannel;->c()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3d

    .line 36
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const/16 v0, 0x9

    .line 43
    sput-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->p1:B

    .line 45
    sget-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i1:B

    .line 47
    if-ne v0, v1, :cond_38

    .line 49
    const/16 v0, 0x8

    .line 51
    sput v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z0:I

    .line 53
    const/4 v0, 0x0

    .line 54
    sput-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i1:B

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    const/4 v0, 0x7

    .line 58
    sput v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z0:I

    .line 60
    sput-byte v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i1:B

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/AbsCandView;->p()V

    .line 65
    :cond_40
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onFinish()V
    .registers 1

    .line 1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 8
    move-result-object p2

    .line 9
    iget-boolean p2, p2, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_22

    .line 15
    const/16 p2, 0x3b

    .line 17
    if-eq p1, p2, :cond_16

    .line 19
    const/16 p2, 0x3c

    .line 21
    if-ne p1, p2, :cond_22

    .line 23
    :cond_16
    iget-object p2, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 25
    invoke-virtual {p2, v0}, Lcom/baidu/input/ime/SubList;->E(I)Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_23

    .line 31
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p2, v1

    .line 36
    :cond_23
    :goto_23
    if-nez p2, :cond_166

    .line 38
    sget-byte v2, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 40
    iget-object v3, p0, Lcom/baidu/input/ime/AbsSoftView;->c:Lcom/baidu/input/ime/InputStatMac;

    .line 42
    const/4 v4, 0x5

    .line 43
    const/4 v5, 0x2

    .line 44
    const/16 v6, 0x10

    .line 46
    if-eq v2, v0, :cond_a9

    .line 48
    if-eq v2, v5, :cond_71

    .line 50
    const/4 v4, 0x3

    .line 51
    if-eq v2, v4, :cond_36

    .line 53
    goto/16 :goto_166

    .line 55
    :cond_36
    packed-switch p1, :pswitch_data_174

    .line 58
    goto/16 :goto_166

    .line 60
    :pswitch_3b  #0x14, 0x15, 0x16
    iget-boolean p1, p0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 62
    if-eqz p1, :cond_166

    .line 64
    invoke-virtual {p0, v5, v0}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 67
    :cond_42
    :goto_42
    move p2, v0

    .line 68
    goto/16 :goto_166

    .line 70
    :pswitch_45  #0x13
    iget-boolean p1, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 72
    if-eqz p1, :cond_166

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 77
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 79
    iput v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 81
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 88
    move-result-object p1

    .line 89
    iget-boolean p1, p1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 91
    if-eqz p1, :cond_66

    .line 93
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 95
    iget p2, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 97
    iput p2, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 99
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 102
    goto :goto_42

    .line 103
    :cond_66
    iget p1, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 105
    if-eq p1, v6, :cond_42

    .line 107
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 109
    iget p2, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 111
    iput p2, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 113
    goto :goto_42

    .line 114
    :cond_71
    iget-boolean v2, p0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 116
    if-eqz v2, :cond_8f

    .line 118
    const/16 v2, 0x13

    .line 120
    if-ne p1, v2, :cond_8f

    .line 122
    iget v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 124
    if-gt v2, v0, :cond_8f

    .line 126
    invoke-virtual {p0, v0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 129
    iget-object p2, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 131
    iget v2, p2, Lcom/baidu/input/ime/SubList;->h0:I

    .line 133
    if-eq v2, v4, :cond_8e

    .line 135
    iput v1, p2, Lcom/baidu/input/ime/SubList;->o:I

    .line 137
    iget v2, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 139
    if-eq v2, v6, :cond_8e

    .line 141
    iput v1, p2, Lcom/baidu/input/ime/SubList;->m:I

    .line 143
    :cond_8e
    move p2, v0

    .line 144
    :cond_8f
    if-nez p2, :cond_166

    .line 146
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 148
    invoke-virtual {v1, p1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->I1(I)B

    .line 151
    move-result p1

    .line 152
    if-lez p1, :cond_166

    .line 154
    iget-object p2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 156
    iput-byte p1, p2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J:B

    .line 158
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->o:Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 160
    if-eqz p1, :cond_42

    .line 162
    iget-object p2, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 164
    iget-object p2, p2, Lcom/baidu/input/ime/newcore/state/CandState2;->k:Lcom/baidu/input/pub/CoreString;

    .line 166
    invoke-virtual {p1, p2}, Lcom/baidu/input/ime/editor/DeleterDialog;->f(Lcom/baidu/input/pub/CoreString;)V

    .line 169
    goto :goto_42

    .line 170
    :cond_a9
    const/4 v2, -0x1

    .line 171
    packed-switch p1, :pswitch_data_180

    .line 174
    goto/16 :goto_166

    .line 176
    :pswitch_af  #0x17
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 178
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 180
    if-ltz v1, :cond_166

    .line 182
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 184
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 187
    goto :goto_42

    .line 188
    :pswitch_bb  #0x16
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 190
    invoke-virtual {p1, v0}, Lcom/baidu/input/ime/SubList;->E(I)Z

    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_166

    .line 196
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 203
    move-result-object p1

    .line 204
    iget-boolean p1, p1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 206
    if-eqz p1, :cond_da

    .line 208
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 210
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 212
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 214
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 217
    goto/16 :goto_166

    .line 219
    :cond_da
    iget p1, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 221
    if-eq p1, v6, :cond_166

    .line 223
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 225
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 227
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 229
    goto/16 :goto_166

    .line 231
    :pswitch_e6  #0x15
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 233
    invoke-virtual {p1, v2}, Lcom/baidu/input/ime/SubList;->E(I)Z

    .line 236
    move-result p2

    .line 237
    if-eqz p2, :cond_166

    .line 239
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 242
    move-result-object p1

    .line 243
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 246
    move-result-object p1

    .line 247
    iget-boolean p1, p1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 249
    if-eqz p1, :cond_104

    .line 251
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 253
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 255
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 257
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 260
    goto :goto_166

    .line 261
    :cond_104
    iget p1, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 263
    if-eq p1, v6, :cond_166

    .line 265
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 267
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 269
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 271
    goto :goto_166

    .line 272
    :pswitch_10f  #0x14
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 274
    iget p2, p1, Lcom/baidu/input/ime/SubList;->h0:I

    .line 276
    if-eq p2, v4, :cond_11b

    .line 278
    iget p2, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 280
    if-ne p2, v6, :cond_11b

    .line 282
    iput v2, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 284
    :cond_11b
    invoke-virtual {p0, v5, v0}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 287
    goto/16 :goto_42

    .line 289
    :pswitch_120  #0x13
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 291
    iget p2, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 293
    if-ltz p2, :cond_141

    .line 295
    iget v2, p1, Lcom/baidu/input/ime/SubList;->K:I

    .line 297
    if-lez v2, :cond_13f

    .line 299
    iget-object v4, p1, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 301
    if-nez v4, :cond_12f

    .line 303
    goto :goto_13f

    .line 304
    :cond_12f
    array-length v4, v4

    .line 305
    iget v5, p1, Lcom/baidu/input/ime/SubList;->L:I

    .line 307
    if-le v4, v5, :cond_13f

    .line 309
    add-int/2addr p2, v5

    .line 310
    iput p2, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 312
    if-lt p2, v2, :cond_13b

    .line 314
    iput v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 316
    :cond_13b
    invoke-virtual {p1}, Lcom/baidu/input/ime/SubList;->q()V

    .line 319
    move v1, v0

    .line 320
    :cond_13f
    :goto_13f
    move p2, v1

    .line 321
    goto :goto_144

    .line 322
    :cond_141
    iput v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 324
    move p2, v0

    .line 325
    :goto_144
    if-eqz p2, :cond_166

    .line 327
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 330
    move-result-object p1

    .line 331
    invoke-interface {p1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 334
    move-result-object p1

    .line 335
    iget-boolean p1, p1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 337
    if-eqz p1, :cond_15c

    .line 339
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 341
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 343
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 345
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 348
    goto :goto_166

    .line 349
    :cond_15c
    iget p1, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 351
    if-eq p1, v6, :cond_166

    .line 353
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 355
    iget v1, p1, Lcom/baidu/input/ime/SubList;->o:I

    .line 357
    iput v1, p1, Lcom/baidu/input/ime/SubList;->m:I

    .line 359
    :cond_166
    :goto_166
    if-eqz p2, :cond_172

    .line 361
    sput-byte v0, Lcom/baidu/input/pub/Global;->a0:B

    .line 363
    iget-object p1, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-static {}, Lcom/baidu/input/ime/InputEventHandler;->I0()V

    .line 371
    :cond_172
    return v0

    nop

    .line 373
    :pswitch_data_174
    .packed-switch 0x13
        :pswitch_45  #00000013
        :pswitch_3b  #00000014
        :pswitch_3b  #00000015
        :pswitch_3b  #00000016
    .end packed-switch

    .line 385
    :pswitch_data_180
    .packed-switch 0x13
        :pswitch_120  #00000013
        :pswitch_10f  #00000014
        :pswitch_e6  #00000015
        :pswitch_bb  #00000016
        :pswitch_af  #00000017
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    sget-object v2, Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;->h:Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;

    .line 7
    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {v2, v1}, Lcom/baidu/input/ime/params/anim/InputShowHideAnimHandler;->f(Landroid/view/MotionEvent;)V

    .line 12
    :cond_b
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_29

    .line 19
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 22
    move-result-object v2

    .line 23
    iget-boolean v2, v2, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->e:Z

    .line 25
    if-eqz v2, :cond_22

    .line 27
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 30
    move-result-object v2

    .line 31
    iput-boolean v3, v2, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->e:Z

    .line 33
    sput-boolean v3, Lcom/baidu/input/ime/editor/popupdelegate/SceneDelegate;->b0:Z

    .line 35
    :cond_22
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->q()V

    .line 42
    :cond_29
    invoke-static {}, Lcom/baidu/input/ime/paneleasteregg/PanelEasterEggHandler;->d()Lcom/baidu/input/ime/paneleasteregg/PanelEasterEggHandler;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v3}, Lcom/baidu/input/ime/paneleasteregg/PanelEasterEggHandler;->c(Z)V

    .line 49
    iget-object v2, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 51
    iget v4, v2, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 53
    invoke-virtual {v2, v4}, Lcom/baidu/input/ime/SinglePointerHandler;->c(I)Lcom/baidu/input/ime/TouchPoint;

    .line 56
    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/baidu/input/ime/TouchPoint;->a:Landroid/graphics/Point;

    .line 59
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 61
    iget-object v4, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 63
    iget v5, v4, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 65
    invoke-virtual {v4, v5}, Lcom/baidu/input/ime/SinglePointerHandler;->c(I)Lcom/baidu/input/ime/TouchPoint;

    .line 68
    move-result-object v4

    .line 69
    iget-object v4, v4, Lcom/baidu/input/ime/TouchPoint;->a:Landroid/graphics/Point;

    .line 71
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 73
    iget-object v5, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 75
    iget v6, v5, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 77
    invoke-virtual {v5, v6}, Lcom/baidu/input/ime/SinglePointerHandler;->d(I)Landroid/graphics/Point;

    .line 80
    move-result-object v5

    .line 81
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 83
    iget-object v6, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 85
    iget v7, v6, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 87
    invoke-virtual {v6, v7}, Lcom/baidu/input/ime/SinglePointerHandler;->d(I)Landroid/graphics/Point;

    .line 90
    move-result-object v6

    .line 91
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 93
    iget-object v7, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 95
    iget v8, v7, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 97
    invoke-virtual {v7, v8}, Lcom/baidu/input/ime/SinglePointerHandler;->b(I)Landroid/graphics/Point;

    .line 100
    move-result-object v7

    .line 101
    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 103
    iget-object v7, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 105
    iget v7, v7, Lcom/baidu/input/ime/SinglePointerHandler;->d:I

    .line 107
    const-class v8, Lcom/baidu/input/aivoice/api/IAIVoice;

    .line 109
    invoke-static {v8}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Lcom/baidu/input/aivoice/api/IAIVoice;

    .line 115
    invoke-interface {v9}, Lcom/baidu/input/aivoice/api/IAIVoice;->Jj()Z

    .line 118
    move-result v9

    .line 119
    const/4 v10, 0x1

    .line 120
    if-eqz v9, :cond_83

    .line 122
    invoke-static {v8}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/baidu/input/aivoice/api/IAIVoice;

    .line 128
    invoke-interface {v1, v7, v2, v4}, Lcom/baidu/input/aivoice/api/IAIVoice;->L6(III)V

    .line 131
    return v10

    .line 132
    :cond_83
    iget-object v8, v0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 134
    iget-object v9, v0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 136
    const/4 v11, 0x3

    .line 137
    const-wide/16 v12, 0x0

    .line 139
    const/4 v15, 0x2

    .line 140
    if-eqz v7, :cond_1a1

    .line 142
    if-eq v7, v10, :cond_12b

    .line 144
    iput-boolean v10, v0, Lcom/baidu/input/ime/cand/CandidateView;->k0:Z

    .line 146
    sget-byte v9, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 148
    if-eq v9, v10, :cond_11a

    .line 150
    if-eq v9, v15, :cond_99

    .line 152
    goto/16 :goto_229

    .line 154
    :cond_99
    iget-object v4, v0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 156
    invoke-virtual {v4}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_10d

    .line 162
    iget-object v3, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 164
    iget-object v4, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 166
    iget-boolean v4, v4, Lcom/baidu/input/ime/newcore/state/CandState2;->d:Z

    .line 168
    if-eqz v4, :cond_b1

    .line 170
    iget-object v1, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z:Lcom/baidu/input/panel/render/cand/CandSlideHandler;

    .line 172
    if-eqz v1, :cond_b0

    .line 174
    invoke-virtual {v1, v2}, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->b(I)V

    .line 177
    :cond_b0
    return v10

    .line 178
    :cond_b1
    iget-boolean v4, v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l:Z
    if-nez v4, :baidu_mod_move_route
    invoke-virtual {v3}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModWantsMove()Z
    move-result v4
    :baidu_mod_move_route

    .line 180
    if-eqz v4, :cond_bb

    .line 182
    if-ne v7, v15, :cond_bb

    .line 184
    invoke-virtual {v3, v1}, Lcom/baidu/input/ime/cand/CandHandler;->S2(Landroid/view/MotionEvent;)Z

    .line 187
    goto/16 :goto_ca

    .line 188
    :cond_bb
    iget-object v3, v0, Lcom/baidu/input/ime/AbsSoftView;->p:Lcom/baidu/input/ime/SinglePointerHandler;

    .line 190
    iget v4, v3, Lcom/baidu/input/ime/SinglePointerHandler;->f:I

    .line 192
    invoke-virtual {v3, v4}, Lcom/baidu/input/ime/SinglePointerHandler;->b(I)Landroid/graphics/Point;

    .line 195
    move-result-object v3

    .line 196
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 198
    iget-object v4, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 200
    invoke-virtual {v4, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->D0(I)V

    .line 203
    :goto_ca
    iget-object v3, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 205
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1()I

    .line 208
    move-result v3

    .line 209
    if-lez v3, :cond_10c

    .line 211
    iget-object v3, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 213
    invoke-virtual {v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1()I

    .line 216
    move-result v4

    .line 217
    invoke-virtual {v3, v4}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n1(I)S

    .line 220
    move-result v3

    .line 221
    const/16 v4, 0xf05

    .line 223
    if-ne v3, v4, :cond_10c

    .line 225
    sget-object v3, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 227
    if-eqz v3, :cond_10c

    .line 229
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 231
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_10c

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 240
    move-result-wide v3

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 244
    move-result-wide v5

    .line 245
    sub-long/2addr v3, v5

    .line 246
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 249
    move-result v1

    .line 250
    int-to-long v5, v1

    .line 251
    cmp-long v1, v3, v5

    .line 253
    if-ltz v1, :cond_102

    .line 255
    iget-object v1, v8, Lcom/baidu/input/ime/InputEventHandler;->B:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 257
    iput-boolean v10, v1, Lcom/baidu/input/ime/newcore/state/CandState2;->d:Z

    .line 259
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandidateView;->i0()V

    .line 262
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 264
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Z:Lcom/baidu/input/panel/render/cand/CandSlideHandler;

    .line 266
    invoke-virtual {v1, v2}, Lcom/baidu/input/panel/render/cand/CandSlideHandler;->b(I)V

    .line 269
    :cond_10c
    return v10

    .line 270
    :cond_10d
    sget-boolean v2, Lcom/baidu/input/pub/Global;->Z:Z

    .line 272
    if-nez v2, :cond_229

    .line 274
    iget-object v2, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 276
    if-eqz v2, :cond_229

    .line 278
    invoke-virtual {v2, v1}, Lcom/baidu/input/ime/cand/CandHandler;->S2(Landroid/view/MotionEvent;)Z

    .line 281
    goto/16 :goto_229

    .line 283
    :cond_11a
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 285
    invoke-virtual {v1, v5, v6, v2, v4}, Lcom/baidu/input/ime/SubList;->z(IIII)V

    .line 288
    iget-wide v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->K:J

    .line 290
    iput-wide v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->J:J

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 295
    move-result-wide v1

    .line 296
    iput-wide v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->K:J

    .line 298
    goto/16 :goto_229

    .line 300
    :cond_12b
    iget-object v5, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 302
    if-eqz v5, :cond_132

    .line 304
    invoke-virtual {v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->Y()Z

    .line 307
    :cond_132
    sget-boolean v5, Lcom/baidu/input/pub/Global;->Z:Z

    .line 309
    if-eqz v5, :cond_13f

    .line 311
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 313
    if-eqz v1, :cond_229

    .line 315
    invoke-virtual {v1, v3, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u(ZZ)V

    .line 318
    goto/16 :goto_229

    .line 320
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/AbsSoftView;->w()V

    .line 323
    sget-byte v5, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 325
    if-eqz v5, :cond_198

    .line 327
    if-eq v5, v10, :cond_158

    .line 329
    if-eq v5, v15, :cond_14c

    .line 331
    goto/16 :goto_229

    .line 333
    :cond_14c
    iget-object v2, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 335
    if-eqz v2, :cond_229

    .line 337
    invoke-virtual {v2, v1}, Lcom/baidu/input/ime/cand/CandHandler;->S2(Landroid/view/MotionEvent;)Z

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandidateView;->r0()V

    .line 343
    goto/16 :goto_229

    .line 345
    :cond_158
    iget-wide v5, v0, Lcom/baidu/input/ime/cand/CandidateView;->J:J

    .line 347
    cmp-long v1, v5, v12

    .line 349
    if-nez v1, :cond_162

    .line 351
    iget-wide v5, v0, Lcom/baidu/input/ime/cand/CandidateView;->L:J

    .line 353
    iput-wide v5, v0, Lcom/baidu/input/ime/cand/CandidateView;->J:J

    .line 355
    :cond_162
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 357
    iget v5, v1, Lcom/baidu/input/ime/SubList;->o:I

    .line 359
    invoke-virtual {v1, v2, v4}, Lcom/baidu/input/ime/SubList;->m(II)V

    .line 362
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 367
    move-result-wide v12

    .line 368
    iget-wide v14, v0, Lcom/baidu/input/ime/cand/CandidateView;->J:J

    .line 370
    sub-long/2addr v12, v14

    .line 371
    invoke-virtual {v1, v12, v13}, Lcom/baidu/input/ime/SubList;->C(J)V

    .line 374
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 376
    iget-object v1, v1, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 381
    move-result v1

    .line 382
    iget-object v2, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 384
    iget-boolean v2, v2, Lcom/baidu/input/ime/SubList;->W:Z

    .line 386
    if-eqz v2, :cond_186

    .line 388
    invoke-virtual {v9, v11, v10}, Lcom/baidu/input/ime/KeymapMac;->d(BZ)V

    .line 391
    :cond_186
    iget-object v2, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 393
    iget-boolean v4, v2, Lcom/baidu/input/ime/SubList;->Z:Z

    .line 395
    if-eqz v4, :cond_193

    .line 397
    const/4 v4, -0x1

    .line 398
    iput v4, v2, Lcom/baidu/input/ime/SubList;->m:I

    .line 400
    iput v5, v2, Lcom/baidu/input/ime/SubList;->o:I

    .line 402
    goto/16 :goto_229

    .line 404
    :cond_193
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/cand/CandidateView;->U(Z)V

    .line 407
    goto/16 :goto_229

    .line 409
    :cond_198
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 411
    if-eqz v1, :cond_229

    .line 413
    invoke-virtual {v1, v3, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u(ZZ)V

    .line 416
    goto/16 :goto_229

    .line 418
    :cond_1a1
    iput-boolean v3, v0, Lcom/baidu/input/ime/cand/CandidateView;->k0:Z

    .line 420
    sput-boolean v3, Lcom/baidu/input/pub/Global;->Z:Z

    .line 422
    sput-byte v3, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 424
    iget-boolean v5, v0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 426
    if-eqz v5, :cond_1bc

    .line 428
    iget-boolean v5, v9, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 430
    if-eqz v5, :cond_1bc

    .line 432
    iget-object v5, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 434
    invoke-virtual {v5, v1}, Lcom/baidu/input/ime/cand/CandHandler;->S2(Landroid/view/MotionEvent;)Z

    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_1bd

    .line 440
    const/4 v5, 0x2

    .line 441
    invoke-virtual {v0, v5, v3}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 444
    goto/16 :goto_1bd

    .line 445
    :cond_1bc
    move v1, v3

    .line 446
    :cond_1bd
    :goto_1bd
    if-nez v1, :cond_1d5

    .line 448
    iget-boolean v1, v0, Lcom/baidu/input/ime/AbsSoftView;->j:Z

    .line 450
    if-eqz v1, :cond_1d5

    .line 452
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 454
    iget-object v1, v1, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 456
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_1d5

    .line 462
    iget-object v1, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 464
    invoke-virtual {v1, v2, v4}, Lcom/baidu/input/ime/SubList;->l(II)V

    .line 467
    invoke-virtual {v0, v10, v3}, Lcom/baidu/input/ime/cand/CandidateView;->n0(BZ)V

    .line 470
    :cond_1d5
    sget-byte v1, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 472
    if-eq v1, v10, :cond_215

    .line 474
    const/4 v2, 0x2

    .line 475
    if-eq v1, v2, :cond_1dd

    .line 477
    goto/16 :goto_21f

    .line 478
    :cond_1dd
    iget-object v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 480
    iget-boolean v4, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->A:Z

    .line 482
    if-eqz v4, :cond_1f2

    .line 484
    iget-short v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 486
    const/4 v4, -0x1

    .line 487
    if-eq v1, v4, :cond_21f

    .line 489
    sget v1, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 491
    invoke-static {v1}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 494
    move-result-object v1

    .line 495
    invoke-interface {v1, v2}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->e(I)V

    .line 498
    goto/16 :goto_21f

    .line 499
    :cond_1f2
    iget-short v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w:S

    .line 501
    if-eqz v1, :cond_21f

    .line 503
    sget v1, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 505
    invoke-static {v1}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 508
    move-result-object v1

    .line 509
    invoke-interface {v1, v11}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->e(I)V

    .line 512
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 515
    move-result-object v1

    .line 516
    iget-object v1, v1, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    new-instance v2, Lcom/baidu/x8;

    .line 523
    const/16 v4, 0xb

    .line 525
    invoke-direct {v2, v1, v4}, Lcom/baidu/x8;-><init>(Lcom/baidu/iptcore/async/AsyncImePad;I)V

    .line 528
    iget-object v1, v1, Lcom/baidu/iptcore/async/AsyncImePad;->n:Lcom/baidu/iptcore/async/CoreThreadEngine;

    .line 530
    invoke-virtual {v1, v2}, Lcom/baidu/iptcore/async/CoreThreadEngine;->c(Ljava/lang/Runnable;)V

    .line 533
    goto/16 :goto_21f

    .line 534
    :cond_215
    sget v1, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 536
    invoke-static {v1}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 539
    move-result-object v1

    .line 540
    const/4 v2, 0x6

    .line 541
    invoke-interface {v1, v2}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->e(I)V

    .line 544
    :cond_21f
    :goto_21f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 547
    move-result-wide v1

    .line 548
    iput-wide v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->L:J

    .line 550
    iput-wide v12, v0, Lcom/baidu/input/ime/cand/CandidateView;->J:J

    .line 552
    iput-wide v12, v0, Lcom/baidu/input/ime/cand/CandidateView;->K:J

    .line 554
    :cond_229
    :goto_229
    sput-byte v10, Lcom/baidu/input/pub/Global;->a0:B

    .line 556
    sget-byte v1, Lcom/baidu/input/ime/cand/CandidateView;->r0:B

    .line 558
    const/4 v2, 0x2

    .line 559
    if-ne v1, v2, :cond_24d

    .line 561
    if-nez v7, :cond_235

    .line 563
    sput v7, Lcom/baidu/input/pub/Global;->o1:I

    .line 565
    goto/16 :goto_250

    .line 566
    :cond_235
    if-ne v7, v10, :cond_244

    .line 568
    iget-boolean v1, v0, Lcom/baidu/input/ime/cand/CandidateView;->k0:Z

    .line 570
    if-eqz v1, :cond_23f

    .line 572
    const/4 v1, -0x1

    .line 573
    sput v1, Lcom/baidu/input/pub/Global;->o1:I

    .line 575
    goto/16 :goto_241

    .line 576
    :cond_23f
    sput v7, Lcom/baidu/input/pub/Global;->o1:I

    .line 578
    :goto_241
    iput-boolean v3, v0, Lcom/baidu/input/ime/cand/CandidateView;->k0:Z

    .line 580
    goto/16 :goto_250

    .line 581
    :cond_244
    if-eq v7, v11, :cond_249

    .line 583
    const/4 v1, 0x4

    .line 584
    if-ne v7, v1, :cond_250

    .line 586
    :cond_249
    const/4 v1, -0x1

    .line 587
    sput v1, Lcom/baidu/input/pub/Global;->o1:I

    .line 589
    goto/16 :goto_250

    .line 590
    :cond_24d
    const/4 v1, -0x1

    .line 591
    sput v1, Lcom/baidu/input/pub/Global;->o1:I

    .line 593
    :cond_250
    :goto_250
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    invoke-static {}, Lcom/baidu/input/ime/InputEventHandler;->I0()V

    .line 599
    return v10
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/baidu/input/ime/AbsSoftView;->i:Z

    .line 6
    :cond_5
    return-void
.end method

.method public final p0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 6
    move-result v1

    .line 7
    iget-boolean v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->X:Z

    .line 9
    if-eq v2, v1, :cond_13

    .line 11
    iput-boolean v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->X:Z

    .line 13
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->Y:Lcom/baidu/input/cocomodule/core/IKeyboardInputController$OnCandModeChangeListener;

    .line 15
    if-eqz v2, :cond_13

    .line 17
    invoke-interface {v2, v1}, Lcom/baidu/input/cocomodule/core/IKeyboardInputController$OnCandModeChangeListener;->onCandModeChange(Z)V

    .line 20
    :cond_13
    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 40
    if-nez v2, :cond_2f

    .line 42
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void

    .line 48
    :cond_2f
    invoke-virtual {v2, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e2(Z)V

    .line 51
    sget-boolean v1, Lcom/baidu/input/pub/Global;->l1:Z

    .line 53
    if-eqz v1, :cond_45

    .line 55
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_45

    .line 61
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->U:Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 63
    iget-object v2, v1, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;->c:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 68
    iput v3, v1, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;->d:I

    .line 70
    :cond_45
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 77
    move-result v1

    .line 78
    invoke-static {}, Lcom/baidu/input/pub/Global;->W()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_58

    .line 84
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 86
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w1()V

    .line 89
    :cond_58
    iget-object v2, p0, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 91
    int-to-short v1, v1

    .line 92
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/baidu/input/common/utils/RomUtil;->hasIceCreamSandwich()Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_81

    .line 105
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->s:Lcom/baidu/input/accessibility/AccessibilityHelper;

    .line 107
    if-eqz v1, :cond_81

    .line 109
    iget-object v2, v0, Lcom/baidu/input/ime/newcore/state/CandState2;->e:[Lcom/baidu/input/pub/CoreString;

    .line 111
    if-eqz v2, :cond_81

    .line 113
    array-length v2, v2

    .line 114
    if-nez v2, :cond_74

    .line 116
    goto :goto_81

    .line 117
    :cond_74
    check-cast v1, Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$ICandWordSpeaker;

    .line 119
    iget-object v2, v0, Lcom/baidu/input/ime/newcore/state/CandState2;->b:Lcom/baidu/input/ime/cand/CandCoreOutput;

    .line 121
    iget-byte v2, v2, Lcom/baidu/input/ime/cand/CandCoreOutput;->c:B

    .line 123
    invoke-virtual {v0, v3}, Lcom/baidu/input/ime/newcore/state/CandState2;->f(I)Lcom/baidu/input/pub/CoreString;

    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v1, v2, v0}, Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$ICandWordSpeaker;->c(BLcom/baidu/input/pub/CoreString;)V

    .line 130
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 132
    iget-boolean v0, v0, Lcom/baidu/input/ime/KeymapMac;->b:Z

    .line 134
    if-nez v0, :cond_8d

    .line 136
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/AbsCandView;->n()V

    .line 139
    const/4 v0, 0x2

    .line 140
    sput-byte v0, Lcom/baidu/input/pub/Global;->a0:B

    .line 142
    :cond_8d
    return-void
.end method

.method public final q0(IZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 3
    if-eqz p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/baidu/input/ime/cand/CandidateView;->U:Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;

    .line 7
    invoke-virtual {p2, p1}, Lcom/baidu/input/panel/render/cand/slide/CoreStringVisitor;->a(I)Lcom/baidu/input/pub/CoreString;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_19

    .line 12
    :cond_b
    if-ltz p1, :cond_18

    .line 14
    iget-object p2, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 16
    iget p2, p2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->D:I

    .line 18
    if-ge p1, p2, :cond_18

    .line 20
    invoke-virtual {v0, p1}, Lcom/baidu/input/ime/newcore/state/CandState2;->f(I)Lcom/baidu/input/pub/CoreString;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    :goto_19
    if-nez p1, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object p2, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 31
    invoke-virtual {p2}, Lcom/baidu/input/ime/InputEventHandler;->u()Lcom/baidu/input/ime/cloudinput/manage/ICloudBarManager;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_37

    .line 37
    invoke-virtual {p2}, Lcom/baidu/input/ime/InputEventHandler;->u()Lcom/baidu/input/ime/cloudinput/manage/ICloudBarManager;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/baidu/input/ime/cloudinput/manage/ICloudBarManager;->isShowing()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_37

    .line 47
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;->A()Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;

    .line 50
    move-result-object v1

    .line 51
    const/16 v2, 0x30e

    .line 53
    invoke-virtual {v1, v2}, Lcom/baidu/bbm/waterflow/AbsWaterflowArray;->s(I)V

    .line 56
    :cond_37
    iget-object v0, v0, Lcom/baidu/input/ime/newcore/state/CandState2;->e:[Lcom/baidu/input/pub/CoreString;

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_5b

    .line 61
    array-length v2, v0

    .line 62
    const/4 v3, 0x5

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 66
    move-result v2

    .line 67
    move v3, v1

    .line 68
    :goto_43
    if-ge v3, v2, :cond_5b

    .line 70
    aget-object v4, v0, v3

    .line 72
    if-eqz v4, :cond_58

    .line 74
    invoke-virtual {v4}, Lcom/baidu/input/pub/CoreString;->isCloudCache()Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_58

    .line 80
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;->A()Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;

    .line 83
    move-result-object v4

    .line 84
    const/16 v5, 0x310

    .line 86
    invoke-virtual {v4, v5}, Lcom/baidu/bbm/waterflow/AbsWaterflowArray;->s(I)V

    .line 89
    :cond_58
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_43

    .line 92
    :cond_5b
    invoke-virtual {p1}, Lcom/baidu/input/pub/CoreString;->isCloudCache()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6a

    .line 98
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;->A()Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;

    .line 101
    move-result-object v0

    .line 102
    const/16 v2, 0x30c

    .line 104
    invoke-virtual {v0, v2}, Lcom/baidu/bbm/waterflow/AbsWaterflowArray;->s(I)V

    .line 107
    :cond_6a
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 114
    move-result-object v0

    .line 115
    iget-boolean v0, v0, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 117
    if-eqz v0, :cond_84

    .line 119
    iget-object p1, p1, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 121
    invoke-virtual {p2, p1}, Lcom/baidu/input/ime/InputEventHandler;->C0(Ljava/lang/String;)V

    .line 124
    iget-object p1, p2, Lcom/baidu/input/ime/InputEventHandler;->D:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 126
    iget p1, p1, Lcom/baidu/input/ime/newcore/state/ListState2;->d:I

    .line 128
    const/4 p1, 0x4

    .line 129
    invoke-virtual {p2, p1, v1}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 132
    goto :goto_87

    .line 133
    :cond_84
    invoke-virtual {p2, p1}, Lcom/baidu/input/ime/InputEventHandler;->A0(Lcom/baidu/input/pub/CoreString;)V

    .line 136
    :goto_87
    return-void
.end method

.method public final r0()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;
    if-eqz v0, :baidu_mod_select_original
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModSuppressClick()Z
    move-result v1
    if-eqz v1, :baidu_mod_select_original
    invoke-virtual {v0}, Lcom/baidu/input/ime/cand/CandHandler;->baiduModClearClick()V
    return-void
    :baidu_mod_select_original

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-byte v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/baidu/input/common/utils/MathUtils;->isBitSet(BB)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_27

    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/baidu/input/ime/AbsSoftView;->x:Z

    .line 18
    invoke-virtual {p0, p0}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->q(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 23
    iget-byte v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 25
    invoke-static {v2, v1}, Lcom/baidu/input/common/utils/MathUtils;->bitClean(BB)B

    .line 28
    move-result v1

    .line 29
    iput-byte v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 31
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 33
    iget-short v1, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 35
    iget-boolean v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/baidu/input/ime/cand/CandidateView;->q0(IZ)V

    .line 40
    :cond_27
    return-void
.end method

.method public final s0()V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v0, -0x1

    .line 4
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v2, :cond_14

    .line 9
    iget-byte v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->u:B

    .line 11
    invoke-static {v2, v3}, Lcom/baidu/input/common/utils/MathUtils;->isBitSet(BB)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_14

    .line 17
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 19
    iget-short v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 21
    :cond_14
    iget-boolean v2, v1, Lcom/baidu/input/ime/AbsSoftView;->k:Z

    .line 23
    if-nez v2, :cond_1a

    .line 25
    goto/16 :goto_805

    .line 27
    :cond_1a
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 29
    iget-object v4, v1, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v2, :cond_7ca

    .line 34
    iget-byte v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J:B

    .line 36
    if-lez v2, :cond_7ca

    .line 38
    iget-object v6, v1, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 40
    const/16 v7, 0xf

    .line 42
    if-eq v2, v7, :cond_34

    .line 44
    invoke-virtual {v6}, Lcom/baidu/input/ime/InputEventHandler;->O()Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_34

    .line 50
    invoke-virtual {v6}, Lcom/baidu/input/ime/InputEventHandler;->t()V

    .line 53
    :cond_34
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 55
    iget-byte v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J:B

    .line 57
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 60
    move-result-object v7

    .line 61
    iget-object v7, v7, Lcom/baidu/input/panel/session/PanelSession;->e:Lcom/baidu/input/ime/InputStatMac;

    .line 63
    iget-object v8, v1, Lcom/baidu/input/ime/AbsSoftView;->c:Lcom/baidu/input/ime/InputStatMac;

    .line 65
    const/4 v10, 0x7

    .line 66
    const/4 v11, 0x3

    .line 67
    const-wide/16 v12, 0x2ee

    .line 69
    const/16 v14, 0x28

    .line 71
    const/16 v9, 0x9

    .line 73
    const/4 v15, 0x2

    .line 74
    packed-switch v2, :pswitch_data_806

    .line 77
    :cond_4c
    :goto_4c
    :pswitch_4c  #0x4, 0x5, 0x8, 0x9, 0x15, 0x17
    move v2, v5

    .line 78
    goto/16 :goto_7c4

    .line 80
    :pswitch_4f  #0x1b
    const/16 v0, 0xad

    .line 82
    invoke-virtual {v6, v0, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 85
    goto :goto_4c

    .line 86
    :pswitch_55  #0x19, 0x1a
    invoke-virtual {v6, v14, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 89
    goto :goto_4c

    .line 90
    :pswitch_59  #0x18
    invoke-virtual {v6, v9, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 93
    goto :goto_4c

    .line 94
    :pswitch_5d  #0x16
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 96
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getSmartPredictor()Lcom/baidu/input/ime/SmartPredictorBase;

    .line 99
    move-result-object v0

    .line 100
    iget-boolean v0, v0, Lcom/baidu/input/ime/SmartPredictorBase;->e:Z

    .line 102
    if-eqz v0, :cond_4c

    .line 104
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 106
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getSmartPredictor()Lcom/baidu/input/ime/SmartPredictorBase;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 115
    iget-object v0, v0, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 117
    if-eqz v0, :cond_4c

    .line 119
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputEventHandler;->j0()V

    .line 122
    goto :goto_4c

    .line 123
    :pswitch_7a  #0x14
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/AbsSoftView;->w()V

    .line 126
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->k(I)V

    .line 129
    goto :goto_4c

    .line 130
    :pswitch_81  #0x13
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandidateView;->o0()V

    .line 133
    goto :goto_4c

    .line 134
    :pswitch_85  #0x12
    sput-boolean v5, Lcom/baidu/input/ime/AbsSoftView;->x:Z

    .line 136
    sput-short v5, Lcom/baidu/input/ime/AbsSoftView;->y:S

    .line 138
    invoke-virtual {v1, v1}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->q(Ljava/lang/Runnable;)V

    .line 141
    goto :goto_4c

    .line 142
    :pswitch_8d  #0x11
    invoke-virtual {v1, v1}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->q(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandidateView;->y()S

    .line 148
    move-result v0

    .line 149
    sput-short v0, Lcom/baidu/input/ime/AbsSoftView;->y:S

    .line 151
    if-lez v0, :cond_4c

    .line 153
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 155
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1()I

    .line 158
    move-result v0

    .line 159
    if-lez v0, :cond_b4

    .line 161
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 163
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1()I

    .line 166
    move-result v2

    .line 167
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n1(I)S

    .line 170
    move-result v0

    .line 171
    const/16 v2, 0xf05

    .line 173
    if-ne v0, v2, :cond_b4

    .line 175
    const-wide/16 v6, 0xc8

    .line 177
    invoke-virtual {v1, v1, v6, v7}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->o(Ljava/lang/Runnable;J)V

    .line 180
    goto :goto_4c

    .line 181
    :cond_b4
    invoke-virtual {v1, v1, v12, v13}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->o(Ljava/lang/Runnable;J)V

    .line 184
    goto :goto_4c

    .line 185
    :pswitch_b8  #0x10
    sput-short v5, Lcom/baidu/input/ime/AbsSoftView;->y:S

    .line 187
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 189
    iget-short v7, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w:S

    .line 191
    const/4 v9, 0x0

    .line 192
    if-gez v7, :cond_c3

    .line 194
    move-object v2, v9

    .line 195
    goto :goto_cd

    .line 196
    :cond_c3
    iget-object v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 198
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 200
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 202
    invoke-virtual {v2, v7}, Lcom/baidu/input/ime/params/CandLoader;->D(I)Lcom/baidu/input/ime/params/IconParam;

    .line 205
    move-result-object v2

    .line 206
    :goto_cd
    if-eqz v2, :cond_4c

    .line 208
    iget v7, v2, Lcom/baidu/input/ime/params/IconParam;->h:I

    .line 210
    iget-boolean v12, v2, Lcom/baidu/input/ime/params/IconParam;->t:Z

    .line 212
    if-eqz v12, :cond_ef

    .line 214
    invoke-virtual {v2}, Lcom/baidu/input/ime/params/IconParam;->p()S

    .line 217
    move-result v12

    .line 218
    if-lez v12, :cond_ef

    .line 220
    iget-object v13, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 222
    iget-object v13, v13, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 224
    iget-object v13, v13, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 226
    iget-object v13, v13, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 228
    iget-object v0, v13, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 230
    iget v0, v0, Lcom/baidu/input/ime/params/CandStyleParam;->g:I

    .line 232
    if-gt v12, v0, :cond_ef

    .line 234
    invoke-virtual {v13, v12}, Lcom/baidu/input/ime/params/CandLoader;->F(I)Lcom/baidu/input/ime/params/IconParam;

    .line 237
    move-result-object v2

    .line 238
    iget v7, v2, Lcom/baidu/input/ime/params/IconParam;->h:I

    .line 240
    :cond_ef
    const/high16 v0, 0xff0000

    .line 242
    and-int/2addr v0, v7

    .line 243
    const v12, 0xffff

    .line 246
    and-int/2addr v12, v7

    .line 247
    const v13, 0xf001f

    .line 250
    if-ne v7, v13, :cond_169

    .line 252
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 254
    iget v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->F0:I

    .line 256
    if-lez v2, :cond_690

    .line 258
    iget-object v7, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 260
    iget-object v7, v7, Lcom/baidu/input/ime/render/CandRender;->q:[Landroid/graphics/Rect;

    .line 262
    aget-object v2, v7, v2

    .line 264
    if-nez v2, :cond_10d

    .line 266
    iput-short v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w:S

    .line 268
    goto/16 :goto_690

    .line 270
    :cond_10d
    sget-object v7, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 272
    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 275
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 278
    move-result-object v2

    .line 279
    iget-byte v2, v2, Lcom/baidu/skinrender/SkinRenderStatus;->g:B

    .line 281
    if-ne v2, v15, :cond_11c

    .line 283
    move v2, v3

    .line 284
    goto :goto_11d

    .line 285
    :cond_11c
    move v2, v5

    .line 286
    :goto_11d
    sput-boolean v2, Lcom/baidu/input/pub/Global;->g0:Z

    .line 288
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->h2()V

    .line 291
    sget-object v0, Lcom/baidu/input/pub/Global;->w0:[I

    .line 293
    aget v2, v0, v11

    .line 295
    if-lez v2, :cond_138

    .line 297
    aput v5, v0, v11

    .line 299
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 301
    const/16 v2, 0x866

    .line 303
    invoke-virtual {v0, v2, v5}, Lcom/baidu/input/pub/Option;->u(II)V

    .line 306
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 308
    const/16 v2, 0x867

    .line 310
    invoke-virtual {v0, v2, v5}, Lcom/baidu/input/pub/Option;->u(II)V

    .line 313
    :cond_138
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    const/16 v0, 0x1f

    .line 330
    invoke-static {v0}, Lcom/baidu/input/ime/InputEventHandler;->R(I)Z

    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_162

    .line 336
    invoke-static {}, Lcom/baidu/input/ime/logoanim/LogoAnimManager;->d()Lcom/baidu/input/ime/logoanim/LogoAnimManager;

    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-virtual {v6, v0, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 353
    goto/16 :goto_690

    .line 355
    :cond_162
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 357
    invoke-virtual {v0, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e2(Z)V

    .line 360
    goto/16 :goto_690

    .line 362
    :cond_169
    const v11, 0xf000e

    .line 365
    if-ne v7, v11, :cond_651

    .line 367
    const-string v0, "兜底"

    .line 369
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 371
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m1()I

    .line 374
    move-result v2

    .line 375
    iget-object v7, v1, Lcom/baidu/input/ime/cand/CandidateView;->T:Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 377
    const-class v11, Lcom/baidu/stats/impl/StreamStats;

    .line 379
    if-gez v2, :cond_224

    .line 381
    const/4 v0, -0x2

    .line 382
    if-ne v2, v0, :cond_1a6

    .line 384
    invoke-static {}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->b()Z

    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_187

    .line 390
    goto/16 :goto_690

    .line 392
    :cond_187
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lcom/baidu/input/flavor/FlavorMacroDependencies;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    invoke-static {}, Lcom/baidu/input/oem/OemChannel;->c()Z

    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_690

    .line 412
    if-eqz v6, :cond_690

    .line 414
    iget-object v0, v6, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 416
    if-eqz v0, :cond_690

    .line 418
    invoke-virtual {v0, v3}, Lcom/baidu/input/ImeService;->hideSoft(Z)V

    .line 421
    goto/16 :goto_690

    .line 423
    :cond_1a6
    const/4 v0, -0x3

    .line 424
    if-ne v2, v0, :cond_1c6

    .line 426
    invoke-static {}, Lcom/baidu/input/circle/CircleCandDataCacherKt;->b()Ljava/util/List;

    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Ljava/util/Collection;

    .line 432
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_1c1

    .line 438
    invoke-static {}, Lcom/baidu/input/circle/CircleCandDataCacherKt;->b()Ljava/util/List;

    .line 441
    move-result-object v0

    .line 442
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/baidu/input/circle/CandCircleInfoCache;

    .line 448
    iget-object v9, v0, Lcom/baidu/input/circle/CandCircleInfoCache;->a:Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;

    .line 450
    :cond_1c1
    invoke-virtual {v1, v9}, Lcom/baidu/input/ime/cand/CandidateView;->k0(Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;)V

    .line 453
    goto/16 :goto_690

    .line 455
    :cond_1c6
    const/4 v0, -0x4

    .line 456
    const-class v6, Lcom/baidu/input/logo/demand/IMenuClick;

    .line 458
    if-ne v2, v0, :cond_204

    .line 460
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/baidu/input/logo/demand/IMenuClick;

    .line 466
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->F:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 468
    invoke-interface {v0, v2}, Lcom/baidu/input/logo/demand/IMenuClick;->T3(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 471
    move-result-object v0

    .line 472
    new-instance v2, Lcom/baidu/input/menutoolapi/data/MenuIcon;

    .line 474
    invoke-direct {v2}, Lcom/baidu/input/menutoolapi/data/MenuIcon;-><init>()V

    .line 477
    iput-object v0, v2, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 479
    invoke-virtual {v2}, Lcom/baidu/input/menutoolapi/data/MenuIcon;->h0()V

    .line 482
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 484
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 487
    invoke-static {v11}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 490
    move-result-object v2

    .line 491
    move-object v6, v2

    .line 492
    check-cast v6, Lcom/baidu/stats/impl/StreamStats;

    .line 494
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 496
    invoke-virtual {v0}, Lcom/baidu/input/menutoolapi/data/MenuFunction;->c()I

    .line 499
    move-result v0

    .line 500
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 503
    move-result-object v7

    .line 504
    const-string v8, "BIEPageToolBar"

    .line 506
    const-string v9, "BISEventClick"

    .line 508
    const-string v10, "BIEElementToolbarCell"

    .line 510
    const-string v11, "BISParamViewLocationValue"

    .line 512
    invoke-virtual/range {v6 .. v11}, Lcom/baidu/stats/impl/StreamStats;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    goto/16 :goto_690

    .line 517
    :cond_204
    const/4 v0, -0x5

    .line 518
    if-ne v2, v0, :cond_690

    .line 520
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 522
    invoke-virtual {v2, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 525
    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Lcom/baidu/input/logo/demand/IMenuClick;

    .line 531
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->K:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 533
    invoke-interface {v0, v2}, Lcom/baidu/input/logo/demand/IMenuClick;->T3(Lcom/baidu/input/menutoolapi/data/MenuFunction;)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 536
    move-result-object v0

    .line 537
    iput-object v0, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 539
    invoke-virtual {v7}, Lcom/baidu/input/menutoolapi/data/MenuIcon;->h0()V

    .line 542
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 544
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 547
    goto/16 :goto_690

    .line 549
    :cond_224
    new-instance v12, Lcom/baidu/input/privacy/interceptor/PrivacyCandFunctionInterceptor;

    .line 551
    invoke-direct {v12}, Lcom/baidu/input/privacy/interceptor/PrivacyCandFunctionInterceptor;-><init>()V

    .line 554
    iget-object v13, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 556
    invoke-virtual {v13, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n1(I)S

    .line 559
    move-result v13

    .line 560
    invoke-virtual {v12, v13}, Lcom/baidu/input/privacy/interceptor/PrivacyCandFunctionInterceptor;->onFunctionKey(I)Z

    .line 563
    move-result v12

    .line 564
    if-eqz v12, :cond_23c

    .line 566
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 568
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 571
    goto/16 :goto_690

    .line 573
    :cond_23c
    sget-object v12, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 575
    invoke-static {v12}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 578
    iget-object v12, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 580
    invoke-virtual {v12, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->n1(I)S

    .line 583
    move-result v12

    .line 584
    if-nez v12, :cond_24b

    .line 586
    goto/16 :goto_690

    .line 588
    :cond_24b
    const/16 v13, 0xf09

    .line 590
    const-class v16, Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 592
    if-eq v12, v13, :cond_623

    .line 594
    const/16 v13, 0xf0c

    .line 596
    if-eq v12, v13, :cond_619

    .line 598
    const v13, 0x7f12020d

    .line 601
    const-class v17, Lcom/baidu/stats/impl/TraceStats;

    .line 603
    const/4 v15, 0x4

    .line 604
    packed-switch v12, :pswitch_data_840

    .line 607
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    iget-object v6, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 616
    invoke-virtual {v6, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 619
    sget-object v2, Lcom/baidu/input/ime/newcore/stats/CandInfoClickStatsHelper;->a:Lcom/baidu/input/ime/newcore/stats/CandInfoClickStatsHelper;

    .line 621
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    invoke-static {}, Lcom/baidu/input/ime/newcore/stats/CandInfoClickStatsHelper;->b()V

    .line 627
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->c(S)Z

    .line 630
    move-result v2

    .line 631
    if-eqz v2, :cond_283

    .line 633
    invoke-static {v12}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->i(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    .line 636
    move-result-object v0

    .line 637
    if-eqz v0, :cond_630

    .line 639
    invoke-interface {v0}, Lcom/baidu/input/menutoolapi/data/IMenuIcon;->h0()V

    .line 642
    goto/16 :goto_630

    .line 644
    :cond_283
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->d(S)Z

    .line 647
    move-result v2

    .line 648
    const-string v6, "BIEPageToolBar"

    .line 650
    const-string v8, "BISEventClick"

    .line 652
    if-eqz v2, :cond_349

    .line 654
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 657
    move-result-object v0

    .line 658
    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    .line 661
    move-result-object v0

    .line 662
    if-eqz v0, :cond_630

    .line 664
    instance-of v2, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 666
    if-eqz v2, :cond_630

    .line 668
    check-cast v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 670
    iget-object v0, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    .line 672
    check-cast v0, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 674
    sget-object v2, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->a:Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;

    .line 676
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 678
    invoke-virtual {v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 681
    if-nez v0, :cond_2ac

    .line 683
    goto/16 :goto_630

    .line 685
    :cond_2ac
    new-instance v2, Ljava/util/HashMap;

    .line 687
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 690
    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    .line 693
    move-result v7

    .line 694
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    move-result-object v7

    .line 698
    const-string v10, "BISParamEnterpriseId"

    .line 700
    invoke-virtual {v2, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-static {v11}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 706
    move-result-object v7

    .line 707
    check-cast v7, Lcom/baidu/stats/impl/StreamStats;

    .line 709
    const-string v10, "BIEElementPocktEnterpirseIcon"

    .line 711
    invoke-virtual {v7, v6, v8, v10, v2}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 714
    invoke-static {}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->b()Z

    .line 717
    move-result v2

    .line 718
    if-nez v2, :cond_2d4

    .line 720
    invoke-static {v9}, Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil;->k(Lcom/baidu/input/ime/keymap/PrivacyRemindDialogUtil$ClickListener;)V

    .line 723
    goto/16 :goto_630

    .line 725
    :cond_2d4
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 728
    move-result v2

    .line 729
    if-eqz v2, :cond_2e2

    .line 731
    const v0, 0x7f120366

    .line 734
    invoke-static {v0, v5}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 737
    goto/16 :goto_630

    .line 739
    :cond_2e2
    sget-boolean v2, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 741
    if-nez v2, :cond_2ee

    .line 743
    const v0, 0x7f12036b

    .line 746
    invoke-static {v0, v5}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 749
    goto/16 :goto_630

    .line 751
    :cond_2ee
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 753
    iget-object v2, v2, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 755
    invoke-virtual {v2}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->Z()Z

    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_2fd

    .line 761
    invoke-static {v13, v5}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 764
    goto/16 :goto_630

    .line 766
    :cond_2fd
    const-string v2, "key_sop_action"

    .line 768
    const-string v6, "clickSopFunction"

    .line 770
    invoke-static {v2, v6}, Lcom/baidu/ob0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 773
    move-result-object v2

    .line 774
    sget-object v6, Lcom/baidu/input/pocketdocs/impl/ScrmRouter;->e:Ljava/util/Stack;

    .line 776
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 779
    move-result v6

    .line 780
    if-eqz v6, :cond_317

    .line 782
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    .line 785
    move-result-object v6

    .line 786
    iput-object v0, v6, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->e:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 788
    invoke-static {v3, v5, v2}, Lcom/baidu/input/pocketdocs/impl/ScrmRouter;->k(IZLjava/util/Map;)V

    .line 791
    goto :goto_342

    .line 792
    :cond_317
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    .line 795
    move-result-object v6

    .line 796
    iget-object v6, v6, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->e:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 798
    if-eqz v6, :cond_339

    .line 800
    invoke-virtual {v0}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    .line 803
    move-result v6

    .line 804
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    .line 807
    move-result-object v7

    .line 808
    iget-object v7, v7, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->e:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 810
    invoke-virtual {v7}, Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;->getEnterpriseId()I

    .line 813
    move-result v7

    .line 814
    if-eq v6, v7, :cond_339

    .line 816
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    .line 819
    move-result-object v6

    .line 820
    iput-object v0, v6, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->e:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 822
    invoke-static {v3, v5, v2}, Lcom/baidu/input/pocketdocs/impl/ScrmRouter;->k(IZLjava/util/Map;)V

    .line 825
    goto :goto_342

    .line 826
    :cond_339
    invoke-static {}, Lcom/baidu/input/pocketdocs/impl/repo/PocketRepos;->i()Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;

    .line 829
    move-result-object v0

    .line 830
    iput-object v9, v0, Lcom/baidu/input/pocketdocs/impl/repo/EnterpriseStateManager;->e:Lcom/baidu/input/pocketdocs/impl/repo/db/entity/EnterpriseEntity;

    .line 832
    invoke-static {v5, v5, v2}, Lcom/baidu/input/pocketdocs/impl/ScrmRouter;->k(IZLjava/util/Map;)V

    .line 835
    :goto_342
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 837
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 840
    goto/16 :goto_630

    .line 842
    :cond_349
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->a(S)Z

    .line 845
    move-result v2

    .line 846
    if-eqz v2, :cond_368

    .line 848
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 851
    move-result-object v0

    .line 852
    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    .line 855
    move-result-object v0

    .line 856
    if-eqz v0, :cond_630

    .line 858
    instance-of v2, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 860
    if-eqz v2, :cond_630

    .line 862
    check-cast v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;

    .line 864
    iget-object v0, v0, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    .line 866
    check-cast v0, Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;

    .line 868
    invoke-virtual {v1, v0}, Lcom/baidu/input/ime/cand/CandidateView;->k0(Lcom/baidu/input/circlepanel/bpi/CirclePanelBean;)V

    .line 871
    goto/16 :goto_630

    .line 873
    :cond_368
    invoke-static {v12}, Lcom/baidu/input/menutoolapi/data/MenuCodeToolKt;->b(S)Z

    .line 876
    move-result v2

    .line 877
    if-eqz v2, :cond_46a

    .line 879
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->c()Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 882
    move-result-object v2

    .line 883
    invoke-interface {v2, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->f9(S)Lcom/baidu/input/menutoolapi/data/IMenuIcon;

    .line 886
    move-result-object v2

    .line 887
    instance-of v7, v2, Lcom/baidu/input/logo/customize/DistributeMenuIcon;

    .line 889
    if-eqz v7, :cond_630

    .line 891
    check-cast v2, Lcom/baidu/input/logo/customize/DistributeMenuIcon;

    .line 893
    :try_start_37c
    sget-object v7, Lcom/baidu/input/pub/ImeBaseGlobal;->y:Ljava/lang/String;
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_37e} :catch_461

    .line 895
    const-string v9, ""

    .line 897
    if-nez v7, :cond_383

    .line 899
    move-object v7, v9

    .line 900
    :cond_383
    :try_start_383
    invoke-static/range {v16 .. v16}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 903
    move-result-object v10

    .line 904
    check-cast v10, Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 906
    invoke-interface {v10}, Lcom/baidu/input/menutoolapi/IMenuTool;->Qi()Ljava/util/List;

    .line 909
    move-result-object v10

    .line 910
    new-instance v13, Ljava/util/HashMap;

    .line 912
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 915
    const-string v14, "BISParamConfigID"

    .line 917
    iget-object v15, v2, Lcom/baidu/input/menutoolapi/data/ThirdMenuIcon;->j:Ljava/lang/Object;

    .line 919
    move-object/from16 v17, v15

    .line 921
    check-cast v17, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 923
    invoke-virtual/range {v17 .. v17}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->c()I

    .line 926
    move-result v17

    .line 927
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    move-result-object v5

    .line 931
    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v5, "BISParamBundleId"

    .line 936
    invoke-virtual {v13, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v5, "BISParamViewLocationValue"

    .line 941
    const-string v7, "工具条"

    .line 943
    invoke-virtual {v13, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v5, "BISParamIndex"

    .line 948
    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 951
    move-result v7

    .line 952
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 955
    move-result-object v7

    .line 956
    invoke-virtual {v13, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v5, "BISParamType"

    .line 961
    move-object v7, v15

    .line 962
    check-cast v7, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 964
    invoke-virtual {v7}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->A()I

    .line 967
    move-result v7

    .line 968
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 971
    move-result-object v7

    .line 972
    invoke-virtual {v13, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string v5, "BISParamOpenThirdApp"

    .line 977
    move-object v7, v15

    .line 978
    check-cast v7, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 980
    invoke-virtual {v7}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->C()Z

    .line 983
    move-result v7

    .line 984
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    move-result-object v7

    .line 988
    invoke-virtual {v13, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    move-object v5, v15

    .line 992
    check-cast v5, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 994
    invoke-virtual {v5}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->C()Z

    .line 997
    move-result v5
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_383 .. :try_end_3e5} :catch_461

    .line 998
    if-eqz v5, :cond_44f

    .line 1000
    :try_start_3e7
    move-object v5, v15

    .line 1001
    check-cast v5, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1003
    invoke-virtual {v5}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->k()Ljava/lang/String;

    .line 1006
    move-result-object v5

    .line 1007
    invoke-static {v5}, Lcom/baidu/input/pub/StringUtil;->a(Ljava/lang/String;)Z

    .line 1010
    move-result v5

    .line 1011
    if-eqz v5, :cond_41b

    .line 1013
    move-object v5, v15

    .line 1014
    check-cast v5, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1016
    invoke-virtual {v5}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->l()Ljava/lang/String;

    .line 1019
    move-result-object v5

    .line 1020
    invoke-static {v5}, Lcom/baidu/input/pub/StringUtil;->a(Ljava/lang/String;)Z

    .line 1023
    move-result v5

    .line 1024
    if-eqz v5, :cond_41b

    .line 1026
    sget-object v5, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 1028
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1031
    move-result-object v5

    .line 1032
    move-object v7, v15

    .line 1033
    check-cast v7, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1035
    invoke-virtual {v7}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->k()Ljava/lang/String;

    .line 1038
    move-result-object v7

    .line 1039
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    move-result-object v5

    .line 1043
    if-eqz v5, :cond_41b

    .line 1045
    check-cast v15, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1047
    invoke-virtual {v15}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->k()Ljava/lang/String;

    .line 1050
    move-result-object v0

    .line 1051
    goto :goto_450

    .line 1052
    :cond_41b
    move-object v5, v15

    .line 1053
    check-cast v5, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1055
    invoke-virtual {v5}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->m()Ljava/lang/String;

    .line 1058
    move-result-object v5

    .line 1059
    invoke-static {v5}, Lcom/baidu/input/pub/StringUtil;->a(Ljava/lang/String;)Z

    .line 1062
    move-result v5

    .line 1063
    if-eqz v5, :cond_450

    .line 1065
    move-object v5, v15

    .line 1066
    check-cast v5, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1068
    invoke-virtual {v5}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->n()Ljava/lang/String;

    .line 1071
    move-result-object v5

    .line 1072
    invoke-static {v5}, Lcom/baidu/input/pub/StringUtil;->a(Ljava/lang/String;)Z

    .line 1075
    move-result v5

    .line 1076
    if-eqz v5, :cond_450

    .line 1078
    sget-object v5, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 1080
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1083
    move-result-object v5

    .line 1084
    move-object v7, v15

    .line 1085
    check-cast v7, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1087
    invoke-virtual {v7}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->m()Ljava/lang/String;

    .line 1090
    move-result-object v7

    .line 1091
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    move-result-object v5

    .line 1095
    if-eqz v5, :cond_450

    .line 1097
    check-cast v15, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;

    .line 1099
    invoke-virtual {v15}, Lcom/baidu/input/menutoolapi/data/CandDistributeIcon;->m()Ljava/lang/String;

    .line 1102
    move-result-object v0
    :try_end_44e
    .catch Ljava/lang/Exception; {:try_start_3e7 .. :try_end_44e} :catch_450

    .line 1103
    goto :goto_450

    .line 1104
    :cond_44f
    move-object v0, v9

    .line 1105
    :catch_450
    :cond_450
    :goto_450
    :try_start_450
    const-string v5, "BISParamOpenBundleId"

    .line 1107
    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-static {v11}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 1113
    move-result-object v0

    .line 1114
    check-cast v0, Lcom/baidu/stats/impl/StreamStats;

    .line 1116
    const-string v5, "BIEElementToolbarConfig"

    .line 1118
    invoke-virtual {v0, v6, v8, v5, v13}, Lcom/baidu/stats/impl/StreamStats;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_450 .. :try_end_460} :catch_461

    .line 1121
    goto :goto_465

    .line 1122
    :catch_461
    move-exception v0

    .line 1123
    invoke-static {v0}, Lcom/baidu/input/devtool/log/BDLog;->k(Ljava/lang/Throwable;)V

    .line 1126
    :goto_465
    invoke-virtual {v2}, Lcom/baidu/input/logo/customize/DistributeMenuIcon;->h0()V

    .line 1129
    goto/16 :goto_630

    .line 1131
    :cond_46a
    invoke-static {v12}, Lcom/baidu/input/ime/reconstruction/LogoMenuDataUtil;->b(S)Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1134
    move-result-object v0

    .line 1135
    if-eqz v0, :cond_630

    .line 1137
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->V:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1139
    if-ne v0, v2, :cond_47f

    .line 1141
    const-class v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 1143
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1146
    move-result-object v2

    .line 1147
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 1149
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->h3()V

    .line 1152
    :cond_47f
    iput-object v0, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1154
    sget-object v0, Lcom/baidu/input/pub/IntentKeys$ECS;->b:Lcom/baidu/input/pub/IntentKeys$ECS;

    .line 1156
    invoke-virtual {v0}, Lcom/baidu/input/pub/IntentKeys$ECS;->a()Ljava/lang/String;

    .line 1159
    move-result-object v0

    .line 1160
    invoke-virtual {v7, v0}, Lcom/baidu/input/menutoolapi/data/MenuIcon;->g(Ljava/lang/String;)V

    .line 1163
    iget-object v0, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1165
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->x:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1167
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1170
    move-result v0

    .line 1171
    if-nez v0, :cond_4a8

    .line 1173
    iget-object v0, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1175
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->c:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1177
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1180
    move-result v0

    .line 1181
    if-nez v0, :cond_4a8

    .line 1183
    iget-object v0, v7, Lcom/baidu/input/menutoolapi/data/MenuIcon;->b:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1185
    sget-object v2, Lcom/baidu/input/menutoolapi/data/MenuFunction;->z:Lcom/baidu/input/menutoolapi/data/MenuFunction;

    .line 1187
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1190
    move-result v0

    .line 1191
    if-eqz v0, :cond_630

    .line 1193
    :cond_4a8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1196
    move-result-wide v5

    .line 1197
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1199
    const/16 v2, 0xb34

    .line 1201
    invoke-virtual {v0, v2}, Lcom/baidu/input/pub/Option;->f(I)B

    .line 1204
    move-result v0

    .line 1205
    int-to-long v7, v0

    .line 1206
    sub-long/2addr v5, v7

    .line 1207
    const-wide/32 v7, 0x927c0

    .line 1210
    cmp-long v0, v5, v7

    .line 1212
    if-gez v0, :cond_630

    .line 1214
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->v()Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;

    .line 1217
    move-result-object v0

    .line 1218
    const v2, 0xc3aa

    .line 1221
    const-string v5, "toolbar"

    .line 1223
    invoke-virtual {v0, v2, v5}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->u(ILjava/lang/String;)V

    .line 1226
    goto/16 :goto_630

    .line 1228
    :pswitch_4cb  #0xf07
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1230
    const/16 v2, 0x9b0

    .line 1232
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/pub/Option;->v(IZ)V

    .line 1235
    const v0, 0xf005

    .line 1238
    const/4 v2, 0x0

    .line 1239
    invoke-virtual {v6, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1242
    goto/16 :goto_630

    .line 1244
    :pswitch_4db  #0xf06
    move v2, v5

    .line 1245
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 1247
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 1249
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->Z()Z

    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_4eb

    .line 1255
    invoke-static {v13, v2}, Lcom/baidu/input/pub/KeyboardToastCompat;->c(IZ)V

    .line 1258
    goto/16 :goto_690

    .line 1260
    :cond_4eb
    sget-object v0, Lcom/baidu/input/pub/Global;->w0:[I

    .line 1262
    aget v5, v0, v3

    .line 1264
    if-lez v5, :cond_4fa

    .line 1266
    aput v2, v0, v3

    .line 1268
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1270
    const/16 v5, 0x6ad

    .line 1272
    invoke-virtual {v0, v5, v2}, Lcom/baidu/input/pub/Option;->v(IZ)V

    .line 1275
    :cond_4fa
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 1278
    move-result-object v0

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1282
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1284
    const/16 v2, 0x6c

    .line 1286
    invoke-virtual {v0, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 1289
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1291
    const/16 v2, 0x99c

    .line 1293
    invoke-virtual {v0, v2}, Lcom/baidu/input/pub/Option;->c(I)V

    .line 1296
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 1299
    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    invoke-static {}, Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;->A()Lcom/baidu/bbm/waterflow/implement/WaterflowPre8409Info;

    .line 1306
    move-result-object v0

    .line 1307
    const/16 v2, 0x86

    .line 1309
    invoke-virtual {v0, v2}, Lcom/baidu/bbm/waterflow/AbsWaterflowArray;->s(I)V

    .line 1312
    const/4 v5, 0x0

    .line 1313
    invoke-virtual {v6, v10, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1316
    goto/16 :goto_630

    .line 1318
    :pswitch_525  #0xf05
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 1321
    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1327
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 1330
    const/16 v0, 0x53

    .line 1332
    invoke-virtual {v6, v0, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1335
    goto/16 :goto_630

    .line 1337
    :pswitch_538  #0xf04
    sget-byte v0, Lcom/baidu/input/pub/Global;->A0:B

    .line 1339
    if-nez v0, :cond_630

    .line 1341
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1343
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 1346
    const/16 v0, 0x49

    .line 1348
    invoke-virtual {v6, v0, v5}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1351
    invoke-static/range {v17 .. v17}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 1354
    move-result-object v0

    .line 1355
    check-cast v0, Lcom/baidu/stats/impl/TraceStats;

    .line 1357
    invoke-virtual {v0, v15, v3, v15}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 1360
    goto/16 :goto_630

    .line 1362
    :pswitch_551  #0xf03
    iget-byte v0, v8, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 1364
    if-eq v0, v14, :cond_630

    .line 1366
    const/16 v5, 0x35

    .line 1368
    if-ne v0, v5, :cond_55b

    .line 1370
    goto/16 :goto_630

    .line 1372
    :cond_55b
    invoke-static {}, Lcom/baidu/input/common/utils/RomUtil;->hasGingerbread()Z

    .line 1375
    move-result v0

    .line 1376
    if-eqz v0, :cond_579

    .line 1378
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1380
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 1383
    invoke-static {v3}, Lcom/baidu/input/ime/voicerecognize/VoicePanelEntranceManager;->c(I)V

    .line 1386
    const/16 v0, 0x48

    .line 1388
    invoke-virtual {v6, v0, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1391
    invoke-static/range {v17 .. v17}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 1394
    move-result-object v0

    .line 1395
    check-cast v0, Lcom/baidu/stats/impl/TraceStats;

    .line 1397
    invoke-virtual {v0, v15, v3, v3}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 1400
    goto/16 :goto_630

    .line 1402
    :cond_579
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1405
    move-result-object v0

    .line 1406
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1409
    move-result-object v2

    .line 1410
    const v5, 0x7f1217f2

    .line 1413
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1416
    move-result-object v2

    .line 1417
    invoke-static {v0, v2, v3}, Lcom/baidu/input/common/utils/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1420
    goto/16 :goto_630

    .line 1422
    :pswitch_58d  #0xf01, 0xf02
    invoke-static/range {v17 .. v17}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 1425
    move-result-object v0

    .line 1426
    check-cast v0, Lcom/baidu/stats/impl/TraceStats;

    .line 1428
    add-int/lit8 v5, v2, 0x1

    .line 1430
    int-to-byte v5, v5

    .line 1431
    invoke-virtual {v0, v15, v3, v5}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 1434
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 1437
    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    sget-object v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->W0:[B

    .line 1443
    sget v0, Lcom/baidu/input/ime/KeyMapSwitcher;->e:I

    .line 1445
    if-eqz v0, :cond_5e7

    .line 1447
    if-eq v0, v3, :cond_5e9

    .line 1449
    sget-object v0, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 1451
    invoke-virtual {v0}, Lcom/baidu/input/ime/editor/KeymapPopupView;->b()V

    .line 1454
    sget-object v0, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 1456
    const/16 v5, 0x70

    .line 1458
    invoke-virtual {v0, v5}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 1461
    invoke-static {}, Lcom/baidu/input/thirdservice/ThirdServiceManager;->e()Lcom/baidu/input/thirdservice/ThirdServiceManager;

    .line 1464
    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Lcom/baidu/input/thirdservice/ThirdServiceManager;->c()Z

    .line 1468
    move-result v0

    .line 1469
    if-eqz v0, :cond_5c0

    .line 1471
    const/4 v0, -0x1

    .line 1472
    add-int/2addr v2, v0

    .line 1473
    :cond_5c0
    invoke-static {}, Lcom/baidu/input/pub/FLauncherManager;->d()Lcom/baidu/input/pub/FLauncherManager;

    .line 1476
    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Lcom/baidu/input/pub/FLauncherManager;->b()I

    .line 1480
    move-result v0

    .line 1481
    if-ne v0, v2, :cond_5ce

    .line 1483
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->g(I)V

    .line 1486
    goto :goto_5e1

    .line 1487
    :cond_5ce
    invoke-static {}, Lcom/baidu/input/pub/FLauncherManager;->d()Lcom/baidu/input/pub/FLauncherManager;

    .line 1490
    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Lcom/baidu/input/pub/FLauncherManager;->b()I

    .line 1494
    move-result v0

    .line 1495
    add-int/2addr v0, v3

    .line 1496
    if-ne v0, v2, :cond_5de

    .line 1498
    const/4 v0, 0x2

    .line 1499
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->g(I)V

    .line 1502
    goto :goto_5e1

    .line 1503
    :cond_5de
    invoke-static {v2}, Lcom/baidu/input/ime/KeyMapSwitcher;->g(I)V

    .line 1506
    :goto_5e1
    sget v0, Lcom/baidu/input/ime/KeyMapSwitcher;->e:I

    .line 1508
    const/4 v2, 0x0

    .line 1509
    invoke-virtual {v6, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1512
    :cond_5e7
    :goto_5e7
    const/4 v0, -0x1

    .line 1513
    goto :goto_615

    .line 1514
    :cond_5e9
    sget-object v0, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 1516
    invoke-virtual {v0}, Lcom/baidu/input/ime/editor/KeymapPopupView;->b()V

    .line 1519
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1521
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->E0(I)V

    .line 1524
    sget-object v0, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 1526
    invoke-virtual {v0, v3}, Lcom/baidu/input/ime/editor/KeymapPopupView;->setPopupHandler(B)V

    .line 1529
    const/16 v0, 0xf01

    .line 1531
    if-ne v12, v0, :cond_600

    .line 1533
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->i(I)V

    .line 1536
    goto :goto_604

    .line 1537
    :cond_600
    const/4 v0, 0x2

    .line 1538
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->i(I)V

    .line 1541
    :goto_604
    sget-object v0, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 1543
    iget-object v2, v6, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 1545
    invoke-virtual {v2}, Lcom/baidu/input/ImeService;->getKeymapViewManager()Lcom/baidu/input/ime/viewmanager/KeymapViewManager;

    .line 1548
    move-result-object v2

    .line 1549
    iget-object v2, v2, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->e:Lcom/baidu/input/ime/viewmanager/container/KeymapParentContainerView;

    .line 1551
    const/4 v5, 0x0

    .line 1552
    invoke-virtual {v0, v2, v5}, Lcom/baidu/input/ime/editor/KeymapPopupView;->i(Landroid/view/ViewGroup;Z)V

    .line 1555
    sput-byte v5, Lcom/baidu/input/ime/KeyMapSwitcher;->d:B

    .line 1557
    goto :goto_5e7

    .line 1558
    :goto_615
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->k(I)V

    .line 1561
    goto :goto_630

    .line 1562
    :cond_619
    invoke-static {}, Lcom/baidu/input/thirdservice/ThirdServiceManager;->e()Lcom/baidu/input/thirdservice/ThirdServiceManager;

    .line 1565
    move-result-object v0

    .line 1566
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 1568
    invoke-virtual {v0, v2}, Lcom/baidu/input/thirdservice/ThirdServiceManager;->f(Lcom/baidu/input/ImeService;)V

    .line 1571
    goto :goto_630

    .line 1572
    :cond_623
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 1575
    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1579
    const/16 v0, 0x52

    .line 1581
    const/4 v2, 0x0

    .line 1582
    invoke-virtual {v6, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1585
    :cond_630
    :goto_630
    invoke-static/range {v16 .. v16}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1588
    move-result-object v0

    .line 1589
    check-cast v0, Lcom/baidu/input/menutoolapi/IMenuTool;

    .line 1591
    invoke-interface {v0, v12}, Lcom/baidu/input/menutoolapi/IMenuTool;->X8(S)V

    .line 1594
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 1596
    invoke-static {v0}, La;->i(Lcom/baidu/input/di/ImeComponent;)Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;

    .line 1599
    move-result-object v0

    .line 1600
    const v2, 0xc389

    .line 1603
    invoke-static {v12}, Lcom/baidu/input/ime/reconstruction/DraggableManager;->e(S)Ljava/lang/String;

    .line 1606
    move-result-object v5

    .line 1607
    invoke-virtual {v0, v2, v5}, Lcom/baidu/bbm/waterflow/implement/WaterflowPost8409Info;->u(ILjava/lang/String;)V

    .line 1610
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1612
    if-eqz v0, :cond_690

    .line 1614
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g2()V

    .line 1617
    goto :goto_690

    .line 1618
    :cond_651
    const/high16 v5, 0xf0000

    .line 1620
    if-ne v0, v5, :cond_677

    .line 1622
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1624
    const/4 v2, 0x0

    .line 1625
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->e2(Z)V

    .line 1628
    const v0, 0xf0009

    .line 1631
    if-ne v7, v0, :cond_672

    .line 1633
    iget-byte v0, v8, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 1635
    const/16 v2, 0x21

    .line 1637
    if-eq v0, v2, :cond_672

    .line 1639
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1641
    if-ne v0, v3, :cond_672

    .line 1643
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1645
    iget-boolean v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 1647
    if-eqz v0, :cond_672

    .line 1649
    goto/16 :goto_7ca

    .line 1651
    :cond_672
    const/4 v2, 0x0

    .line 1652
    invoke-virtual {v6, v12, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1655
    goto :goto_690

    .line 1656
    :cond_677
    const/high16 v5, 0x10000

    .line 1658
    if-ne v0, v5, :cond_684

    .line 1660
    iget-object v0, v2, Lcom/baidu/input/ime/params/IconParam;->i:Ljava/lang/String;

    .line 1662
    if-eqz v0, :cond_684

    .line 1664
    invoke-virtual {v6, v0}, Lcom/baidu/input/ime/InputEventHandler;->C0(Ljava/lang/String;)V

    .line 1667
    :goto_682
    const/4 v2, 0x0

    .line 1668
    goto :goto_68d

    .line 1669
    :cond_684
    int-to-char v0, v12

    .line 1670
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1673
    move-result-object v0

    .line 1674
    invoke-virtual {v6, v0}, Lcom/baidu/input/ime/InputEventHandler;->C0(Ljava/lang/String;)V

    .line 1677
    goto :goto_682

    .line 1678
    :goto_68d
    invoke-virtual {v6, v2}, Lcom/baidu/input/ime/InputEventHandler;->c0(Z)V

    .line 1681
    :cond_690
    :goto_690
    const/4 v2, 0x0

    .line 1682
    goto/16 :goto_7c4

    .line 1684
    :pswitch_693  #0xf
    invoke-virtual {v1, v1}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->q(Ljava/lang/Runnable;)V

    .line 1687
    sput-boolean v3, Lcom/baidu/input/ime/AbsSoftView;->x:Z

    .line 1689
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1691
    iget-short v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->o:S

    .line 1693
    if-ltz v2, :cond_6b9

    .line 1695
    iget-boolean v5, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->b0:Z

    .line 1697
    if-eqz v5, :cond_6ac

    .line 1699
    iget-object v2, v1, Lcom/baidu/input/ime/AbsSoftView;->o:Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 1701
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g1()Lcom/baidu/input/pub/CoreString;

    .line 1704
    move-result-object v0

    .line 1705
    invoke-virtual {v2, v0}, Lcom/baidu/input/ime/editor/DeleterDialog;->f(Lcom/baidu/input/pub/CoreString;)V

    .line 1708
    goto :goto_6b9

    .line 1709
    :cond_6ac
    const/16 v5, 0x10

    .line 1711
    if-gt v2, v5, :cond_6b9

    .line 1713
    iget-object v2, v1, Lcom/baidu/input/ime/AbsSoftView;->o:Lcom/baidu/input/ime/editor/DeleterDialog;

    .line 1715
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->g1()Lcom/baidu/input/pub/CoreString;

    .line 1718
    move-result-object v0

    .line 1719
    invoke-virtual {v2, v0}, Lcom/baidu/input/ime/editor/DeleterDialog;->f(Lcom/baidu/input/pub/CoreString;)V

    .line 1722
    :cond_6b9
    :goto_6b9
    invoke-virtual {v1, v1, v12, v13}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->o(Ljava/lang/Runnable;J)V

    .line 1725
    goto :goto_690

    .line 1726
    :pswitch_6bd  #0xe
    const/16 v0, 0x8

    .line 1728
    const/4 v2, 0x0

    .line 1729
    invoke-virtual {v6, v0, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1732
    goto :goto_690

    .line 1733
    :pswitch_6c4  #0x3, 0x7, 0xa, 0xd
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 1735
    aget-boolean v0, v0, v9

    .line 1737
    if-eqz v0, :cond_6db

    .line 1739
    iget-byte v0, v7, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 1741
    const/16 v5, 0x21

    .line 1743
    if-ne v5, v0, :cond_6db

    .line 1745
    iget-byte v0, v7, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 1747
    if-ne v3, v0, :cond_6db

    .line 1749
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 1751
    const/16 v5, 0x24e

    .line 1753
    invoke-static {v0, v5}, Lcom/baidu/nl;->z(Lcom/baidu/input/di/ImeComponent;I)V

    .line 1756
    :cond_6db
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1758
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->O0()I

    .line 1761
    move-result v5

    .line 1762
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 1764
    invoke-virtual {v0, v5}, Lcom/baidu/input/ime/newcore/state/CandState2;->f(I)Lcom/baidu/input/pub/CoreString;

    .line 1767
    move-result-object v0

    .line 1768
    if-eqz v0, :cond_755

    .line 1770
    invoke-virtual {v0}, Lcom/baidu/input/pub/CoreString;->isOccupted()Z

    .line 1773
    move-result v0

    .line 1774
    if-eqz v0, :cond_755

    .line 1776
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1778
    add-int/2addr v0, v3

    .line 1779
    iput v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1781
    if-ne v2, v11, :cond_6ff

    .line 1783
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1785
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d2()V

    .line 1788
    const/4 v5, -0x1

    .line 1789
    invoke-virtual {v0, v5}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m2(I)V

    .line 1792
    :cond_6ff
    const/4 v5, 0x0

    .line 1793
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 1796
    move-result v0

    .line 1797
    iget v5, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1799
    iget-object v6, v1, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 1801
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1804
    move-result v6

    .line 1805
    if-lt v5, v6, :cond_718

    .line 1807
    iget-object v5, v1, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 1809
    int-to-short v0, v0

    .line 1810
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 1813
    move-result-object v0

    .line 1814
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_718
    const/16 v0, 0xd

    .line 1819
    if-ne v2, v0, :cond_690

    .line 1821
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1823
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->O0()I

    .line 1826
    move-result v2

    .line 1827
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->L:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 1829
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/newcore/state/CandState2;->f(I)Lcom/baidu/input/pub/CoreString;

    .line 1832
    move-result-object v0

    .line 1833
    if-eqz v0, :cond_750

    .line 1835
    invoke-virtual {v0}, Lcom/baidu/input/pub/CoreString;->isOccupted()Z

    .line 1838
    move-result v0

    .line 1839
    if-eqz v0, :cond_750

    .line 1841
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1843
    add-int/2addr v0, v3

    .line 1844
    iput v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1846
    const/4 v2, 0x0

    .line 1847
    invoke-virtual {v1, v2}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 1850
    move-result v0

    .line 1851
    iget v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1853
    iget-object v5, v1, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 1855
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1858
    move-result v5

    .line 1859
    if-lt v2, v5, :cond_690

    .line 1861
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->H:Ljava/util/ArrayList;

    .line 1863
    int-to-short v0, v0

    .line 1864
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 1867
    move-result-object v0

    .line 1868
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    goto/16 :goto_690

    .line 1873
    :cond_750
    const/4 v0, 0x2

    .line 1874
    sput-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1:B

    .line 1876
    goto/16 :goto_690

    .line 1878
    :cond_755
    const/4 v0, 0x2

    .line 1879
    if-eq v2, v10, :cond_75e

    .line 1881
    const/16 v5, 0xa

    .line 1883
    if-eq v2, v5, :cond_75e

    .line 1885
    goto/16 :goto_690

    .line 1887
    :cond_75e
    sput-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1:B

    .line 1889
    goto/16 :goto_690

    .line 1891
    :pswitch_762  #0x2, 0x6, 0xb, 0xc
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 1893
    aget-boolean v0, v0, v9

    .line 1895
    if-eqz v0, :cond_779

    .line 1897
    iget-byte v0, v7, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 1899
    const/16 v5, 0x21

    .line 1901
    if-ne v5, v0, :cond_779

    .line 1903
    iget-byte v0, v7, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 1905
    if-ne v3, v0, :cond_779

    .line 1907
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 1909
    const/16 v5, 0x24e

    .line 1911
    invoke-static {v0, v5}, Lcom/baidu/nl;->z(Lcom/baidu/input/di/ImeComponent;I)V

    .line 1914
    :cond_779
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1916
    if-le v0, v3, :cond_7a3

    .line 1918
    sub-int/2addr v0, v3

    .line 1919
    iput v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1921
    const/4 v0, 0x2

    .line 1922
    if-ne v2, v0, :cond_78b

    .line 1924
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1926
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->d2()V

    .line 1929
    invoke-virtual {v0, v3}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->m2(I)V

    .line 1932
    :cond_78b
    const/4 v5, 0x0

    .line 1933
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 1936
    const/16 v0, 0xc

    .line 1938
    if-ne v2, v0, :cond_4c

    .line 1940
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1942
    if-le v0, v3, :cond_79f

    .line 1944
    sub-int/2addr v0, v3

    .line 1945
    iput v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1947
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/cand/CandidateView;->Z(Z)I

    .line 1950
    goto/16 :goto_690

    .line 1952
    :cond_79f
    sput-byte v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1:B

    .line 1954
    goto/16 :goto_690

    .line 1956
    :cond_7a3
    const/4 v0, 0x6

    .line 1957
    if-eq v2, v0, :cond_7ac

    .line 1959
    const/16 v0, 0xb

    .line 1961
    if-eq v2, v0, :cond_7ac

    .line 1963
    goto/16 :goto_690

    .line 1965
    :cond_7ac
    sput-byte v3, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->a1:B

    .line 1967
    goto/16 :goto_690

    .line 1969
    :pswitch_7b0  #0x1
    iget v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->G:I

    .line 1971
    if-ne v0, v3, :cond_7ba

    .line 1973
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1975
    iget-boolean v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->r:Z

    .line 1977
    if-nez v0, :cond_690

    .line 1979
    :cond_7ba
    iget v0, v8, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 1981
    const/16 v2, 0x30

    .line 1983
    if-eq v0, v2, :cond_690

    .line 1985
    const/4 v2, 0x0

    .line 1986
    invoke-virtual {v6, v9, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 1989
    :goto_7c4
    iget-object v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1991
    if-eqz v0, :cond_7ca

    .line 1993
    iput-byte v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->J:B

    .line 1995
    :cond_7ca
    :goto_7ca
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/cand/CandidateView;->r0()V

    .line 1998
    iget-object v0, v1, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 2000
    iget-boolean v0, v0, Lcom/baidu/input/ime/KeymapMac;->b:Z

    .line 2002
    if-nez v0, :cond_7f4

    .line 2004
    sget-byte v0, Lcom/baidu/input/pub/Global;->a0:B

    .line 2006
    if-ne v0, v3, :cond_7f1

    .line 2008
    iget-object v0, v1, Lcom/baidu/input/ime/AbsSoftView;->t:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 2010
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/CandState2;->k()Z

    .line 2013
    move-result v0

    .line 2014
    iget-boolean v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->X:Z

    .line 2016
    if-eq v2, v0, :cond_7ea

    .line 2018
    iput-boolean v0, v1, Lcom/baidu/input/ime/cand/CandidateView;->X:Z

    .line 2020
    iget-object v2, v1, Lcom/baidu/input/ime/cand/CandidateView;->Y:Lcom/baidu/input/cocomodule/core/IKeyboardInputController$OnCandModeChangeListener;

    .line 2022
    if-eqz v2, :cond_7ea

    .line 2024
    invoke-interface {v2, v0}, Lcom/baidu/input/cocomodule/core/IKeyboardInputController$OnCandModeChangeListener;->onCandModeChange(Z)V

    .line 2027
    :cond_7ea
    sget v0, Lcom/baidu/input/pub/Global;->o1:I

    .line 2029
    if-eq v0, v3, :cond_7f1

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/AbsCandView;->n()V

    .line 2034
    :cond_7f1
    const/4 v2, 0x0

    .line 2035
    sput-byte v2, Lcom/baidu/input/pub/Global;->a0:B

    .line 2037
    :cond_7f4
    sget v0, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 2039
    invoke-static {v0}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 2042
    move-result-object v0

    .line 2043
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2046
    move-result-object v2

    .line 2047
    invoke-interface {v0}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->j()I

    .line 2050
    move-result v3

    .line 2051
    invoke-interface {v0, v3, v2}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->b(ILandroid/content/Context;)V

    .line 2054
    :goto_805
    return-void

    .line 2055
    :pswitch_data_806
    .packed-switch 0x1
        :pswitch_7b0  #00000001
        :pswitch_762  #00000002
        :pswitch_6c4  #00000003
        :pswitch_4c  #00000004
        :pswitch_4c  #00000005
        :pswitch_762  #00000006
        :pswitch_6c4  #00000007
        :pswitch_4c  #00000008
        :pswitch_4c  #00000009
        :pswitch_6c4  #0000000a
        :pswitch_762  #0000000b
        :pswitch_762  #0000000c
        :pswitch_6c4  #0000000d
        :pswitch_6bd  #0000000e
        :pswitch_693  #0000000f
        :pswitch_b8  #00000010
        :pswitch_8d  #00000011
        :pswitch_85  #00000012
        :pswitch_81  #00000013
        :pswitch_7a  #00000014
        :pswitch_4c  #00000015
        :pswitch_5d  #00000016
        :pswitch_4c  #00000017
        :pswitch_59  #00000018
        :pswitch_55  #00000019
        :pswitch_55  #0000001a
        :pswitch_4f  #0000001b
    .end packed-switch

    :pswitch_data_840
    .packed-switch 0xf01
        :pswitch_58d  #00000f01
        :pswitch_58d  #00000f02
        :pswitch_551  #00000f03
        :pswitch_538  #00000f04
        :pswitch_525  #00000f05
        :pswitch_4db  #00000f06
        :pswitch_4cb  #00000f07
    .end packed-switch
.end method

.method public final t0()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->j0()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->e0()V

    .line 10
    goto :goto_1c

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->f0()V

    .line 14
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->g0()V

    .line 17
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->b0()V

    .line 20
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->T()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->h0()V

    .line 29
    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/baidu/util/ColorPicker;->invalidatePickedColors()V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/input/ime/cand/CandidateView;->a0()V

    .line 35
    return-void
.end method

.method public final u0()Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 3
    invoke-interface {v0}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->b:Lcom/baidu/input/ime/KeymapMac;

    .line 9
    iget-boolean v1, v1, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1c

    .line 15
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 17
    if-eqz v1, :cond_1c

    .line 19
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 21
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->isTinyVoiceOn()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1c

    .line 27
    move v1, v2

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v3

    .line 30
    :goto_1d
    iput-boolean v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->V:Z

    .line 32
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 34
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->isSearchServiceOn()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_34

    .line 40
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 42
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->hasSceneOn()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_34

    .line 48
    sget-object v1, Lcom/baidu/input/ime/ImePref;->a:[Z

    .line 50
    iput v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    iput v3, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 55
    :goto_36
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 57
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->p(I)V

    .line 60
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 62
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->g(I)V

    .line 65
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 67
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->l(I)V

    .line 70
    iget-boolean v1, p0, Lcom/baidu/input/ime/AbsSoftView;->g:Z

    .line 72
    const/4 v4, 0x2

    .line 73
    if-eqz v1, :cond_d9

    .line 75
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 77
    iget-object v5, v1, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 79
    if-nez v5, :cond_80

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    const-string v6, "isHard="

    .line 85
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-boolean v6, v1, Lcom/baidu/input/ime/SubList;->a:Z

    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "_inited="

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-boolean v6, v1, Lcom/baidu/input/ime/SubList;->c:Z

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, "_createTime="

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v6, v1, Lcom/baidu/input/ime/SubList;->d:J

    .line 110
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string v6, "_initStacktrace="

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, v1, Lcom/baidu/input/ime/SubList;->e:Ljava/lang/String;

    .line 120
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    sput-object v1, Lcom/baidu/input/ime/SubList;->x0:Ljava/lang/String;

    .line 129
    :cond_80
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 131
    iget-object v1, v1, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 133
    iget-byte v1, v1, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 135
    if-eqz v1, :cond_b7

    .line 137
    if-eq v1, v2, :cond_aa

    .line 139
    if-eq v1, v4, :cond_9d

    .line 141
    const/4 v5, 0x3

    .line 142
    if-eq v1, v5, :cond_90

    .line 144
    goto :goto_c3

    .line 145
    :cond_90
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 148
    move-result-object v1

    .line 149
    iput-byte v4, v1, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 151
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 154
    move-result-object v1

    .line 155
    iput-boolean v3, v1, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 157
    goto :goto_c3

    .line 158
    :cond_9d
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 161
    move-result-object v1

    .line 162
    iput-byte v4, v1, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 164
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 167
    move-result-object v1

    .line 168
    iput-boolean v2, v1, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 170
    goto :goto_c3

    .line 171
    :cond_aa
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 174
    move-result-object v1

    .line 175
    iput-byte v2, v1, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 177
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 180
    move-result-object v1

    .line 181
    iput-boolean v3, v1, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 183
    goto :goto_c3

    .line 184
    :cond_b7
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 187
    move-result-object v1

    .line 188
    iput-byte v2, v1, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 190
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 193
    move-result-object v1

    .line 194
    iput-boolean v2, v1, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 196
    :goto_c3
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 198
    invoke-virtual {v1}, Lcom/baidu/input/ime/SubList;->t()Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_d9

    .line 204
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 206
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->e()I

    .line 209
    move-result v5

    .line 210
    iget-object v6, p0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 212
    iget v6, v6, Lcom/baidu/input/ime/SubList;->w:I

    .line 214
    add-int/2addr v5, v6

    .line 215
    invoke-interface {v1, v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->g(I)V

    .line 218
    :cond_d9
    iput-boolean v3, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 220
    iget-boolean v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->V:Z

    .line 222
    if-eqz v1, :cond_12c

    .line 224
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 226
    if-eqz v1, :cond_12c

    .line 228
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/baidu/skinrender/SkinRenderStatus;->i()Z

    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f7

    .line 238
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 241
    move-result-object v1

    .line 242
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->W()F

    .line 245
    move-result v5

    .line 246
    iput v5, v1, Lcom/baidu/skinrender/SkinRenderSettings;->y:F

    .line 248
    :cond_f7
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 250
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 252
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->e()I

    .line 255
    move-result v5

    .line 256
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/cand/CandHandler;->L2(I)Z

    .line 259
    move-result v1

    .line 260
    iput-boolean v1, p0, Lcom/baidu/input/ime/AbsSoftView;->h:Z

    .line 262
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 265
    move-result-object v1

    .line 266
    iget-byte v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->g:B

    .line 268
    if-ne v1, v4, :cond_12c

    .line 270
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 272
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 274
    iget-object v4, v4, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 276
    iget-object v4, v4, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 278
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 281
    move-result v4

    .line 282
    invoke-interface {v1, v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->l(I)V

    .line 285
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 287
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->e()I

    .line 290
    move-result v4

    .line 291
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 293
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->b()I

    .line 296
    move-result v5

    .line 297
    add-int/2addr v5, v4

    .line 298
    invoke-interface {v1, v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->g(I)V

    .line 301
    :cond_12c
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 303
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->e()I

    .line 306
    move-result v4

    .line 307
    invoke-interface {v1, v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->p(I)V

    .line 310
    sget-object v1, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 312
    const/16 v4, 0x6f

    .line 314
    aget-boolean v1, v1, v4

    .line 316
    if-nez v1, :cond_147

    .line 318
    iget-object v1, p0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 320
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->b:Lcom/baidu/input/ImeService;

    .line 322
    invoke-virtual {v1}, Lcom/baidu/input/ImeService;->onEvaluateFullscreenMode()Z

    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_153

    .line 328
    :cond_147
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 330
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 333
    move-result v4

    .line 334
    iget v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->W:I

    .line 336
    add-int/2addr v4, v5

    .line 337
    invoke-interface {v1, v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->p(I)V

    .line 340
    :cond_153
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lcom/baidu/skinrender/SkinRenderStatus;->i()Z

    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_175

    .line 350
    sget-object v1, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 352
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_16f

    .line 361
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_16f

    .line 367
    goto :goto_175

    .line 368
    :cond_16f
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 370
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->m(I)V

    .line 373
    goto :goto_19e

    .line 374
    :cond_175
    :goto_175
    sget-object v1, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_18e

    .line 385
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 388
    move-result-object v1

    .line 389
    iget-boolean v1, v1, Lcom/baidu/skinrender/SkinRenderSettings;->z:Z

    .line 391
    if-eqz v1, :cond_18e

    .line 393
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 395
    invoke-interface {v1, v3}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->m(I)V

    .line 398
    goto :goto_19e

    .line 399
    :cond_18e
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 401
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->b()I

    .line 404
    move-result v4

    .line 405
    int-to-float v4, v4

    .line 406
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->W()F

    .line 409
    move-result v5

    .line 410
    mul-float/2addr v5, v4

    .line 411
    float-to-int v4, v5

    .line 412
    invoke-interface {v1, v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->m(I)V

    .line 415
    :goto_19e
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 417
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 420
    move-result v4

    .line 421
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 423
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->o()I

    .line 426
    move-result v5

    .line 427
    add-int/2addr v5, v4

    .line 428
    invoke-interface {v1, v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->k(I)V

    .line 431
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 433
    iget-object v1, v1, Lcom/baidu/input/ImeService;->r:Lcom/baidu/input/ime/cand/CandLayoutManager;

    .line 435
    if-eqz v1, :cond_1c6

    .line 437
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 439
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 442
    move-result v4

    .line 443
    invoke-virtual {v1, v4}, Lcom/baidu/input/ime/cand/CandLayoutManager;->f(I)V

    .line 446
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 448
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->o()I

    .line 451
    move-result v4

    .line 452
    invoke-virtual {v1, v4}, Lcom/baidu/input/ime/cand/CandLayoutManager;->g(I)V

    .line 455
    :cond_1c6
    new-instance v1, Landroid/graphics/Rect;

    .line 457
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 459
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->q()S

    .line 462
    move-result v4

    .line 463
    iget-object v5, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 465
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->j()S

    .line 468
    move-result v5

    .line 469
    iget-object v6, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 471
    invoke-interface {v6}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 474
    move-result v6

    .line 475
    invoke-direct {v1, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 478
    iget-object v4, p0, Lcom/baidu/input/ime/AbsSoftView;->c:Lcom/baidu/input/ime/InputStatMac;

    .line 480
    iget-byte v4, v4, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 482
    const/16 v5, 0x32

    .line 484
    if-ne v4, v5, :cond_200

    .line 486
    sget-object v4, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 488
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 494
    move-result v4

    .line 495
    sput-boolean v4, Lcom/baidu/input/emotion/util/ImeStateConfig;->h:Z

    .line 497
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 499
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 502
    move-result v4

    .line 503
    sput v4, Lcom/baidu/input/emotion/util/ImeStateConfig;->f:I

    .line 505
    iget-object v4, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 507
    invoke-interface {v4}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->o()I

    .line 510
    move-result v4

    .line 511
    sput v4, Lcom/baidu/input/emotion/util/ImeStateConfig;->g:I

    .line 513
    :cond_200
    const-class v4, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 515
    invoke-static {v4}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 518
    move-result-object v4

    .line 519
    check-cast v4, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 521
    invoke-interface {v4}, Lcom/baidu/input/cocomodule/panel/IPanel;->U2()Lcom/baidu/input/ime/viewmanager/KeymapViewManager;

    .line 524
    move-result-object v4

    .line 525
    new-instance v5, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;

    .line 527
    iget-object v6, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 529
    invoke-interface {v6}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->r()I

    .line 532
    move-result v6

    .line 533
    iget-object v7, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 535
    invoke-interface {v7}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->a()I

    .line 538
    move-result v7

    .line 539
    invoke-direct {v5, v6, v7, v1}, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;-><init>(IILandroid/graphics/Rect;)V

    .line 542
    iget-object v1, v4, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->i:Lcom/baidu/input/ime/viewmanager/size/SizeInformer;

    .line 544
    iget-object v6, v1, Lcom/baidu/input/ime/viewmanager/size/SizeInformer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 546
    iget-object v1, v1, Lcom/baidu/input/ime/viewmanager/size/SizeInformer;->c:Lcom/baidu/input/ime/viewmanager/size/SizeInfor;

    .line 548
    invoke-static {v1, v5, v6}, Lcom/baidu/input/ime/viewmanager/size/SizeInformer;->a(Lcom/baidu/input/ime/viewmanager/size/SizeInfor;Lcom/baidu/input/ime/viewmanager/size/SizeInfor;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_232

    .line 554
    iget-object v1, v4, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->f:Lcom/baidu/input/ime/viewmanager/container/CandParentContainerView;

    .line 556
    invoke-virtual {v1}, Lcom/baidu/input/ime/viewmanager/container/CandParentContainerView;->getPresenter()Lcom/baidu/input/ime/viewmanager/pesenter/CandMiniKeymapPresenter;

    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v1, v5}, Lcom/baidu/input/ime/viewmanager/pesenter/ImeMiniKeymapPresenter;->c(Lcom/baidu/input/ime/viewmanager/size/SizeInfor;)V

    .line 563
    :cond_232
    iget v1, v5, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;->b:I

    .line 565
    iget-object v5, v5, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;->c:Landroid/graphics/Rect;

    .line 567
    iget-object v4, v4, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->a:Lcom/baidu/input/ime/viewmanager/IKeymapView;

    .line 569
    if-eqz v4, :cond_23d

    .line 571
    invoke-interface {v4, v1, v5}, Lcom/baidu/input/modular/definekeymap/IDefineKeymapViewLifeCycle;->a(ILandroid/graphics/Rect;)I

    .line 574
    :cond_23d
    invoke-static {}, Lcom/baidu/input/pub/Global;->D()I

    .line 577
    move-result v1

    .line 578
    sget v4, Lcom/baidu/iptcore/ConfigKey;->d:I

    .line 580
    if-gtz v1, :cond_24f

    .line 582
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 585
    move-result-object v1

    .line 586
    iget-object v1, v1, Lcom/baidu/iptcore/ImeCoreManager;->a:Lcom/baidu/iptcore/async/AsyncCoreConfig;

    .line 588
    invoke-virtual {v1, v4, v3}, Lcom/baidu/iptcore/async/AsyncCoreConfig;->b(IZ)V

    .line 591
    goto :goto_26f

    .line 592
    :cond_24f
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 595
    move-result-object v1

    .line 596
    iget-object v1, v1, Lcom/baidu/iptcore/ImeCoreManager;->a:Lcom/baidu/iptcore/async/AsyncCoreConfig;

    .line 598
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 601
    move-result-object v5

    .line 602
    iget-object v5, v5, Lcom/baidu/input/panel/session/PanelSession;->e:Lcom/baidu/input/ime/InputStatMac;

    .line 604
    iget-byte v5, v5, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 606
    const/16 v6, 0x11

    .line 608
    if-ne v5, v6, :cond_263

    .line 610
    move v5, v2

    .line 611
    goto :goto_26c

    .line 612
    :cond_263
    sget-object v5, Lcom/baidu/input/manager/PreferenceManager;->b:Lcom/baidu/input/common/storage/sp/IPreference;

    .line 614
    const v6, 0x7f12106f

    .line 617
    invoke-interface {v5, v6, v2}, Lcom/baidu/input/common/storage/sp/IPreference;->o(IZ)Z

    .line 620
    move-result v5

    .line 621
    :goto_26c
    invoke-virtual {v1, v4, v5}, Lcom/baidu/iptcore/async/AsyncCoreConfig;->b(IZ)V

    .line 624
    :goto_26f
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->E:Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;

    .line 626
    invoke-interface {v1}, Lcom/baidu/input/panel/render/cand/ICandSizeStrategy;->n()I

    .line 629
    move-result v1

    .line 630
    if-eq v1, v0, :cond_278

    .line 632
    goto :goto_279

    .line 633
    :cond_278
    move v2, v3

    .line 634
    :goto_279
    return v2
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 3
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 6
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->e0:Z

    .line 8
    if-nez v0, :cond_75

    .line 10
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_20

    .line 23
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->S:Landroid/view/VelocityTracker;

    .line 25
    if-nez v0, :cond_20

    .line 27
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->S:Landroid/view/VelocityTracker;

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->S:Landroid/view/VelocityTracker;

    .line 35
    if-eqz v0, :cond_75

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 42
    if-eqz v0, :cond_75

    .line 44
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 46
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 48
    if-eqz v0, :cond_75

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_75

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 62
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 64
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 66
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 68
    int-to-float v1, v1

    .line 69
    cmpg-float v0, v0, v1

    .line 71
    if-lez v0, :cond_75

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 79
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 81
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 83
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 85
    int-to-float v1, v1

    .line 86
    cmpl-float v0, v0, v1

    .line 88
    if-gez v0, :cond_75

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 96
    iget-object v1, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 98
    iget-object v1, v1, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 100
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 102
    int-to-float v1, v1

    .line 103
    cmpg-float v0, v0, v1

    .line 105
    if-lez v0, :cond_75

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 110
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 112
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 114
    iget-object v0, v0, Lcom/baidu/input/ime/render/CandRender;->z:Landroid/graphics/Rect;

    .line 116
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 118
    :cond_75
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 120
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 122
    if-eqz v0, :cond_8a

    .line 124
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->D:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 126
    if-eqz v0, :cond_8a

    .line 128
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 130
    instance-of v1, v0, Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 132
    if-eqz v1, :cond_8a

    .line 134
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;->h:Lcom/baidu/input/ime/voicerecognize/ui/ImeVoiceAreaHandler;

    .line 136
    invoke-virtual {v0}, Lcom/baidu/input/ime/voicerecognize/ui/AbsVoiceHandler;->z()V

    .line 139
    :cond_8a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 142
    move-result p1

    .line 143
    const/4 v0, 0x1

    .line 144
    if-eq p1, v0, :cond_95

    .line 146
    const/4 v0, 0x3

    .line 147
    if-eq p1, v0, :cond_95

    .line 149
    goto :goto_9c

    .line 150
    :cond_95
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    :goto_9c
    return-void
.end method

.method public final y()S
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/cand/CandidateView;->F:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget-short v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->w:S

    .line 9
    return v0
.end method
