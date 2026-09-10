.class public Lcom/baidu/input/ime/keymap/KeyMap;
.super Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/ime/keymap/IKeyMap;
.implements Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchListener;
.implements Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchStrategySupplier;
.implements Lcom/baidu/input/ime/render/IKeyMapRenderProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/ime/keymap/KeyMap$IKeyWayCheckInterceptor;,
        Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;,
        Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;,
        Lcom/baidu/input/ime/keymap/KeyMap$OnLongPressListener;,
        Lcom/baidu/input/ime/keymap/KeyMap$OnLongHoverListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper<",
        "Lcom/baidu/input/ime/params/KeymapLoader;",
        ">;",
        "Lcom/baidu/input/ime/keymap/IKeyMap;",
        "Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchListener;",
        "Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchStrategySupplier;",
        "Lcom/baidu/input/ime/render/IKeyMapRenderProcedure;"
    }
.end annotation


# static fields
.field public static Y:S

.field public static Z:Lcom/baidu/input/ime/KeyAction;

.field public static a0:Lcom/baidu/input/ime/KeyAction;

.field public static b0:Z

.field public static c0:Lcom/baidu/input/ime/InputStatMac;

.field public static d0:Lcom/baidu/input/ime/KeymapMac;

.field public static e0:Lcom/baidu/input/ime/InputEventHandler;

.field public static f0:Lcom/baidu/input/ime/newcore/state/CandState2;

.field public static g0:Lcom/baidu/input/ime/newcore/state/ListState2;

.field public static h0:[B

.field public static i0:I

.field public static final j0:Landroid/graphics/Rect;

.field public static k0:I

.field public static l0:I

.field public static m0:Lcom/baidu/input/ime/TouchPoint;

.field public static n0:[Z

.field public static o0:[Z

.field public static p0:B

.field public static q0:I


# instance fields
.field public A:J

.field public B:J

.field public C:Landroid/os/Handler;

.field public D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

.field public E:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

.field public F:Landroid/os/Handler;

.field public G:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

.field public H:Z

.field public I:S

.field public J:J

.field public K:I

.field public L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

.field public M:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Landroid/graphics/drawable/BitmapDrawable;

.field public T:Landroid/graphics/Paint$FontMetricsInt;

.field public U:Lcom/baidu/z50;

.field public V:Lcom/baidu/input/ime/render/KeymapRender;

.field public W:Landroid/graphics/Rect;

.field public final X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

.field public c:Lcom/baidu/input/ime/SubList;

.field public d:Lcom/baidu/input/ime/cand/CandHandler;

.field public e:Ljava/util/ArrayList;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:B

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:B

.field public y:Lcom/baidu/input/ime/params/KeyParam;

.field public z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    sput-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->j0:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Lcom/baidu/input/ime/TouchPoint;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, v1}, Lcom/baidu/input/ime/TouchPoint;-><init>(II)V

    .line 14
    sput-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->r:Z

    .line 22
    iput-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 23
    new-instance v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    invoke-direct {v1, p0, p0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/keymap/KeyMap;)V

    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 24
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->Q:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->T:Landroid/graphics/Paint$FontMetricsInt;

    .line 27
    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->U:Lcom/baidu/z50;

    .line 28
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    const/16 v0, 0xe

    .line 29
    iput-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->h:B

    return-void
.end method

.method public constructor <init>(B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->r:Z

    .line 3
    iput-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 4
    new-instance v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    invoke-direct {v1, p0, p0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/keymap/KeyMap;)V

    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 5
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->Q:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->T:Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->U:Lcom/baidu/z50;

    .line 9
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->n0(B)V

    return-void
.end method

.method public constructor <init>(BLcom/baidu/input/ime/keymap/AbsKeyMapVoice;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->r:Z

    .line 12
    iput-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 13
    new-instance v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    invoke-direct {v1, p0, p0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/keymap/KeyMap;)V

    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 14
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->Q:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->T:Landroid/graphics/Paint$FontMetricsInt;

    .line 17
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->U:Lcom/baidu/z50;

    .line 18
    iput-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->n0(B)V

    return-void
.end method

.method public static C0(B)B
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->d()Lcom/baidu/input/ime/international/keymap/IKeymapSwitchWrapper;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/baidu/input/ime/international/keymap/IKeymapSwitcher;->i(B)B

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static H0(II)Z
    .registers 3

    .line 1
    sget v0, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 3
    sub-int/2addr p0, v0

    .line 4
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 7
    move-result p0

    .line 8
    sget v0, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 10
    if-ge p0, v0, :cond_18

    .line 12
    sget p0, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 14
    sub-int/2addr p1, p0

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 18
    move-result p0

    .line 19
    sget p1, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 21
    if-ge p0, p1, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    return p0
.end method

.method public static N(Lcom/baidu/input/ime/params/KeyParam;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_2d

    .line 3
    iget v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 5
    const v1, 0xf0027

    .line 8
    if-ne v0, v1, :cond_2d

    .line 10
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 12
    iget-object v0, v0, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 19
    const v2, 0xff022

    .line 22
    if-ne v0, v1, :cond_26

    .line 24
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 26
    const/16 v1, 0x1b

    .line 28
    aget-boolean v0, v0, v1

    .line 30
    if-eqz v0, :cond_26

    .line 32
    iget v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->C:I

    .line 34
    if-nez v0, :cond_2d

    .line 36
    iput v2, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->C:I

    .line 38
    goto :goto_2d

    .line 39
    :cond_26
    iget v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->C:I

    .line 41
    if-ne v0, v2, :cond_2d

    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->C:I

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public static e0(Lcom/baidu/input/ime/params/KeyParam;B)I
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    iget v0, p0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 7
    const v1, 0xf0026

    .line 10
    if-ne v0, v1, :cond_23

    .line 12
    invoke-static {}, Lcom/baidu/input/ime/international/model/LanguageManager;->g()Lcom/baidu/input/ime/international/model/LanguageManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/baidu/input/ime/international/model/LanguageManager;->c()I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_23

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_1c

    .line 25
    const p0, 0xff024

    .line 28
    return p0

    .line 29
    :cond_1c
    const/4 v0, 0x3

    .line 30
    if-ne p1, v0, :cond_23

    .line 32
    const p0, 0xff025

    .line 35
    return p0

    .line 36
    :cond_23
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/params/KeyParam;->F(B)I

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static t0(Lcom/baidu/input/ime/params/StyleParam;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_29

    .line 4
    iget-object p0, p0, Lcom/baidu/input/ime/params/StyleParam;->o:Ljava/lang/String;

    .line 6
    if-eqz p0, :cond_29

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 15
    move-result v1

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_29

    .line 22
    const/16 p0, 0x61

    .line 24
    if-lt v1, p0, :cond_1d

    .line 26
    const/16 p0, 0x7a

    .line 28
    if-le v1, p0, :cond_27

    .line 30
    :cond_1d
    const p0, 0xff41

    .line 33
    if-lt v1, p0, :cond_29

    .line 35
    const p0, 0xff5a

    .line 38
    if-gt v1, p0, :cond_29

    .line 40
    :cond_27
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_29
    return v0
.end method


# virtual methods
.method public final A(Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->N:I

    .line 3
    iput v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->f:I

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->M:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 7
    iput-object v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->g:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 9
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 11
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->c()S

    .line 14
    move-result v0

    .line 15
    iput-short v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->b:S

    .line 17
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 19
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_19

    .line 24
    move v0, v1

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    iget-short v0, v0, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 28
    :goto_1b
    iput-short v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->c:S

    .line 30
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 32
    invoke-static {v0}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 35
    iput-boolean v1, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->d:Z

    .line 37
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 39
    iget-boolean v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->h:Z

    .line 41
    if-eqz v0, :cond_2f

    .line 43
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->h0:[B

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 v0, 0x0

    .line 49
    :goto_30
    iput-object v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->e:[B

    .line 51
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->e:Z

    .line 53
    iput-boolean v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->i:Z

    .line 55
    sget v0, Lcom/baidu/input/ime/keymap/KeyMap;->i0:I

    .line 57
    iput v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->h:I

    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->m:Z

    .line 62
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 64
    if-eqz v2, :cond_42

    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    invoke-static {p0}, Lcom/baidu/input/ime/params/anim/KeyboardAnimationUtil;->b(Lcom/baidu/input/ime/keymap/KeyMap;)Lcom/baidu/input/ime/params/anim/IAnimTarget;

    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_49

    .line 73
    move v1, v0

    .line 74
    :cond_49
    xor-int/2addr v0, v1

    .line 75
    :goto_4a
    iput-boolean v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->j:Z

    .line 77
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->F0()Z

    .line 80
    move-result v0

    .line 81
    iput-boolean v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->k:Z

    .line 83
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->G0()Z

    .line 86
    move-result v0

    .line 87
    iput-boolean v0, p1, Lcom/baidu/input/ime/render/KeymapRender$KeymapRenderParams;->l:Z

    .line 89
    return-void
.end method

.method public A0()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/baidu/input/acgfont/FontUtils;->c:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    return v0
.end method

.method public final B()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v1, v0, Lcom/baidu/input/ime/render/KeymapRender;->d:Lcom/baidu/input/ime/render/LightRenderStrategy;

    .line 5
    if-eqz v1, :cond_30

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    .line 9
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 11
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 13
    iget-object v0, v0, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 15
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 18
    iget-object v0, v1, Lcom/baidu/input/ime/render/LightRenderStrategy;->c:Ljava/util/ArrayList;

    .line 20
    if-eqz v0, :cond_29

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_29

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/baidu/input/ime/params/anim/IAnimTarget;

    .line 38
    invoke-interface {v3, v2}, Lcom/baidu/input/ime/params/anim/IAnimTarget;->v(Landroid/graphics/Rect;)V

    .line 41
    goto :goto_19

    .line 42
    :cond_29
    iget-object v0, v1, Lcom/baidu/input/ime/render/LightRenderStrategy;->a:Lcom/baidu/input/ime/params/anim/LightAnimTarget;

    .line 44
    if-eqz v0, :cond_30

    .line 46
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/params/anim/LightAnimTarget;->v(Landroid/graphics/Rect;)V

    .line 49
    :cond_30
    return-void
.end method

.method public B0(I)Z
    .registers 5

    .line 1
    const/high16 v0, 0xff0000

    .line 3
    and-int/2addr v0, p1

    .line 4
    const/high16 v1, 0xf0000

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    return v2

    .line 10
    :cond_9
    int-to-char p1, p1

    .line 11
    const/16 v0, 0x61

    .line 13
    if-lt p1, v0, :cond_12

    .line 15
    const/16 v0, 0x7a

    .line 17
    if-le p1, v0, :cond_22

    .line 19
    :cond_12
    const/16 v0, 0x41

    .line 21
    if-lt p1, v0, :cond_1a

    .line 23
    const/16 v0, 0x5a

    .line 25
    if-le p1, v0, :cond_22

    .line 27
    :cond_1a
    const/16 v0, 0x30

    .line 29
    if-lt p1, v0, :cond_23

    .line 31
    const/16 v0, 0x39

    .line 33
    if-gt p1, v0, :cond_23

    .line 35
    :cond_22
    const/4 v2, 0x1

    .line 36
    :cond_23
    return v2
.end method

.method public D0()V
    .registers 6

    .line 1
    const-class v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 3
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 9
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel;->Z3()Lcom/baidu/input/modular/switcher/ModuleViewSwitchManager;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/baidu/input/modular/switcher/ModuleViewSwitchManager;->b:Ljava/util/Stack;

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_24

    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_24

    .line 24
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/baidu/input/modular/switcher/data/ViewSwitchData;

    .line 30
    if-eqz v1, :cond_24

    .line 32
    invoke-virtual {v1}, Lcom/baidu/input/modular/switcher/data/ViewSwitchData;->a()Z

    .line 35
    move-result v1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v2

    .line 38
    :goto_25
    iget-object v3, v0, Lcom/baidu/input/modular/switcher/ModuleViewSwitchManager;->c:Ljava/util/Stack;

    .line 40
    if-eqz v3, :cond_3c

    .line 42
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_3c

    .line 48
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/baidu/input/modular/switcher/data/ViewSwitchData;

    .line 54
    if-eqz v3, :cond_3c

    .line 56
    invoke-virtual {v3}, Lcom/baidu/input/modular/switcher/data/ViewSwitchData;->a()Z

    .line 59
    move-result v3

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v3, v2

    .line 62
    :goto_3d
    if-eqz v1, :cond_44

    .line 64
    if-nez v3, :cond_42

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    move v1, v2

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    :goto_44
    const/4 v1, 0x1

    .line 70
    :goto_45
    invoke-virtual {v0, v1}, Lcom/baidu/input/modular/switcher/ModuleViewSwitchManager;->e(Z)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/baidu/input/modular/switcher/ModuleViewSwitchManager;->d(Z)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->d1(Z)V

    .line 79
    return-void
.end method

.method public E0(B)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->n(B)V

    .line 4
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p1}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->h(B)V

    .line 11
    :cond_a
    return-void
.end method

.method public final F()Lcom/baidu/input/ime/render/IKeyboardRender;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    return-object v0
.end method

.method public F0()Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/baidu/input/theme/diy/preview/DiyKeymap;

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    return v0
.end method

.method public final bridge synthetic G(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/baidu/input/ime/params/KeymapLoader;

    .line 3
    return-void
.end method

.method public G0()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final H()V
    .registers 1

    .line 1
    return-void
.end method

.method public I()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->r(Z)V

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->b()V

    .line 16
    :cond_f
    return-void
.end method

.method public final I0(SIIFFFFFI)V
    .registers 25

    .line 1
    move-object v10, p0

    .line 2
    move/from16 v11, p1

    .line 4
    move/from16 v12, p2

    .line 6
    move/from16 v13, p3

    .line 8
    const/4 v14, 0x1

    .line 9
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 11
    iget-short v0, v0, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 13
    if-eq v11, v0, :cond_32

    .line 15
    sget-object v0, Lcom/baidu/input/pub/Global;->T:[I

    .line 17
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 25
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 27
    invoke-virtual {v0, v12, v13}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->h0(II)V

    .line 30
    :cond_1d
    const/4 v9, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move/from16 v1, p1

    .line 34
    move/from16 v2, p2

    .line 36
    move/from16 v3, p3

    .line 38
    move/from16 v4, p4

    .line 40
    move/from16 v5, p5

    .line 42
    move/from16 v6, p6

    .line 44
    move/from16 v7, p7

    .line 46
    move/from16 v8, p8

    .line 48
    invoke-virtual/range {v0 .. v9}, Lcom/baidu/input/ime/keymap/KeyMap;->Q(SIIFFFFFZ)V

    .line 51
    :cond_32
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 53
    iget v0, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 55
    const/4 v1, 0x2

    .line 56
    if-eqz v0, :cond_5a

    .line 58
    sget-boolean v0, Lcom/baidu/input/pub/Global;->Y:Z

    .line 60
    if-eqz v0, :cond_5a

    .line 62
    iget-boolean v0, v10, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 64
    if-eqz v0, :cond_5a

    .line 66
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 68
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 70
    if-ne v0, v14, :cond_5a

    .line 72
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 74
    iget v2, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 76
    const/16 v3, 0x61

    .line 78
    if-lt v2, v3, :cond_5a

    .line 80
    const/16 v3, 0x7a

    .line 82
    if-gt v2, v3, :cond_5a

    .line 84
    iget-byte v2, v0, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 86
    if-eq v2, v1, :cond_5a

    .line 88
    invoke-virtual {v0}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 91
    :cond_5a
    move/from16 v0, p9

    .line 93
    if-ne v0, v1, :cond_6f

    .line 95
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 98
    move-result-object v0

    .line 99
    aget-object v0, v0, v11

    .line 101
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 103
    invoke-static {}, Lcom/baidu/input/swipeinput/SwipeInputSettings;->d()Z

    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_6f

    .line 109
    invoke-virtual {p0, v11, v1}, Lcom/baidu/input/ime/keymap/KeyMap;->S(SB)V

    .line 112
    :cond_6f
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->P()V

    .line 115
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 117
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->s()V

    .line 120
    sget-object v0, Lcom/baidu/input/pub/Global;->T:[I

    .line 122
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_134

    .line 128
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 130
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    sget-object v2, Lcom/baidu/input/cocomodule/international/InternationalManager;->f:Lcom/baidu/input/cocomodule/international/InternationalManager;

    .line 137
    iget-boolean v3, v0, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->Z:Z

    .line 139
    if-eqz v3, :cond_134

    .line 141
    if-gez v12, :cond_90

    .line 143
    if-ltz v13, :cond_134

    .line 145
    :cond_90
    iget-object v3, v0, Lcom/baidu/input/ime/AbsSoftView;->d:Lcom/baidu/input/ime/InputEventHandler;

    .line 147
    iget-object v3, v3, Lcom/baidu/input/ime/InputEventHandler;->p:Lcom/baidu/input/ime/KeyAction;

    .line 149
    iget-byte v3, v3, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 151
    const/4 v4, 0x0

    .line 152
    if-ne v3, v1, :cond_10d

    .line 154
    const-class v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 156
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 162
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_b2

    .line 172
    invoke-static {}, Lcom/baidu/input/ime/params/enumtype/MiniMapManager;->f()I

    .line 175
    move-result v1

    .line 176
    :goto_af
    sub-int v1, v12, v1

    .line 178
    goto :goto_dd

    .line 179
    :cond_b2
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 185
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->V()S

    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_d1

    .line 195
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 201
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->V()S

    .line 208
    move-result v1

    .line 209
    goto :goto_af

    .line 210
    :cond_d1
    invoke-static {}, Lcom/baidu/input/pub/Global;->V()Z

    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_dc

    .line 216
    invoke-static {}, Lcom/baidu/input/oem/OEMUtils;->a()I

    .line 219
    move-result v1

    .line 220
    goto :goto_af

    .line 221
    :cond_dc
    move v1, v12

    .line 222
    :goto_dd
    iget-object v3, v2, Lcom/baidu/input/cocomodule/international/InternationalManager;->b:Lcom/baidu/facemoji/keyboard/external/KeyboardExt;

    .line 224
    const/4 v5, 0x0

    .line 225
    if-eqz v3, :cond_f7

    .line 227
    iget-object v3, v3, Lcom/baidu/facemoji/keyboard/external/KeyboardExt;->e:Lcom/baidu/facemoji/keyboard/external/KeyDetectorExt;

    .line 229
    if-eqz v3, :cond_f7

    .line 231
    iget-object v6, v3, Lcom/baidu/facemoji/keyboard/external/KeyDetectorExt;->a:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 233
    invoke-virtual {v6, v1, v13}, Lcom/android/inputmethod/keyboard/KeyDetector;->a(II)Lcom/android/inputmethod/keyboard/FatKey;

    .line 236
    move-result-object v6

    .line 237
    if-eqz v6, :cond_f7

    .line 239
    iget-object v3, v3, Lcom/baidu/facemoji/keyboard/external/KeyDetectorExt;->b:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 241
    if-eqz v3, :cond_f7

    .line 243
    new-instance v5, Lcom/baidu/facemoji/keyboard/external/KeyExt;

    .line 245
    invoke-direct {v5, v6}, Lcom/baidu/facemoji/keyboard/external/KeyExt;-><init>(Lcom/android/inputmethod/keyboard/FatKey;)V

    .line 248
    :cond_f7
    if-eqz v5, :cond_134

    .line 250
    invoke-virtual {v0}, Lcom/baidu/input/ime/AbsSoftView;->w()V

    .line 253
    invoke-virtual {v2, v5, v1, v13, v4}, Lcom/baidu/input/cocomodule/international/InternationalManager;->h(Lcom/baidu/facemoji/keyboard/external/KeyExt;IIZ)V

    .line 256
    iget-object v0, v2, Lcom/baidu/input/cocomodule/international/InternationalManager;->a:Lcom/baidu/facemoji/LatinManager;

    .line 258
    iget-object v0, v0, Lcom/baidu/facemoji/LatinManager;->d:Lcom/baidu/simeji/SimejiIME;

    .line 260
    invoke-virtual {v0}, Lcom/baidu/simeji/SimejiIME;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 263
    move-result-object v0

    .line 264
    iget v1, v5, Lcom/baidu/facemoji/keyboard/external/KeyExt;->a:I

    .line 266
    invoke-interface {v0, v1, v4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onReleaseKey(IZ)V

    .line 269
    goto :goto_134

    .line 270
    :cond_10d
    if-nez v3, :cond_134

    .line 272
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->W:Lcom/baidu/facemoji/keyboard/external/KeyExt;

    .line 274
    if-eqz v1, :cond_134

    .line 276
    iget-object v1, v1, Lcom/baidu/facemoji/keyboard/external/KeyExt;->c:Ljava/lang/String;

    .line 278
    if-eqz v1, :cond_134

    .line 280
    invoke-virtual {v0}, Lcom/baidu/input/ime/AbsSoftView;->w()V

    .line 283
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->W:Lcom/baidu/facemoji/keyboard/external/KeyExt;

    .line 285
    iget-object v0, v0, Lcom/baidu/facemoji/keyboard/external/KeyExt;->c:Ljava/lang/String;

    .line 287
    iget-object v1, v2, Lcom/baidu/input/cocomodule/international/InternationalManager;->a:Lcom/baidu/facemoji/LatinManager;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    move v2, v4

    .line 293
    :goto_124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 296
    move-result v3

    .line 297
    if-ge v2, v3, :cond_134

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 302
    move-result v3

    .line 303
    const/4 v5, -0x1

    .line 304
    invoke-virtual {v1, v3, v5, v5, v4}, Lcom/baidu/facemoji/LatinManager;->b(IIIZ)V

    .line 307
    add-int/2addr v2, v14

    .line 308
    goto :goto_124

    .line 309
    :cond_134
    :goto_134
    return-void
.end method

.method public J()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->k()V

    .line 8
    :cond_7
    invoke-static {}, Lcom/baidu/input/panel/util/CoreAutomatedTestUtilKt;->a()Z

    .line 11
    return-void
.end method

.method public final J0(IS)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_6

    .line 5
    move p1, v1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move p1, v0

    .line 8
    :goto_7
    if-lez p2, :cond_d1

    .line 10
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_d1

    .line 16
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 19
    move-result-object v2

    .line 20
    array-length v2, v2

    .line 21
    if-lt p2, v2, :cond_18

    .line 23
    goto/16 :goto_d1

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 28
    move-result-object v2

    .line 29
    aget-object v2, v2, p2

    .line 31
    if-nez v2, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    iget v3, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 36
    const v4, 0xf0037

    .line 39
    if-ne v3, v4, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    if-nez p1, :cond_49

    .line 44
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 46
    iget-boolean v4, v4, Lcom/baidu/input/ime/KeymapMac;->i:Z

    .line 48
    if-eqz v4, :cond_49

    .line 50
    const v4, 0xf0024

    .line 53
    if-ne v3, v4, :cond_49

    .line 55
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 57
    iget-boolean v3, v3, Lcom/baidu/input/ime/InputStatMac;->n:Z

    .line 59
    if-nez v3, :cond_49

    .line 61
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 64
    move-result-object v3

    .line 65
    iget-object v3, v3, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 67
    const v4, 0xf900

    .line 70
    const/4 v5, 0x7

    .line 71
    invoke-virtual {v3, v4, v5}, Lcom/baidu/iptcore/async/AsyncImePad;->j(II)V

    .line 74
    :cond_49
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->g()Lcom/baidu/skinrender/SkinEventManager;

    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 80
    iget-object v4, v4, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 82
    iget-object v4, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 84
    iget-boolean v5, v3, Lcom/baidu/skinrender/SkinEventManager;->a:Z

    .line 86
    if-nez v5, :cond_75

    .line 88
    iput-boolean v1, v3, Lcom/baidu/skinrender/SkinEventManager;->a:Z

    .line 90
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 93
    move-result-object v3

    .line 94
    const/4 v5, 0x4

    .line 95
    invoke-virtual {v3, v5}, Lcom/baidu/skinrender/SkinRenderStatus;->e(I)Z

    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_75

    .line 101
    new-instance v3, Lcom/baidu/input/ime/params/event/ActionEvent;

    .line 103
    invoke-direct {v3, v5}, Lcom/baidu/input/ime/params/event/BasicEvent;-><init>(I)V

    .line 106
    iput-object v4, v3, Lcom/baidu/input/ime/params/event/ActionEvent;->b:Ljava/lang/Object;

    .line 108
    const/4 v4, 0x3

    .line 109
    iput v4, v3, Lcom/baidu/input/ime/params/event/ActionEvent;->c:I

    .line 111
    invoke-static {}, Lcom/baidu/input/eventbus/InnerEventBus;->a()Lcom/baidu/input/eventbus/InnerEventBus;

    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v3}, Lcom/baidu/input/eventbus/InnerEventBus;->d(Lcom/baidu/input/eventbus/IEvent;)V

    .line 118
    :cond_75
    if-ne p1, v1, :cond_7c

    .line 120
    sget-boolean v3, Lcom/baidu/input/ime/ImePref;->e:Z

    .line 122
    if-nez v3, :cond_7c

    .line 124
    goto :goto_d1

    .line 125
    :cond_7c
    invoke-virtual {v2, p1}, Lcom/baidu/input/ime/params/KeyParam;->P(B)V

    .line 128
    if-ne p1, v1, :cond_91

    .line 130
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 132
    iget-object v3, v3, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 134
    iget-object v4, v3, Lcom/baidu/input/ime/params/KeyMapParams;->d:Lcom/baidu/input/ime/params/CandParam;

    .line 136
    iget-object v3, v3, Lcom/baidu/input/ime/params/KeyMapParams;->f:Lcom/baidu/input/ime/params/SubCandParam;

    .line 138
    invoke-virtual {p0, v2, v4, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->b1(Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V

    .line 141
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 143
    invoke-virtual {v3, p2, v0}, Lcom/baidu/input/ime/render/KeymapRender;->B(IZ)V

    .line 146
    :cond_91
    invoke-virtual {v2}, Lcom/baidu/input/ime/params/BasicKeyParam;->r()Z

    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_d1

    .line 152
    invoke-virtual {v2}, Lcom/baidu/input/ime/params/KeyParam;->I()S

    .line 155
    move-result v0

    .line 156
    if-lez v0, :cond_d1

    .line 158
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 160
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 162
    iget-object v2, v2, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 164
    iget-short v2, v2, Lcom/baidu/input/ime/params/PanelParam;->i:S

    .line 166
    if-gt v0, v2, :cond_d1

    .line 168
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_d1

    .line 174
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 177
    move-result-object v2

    .line 178
    array-length v2, v2

    .line 179
    if-ge v0, v2, :cond_d1

    .line 181
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 184
    move-result-object v2

    .line 185
    aget-object v0, v2, v0

    .line 187
    if-eqz v0, :cond_d1

    .line 189
    invoke-virtual {v0, p1}, Lcom/baidu/input/ime/params/KeyParam;->P(B)V

    .line 192
    if-ne p1, v1, :cond_d1

    .line 194
    iget-object p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 196
    iget-object p1, p1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 198
    iget-object v2, p1, Lcom/baidu/input/ime/params/KeyMapParams;->d:Lcom/baidu/input/ime/params/CandParam;

    .line 200
    iget-object p1, p1, Lcom/baidu/input/ime/params/KeyMapParams;->f:Lcom/baidu/input/ime/params/SubCandParam;

    .line 202
    invoke-virtual {p0, v0, v2, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->b1(Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V

    .line 205
    iget-object p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 207
    invoke-virtual {p1, p2, v1}, Lcom/baidu/input/ime/render/KeymapRender;->B(IZ)V

    .line 210
    :cond_d1
    :goto_d1
    return-void
.end method

.method public final K0(SIIFFFFFZ)V
    .registers 10

    .line 1
    if-ltz p1, :cond_94

    .line 3
    invoke-virtual/range {p0 .. p9}, Lcom/baidu/input/ime/keymap/KeyMap;->Q(SIIFFFFFZ)V

    .line 6
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_12

    .line 12
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 14
    iget-object p1, p1, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->h0(II)V

    .line 19
    :cond_12
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 21
    iget-byte p2, p1, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 23
    const/4 p3, 0x2

    .line 24
    if-ne p2, p3, :cond_99

    .line 26
    iget-byte p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->h:B

    .line 28
    const/16 p3, 0xa

    .line 30
    if-eq p2, p3, :cond_27

    .line 32
    const/16 p3, 0xb

    .line 34
    if-eq p2, p3, :cond_27

    .line 36
    const/16 p3, 0x1a

    .line 38
    if-ne p2, p3, :cond_99

    .line 40
    :cond_27
    iget p1, p1, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 42
    const/16 p2, 0x61

    .line 44
    const/16 p3, 0x30

    .line 46
    if-lt p1, p2, :cond_33

    .line 48
    const/16 p2, 0x7a

    .line 50
    if-le p1, p2, :cond_41

    .line 52
    :cond_33
    const/16 p2, 0x41

    .line 54
    if-lt p1, p2, :cond_3b

    .line 56
    const/16 p2, 0x5a

    .line 58
    if-le p1, p2, :cond_41

    .line 60
    :cond_3b
    if-lt p1, p3, :cond_99

    .line 62
    const/16 p2, 0x39

    .line 64
    if-gt p1, p2, :cond_99

    .line 66
    :cond_41
    iget-boolean p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 68
    if-eqz p1, :cond_7c

    .line 70
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 73
    move-result-object p1

    .line 74
    sget-object p2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 76
    iget-short p2, p2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 78
    aget-object p1, p1, p2

    .line 80
    if-eqz p1, :cond_7c

    .line 82
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 84
    iget-byte p1, p1, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 86
    const/4 p2, 0x1

    .line 87
    if-ne p1, p2, :cond_7c

    .line 89
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 95
    iget-short p2, p2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 97
    aget-object p1, p1, p2

    .line 99
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 101
    const p2, 0xf0026

    .line 104
    if-ne p1, p2, :cond_7c

    .line 106
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 109
    move-result-object p1

    .line 110
    sget-object p2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 112
    iget-short p2, p2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 114
    aget-object p1, p1, p2

    .line 116
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 118
    if-ne p1, p3, :cond_7c

    .line 120
    const p1, 0xe0c9

    .line 123
    :goto_7a
    move p3, p1

    .line 124
    goto :goto_81

    .line 125
    :cond_7c
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 127
    iget p1, p1, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 129
    goto :goto_7a

    .line 130
    :goto_81
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 133
    move-result-object p1

    .line 134
    iget-object p2, p1, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 136
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 138
    iget p4, p1, Lcom/baidu/input/ime/KeyAction;->j:I

    .line 140
    iget p5, p1, Lcom/baidu/input/ime/KeyAction;->k:I

    .line 142
    const/16 p6, 0x8

    .line 144
    const/4 p7, 0x0

    .line 145
    invoke-virtual/range {p2 .. p7}, Lcom/baidu/iptcore/async/AsyncImePad;->j0(IIIILjava/lang/String;)V

    .line 148
    goto :goto_99

    .line 149
    :cond_94
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 151
    invoke-virtual {p1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 154
    :cond_99
    :goto_99
    return-void
.end method

.method public L(Lcom/baidu/input/ime/params/KeyParam;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final L0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    const/4 v3, 0x7

    .line 16
    const/16 v4, 0xa

    .line 18
    const/16 v5, 0x9

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eq v0, v3, :cond_57

    .line 23
    if-eq v0, v5, :cond_32

    .line 25
    if-eq v0, v4, :cond_1b

    .line 27
    goto :goto_79

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->F:Landroid/os/Handler;

    .line 30
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->G:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

    .line 32
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->H:Z

    .line 37
    if-eqz v0, :cond_28

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_28
    invoke-virtual {p0, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->W(II)B

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V

    .line 48
    iput-byte v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 50
    goto :goto_79

    .line 51
    :cond_32
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->H:Z

    .line 53
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->G:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

    .line 55
    if-nez v0, :cond_3f

    .line 57
    new-instance v0, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

    .line 59
    invoke-direct {v0, p0}, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;)V

    .line 62
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->G:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->G:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;

    .line 66
    iput v1, v0, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;->a:I

    .line 68
    iput v2, v0, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongHover;->b:I

    .line 70
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->F:Landroid/os/Handler;

    .line 72
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 75
    move-result v4

    .line 76
    int-to-long v4, v4

    .line 77
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {p0, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->W(II)B

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V

    .line 87
    goto :goto_79

    .line 88
    :cond_57
    invoke-virtual {p0, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->W(II)B

    .line 91
    move-result v0

    .line 92
    iget-byte v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 94
    if-eq v1, v0, :cond_76

    .line 96
    invoke-static {p2}, Lcom/baidu/input/accessibility/AccessibilityUtil;->b(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 103
    iget-byte v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 105
    invoke-virtual {p0, p1, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V

    .line 108
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 111
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V

    .line 114
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 117
    iput-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->x:B

    .line 119
    :cond_76
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V

    .line 122
    :goto_79
    return v6
.end method

.method public M(II)V
    .registers 6

    .line 1
    sget-byte v0, Lcom/baidu/input/ime/keymap/KeyMap;->p0:B

    .line 3
    sub-int v1, p1, v0

    .line 5
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->j0:Landroid/graphics/Rect;

    .line 7
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 9
    sub-int v1, p2, v0

    .line 11
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 13
    add-int/2addr p1, v0

    .line 14
    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 16
    add-int/2addr p2, v0

    .line 17
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    .line 19
    return-void
.end method

.method public final M0(Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;B)V
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x7

    .line 4
    const/16 v3, 0x9

    .line 6
    const/16 v4, 0xa

    .line 8
    if-eq p3, v0, :cond_78

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p3, v0, :cond_18

    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p3, v0, :cond_11

    .line 16
    goto/16 :goto_c7

    .line 18
    :cond_11
    check-cast p1, Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$IWordEventDispatcher;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/ime/keymap/KeyMap;->N0(Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$IWordEventDispatcher;Landroid/view/MotionEvent;)V

    .line 23
    goto/16 :goto_c7

    .line 25
    :cond_18
    check-cast p1, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    move-result p3

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result v0

    .line 35
    float-to-int v0, v0

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 39
    move-result p2

    .line 40
    float-to-int p2, p2

    .line 41
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->f0()S

    .line 44
    move-result v5

    .line 45
    :goto_2c
    if-lez v5, :cond_c7

    .line 47
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 50
    move-result-object v6

    .line 51
    aget-object v6, v6, v5

    .line 53
    if-eqz v6, :cond_75

    .line 55
    iget v7, v6, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 57
    const v8, 0xf0035

    .line 60
    if-ne v7, v8, :cond_3e

    .line 62
    goto :goto_75

    .line 63
    :cond_3e
    iget-object v7, v6, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {v7, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_47

    .line 71
    goto :goto_75

    .line 72
    :cond_47
    if-eq p3, v2, :cond_62

    .line 74
    if-eq p3, v3, :cond_54

    .line 76
    if-eq p3, v4, :cond_4e

    .line 78
    goto :goto_75

    .line 79
    :cond_4e
    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->y:Lcom/baidu/input/ime/params/KeyParam;

    .line 81
    invoke-interface {p1, p0, v6, p3}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 84
    goto :goto_75

    .line 85
    :cond_54
    iput-object v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->y:Lcom/baidu/input/ime/params/KeyParam;

    .line 87
    iget v7, v6, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 89
    const v8, 0xf0026

    .line 92
    if-ne v7, v8, :cond_5e

    .line 94
    goto :goto_75

    .line 95
    :cond_5e
    invoke-interface {p1, p0, v6, p3}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 98
    goto :goto_75

    .line 99
    :cond_62
    iget-object v7, p0, Lcom/baidu/input/ime/keymap/KeyMap;->y:Lcom/baidu/input/ime/params/KeyParam;

    .line 101
    if-ne v6, v7, :cond_6a

    .line 103
    invoke-interface {p1, p0, v6, p3}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 106
    goto :goto_75

    .line 107
    :cond_6a
    invoke-interface {p1, p0, v7, v4}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 110
    iput-object v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->y:Lcom/baidu/input/ime/params/KeyParam;

    .line 112
    invoke-interface {p1, p0, v6, v3}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 115
    invoke-interface {p1, p0, v6, v2}, Lcom/baidu/input/accessibility/AccessibilityHelper$IKeyEventDispatcher;->a(Lcom/baidu/input/ime/keymap/KeyMap;Lcom/baidu/input/ime/params/KeyParam;I)V

    .line 118
    :cond_75
    :goto_75
    add-int/lit8 v5, v5, -0x1

    .line 120
    goto :goto_2c

    .line 121
    :cond_78
    check-cast p1, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;

    .line 123
    iget-object p3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 125
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 131
    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 135
    move-result v5

    .line 136
    float-to-int v5, v5

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 140
    move-result p2

    .line 141
    float-to-int p2, p2

    .line 142
    const/4 v6, 0x0

    .line 143
    :goto_8e
    iget-object v7, p3, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 145
    array-length v8, v7

    .line 146
    if-ge v6, v8, :cond_c7

    .line 148
    aget-object v7, v7, v6

    .line 150
    iget-object v8, v7, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {v8, v5, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_9e

    .line 158
    goto :goto_c4

    .line 159
    :cond_9e
    if-eq v0, v2, :cond_b1

    .line 161
    if-eq v0, v3, :cond_ab

    .line 163
    if-eq v0, v4, :cond_a5

    .line 165
    goto :goto_c4

    .line 166
    :cond_a5
    iput-object v1, p3, Lcom/baidu/input/ime/SubList;->s0:Lcom/baidu/input/ime/SubList$Cell;

    .line 168
    invoke-interface {p1, p3, v7, v0}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 171
    goto :goto_c4

    .line 172
    :cond_ab
    iput-object v7, p3, Lcom/baidu/input/ime/SubList;->s0:Lcom/baidu/input/ime/SubList$Cell;

    .line 174
    invoke-interface {p1, p3, v7, v0}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 177
    goto :goto_c4

    .line 178
    :cond_b1
    iget-object v8, p3, Lcom/baidu/input/ime/SubList;->s0:Lcom/baidu/input/ime/SubList$Cell;

    .line 180
    if-ne v7, v8, :cond_b9

    .line 182
    invoke-interface {p1, p3, v7, v0}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 185
    goto :goto_c4

    .line 186
    :cond_b9
    invoke-interface {p1, p3, v8, v4}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 189
    iput-object v7, p3, Lcom/baidu/input/ime/SubList;->s0:Lcom/baidu/input/ime/SubList$Cell;

    .line 191
    invoke-interface {p1, p3, v7, v3}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 194
    invoke-interface {p1, p3, v7, v2}, Lcom/baidu/input/accessibility/AccessibilityHelper$ISubListEventDispatcher;->b(Lcom/baidu/input/ime/SubList;Lcom/baidu/input/ime/SubList$Cell;I)V

    .line 197
    :goto_c4
    add-int/lit8 v6, v6, 0x1

    .line 199
    goto :goto_8e

    .line 200
    :cond_c7
    :goto_c7
    return-void
.end method

.method public N0(Lcom/baidu/input/panel/render/cand/accessibility/IAccessibilityHelper$IWordEventDispatcher;Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    return-void
.end method

.method public O(Landroid/graphics/Typeface;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->g:Lcom/baidu/input/ime/params/KeymapLoader;

    .line 5
    if-eqz v0, :cond_19

    .line 7
    new-instance v1, Lcom/baidu/input/ime/params/facade/applier/TextTtfApplier;

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v2, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 14
    iget-object v2, v2, Lcom/baidu/input/ime/params/KeyMapParams;->j:[Lcom/baidu/input/ime/params/KeyParam;

    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/baidu/input/ime/params/facade/applier/TextTtfApplier;->a([Lcom/baidu/input/ime/params/KeyParam;Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 21
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->s:[Lcom/baidu/input/ime/params/KeyParam;

    .line 23
    invoke-virtual {v1, v0, p1}, Lcom/baidu/input/ime/params/facade/applier/TextTtfApplier;->a([Lcom/baidu/input/ime/params/KeyParam;Landroid/graphics/Typeface;)V

    .line 26
    :cond_19
    return-void
.end method

.method public O0()V
    .registers 1

    .line 1
    return-void
.end method

.method public final P()V
    .registers 7

    .line 1
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 3
    iget-byte v1, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 5
    and-int/lit8 v2, v1, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_d

    .line 10
    xor-int/2addr v1, v3

    .line 11
    int-to-byte v1, v1

    .line 12
    iput-byte v1, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 14
    :cond_d
    iget v1, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 16
    if-eqz v1, :cond_fe

    .line 18
    iget-boolean v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 20
    if-nez v1, :cond_1b

    .line 22
    iget-byte v0, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 24
    and-int/lit8 v0, v0, 0x2

    .line 26
    if-nez v0, :cond_fe

    .line 28
    :cond_1b
    iget-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 30
    const/16 v1, 0x30

    .line 32
    if-eqz v0, :cond_57

    .line 34
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 37
    move-result-object v0

    .line 38
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 40
    iget-short v2, v2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 42
    aget-object v0, v0, v2

    .line 44
    if-eqz v0, :cond_57

    .line 46
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 48
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 50
    if-ne v0, v3, :cond_57

    .line 52
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 58
    iget-short v2, v2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 60
    aget-object v0, v0, v2

    .line 62
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 64
    const v2, 0xf0026

    .line 67
    if-ne v0, v2, :cond_57

    .line 69
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 72
    move-result-object v0

    .line 73
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 75
    iget-short v3, v2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 77
    aget-object v0, v0, v3

    .line 79
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 81
    if-ne v0, v1, :cond_57

    .line 83
    const v0, 0xe0c9

    .line 86
    iput v0, v2, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 88
    :cond_57
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 90
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->a:Z

    .line 97
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeyAction;->a:Z

    .line 99
    iget-short v3, v2, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 101
    iput-short v3, v0, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 103
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 105
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 107
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 109
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 111
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->n:Z

    .line 113
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeyAction;->n:Z

    .line 115
    iget-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 117
    iput-byte v3, v0, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 119
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->h:I

    .line 121
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->h:I

    .line 123
    iget-object v3, v2, Lcom/baidu/input/ime/KeyAction;->i:Ljava/lang/String;

    .line 125
    iput-object v3, v0, Lcom/baidu/input/ime/KeyAction;->i:Ljava/lang/String;

    .line 127
    iget-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 129
    iput-byte v3, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 131
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->j:I

    .line 133
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->j:I

    .line 135
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->k:I

    .line 137
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->k:I

    .line 139
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->f:Z

    .line 141
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeyAction;->f:Z

    .line 143
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->l:F

    .line 145
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->l:F

    .line 147
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->m:F

    .line 149
    iput v3, v0, Lcom/baidu/input/ime/KeyAction;->m:F

    .line 151
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->o:Z

    .line 153
    iput-boolean v3, v0, Lcom/baidu/input/ime/KeyAction;->o:Z

    .line 155
    iget-boolean v2, v2, Lcom/baidu/input/ime/KeyAction;->p:Z

    .line 157
    iput-boolean v2, v0, Lcom/baidu/input/ime/KeyAction;->p:Z

    .line 159
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 161
    iget-boolean v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 163
    iput-boolean v2, v0, Lcom/baidu/input/ime/KeyAction;->o:Z

    .line 165
    iget-boolean v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 167
    if-eqz v2, :cond_fe

    .line 169
    iget-boolean v0, v0, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 171
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 174
    move-result-object v2

    .line 175
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 177
    iget-short v4, v3, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 179
    aget-object v2, v2, v4

    .line 181
    iget v3, v3, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    if-eqz v0, :cond_fb

    .line 190
    if-eqz v2, :cond_fb

    .line 192
    const/4 v0, 0x0

    .line 193
    :goto_c0
    const/4 v3, 0x5

    .line 194
    if-ge v0, v3, :cond_fe

    .line 196
    invoke-static {v2, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->e0(Lcom/baidu/input/ime/params/KeyParam;B)I

    .line 199
    move-result v3

    .line 200
    sget-boolean v5, Lcom/baidu/input/pub/Global;->Y:Z

    .line 202
    if-eqz v5, :cond_d9

    .line 204
    if-lt v3, v1, :cond_f7

    .line 206
    const/16 v5, 0x39

    .line 208
    if-gt v3, v5, :cond_f7

    .line 210
    invoke-static {v3}, Lcom/baidu/input/ime/InputCodeHandler;->a(I)Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    goto :goto_f7

    .line 218
    :cond_d9
    const/16 v5, 0x61

    .line 220
    if-lt v3, v5, :cond_e1

    .line 222
    const/16 v5, 0x7a

    .line 224
    if-le v3, v5, :cond_e5

    .line 226
    :cond_e1
    const/16 v5, 0x27

    .line 228
    if-ne v3, v5, :cond_f7

    .line 230
    :cond_e5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 233
    move-result v5

    .line 234
    if-lez v5, :cond_f0

    .line 236
    const/16 v5, 0x7c

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_f0
    invoke-static {v3}, Lcom/baidu/input/ime/InputCodeHandler;->a(I)Ljava/lang/String;

    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_f7
    :goto_f7
    add-int/lit8 v0, v0, 0x1

    .line 250
    int-to-byte v0, v0

    .line 251
    goto :goto_c0

    .line 252
    :cond_fb
    invoke-static {v3}, Lcom/baidu/input/ime/InputCodeHandler;->a(I)Ljava/lang/String;

    .line 255
    :cond_fe
    return-void
.end method

.method public P0(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public final Q(SIIFFFFFZ)V
    .registers 24

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iget-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_1d

    .line 8
    iget v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->s:I

    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v2, v4, :cond_16

    .line 13
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 15
    iget-object v2, v2, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 17
    if-nez v2, :cond_13

    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    iget-short v2, v2, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 25
    invoke-virtual {v2}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->c()S

    .line 28
    move-result v2

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    move v2, v3

    .line 31
    :goto_1e
    if-lez v1, :cond_35

    .line 33
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->f0()S

    .line 36
    move-result v4

    .line 37
    if-gt v1, v4, :cond_35

    .line 39
    sget-object v4, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 44
    move-result-object v5

    .line 45
    aget-object v5, v5, v1

    .line 47
    iget-object v5, v5, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    sput-boolean v3, Lcom/baidu/input/pub/Global;->g0:Z

    .line 54
    :cond_35
    iput-short v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 56
    new-instance v3, Lcom/baidu/input/ime/TouchPoint;

    .line 58
    move-object v6, v3

    .line 59
    move/from16 v7, p2

    .line 61
    move/from16 v8, p3

    .line 63
    move/from16 v9, p4

    .line 65
    move/from16 v10, p5

    .line 67
    move/from16 v11, p6

    .line 69
    move/from16 v12, p7

    .line 71
    move/from16 v13, p8

    .line 73
    invoke-direct/range {v6 .. v13}, Lcom/baidu/input/ime/TouchPoint;-><init>(IIFFFFF)V

    .line 76
    invoke-virtual {p0, p1, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->l0(SLcom/baidu/input/ime/TouchPoint;)V

    .line 79
    if-eqz p9, :cond_66

    .line 81
    iget-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 83
    if-eqz v2, :cond_97

    .line 85
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 87
    iget-byte v2, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 89
    and-int/lit8 v2, v2, 0x2

    .line 91
    if-eqz v2, :cond_97

    .line 93
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 95
    iget-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 97
    or-int/lit8 v3, v3, 0x2

    .line 99
    int-to-byte v3, v3

    .line 100
    iput-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 102
    goto :goto_97

    .line 103
    :cond_66
    iget-boolean v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 105
    if-eqz v3, :cond_97

    .line 107
    if-lez v2, :cond_97

    .line 109
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 112
    move-result-object v3

    .line 113
    aget-object v3, v3, v2

    .line 115
    if-eqz v3, :cond_97

    .line 117
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 120
    move-result-object v3

    .line 121
    aget-object v3, v3, v2

    .line 123
    iget v3, v3, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 125
    const v4, 0xf000a

    .line 128
    if-eq v3, v4, :cond_8e

    .line 130
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 133
    move-result-object v3

    .line 134
    aget-object v2, v3, v2

    .line 136
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 138
    const v3, 0xf000b

    .line 141
    if-ne v2, v3, :cond_97

    .line 143
    :cond_8e
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 145
    iget-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 147
    or-int/lit8 v3, v3, 0x2

    .line 149
    int-to-byte v3, v3

    .line 150
    iput-byte v3, v2, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 152
    :cond_97
    :goto_97
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 154
    iget-object v2, v2, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 156
    iget-boolean v2, v2, Lcom/baidu/input/panel/hint/HintHandler;->c:Z

    .line 158
    if-eqz v2, :cond_db

    .line 160
    if-lez v1, :cond_db

    .line 162
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 164
    iget v3, v2, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 166
    if-eqz v3, :cond_db

    .line 168
    iget-byte v2, v2, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 170
    if-nez v2, :cond_b9

    .line 172
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 175
    move-result-object v2

    .line 176
    aget-object v2, v2, v1

    .line 178
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 180
    invoke-static {}, Lcom/baidu/input/swipeinput/SwipeInputSettings;->d()Z

    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_db

    .line 186
    :cond_b9
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 188
    iget-object v2, v2, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 190
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 193
    move-result-object v3

    .line 194
    aget-object v3, v3, v1

    .line 196
    iget-object v3, v3, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 198
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 201
    move-result v3

    .line 202
    iput v3, v2, Lcom/baidu/input/panel/hint/HintHandler;->h:I

    .line 204
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 206
    iget-object v2, v2, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 208
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 211
    move-result-object v3

    .line 212
    aget-object v1, v3, v1

    .line 214
    iget-object v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 216
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 218
    iput v1, v2, Lcom/baidu/input/panel/hint/HintHandler;->i:I

    .line 220
    :cond_db
    return-void
.end method

.method public final Q0(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;I)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->g(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;I)V

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_22

    .line 17
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->c()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2d

    .line 23
    iput-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->M:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 25
    iput p3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->N:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->K(Landroid/graphics/Canvas;)V

    .line 30
    iput-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->M:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 32
    iput v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->N:I

    .line 34
    goto :goto_2d

    .line 35
    :cond_22
    iput-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->M:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 37
    iput p3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->N:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->K(Landroid/graphics/Canvas;)V

    .line 42
    iput-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->M:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 44
    iput v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->N:I

    .line 46
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_32

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->n(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;I)V

    .line 51
    :cond_32
    return-void
.end method

.method public R(S)I
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    aget-object v0, v0, p1

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    if-eqz v1, :cond_95

    .line 18
    if-ltz p1, :cond_95

    .line 20
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 23
    move-result-object v1

    .line 24
    array-length v1, v1

    .line 25
    if-gt v1, p1, :cond_1c

    .line 27
    goto/16 :goto_95

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 32
    move-result-object v1

    .line 33
    aget-object v1, v1, p1

    .line 35
    iget-object v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 37
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 39
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 42
    move-result v5

    .line 43
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 45
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_64

    .line 55
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 57
    add-int/lit8 v5, v5, 0x8

    .line 59
    iget-object v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 61
    iget-object v6, v6, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 63
    iget-object v6, v6, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 65
    iget-object v6, v6, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 70
    move-result v6

    .line 71
    if-le v5, v6, :cond_66

    .line 73
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 78
    move-result v6

    .line 79
    shr-int/2addr v6, v4

    .line 80
    sub-int/2addr v5, v6

    .line 81
    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 83
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 85
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 88
    move-result v5

    .line 89
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 91
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 94
    move-result v6

    .line 95
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_66

    .line 101
    :cond_64
    move v1, v2

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move v1, v3

    .line 104
    :goto_67
    if-eqz v1, :cond_96

    .line 106
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->U:Lcom/baidu/z50;

    .line 108
    if-eqz v5, :cond_96

    .line 110
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 113
    move-result-object v1

    .line 114
    aget-object v1, v1, p1

    .line 116
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 118
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 121
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 123
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 126
    iget-object v5, v5, Lcom/baidu/z50;->b:Ljava/lang/Object;

    .line 128
    check-cast v5, Lcom/baidu/input/ime/slideinput/SlideInputInterface;

    .line 130
    iget-boolean v5, v5, Lcom/baidu/input/ime/slideinput/SlideInputInterface;->b:Z

    .line 132
    if-eqz v5, :cond_93

    .line 134
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 136
    const/high16 v5, 0xff0000

    .line 138
    and-int/2addr v5, v1

    .line 139
    const/high16 v6, 0xf0000

    .line 141
    and-int/2addr v1, v6

    .line 142
    if-eqz v1, :cond_95

    .line 144
    const/high16 v1, 0xb0000

    .line 146
    if-eq v5, v1, :cond_95

    .line 148
    :cond_93
    move v1, v2

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    :goto_95
    move v1, v3

    .line 151
    :cond_96
    :goto_96
    const/4 v5, 0x4

    .line 152
    if-eqz v1, :cond_200

    .line 154
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 156
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 163
    move-result v6

    .line 164
    if-ne v1, v6, :cond_b7

    .line 166
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 168
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 175
    move-result v6

    .line 176
    sub-int/2addr v1, v6

    .line 177
    shl-int/lit8 v1, v1, 0x8

    .line 179
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 182
    move-result v1

    .line 183
    goto :goto_d4

    .line 184
    :cond_b7
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 186
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 193
    move-result v6

    .line 194
    sub-int/2addr v1, v6

    .line 195
    shl-int/lit8 v1, v1, 0x8

    .line 197
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 199
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 202
    move-result v6

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 206
    move-result v7

    .line 207
    sub-int/2addr v6, v7

    .line 208
    div-int/2addr v1, v6

    .line 209
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 212
    move-result v1

    .line 213
    :goto_d4
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 215
    iget-byte v6, v6, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 217
    const/4 v7, 0x3

    .line 218
    if-ne v6, v4, :cond_171

    .line 220
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 222
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 225
    move-result v6

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 229
    move-result v8

    .line 230
    const/16 v9, 0xd0

    .line 232
    if-ge v6, v8, :cond_12e

    .line 234
    if-ge v1, v9, :cond_104

    .line 236
    sget v1, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 238
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 240
    invoke-virtual {v4}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 243
    move-result v4

    .line 244
    sub-int/2addr v1, v4

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 248
    move-result v4

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 252
    move-result v0

    .line 253
    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->g0(SIIZ)I

    .line 256
    move-result p1

    .line 257
    if-le v1, p1, :cond_200

    .line 259
    goto/16 :goto_19d

    .line 261
    :cond_104
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 263
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 266
    move-result v1

    .line 267
    sget v6, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 269
    sub-int/2addr v1, v6

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 273
    move-result v6

    .line 274
    invoke-virtual {p0, p1, v6, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->h0(SIZ)I

    .line 277
    move-result v2

    .line 278
    if-le v1, v2, :cond_119

    .line 280
    goto/16 :goto_1b4

    .line 282
    :cond_119
    sget v1, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 284
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 286
    invoke-virtual {v2}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 289
    move-result v2

    .line 290
    sub-int/2addr v1, v2

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 294
    move-result v0

    .line 295
    invoke-virtual {p0, p1, v0, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->h0(SIZ)I

    .line 298
    move-result p1

    .line 299
    if-le v1, p1, :cond_200

    .line 301
    goto/16 :goto_1c5

    .line 303
    :cond_12e
    if-ge v1, v9, :cond_149

    .line 305
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 307
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 310
    move-result v1

    .line 311
    sget v4, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 313
    sub-int/2addr v1, v4

    .line 314
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 317
    move-result v4

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 321
    move-result v0

    .line 322
    invoke-virtual {p0, p1, v4, v0, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->g0(SIIZ)I

    .line 325
    move-result p1

    .line 326
    if-le v1, p1, :cond_200

    .line 328
    goto/16 :goto_201

    .line 330
    :cond_149
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 332
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 335
    move-result v1

    .line 336
    sget v6, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 338
    sub-int/2addr v1, v6

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 342
    move-result v6

    .line 343
    invoke-virtual {p0, p1, v6, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->h0(SIZ)I

    .line 346
    move-result v2

    .line 347
    if-le v1, v2, :cond_15d

    .line 349
    goto :goto_1b4

    .line 350
    :cond_15d
    sget v1, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 352
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 354
    invoke-virtual {v2}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 357
    move-result v2

    .line 358
    sub-int/2addr v1, v2

    .line 359
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 362
    move-result v0

    .line 363
    invoke-virtual {p0, p1, v0, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->h0(SIZ)I

    .line 366
    move-result p1

    .line 367
    if-le v1, p1, :cond_200

    .line 369
    goto :goto_1c5

    .line 370
    :cond_171
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 373
    move-result p1

    .line 374
    shl-int/lit8 p1, p1, 0x8

    .line 376
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 379
    move-result v6

    .line 380
    div-int/2addr p1, v6

    .line 381
    sget-object v6, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 383
    invoke-virtual {v6}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 386
    move-result v6

    .line 387
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 390
    move-result v8

    .line 391
    const v9, 0x3f19999a  # 0.6f

    .line 394
    if-ge v6, v8, :cond_1c7

    .line 396
    if-gt v1, p1, :cond_19f

    .line 398
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 400
    invoke-virtual {p1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 403
    move-result p1

    .line 404
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 407
    move-result v0

    .line 408
    shr-int/2addr v0, v2

    .line 409
    add-int/2addr p1, v0

    .line 410
    sget v0, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 412
    if-ge p1, v0, :cond_200

    .line 414
    :goto_19d
    move v2, v3

    .line 415
    goto :goto_201

    .line 416
    :cond_19f
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 418
    invoke-virtual {p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 421
    move-result p1

    .line 422
    int-to-float p1, p1

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 426
    move-result v1

    .line 427
    int-to-float v1, v1

    .line 428
    mul-float/2addr v1, v9

    .line 429
    sget v2, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 431
    int-to-float v2, v2

    .line 432
    add-float/2addr v1, v2

    .line 433
    cmpl-float p1, p1, v1

    .line 435
    if-lez p1, :cond_1b6

    .line 437
    :goto_1b4
    move v2, v7

    .line 438
    goto :goto_201

    .line 439
    :cond_1b6
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 441
    invoke-virtual {p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 444
    move-result p1

    .line 445
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 448
    move-result v0

    .line 449
    add-int/2addr v0, p1

    .line 450
    sget p1, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 452
    if-ge v0, p1, :cond_200

    .line 454
    :goto_1c5
    move v2, v4

    .line 455
    goto :goto_201

    .line 456
    :cond_1c7
    if-gt v1, p1, :cond_1da

    .line 458
    sget p1, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 460
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 463
    move-result v0

    .line 464
    shr-int/2addr v0, v2

    .line 465
    add-int/2addr p1, v0

    .line 466
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 468
    invoke-virtual {v0}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 471
    move-result v0

    .line 472
    if-ge p1, v0, :cond_200

    .line 474
    goto :goto_201

    .line 475
    :cond_1da
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 477
    invoke-virtual {p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 480
    move-result p1

    .line 481
    int-to-float p1, p1

    .line 482
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 485
    move-result v1

    .line 486
    int-to-float v1, v1

    .line 487
    mul-float/2addr v1, v9

    .line 488
    sget v2, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 490
    int-to-float v2, v2

    .line 491
    add-float/2addr v1, v2

    .line 492
    cmpl-float p1, p1, v1

    .line 494
    if-lez p1, :cond_1f0

    .line 496
    goto :goto_1b4

    .line 497
    :cond_1f0
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 499
    invoke-virtual {p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 502
    move-result p1

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 506
    move-result v0

    .line 507
    add-int/2addr v0, p1

    .line 508
    sget p1, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 510
    if-ge v0, p1, :cond_200

    .line 512
    goto :goto_1c5

    .line 513
    :cond_200
    move v2, v5

    .line 514
    :goto_201
    return v2
.end method

.method public R0(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Landroid/graphics/Rect;Z)I
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final S(SB)V
    .registers 13

    .line 1
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 3
    iput-short p1, v0, Lcom/baidu/input/ime/KeyAction;->b:S

    .line 5
    iput-byte p2, v0, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcom/baidu/input/ime/KeyAction;->h:I

    .line 10
    iget-short v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 12
    const/4 v2, 0x1

    .line 13
    if-lez v0, :cond_2c

    .line 15
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2b

    .line 21
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 24
    move-result-object v0

    .line 25
    iget-short v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 27
    aget-object v0, v0, v3

    .line 29
    if-eqz v0, :cond_2b

    .line 31
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 34
    move-result-object v0

    .line 35
    iget-short v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 37
    aget-object v0, v0, v3

    .line 39
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/params/KeyParam;->G(Z)[C

    .line 42
    move-result-object v0

    .line 43
    goto :goto_36

    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 48
    move-result-object v0

    .line 49
    aget-object v0, v0, p1

    .line 51
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/params/KeyParam;->G(Z)[C

    .line 54
    move-result-object v0

    .line 55
    :goto_36
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 57
    iget-byte v4, v3, Lcom/baidu/input/ime/InputStatMac;->e:B

    .line 59
    const/16 v5, 0x10

    .line 61
    if-eq v4, v2, :cond_44

    .line 63
    iget v3, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 65
    if-ne v3, v5, :cond_44

    .line 67
    iput-boolean v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->w:Z

    .line 69
    :cond_44
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 71
    iget-boolean v4, p0, Lcom/baidu/input/ime/keymap/KeyMap;->w:Z

    .line 73
    const/4 v6, 0x2

    .line 74
    if-eqz v4, :cond_69

    .line 76
    if-ne p2, v6, :cond_69

    .line 78
    const/16 v4, 0x11

    .line 80
    aget-char v4, v0, v4

    .line 82
    if-gtz v4, :cond_5d

    .line 84
    aget-char v4, v0, v5

    .line 86
    if-lez v4, :cond_69

    .line 88
    const/16 v4, 0x12

    .line 90
    aget-char v4, v0, v4

    .line 92
    if-gtz v4, :cond_69

    .line 94
    :cond_5d
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 97
    move-result-object v4

    .line 98
    aget-object v4, v4, p1

    .line 100
    iget v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->s:I

    .line 102
    if-lez v4, :cond_69

    .line 104
    move v4, v2

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v4, v1

    .line 107
    :goto_6a
    iput-boolean v4, v3, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 109
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 111
    iput-boolean v1, v3, Lcom/baidu/input/ime/KeyAction;->n:Z

    .line 113
    const/16 v3, 0x30

    .line 115
    const/16 v4, 0x39

    .line 117
    if-ne p2, v6, :cond_b9

    .line 119
    const-class v5, Lcom/baidu/input/cocomodule/panel/IPanel$IPad;

    .line 121
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Lcom/baidu/input/cocomodule/panel/IPanel$IPad;

    .line 127
    invoke-interface {v7}, Lcom/baidu/input/cocomodule/panel/IPanel$IPad;->G0()Z

    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_90

    .line 133
    invoke-static {v5}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/baidu/input/cocomodule/panel/IPanel$IPad;

    .line 139
    invoke-interface {v5}, Lcom/baidu/input/cocomodule/panel/IPanel$IPad;->Yh()Z

    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_b9

    .line 145
    :cond_90
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 152
    move-result-object v7

    .line 153
    iget-short v8, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 155
    if-lez v8, :cond_a4

    .line 157
    if-eqz v5, :cond_a4

    .line 159
    array-length v9, v5

    .line 160
    if-ge v8, v9, :cond_a4

    .line 162
    aget-object v5, v5, v8

    .line 164
    goto :goto_ad

    .line 165
    :cond_a4
    if-eqz v7, :cond_ac

    .line 167
    array-length v5, v7

    .line 168
    if-ge p1, v5, :cond_ac

    .line 170
    aget-object v5, v7, p1

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    const/4 v5, 0x0

    .line 174
    :goto_ad
    if-eqz v5, :cond_b9

    .line 176
    iget v5, v5, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 178
    if-lt v5, v3, :cond_b9

    .line 180
    if-gt v5, v4, :cond_b9

    .line 182
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 184
    iput-boolean v2, v5, Lcom/baidu/input/ime/KeyAction;->n:Z

    .line 186
    :cond_b9
    invoke-static {}, Lcom/baidu/input/ime/ImePref;->e()Z

    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_e1

    .line 192
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 195
    move-result-object v5

    .line 196
    iget-object v5, v5, Lcom/baidu/input/panel/session/PanelSession;->e:Lcom/baidu/input/ime/InputStatMac;

    .line 198
    invoke-virtual {v5}, Lcom/baidu/input/ime/InputStatMac;->f()B

    .line 201
    move-result v5

    .line 202
    const/16 v7, 0x23

    .line 204
    if-ne v5, v7, :cond_e1

    .line 206
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 209
    move-result-object v5

    .line 210
    aget-object v5, v5, p1

    .line 212
    iget v7, v5, Lcom/baidu/input/ime/params/BasicKeyParam;->I:I

    .line 214
    if-ne v7, v2, :cond_e1

    .line 216
    iget v5, v5, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 218
    const/16 v7, 0x2a

    .line 220
    if-ne v5, v7, :cond_e1

    .line 222
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 224
    iput-boolean v2, v5, Lcom/baidu/input/ime/KeyAction;->p:Z

    .line 226
    :cond_e1
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 228
    iget-boolean v7, v5, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 230
    if-eqz v7, :cond_105

    .line 232
    iget-short p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 234
    if-lez p2, :cond_f9

    .line 236
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 239
    move-result-object p1

    .line 240
    iget-short p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 242
    aget-object p1, p1, p2

    .line 244
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->s:I

    .line 246
    iput p1, v5, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 248
    goto/16 :goto_1af

    .line 250
    :cond_f9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 253
    move-result-object p2

    .line 254
    aget-object p1, p2, p1

    .line 256
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->s:I

    .line 258
    iput p1, v5, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 260
    goto/16 :goto_1af

    .line 262
    :cond_105
    sget-boolean v5, Lcom/baidu/input/pub/Global;->Y:Z

    .line 264
    if-eqz v5, :cond_14c

    .line 266
    iget-boolean v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 268
    if-eqz v5, :cond_14c

    .line 270
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 272
    iget-byte v5, v5, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 274
    if-ne v5, v2, :cond_14c

    .line 276
    iget-boolean v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->w:Z

    .line 278
    if-eqz v5, :cond_14c

    .line 280
    if-ne p2, v6, :cond_14c

    .line 282
    aget-char v0, v0, v1

    .line 284
    if-lt v0, v3, :cond_14c

    .line 286
    if-gt v0, v4, :cond_14c

    .line 288
    add-int/lit8 v3, v0, -0x30

    .line 290
    sget-object v4, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 292
    const/4 v5, 0x4

    .line 293
    aget-boolean v4, v4, v5

    .line 295
    if-eqz v4, :cond_139

    .line 297
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->n0:[Z

    .line 299
    aget-boolean v4, v4, v3

    .line 301
    if-nez v4, :cond_134

    .line 303
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->o0:[Z

    .line 305
    aget-boolean v3, v4, v3

    .line 307
    if-eqz v3, :cond_143

    .line 309
    :cond_134
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 311
    iput-boolean v2, v3, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 313
    goto :goto_143

    .line 314
    :cond_139
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->n0:[Z

    .line 316
    aget-boolean v3, v4, v3

    .line 318
    if-eqz v3, :cond_143

    .line 320
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 322
    iput-boolean v2, v3, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 324
    :cond_143
    :goto_143
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 326
    iget-boolean v3, v2, Lcom/baidu/input/ime/KeyAction;->d:Z

    .line 328
    if-eqz v3, :cond_14c

    .line 330
    iput v0, v2, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 332
    return-void

    .line 333
    :cond_14c
    iget-short v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 335
    if-lez v0, :cond_159

    .line 337
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 340
    move-result-object p1

    .line 341
    iget-short v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 343
    aget-object p1, p1, v0

    .line 345
    goto :goto_15f

    .line 346
    :cond_159
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 349
    move-result-object v0

    .line 350
    aget-object p1, v0, p1

    .line 352
    :goto_15f
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 354
    invoke-static {p1, p2}, Lcom/baidu/input/ime/keymap/KeyMap;->e0(Lcom/baidu/input/ime/params/KeyParam;B)I

    .line 357
    move-result v2

    .line 358
    iput v2, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 360
    if-nez p2, :cond_175

    .line 362
    iget v0, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 364
    invoke-static {}, Lcom/baidu/input/swipeinput/SwipeInputSettings;->d()Z

    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_175

    .line 370
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 372
    iput v1, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 374
    :cond_175
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 376
    iget v1, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 378
    const/high16 v2, 0xff0000

    .line 380
    and-int/2addr v2, v1

    .line 381
    const/high16 v3, 0x10000

    .line 383
    if-eq v2, v3, :cond_19b

    .line 385
    const/high16 v3, 0x20000

    .line 387
    if-ne v2, v3, :cond_185

    .line 389
    goto :goto_19b

    .line 390
    :cond_185
    iget-boolean p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->u:Z

    .line 392
    if-eqz p1, :cond_1a1

    .line 394
    iget-byte p1, v0, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 396
    if-eq p1, v6, :cond_1a1

    .line 398
    const/16 p1, 0x41

    .line 400
    if-lt v1, p1, :cond_1a1

    .line 402
    const/16 p1, 0x5a

    .line 404
    if-gt v1, p1, :cond_1a1

    .line 406
    const/high16 p1, 0x80000

    .line 408
    or-int/2addr p1, v1

    .line 409
    iput p1, v0, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 411
    goto :goto_1a1

    .line 412
    :cond_19b
    :goto_19b
    invoke-virtual {p1, p2}, Lcom/baidu/input/ime/params/BasicKeyParam;->o(I)Ljava/lang/String;

    .line 415
    move-result-object p1

    .line 416
    iput-object p1, v0, Lcom/baidu/input/ime/KeyAction;->i:Ljava/lang/String;

    .line 418
    :cond_1a1
    :goto_1a1
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 420
    iget-byte p1, p1, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 422
    const/16 p2, 0x22

    .line 424
    if-ne p1, p2, :cond_1af

    .line 426
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 428
    iget p2, p1, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 430
    iput p2, p1, Lcom/baidu/input/ime/KeyAction;->h:I

    .line 432
    :cond_1af
    :goto_1af
    return-void
.end method

.method public final S0(Lcom/baidu/input/ime/TouchPoint;I)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->C:Landroid/os/Handler;

    .line 10
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    sget-boolean v1, Lcom/baidu/input/pub/Global;->Z:Z

    .line 17
    if-eqz v1, :cond_1b

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->V0()V

    .line 22
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 24
    invoke-virtual {v1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 27
    return-void

    .line 28
    :cond_1b
    iget-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_24

    .line 34
    iput v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 36
    goto :goto_2f

    .line 37
    :cond_24
    iget v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 39
    const/16 v4, 0x2710

    .line 41
    if-ge v1, v4, :cond_2f

    .line 43
    add-int/2addr v1, v3

    .line 44
    add-int v1, v1, p2

    .line 46
    iput v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 55
    move-result v4

    .line 56
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 58
    iget-object v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 60
    if-eqz v5, :cond_88

    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;
    if-eqz v3, :baidu_mod_move_threshold
    iget-boolean v5, v3, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v5, :baidu_mod_move_threshold
    iget-boolean v5, v3, Lcom/baidu/input/ime/SubList;->Z:Z
    if-nez v5, :cond_55
    :baidu_mod_move_threshold
    .line 62
    sget v3, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 64
    sub-int v3, v1, v3

    .line 66
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 69
    move-result v3

    .line 70
    sget v5, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 72
    if-ge v3, v5, :cond_55

    .line 74
    sget v3, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 76
    sub-int v3, v4, v3

    .line 78
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 81
    move-result v3

    .line 82
    sget v5, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 84
    if-lt v3, v5, :cond_273

    .line 86
    :cond_55
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 88
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 90
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 93
    move-result v5

    .line 94
    sget-object v7, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 96
    invoke-virtual {v7}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 99
    move-result v7

    .line 100
    invoke-virtual {v3, v5, v7, v1, v4}, Lcom/baidu/input/ime/SubList;->z(IIII)V

    .line 103
    sput-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 105
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 107
    invoke-virtual {v1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 110
    invoke-virtual {v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b()S

    .line 113
    move-result v1

    .line 114
    if-lez v1, :cond_7c

    .line 116
    invoke-virtual {v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 119
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 121
    iput-boolean v2, v1, Lcom/baidu/input/ime/KeymapMac;->h:Z

    .line 123
    iput-boolean v2, v1, Lcom/baidu/input/ime/KeymapMac;->i:Z

    .line 125
    :cond_7c
    iget-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->B:J

    .line 127
    iput-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->A:J

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v1

    .line 133
    iput-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->B:J

    .line 135
    goto/16 :goto_273

    .line 137
    :cond_88
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->o:Z

    .line 139
    if-eqz v5, :cond_cf

    .line 141
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 143
    invoke-virtual {v3}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 146
    move-result v3

    .line 147
    sub-int v3, v4, v3

    .line 149
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 152
    move-result v3

    .line 153
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 155
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 158
    move-result v5

    .line 159
    sub-int/2addr v1, v5

    .line 160
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 163
    move-result v1

    .line 164
    sget v5, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 166
    if-gt v3, v5, :cond_a9

    .line 168
    if-le v1, v5, :cond_ae

    .line 170
    :cond_a9
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 172
    invoke-virtual {v1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 175
    :cond_ae
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 177
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 180
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 182
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 185
    move-result v1

    .line 186
    invoke-virtual {v0, v1, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->X0(II)V

    .line 189
    invoke-virtual {v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b()S

    .line 192
    move-result v1

    .line 193
    if-lez v1, :cond_cb

    .line 195
    invoke-virtual {v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 198
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 200
    iput-boolean v2, v1, Lcom/baidu/input/ime/KeymapMac;->h:Z

    .line 202
    iput-boolean v2, v1, Lcom/baidu/input/ime/KeymapMac;->i:Z

    .line 204
    :cond_cb
    sput-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 206
    goto/16 :goto_273

    .line 208
    :cond_cf
    sput-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 213
    move-result v1

    .line 214
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 216
    invoke-virtual {v4}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 219
    move-result v4

    .line 220
    invoke-virtual {v0, v1, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->Y(II)I

    .line 223
    move-result v1

    .line 224
    int-to-short v8, v1

    .line 225
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 227
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 230
    move-result v9

    .line 231
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 233
    invoke-virtual {v1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 236
    move-result v10

    .line 237
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 239
    iget v11, v1, Lcom/baidu/input/ime/TouchPoint;->b:F

    .line 241
    iget v12, v1, Lcom/baidu/input/ime/TouchPoint;->c:F

    .line 243
    iget v13, v1, Lcom/baidu/input/ime/TouchPoint;->d:F

    .line 245
    iget v14, v1, Lcom/baidu/input/ime/TouchPoint;->e:F

    .line 247
    iget v15, v1, Lcom/baidu/input/ime/TouchPoint;->f:F

    .line 249
    iget-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 251
    iget v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->s:I

    .line 253
    sub-int/2addr v4, v3

    .line 254
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    .line 259
    const-string v7, "--> onDrag::"

    .line 261
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string v7, ", pointerIdx="

    .line 269
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v5

    .line 279
    new-array v7, v2, [Ljava/lang/Object;

    .line 281
    const-string v3, "MultiKeyTouch"

    .line 283
    invoke-static {v3, v5, v7}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v7, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 288
    const/4 v5, 0x2

    .line 289
    const-string v2, "<-- onDrag, state error: "

    .line 291
    if-eqz v1, :cond_175

    .line 293
    if-lez v4, :cond_175

    .line 295
    invoke-virtual {v6, v5}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_147

    .line 301
    const/4 v1, 0x5

    .line 302
    invoke-virtual {v6, v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_147

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v1

    .line 320
    const/4 v2, 0x0

    .line 321
    new-array v2, v2, [Ljava/lang/Object;

    .line 323
    invoke-static {v3, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    goto/16 :goto_268

    .line 328
    :cond_147
    if-gtz v8, :cond_14b

    .line 330
    goto/16 :goto_268

    .line 332
    :cond_14b
    iget-object v1, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 334
    if-eqz v1, :cond_16c

    .line 336
    iget-short v2, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 338
    iput-short v8, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 340
    iput v9, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->c:I

    .line 342
    iput v10, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->d:I

    .line 344
    iput v11, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->e:F

    .line 346
    iput v12, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->f:F

    .line 348
    iput v13, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->g:F

    .line 350
    iput v14, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->h:F

    .line 352
    iput v15, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->i:F

    .line 354
    if-eq v2, v8, :cond_16c

    .line 356
    const/4 v1, 0x3

    .line 357
    invoke-virtual {v7, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->J0(IS)V

    .line 360
    const/16 v16, 0x0

    .line 362
    invoke-virtual/range {v7 .. v16}, Lcom/baidu/input/ime/keymap/KeyMap;->K0(SIIFFFFFZ)V

    .line 365
    :cond_16c
    iget-object v1, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 367
    iget-object v2, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 369
    invoke-virtual {v6, v1, v2, v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->f(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 372
    goto/16 :goto_254

    .line 374
    :cond_175
    const/4 v1, 0x3

    .line 375
    invoke-virtual {v6, v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_186

    .line 381
    const-string v1, "<-- onDrag, state4, do nothing"

    .line 383
    const/4 v4, 0x0

    .line 384
    new-array v2, v4, [Ljava/lang/Object;

    .line 386
    invoke-static {v3, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    goto/16 :goto_268

    .line 391
    :cond_186
    const/4 v1, 0x1

    .line 392
    const/4 v4, 0x0

    .line 393
    invoke-virtual {v6, v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 396
    move-result v8

    .line 397
    if-nez v8, :cond_1a1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object v1

    .line 411
    new-array v2, v4, [Ljava/lang/Object;

    .line 413
    invoke-static {v3, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    goto/16 :goto_268

    .line 418
    :cond_1a1
    iget-object v1, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 420
    iget-short v2, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 422
    iget v4, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->c:I

    .line 424
    iget v1, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->d:I

    .line 426
    iget-object v8, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 428
    const/4 v11, 0x4

    .line 429
    if-eqz v8, :cond_1b3

    .line 431
    invoke-virtual {v8, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->R(S)I

    .line 434
    move-result v1

    .line 435
    goto :goto_1d5

    .line 436
    :cond_1b3
    sub-int v2, v9, v4

    .line 438
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 441
    move-result v2

    .line 442
    sub-int v8, v10, v1

    .line 444
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 447
    move-result v8

    .line 448
    const/16 v12, 0xa

    .line 450
    if-lt v2, v8, :cond_1cc

    .line 452
    if-le v2, v12, :cond_1d4

    .line 454
    if-le v9, v4, :cond_1c9

    .line 456
    const/4 v2, 0x1

    .line 457
    goto :goto_1ca

    .line 458
    :cond_1c9
    const/4 v2, 0x0

    .line 459
    :goto_1ca
    move v1, v2

    .line 460
    goto :goto_1d5

    .line 461
    :cond_1cc
    if-le v8, v12, :cond_1d4

    .line 463
    if-le v10, v1, :cond_1d2

    .line 465
    const/4 v1, 0x3

    .line 466
    goto :goto_1d5

    .line 467
    :cond_1d2
    move v1, v5

    .line 468
    goto :goto_1d5

    .line 469
    :cond_1d4
    move v1, v11

    .line 470
    :goto_1d5
    iget-object v2, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 472
    iput v1, v2, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->j:I

    .line 474
    iget-short v2, v2, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 476
    if-eqz v1, :cond_1ed

    .line 478
    const/4 v4, 0x1

    .line 479
    if-eq v1, v4, :cond_1eb

    .line 481
    if-eq v1, v5, :cond_1e9

    .line 483
    const/4 v4, 0x3

    .line 484
    if-eq v1, v4, :cond_1e7

    .line 486
    move v4, v5

    .line 487
    goto :goto_1ee

    .line 488
    :cond_1e7
    move v4, v11

    .line 489
    goto :goto_1ee

    .line 490
    :cond_1e9
    const/4 v4, 0x0

    .line 491
    goto :goto_1ee

    .line 492
    :cond_1eb
    const/4 v4, 0x3

    .line 493
    goto :goto_1ee

    .line 494
    :cond_1ed
    const/4 v4, 0x1

    .line 495
    :goto_1ee
    invoke-virtual {v7, v2, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->S(SB)V

    .line 498
    if-lez v2, :cond_254

    .line 500
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 502
    iget v1, v1, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 504
    if-eqz v1, :cond_254

    .line 506
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 508
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 510
    invoke-virtual {v7}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 513
    move-result-object v4

    .line 514
    aget-object v4, v4, v2

    .line 516
    iget-object v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 518
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 521
    move-result v4

    .line 522
    iput v4, v1, Lcom/baidu/input/panel/hint/HintHandler;->h:I

    .line 524
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 526
    iget-byte v1, v1, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 528
    if-nez v1, :cond_244

    .line 530
    invoke-virtual {v7}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 533
    move-result-object v1

    .line 534
    aget-object v1, v1, v2

    .line 536
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 538
    invoke-static {}, Lcom/baidu/input/swipeinput/SwipeInputSettings;->d()Z

    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_233

    .line 544
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 546
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 548
    invoke-virtual {v7}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 551
    move-result-object v4

    .line 552
    aget-object v2, v4, v2

    .line 554
    iget-object v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 556
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 559
    move-result v2

    .line 560
    sub-int/2addr v10, v2

    .line 561
    iput v10, v1, Lcom/baidu/input/panel/hint/HintHandler;->i:I

    .line 563
    goto :goto_254

    .line 564
    :cond_233
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 566
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 568
    invoke-virtual {v7}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 571
    move-result-object v4

    .line 572
    aget-object v2, v4, v2

    .line 574
    iget-object v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 576
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 578
    iput v2, v1, Lcom/baidu/input/panel/hint/HintHandler;->i:I

    .line 580
    goto :goto_254

    .line 581
    :cond_244
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 583
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 585
    invoke-virtual {v7}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 588
    move-result-object v4

    .line 589
    aget-object v2, v4, v2

    .line 591
    iget-object v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 593
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 595
    iput v2, v1, Lcom/baidu/input/panel/hint/HintHandler;->i:I

    .line 597
    :cond_254
    :goto_254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 599
    const-string v2, "<-- onDrag::, this:"

    .line 601
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    move-result-object v1

    .line 611
    const/4 v2, 0x0

    .line 612
    new-array v2, v2, [Ljava/lang/Object;

    .line 614
    invoke-static {v3, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :goto_268
    invoke-virtual {v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b()S

    .line 620
    move-result v1

    .line 621
    if-gtz v1, :cond_273

    .line 623
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 625
    invoke-virtual {v1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 628
    :cond_273
    :goto_273
    return-void
.end method

.method public T()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 19
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 21
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->d:Lcom/baidu/input/ime/params/CandParam;

    .line 23
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->U(Lcom/baidu/input/ime/params/CandParam;)Lcom/baidu/input/ime/cand/CandHandler;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 29
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 31
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 33
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->e:Ljava/util/ArrayList;

    .line 35
    invoke-static {v0}, Lcom/baidu/input/common/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_48

    .line 41
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 43
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 45
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->e:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_48

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/baidu/input/ime/params/CandParam;

    .line 63
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/keymap/KeyMap;->U(Lcom/baidu/input/ime/params/CandParam;)Lcom/baidu/input/ime/cand/CandHandler;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_32

    .line 73
    :cond_48
    return-void
.end method

.method public final T0(Lcom/baidu/input/ime/TouchPoint;)V
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 6
    if-nez v2, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 16
    move-result v3

    .line 17
    sput v2, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 19
    sput v3, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 21
    sput-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 23
    const/4 v4, 0x0

    .line 24
    iput v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 26
    sput-boolean v4, Lcom/baidu/input/pub/Global;->Z:Z

    .line 28
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 30
    if-eqz v5, :cond_22

    .line 32
    invoke-static {}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i2()V

    .line 35
    :cond_22
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 37
    if-eqz v5, :cond_3a

    .line 39
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 41
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->j:Z

    .line 43
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->n:Z

    .line 45
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->o:Z

    .line 47
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->p:Z

    .line 49
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 51
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 53
    if-eqz v5, :cond_67

    .line 55
    invoke-virtual {v5}, Lcom/baidu/input/ime/SubList;->x()V

    .line 58
    goto :goto_67

    .line 59
    :cond_3a
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->v0(II)Z

    .line 62
    move-result v5

    .line 63
    iput-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 65
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->n:Z

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->w0(II)Z

    .line 70
    move-result v5

    .line 71
    iput-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->o:Z

    .line 73
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->j:Z

    .line 75
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 77
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 79
    if-nez v5, :cond_57

    .line 81
    new-instance v5, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 83
    invoke-direct {v5, v0}, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;)V

    .line 86
    iput-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 88
    :cond_57
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 90
    iput v2, v5, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;->a:I

    .line 92
    iput v3, v5, Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;->b:I

    .line 94
    iget-object v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->C:Landroid/os/Handler;

    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 99
    move-result v7

    .line 100
    int-to-long v7, v7

    .line 101
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_67
    :goto_67
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 106
    if-eqz v5, :cond_7f

    .line 108
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 110
    if-eqz v1, :cond_2bf

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/baidu/input/ime/SubList;->l(II)V

    .line 115
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 117
    instance-of v2, v1, Lcom/baidu/input/optimization/IMainSub;

    .line 119
    if-eqz v2, :cond_2bf

    .line 121
    check-cast v1, Lcom/baidu/input/optimization/IMainSub;

    .line 123
    invoke-interface {v1}, Lcom/baidu/input/optimization/IMainSub;->a()V

    .line 126
    goto/16 :goto_2bf

    .line 128
    :cond_7f
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 130
    invoke-virtual {v2}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 133
    move-result v2

    .line 134
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 136
    invoke-virtual {v3}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 139
    move-result v3

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->Y(II)I

    .line 143
    move-result v2

    .line 144
    int-to-short v2, v2

    .line 145
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->l:Z

    .line 147
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->m:Z

    .line 149
    const/16 v3, 0x26

    .line 151
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->x0(SB)Z

    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_9f

    .line 157
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->l:Z

    .line 159
    goto :goto_a9

    .line 160
    :cond_9f
    const/16 v3, 0x24

    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->x0(SB)Z

    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a9

    .line 168
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->m:Z

    .line 170
    :cond_a9
    :goto_a9
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->y0(S)Z

    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_c4

    .line 176
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->R:Z

    .line 178
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 181
    move-result-object v3

    .line 182
    iget-object v3, v3, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 184
    invoke-virtual {v3}, Lcom/baidu/iptcore/async/AsyncImePad;->m0()V

    .line 187
    new-instance v5, Lcom/baidu/x8;

    .line 189
    invoke-direct {v5, v3, v1}, Lcom/baidu/x8;-><init>(Lcom/baidu/iptcore/async/AsyncImePad;I)V

    .line 192
    iget-object v3, v3, Lcom/baidu/iptcore/async/AsyncImePad;->n:Lcom/baidu/iptcore/async/CoreThreadEngine;

    .line 194
    invoke-virtual {v3, v5}, Lcom/baidu/iptcore/async/CoreThreadEngine;->c(Ljava/lang/Runnable;)V

    .line 197
    :cond_c4
    const/high16 v15, 0xf0000

    .line 199
    const/high16 v16, 0xff0000

    .line 201
    if-lez v2, :cond_28e

    .line 203
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 205
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 208
    move-result v14

    .line 209
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 211
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 214
    move-result v17

    .line 215
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 217
    iget v13, v5, Lcom/baidu/input/ime/TouchPoint;->b:F

    .line 219
    iget v12, v5, Lcom/baidu/input/ime/TouchPoint;->c:F

    .line 221
    iget v11, v5, Lcom/baidu/input/ime/TouchPoint;->d:F

    .line 223
    iget v10, v5, Lcom/baidu/input/ime/TouchPoint;->e:F

    .line 225
    iget v9, v5, Lcom/baidu/input/ime/TouchPoint;->f:F

    .line 227
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 229
    iget v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->s:I

    .line 231
    sub-int/2addr v6, v1

    .line 232
    iget-object v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 234
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    if-gtz v2, :cond_f3

    .line 239
    :goto_ee
    move/from16 v19, v1

    .line 241
    move v5, v4

    .line 242
    goto/16 :goto_296

    .line 244
    :cond_f3
    const-string v7, "--> onPress::"

    .line 246
    const-string v3, ", pointerIdx="

    .line 248
    invoke-static {v2, v6, v7, v3}, Lcom/baidu/o70;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v3

    .line 252
    new-array v6, v4, [Ljava/lang/Object;

    .line 254
    const-string v7, "MultiKeyTouch"

    .line 256
    invoke-static {v7, v3, v6}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v3, v8, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 261
    const-string v6, "<-- onPress, state error: "

    .line 263
    if-eqz v5, :cond_1f2

    .line 265
    invoke-virtual {v8, v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 268
    move-result v5

    .line 269
    if-nez v5, :cond_127

    .line 271
    const/4 v5, 0x3

    .line 272
    invoke-virtual {v8, v5}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 275
    move-result v5

    .line 276
    if-nez v5, :cond_127

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    new-array v3, v4, [Ljava/lang/Object;

    .line 292
    invoke-static {v7, v2, v3}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    goto :goto_ee

    .line 296
    :cond_127
    iget-object v5, v8, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 298
    iget-short v6, v5, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 300
    if-ne v2, v6, :cond_135

    .line 302
    const-string v2, "<-- onPress, no new PressKey"

    .line 304
    new-array v3, v4, [Ljava/lang/Object;

    .line 306
    invoke-static {v7, v2, v3}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    goto :goto_ee

    .line 310
    :cond_135
    iget-boolean v5, v5, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 312
    if-nez v5, :cond_153

    .line 314
    iget-object v5, v8, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 316
    if-eqz v5, :cond_142

    .line 318
    invoke-interface {v5, v2, v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchStrategySupplier;->j(SS)Z

    .line 321
    move-result v5

    .line 322
    goto :goto_143

    .line 323
    :cond_142
    move v5, v1

    .line 324
    :goto_143
    if-nez v5, :cond_153

    .line 326
    const-string v3, "<-- onPress, avoid multiTouch: newKey="

    .line 328
    const-string v5, ", currKey="

    .line 330
    invoke-static {v2, v6, v3, v5}, Lcom/baidu/o70;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    new-array v3, v4, [Ljava/lang/Object;

    .line 336
    invoke-static {v7, v2, v3}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    goto :goto_ee

    .line 340
    :cond_153
    invoke-virtual {v3, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->J0(IS)V

    .line 343
    new-instance v5, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 345
    move-object/from16 v18, v5

    .line 347
    move v4, v6

    .line 348
    move v6, v2

    .line 349
    move-object/from16 v28, v7

    .line 351
    move v7, v14

    .line 352
    move-object v1, v8

    .line 353
    move/from16 v8, v17

    .line 355
    move/from16 v30, v9

    .line 357
    move v9, v13

    .line 358
    move/from16 v31, v10

    .line 360
    move v10, v12

    .line 361
    move/from16 v32, v11

    .line 363
    move/from16 v33, v12

    .line 365
    move/from16 v12, v31

    .line 367
    move/from16 v34, v13

    .line 369
    move/from16 v13, v30

    .line 371
    invoke-direct/range {v5 .. v13}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;-><init>(SIIFFFFF)V

    .line 374
    iget-object v5, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 376
    move-object/from16 v6, v18

    .line 378
    invoke-virtual {v1, v6, v5, v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->f(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 381
    if-lez v4, :cond_1d8

    .line 383
    iget-object v5, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 385
    iget-boolean v5, v5, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 387
    if-nez v5, :cond_1d8

    .line 389
    iget-object v5, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 391
    if-eqz v5, :cond_1b2

    .line 393
    invoke-virtual {v5}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 396
    move-result-object v6

    .line 397
    if-eqz v6, :cond_1ac

    .line 399
    invoke-virtual {v5}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 402
    move-result-object v6

    .line 403
    array-length v6, v6

    .line 404
    if-le v6, v4, :cond_1ac

    .line 406
    invoke-virtual {v5}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 409
    move-result-object v5

    .line 410
    aget-object v5, v5, v4

    .line 412
    if-eqz v5, :cond_1ac

    .line 414
    iget v5, v5, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 416
    and-int v6, v5, v16

    .line 418
    and-int/2addr v5, v15

    .line 419
    if-eqz v5, :cond_1ac

    .line 421
    const/high16 v5, 0xb0000

    .line 423
    if-eq v6, v5, :cond_1ac

    .line 425
    const/4 v5, 0x1

    .line 426
    const/16 v29, 0x1

    .line 428
    goto :goto_1af

    .line 429
    :cond_1ac
    const/4 v5, 0x1

    .line 430
    const/16 v29, 0x0

    .line 432
    :goto_1af
    xor-int/lit8 v29, v29, 0x1

    .line 434
    goto :goto_1b5

    .line 435
    :cond_1b2
    const/4 v5, 0x1

    .line 436
    move/from16 v29, v5

    .line 438
    :goto_1b5
    if-eqz v29, :cond_1d8

    .line 440
    iget-object v6, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 442
    iput-boolean v5, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 444
    iget v5, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->c:I

    .line 446
    iget v7, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->d:I

    .line 448
    iget v6, v6, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->j:I

    .line 450
    move-object/from16 v18, v3

    .line 452
    move/from16 v19, v4

    .line 454
    move/from16 v20, v5

    .line 456
    move/from16 v21, v7

    .line 458
    move/from16 v22, v34

    .line 460
    move/from16 v23, v33

    .line 462
    move/from16 v24, v32

    .line 464
    move/from16 v25, v31

    .line 466
    move/from16 v26, v30

    .line 468
    move/from16 v27, v6

    .line 470
    invoke-virtual/range {v18 .. v27}, Lcom/baidu/input/ime/keymap/KeyMap;->I0(SIIFFFFFI)V

    .line 473
    :cond_1d8
    const/4 v4, 0x0

    .line 474
    move-object v5, v3

    .line 475
    move v6, v2

    .line 476
    move v7, v14

    .line 477
    move/from16 v8, v17

    .line 479
    move/from16 v9, v34

    .line 481
    move/from16 v10, v33

    .line 483
    move/from16 v11, v32

    .line 485
    move/from16 v12, v31

    .line 487
    move/from16 v13, v30

    .line 489
    move v14, v4

    .line 490
    invoke-virtual/range {v5 .. v14}, Lcom/baidu/input/ime/keymap/KeyMap;->K0(SIIFFFFFZ)V

    .line 493
    move-object/from16 v4, v28

    .line 495
    const/16 v19, 0x1

    .line 497
    goto/16 :goto_279

    .line 499
    :cond_1f2
    move-object/from16 v28, v7

    .line 501
    move-object v1, v8

    .line 502
    move/from16 v30, v9

    .line 504
    move/from16 v31, v10

    .line 506
    move/from16 v32, v11

    .line 508
    move/from16 v33, v12

    .line 510
    move/from16 v34, v13

    .line 512
    invoke-virtual {v1, v4}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 515
    move-result v5

    .line 516
    if-nez v5, :cond_21d

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    .line 520
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    move-result-object v5

    .line 530
    new-array v6, v4, [Ljava/lang/Object;

    .line 532
    move-object/from16 v4, v28

    .line 534
    invoke-static {v4, v5, v6}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-virtual {v1}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 540
    :goto_21b
    const/4 v5, 0x1

    .line 541
    goto :goto_220

    .line 542
    :cond_21d
    move-object/from16 v4, v28

    .line 544
    goto :goto_21b

    .line 545
    :goto_220
    invoke-virtual {v3, v5, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->J0(IS)V

    .line 548
    new-instance v13, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 550
    move-object v5, v13

    .line 551
    move v6, v2

    .line 552
    move v7, v14

    .line 553
    move/from16 v8, v17

    .line 555
    move/from16 v9, v34

    .line 557
    move/from16 v10, v33

    .line 559
    move/from16 v11, v32

    .line 561
    move/from16 v12, v31

    .line 563
    move-object v15, v13

    .line 564
    move/from16 v13, v30

    .line 566
    invoke-direct/range {v5 .. v13}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;-><init>(SIIFFFFF)V

    .line 569
    const/4 v5, 0x0

    .line 570
    invoke-virtual {v1, v15, v15, v5}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->f(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 573
    iget-object v5, v1, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 575
    if-eqz v5, :cond_245

    .line 577
    invoke-interface {v5, v2}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$IKeyTouchStrategySupplier;->t(S)Z

    .line 580
    move-result v5

    .line 581
    goto :goto_246

    .line 582
    :cond_245
    const/4 v5, 0x0

    .line 583
    :goto_246
    if-eqz v5, :cond_263

    .line 585
    const/4 v13, 0x1

    .line 586
    iput-boolean v13, v15, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 588
    iget v15, v15, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->j:I

    .line 590
    move-object v5, v3

    .line 591
    move v6, v2

    .line 592
    move v7, v14

    .line 593
    move/from16 v8, v17

    .line 595
    move/from16 v9, v34

    .line 597
    move/from16 v10, v33

    .line 599
    move/from16 v11, v32

    .line 601
    move/from16 v12, v31

    .line 603
    move/from16 v19, v13

    .line 605
    move/from16 v13, v30

    .line 607
    move v14, v15

    .line 608
    invoke-virtual/range {v5 .. v14}, Lcom/baidu/input/ime/keymap/KeyMap;->I0(SIIFFFFFI)V

    .line 611
    goto :goto_279

    .line 612
    :cond_263
    const/16 v19, 0x1

    .line 614
    const/4 v15, 0x0

    .line 615
    move-object v5, v3

    .line 616
    move v6, v2

    .line 617
    move v7, v14

    .line 618
    move/from16 v8, v17

    .line 620
    move/from16 v9, v34

    .line 622
    move/from16 v10, v33

    .line 624
    move/from16 v11, v32

    .line 626
    move/from16 v12, v31

    .line 628
    move/from16 v13, v30

    .line 630
    move v14, v15

    .line 631
    invoke-virtual/range {v5 .. v14}, Lcom/baidu/input/ime/keymap/KeyMap;->K0(SIIFFFFFZ)V

    .line 634
    :goto_279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "<-- onPress::, this:"

    .line 638
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    move-result-object v1

    .line 648
    const/4 v5, 0x0

    .line 649
    new-array v2, v5, [Ljava/lang/Object;

    .line 651
    invoke-static {v4, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    goto :goto_296

    .line 655
    :cond_28e
    move/from16 v19, v1

    .line 657
    move v5, v4

    .line 658
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 660
    invoke-virtual {v0, v5, v1}, Lcom/baidu/input/ime/keymap/KeyMap;->l0(SLcom/baidu/input/ime/TouchPoint;)V

    .line 663
    :goto_296
    iget-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 665
    if-nez v1, :cond_2a2

    .line 667
    iget-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->l:Z

    .line 669
    iput-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->j:Z

    .line 671
    iget-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->m:Z

    .line 673
    iput-boolean v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 675
    :cond_2a2
    if-nez v1, :cond_2bc

    .line 677
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 679
    iget v1, v1, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 681
    and-int v2, v1, v16

    .line 683
    const/high16 v3, 0xf0000

    .line 685
    and-int/2addr v1, v3

    .line 686
    if-eqz v1, :cond_2b6

    .line 688
    const/high16 v1, 0xb0000

    .line 690
    if-eq v2, v1, :cond_2b6

    .line 692
    move/from16 v1, v19

    .line 694
    goto :goto_2b7

    .line 695
    :cond_2b6
    move v1, v5

    .line 696
    :goto_2b7
    if-eqz v1, :cond_2bc

    .line 698
    move/from16 v1, v19

    .line 700
    goto :goto_2bd

    .line 701
    :cond_2bc
    move v1, v5

    .line 702
    :goto_2bd
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->p:Z

    .line 704
    :cond_2bf
    :goto_2bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 707
    move-result-wide v1

    .line 708
    iput-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->J:J

    .line 710
    const-wide/16 v1, 0x0

    .line 712
    iput-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->A:J

    .line 714
    iput-wide v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->B:J

    .line 716
    invoke-static {}, Lcom/baidu/input/pub/Global;->U()Z

    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_2de

    .line 722
    sget-object v1, Lcom/baidu/input/pub/ImeBaseGlobal;->a:Ljava/lang/String;

    .line 724
    invoke-static {}, Lcom/baidu/input/ime/floatmode/KeyboardFloatingContainer;->d()Lcom/baidu/input/ime/floatmode/KeyboardFloatingContainer;

    .line 727
    move-result-object v1

    .line 728
    iget-object v1, v1, Lcom/baidu/input/ime/floatmode/KeyboardFloatingContainer;->a:Lcom/baidu/input/ime/floatmode/KeyboardFloatingContainerView;

    .line 730
    if-eqz v1, :cond_2de

    .line 732
    invoke-virtual {v1}, Lcom/baidu/input/ime/floatmode/KeyboardFloatingContainerView;->a()V

    .line 735
    :cond_2de
    return-void
.end method

.method public final U(Lcom/baidu/input/ime/params/CandParam;)Lcom/baidu/input/ime/cand/CandHandler;
    .registers 7

    .line 1
    iget v0, p1, Lcom/baidu/input/ime/params/CandParam;->c:I

    .line 3
    const/16 v1, 0x32

    .line 5
    if-eqz v0, :cond_a5

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v3, :cond_64

    .line 11
    const/4 v4, 0x3

    .line 12
    if-eq v0, v4, :cond_64

    .line 14
    const/4 v4, 0x5

    .line 15
    if-eq v0, v4, :cond_5e

    .line 17
    const/4 v4, 0x6

    .line 18
    if-eq v0, v4, :cond_58

    .line 20
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2d

    .line 26
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 28
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 30
    if-ne v0, v1, :cond_26

    .line 32
    new-instance v0, Lcom/baidu/input/ime/cand/EmojiCand;

    .line 34
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/EmojiCand;-><init>()V

    .line 37
    goto/16 :goto_b6

    .line 39
    :cond_26
    new-instance v0, Lcom/baidu/input/ime/cand/IntlCand;

    .line 41
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/IntlCand;-><init>()V

    .line 44
    goto/16 :goto_b6

    .line 46
    :cond_2d
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 48
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->e()B

    .line 51
    move-result v0

    .line 52
    if-eq v0, v2, :cond_52

    .line 54
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 56
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->e()B

    .line 59
    move-result v0

    .line 60
    if-ne v0, v3, :cond_3e

    .line 62
    goto :goto_52

    .line 63
    :cond_3e
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 65
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 67
    if-ne v0, v1, :cond_4b

    .line 69
    new-instance v0, Lcom/baidu/input/ime/cand/EmojiCand;

    .line 71
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/EmojiCand;-><init>()V

    .line 74
    goto/16 :goto_b6

    .line 76
    :cond_4b
    new-instance v0, Lcom/baidu/input/ime/cand/SoftCand;

    .line 78
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/SoftCand;-><init>()V

    .line 81
    goto/16 :goto_b6

    .line 83
    :cond_52
    :goto_52
    new-instance v0, Lcom/baidu/input/ime/cand/HandWCand;

    .line 85
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/SkinDefineCand;-><init>()V

    .line 88
    goto :goto_b6

    .line 89
    :cond_58
    new-instance v0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKFloatCand;

    .line 91
    invoke-direct {v0}, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKFloatCand;-><init>()V

    .line 94
    goto :goto_b6

    .line 95
    :cond_5e
    new-instance v0, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKBottomCand;

    .line 97
    invoke-direct {v0}, Lcom/baidu/input/ime/hardkeyboard/view/keymap/PadHKBottomCand;-><init>()V

    .line 100
    goto :goto_b6

    .line 101
    :cond_64
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7c

    .line 107
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 109
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 111
    if-ne v0, v1, :cond_76

    .line 113
    new-instance v0, Lcom/baidu/input/ime/cand/EmojiCand;

    .line 115
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/EmojiCand;-><init>()V

    .line 118
    goto :goto_b6

    .line 119
    :cond_76
    new-instance v0, Lcom/baidu/input/ime/cand/IntlCand;

    .line 121
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/IntlCand;-><init>()V

    .line 124
    goto :goto_b6

    .line 125
    :cond_7c
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 127
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->e()B

    .line 130
    move-result v0

    .line 131
    if-eq v0, v2, :cond_9f

    .line 133
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 135
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->e()B

    .line 138
    move-result v0

    .line 139
    if-ne v0, v3, :cond_8d

    .line 141
    goto :goto_9f

    .line 142
    :cond_8d
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 144
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 146
    if-ne v0, v1, :cond_99

    .line 148
    new-instance v0, Lcom/baidu/input/ime/cand/EmojiCand;

    .line 150
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/EmojiCand;-><init>()V

    .line 153
    goto :goto_b6

    .line 154
    :cond_99
    new-instance v0, Lcom/baidu/input/ime/cand/SoftCand;

    .line 156
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/SoftCand;-><init>()V

    .line 159
    goto :goto_b6

    .line 160
    :cond_9f
    :goto_9f
    new-instance v0, Lcom/baidu/input/ime/cand/HandWCand;

    .line 162
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/SkinDefineCand;-><init>()V

    .line 165
    goto :goto_b6

    .line 166
    :cond_a5
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 168
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 170
    if-ne v0, v1, :cond_b1

    .line 172
    new-instance v0, Lcom/baidu/input/ime/cand/EmojiCand;

    .line 174
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/EmojiCand;-><init>()V

    .line 177
    goto :goto_b6

    .line 178
    :cond_b1
    new-instance v0, Lcom/baidu/input/ime/cand/DrawCand;

    .line 180
    invoke-direct {v0}, Lcom/baidu/input/ime/cand/DrawCand;-><init>()V

    .line 183
    :goto_b6
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 185
    iget-object v1, v1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 187
    iget-short v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->n:S

    .line 189
    iget-object v2, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 191
    iput-short v1, v2, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 193
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 196
    move-result-object v1

    .line 197
    invoke-static {}, Lcom/baidu/input/ime/cand/CandidateView;->W()F

    .line 200
    move-result v2

    .line 201
    iput v2, v1, Lcom/baidu/skinrender/SkinRenderSettings;->y:F

    .line 203
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 205
    iget-object v1, v1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 207
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->f:Lcom/baidu/input/ime/params/SubCandParam;

    .line 209
    invoke-virtual {v0, p1, v1}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l2(Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V

    .line 212
    return-object v0
.end method

.method public U0(Lcom/baidu/input/ime/TouchPoint;)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->C:Landroid/os/Handler;

    .line 10
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->D:Lcom/baidu/input/ime/keymap/KeyMap$CheckForLongPress;

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 22
    move-result v2

    .line 23
    sget-object v3, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->s0()Z

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, -0x1

    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x1

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v3, :cond_cb

    .line 46
    iget v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 48
    if-le v3, v7, :cond_cb

    .line 50
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 52
    iget-byte v9, v3, Lcom/baidu/input/ime/InputStatMac;->g:B

    .line 54
    if-nez v9, :cond_cb

    .line 56
    invoke-static {v4}, Lcom/baidu/input/ime/InputStatMac;->g(I)Z

    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_cb

    .line 62
    iget v3, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 64
    const/16 v9, 0x30

    .line 66
    if-ne v3, v9, :cond_45

    .line 68
    goto/16 :goto_cb

    .line 70
    :cond_45
    iput v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 72
    sget v3, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 74
    sub-int/2addr v3, v2

    .line 75
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 78
    move-result v3

    .line 79
    sget v9, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 81
    sub-int/2addr v9, v1

    .line 82
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 85
    move-result v9

    .line 86
    shl-int/2addr v3, v7

    .line 87
    if-lt v9, v3, :cond_cb

    .line 89
    sget-short v3, Lcom/baidu/input/pub/Global;->r0:S

    .line 91
    if-le v9, v3, :cond_66

    .line 93
    sub-int/2addr v9, v3

    .line 94
    mul-int/lit8 v9, v9, 0x8

    .line 96
    sget-short v3, Lcom/baidu/input/pub/ImeBaseGlobal;->h:S

    .line 98
    div-int/2addr v9, v3

    .line 99
    const/16 v3, 0x10f

    .line 101
    shl-int/2addr v3, v9

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move v3, v8

    .line 104
    :goto_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    move-result-wide v9

    .line 108
    iget-wide v11, v0, Lcom/baidu/input/ime/keymap/KeyMap;->J:J

    .line 110
    sub-long/2addr v9, v11

    .line 111
    int-to-long v11, v3

    .line 112
    cmp-long v3, v9, v11

    .line 114
    if-gez v3, :cond_cb

    .line 116
    sget-object v3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 118
    const/16 v9, 0x8c

    .line 120
    invoke-virtual {v3, v9}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 123
    sget v3, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 125
    const v9, 0xf008

    .line 128
    const v10, 0xf00b

    .line 131
    if-le v3, v1, :cond_a7

    .line 133
    sget-byte v3, Lcom/baidu/input/ime/ImePref;->U:B

    .line 135
    if-ne v3, v6, :cond_95

    .line 137
    invoke-static {v7}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_90

    .line 143
    move v3, v6

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    move v3, v7

    .line 146
    :goto_91
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->g(I)V

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v9, v10

    .line 151
    :goto_96
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 153
    invoke-virtual {v3, v9}, Lcom/baidu/input/ime/KeyAction;->b(I)V

    .line 156
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 158
    iput v5, v3, Lcom/baidu/input/ime/KeymapMac;->s:I

    .line 160
    sput v1, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 162
    sput v2, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 164
    sput-boolean v7, Lcom/baidu/input/pub/Global;->Z:Z

    .line 166
    :goto_a5
    move v3, v7

    .line 167
    goto :goto_cc

    .line 168
    :cond_a7
    if-ge v3, v1, :cond_cb

    .line 170
    sget-byte v3, Lcom/baidu/input/ime/ImePref;->U:B

    .line 172
    if-ne v3, v6, :cond_ba

    .line 174
    invoke-static {v7}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_b5

    .line 180
    move v3, v6

    .line 181
    goto :goto_b6

    .line 182
    :cond_b5
    move v3, v7

    .line 183
    :goto_b6
    invoke-static {v3}, Lcom/baidu/input/ime/KeyMapSwitcher;->g(I)V

    .line 186
    goto :goto_bb

    .line 187
    :cond_ba
    move v9, v10

    .line 188
    :goto_bb
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 190
    invoke-virtual {v3, v9}, Lcom/baidu/input/ime/KeyAction;->b(I)V

    .line 193
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 195
    iput v7, v3, Lcom/baidu/input/ime/KeymapMac;->s:I

    .line 197
    sput v1, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 199
    sput v2, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 201
    sput-boolean v7, Lcom/baidu/input/pub/Global;->Z:Z

    .line 203
    goto :goto_a5

    .line 204
    :cond_cb
    :goto_cb
    move v3, v8

    .line 205
    :goto_cc
    sput-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 207
    if-eqz v3, :cond_df

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->V0()V

    .line 212
    iget-object v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 214
    if-eqz v1, :cond_d9

    .line 216
    iput v5, v1, Lcom/baidu/input/ime/SubList;->m:I

    .line 218
    :cond_d9
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 220
    invoke-virtual {v1}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 223
    return-void

    .line 224
    :cond_df
    sget-boolean v3, Lcom/baidu/input/pub/Global;->Z:Z

    .line 226
    iget-object v9, v0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 228
    if-nez v3, :cond_344

    .line 230
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 232
    iget v3, v3, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 234
    const/4 v10, 0x3

    .line 235
    if-nez v3, :cond_178

    .line 237
    iget-boolean v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 239
    if-eqz v3, :cond_178

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->V0()V

    .line 244
    iget-wide v11, v0, Lcom/baidu/input/ime/keymap/KeyMap;->A:J

    .line 246
    const-wide/16 v13, 0x0

    .line 248
    cmp-long v3, v11, v13

    .line 250
    if-nez v3, :cond_ff

    .line 252
    iget-wide v11, v0, Lcom/baidu/input/ime/keymap/KeyMap;->J:J

    .line 254
    iput-wide v11, v0, Lcom/baidu/input/ime/keymap/KeyMap;->A:J

    .line 256
    :cond_ff
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 258
    iget v11, v3, Lcom/baidu/input/ime/SubList;->o:I

    .line 260
    invoke-virtual {v3, v1, v2}, Lcom/baidu/input/ime/SubList;->m(II)V

    .line 263
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    move-result-wide v12

    .line 269
    iget-wide v14, v0, Lcom/baidu/input/ime/keymap/KeyMap;->A:J

    .line 271
    sub-long/2addr v12, v14

    .line 272
    invoke-virtual {v3, v12, v13}, Lcom/baidu/input/ime/SubList;->C(J)V

    .line 275
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 277
    iget-boolean v3, v3, Lcom/baidu/input/ime/SubList;->W:Z

    .line 279
    if-eqz v3, :cond_11d

    .line 281
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 283
    invoke-virtual {v3, v10, v7}, Lcom/baidu/input/ime/KeymapMac;->d(BZ)V

    .line 286
    :cond_11d
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 288
    instance-of v12, v3, Lcom/baidu/input/optimization/IMainSub;

    .line 290
    if-eqz v12, :cond_13c

    .line 292
    check-cast v3, Lcom/baidu/input/optimization/IMainSub;

    .line 294
    iget-boolean v12, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 296
    sget-object v13, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 298
    invoke-virtual {v13}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 301
    move-result v13

    .line 302
    sget v14, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 304
    sub-int/2addr v13, v14

    .line 305
    sget-object v14, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 307
    invoke-virtual {v14}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 310
    move-result v14

    .line 311
    sget v15, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 313
    sub-int/2addr v14, v15

    .line 314
    invoke-interface {v3, v13, v14, v12}, Lcom/baidu/input/optimization/IMainSub;->b(IIZ)V

    .line 317
    :cond_13c
    iget-object v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 319
    iget-boolean v12, v3, Lcom/baidu/input/ime/SubList;->Z:Z

    .line 321
    if-eqz v12, :cond_145

    .line 323
    iput v11, v3, Lcom/baidu/input/ime/SubList;->o:I

    .line 325
    goto :goto_172

    .line 326
    :cond_145
    iput-boolean v8, v3, Lcom/baidu/input/ime/SubList;->r0:Z

    .line 328
    iget v3, v3, Lcom/baidu/input/ime/SubList;->o:I

    .line 330
    if-eq v11, v3, :cond_14d

    .line 332
    move v11, v7

    .line 333
    goto :goto_14e

    .line 334
    :cond_14d
    move v11, v8

    .line 335
    :goto_14e
    invoke-static {v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->H0(II)Z

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->v0(II)Z

    .line 341
    move-result v12

    .line 342
    iget-object v13, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 344
    sget-object v14, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 346
    invoke-virtual {v13, v3, v12, v14}, Lcom/baidu/input/ime/SubList;->k(IZLcom/baidu/input/ime/KeyAction;)B

    .line 349
    move-result v12

    .line 350
    if-eq v12, v6, :cond_16d

    .line 352
    if-eq v12, v10, :cond_16d

    .line 354
    if-eq v12, v4, :cond_164

    .line 356
    goto :goto_172

    .line 357
    :cond_164
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 359
    const v4, 0xf00f

    .line 362
    invoke-virtual {v3, v4}, Lcom/baidu/input/ime/KeyAction;->b(I)V

    .line 365
    goto :goto_172

    .line 366
    :cond_16d
    if-eqz v11, :cond_172

    .line 368
    invoke-virtual {v0, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->c1(I)V

    .line 371
    :cond_172
    :goto_172
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->P()V

    .line 374
    move v3, v7

    .line 375
    goto/16 :goto_329

    .line 377
    :cond_178
    iget-boolean v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 379
    if-eqz v3, :cond_18e

    .line 381
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 383
    invoke-virtual {v4}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 386
    move-result v4

    .line 387
    sget-object v11, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 389
    invoke-virtual {v11}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 392
    move-result v11

    .line 393
    invoke-virtual {v0, v4, v11}, Lcom/baidu/input/ime/keymap/KeyMap;->Y(II)I

    .line 396
    move-result v4

    .line 397
    int-to-short v4, v4

    .line 398
    goto :goto_18f

    .line 399
    :cond_18e
    move v4, v8

    .line 400
    :goto_18f
    const-string v11, "MultiKeyTouch"

    .line 402
    if-eqz v3, :cond_2be

    .line 404
    if-lez v4, :cond_2b7

    .line 406
    iget v3, v0, Lcom/baidu/input/ime/keymap/KeyMap;->s:I

    .line 408
    sub-int/2addr v3, v7

    .line 409
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    new-instance v10, Ljava/lang/StringBuilder;

    .line 414
    const-string v12, "--> onMultiRelease::"

    .line 416
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const-string v12, ", isMultiTouch=true, pointerIdx="

    .line 424
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v3

    .line 434
    new-array v10, v8, [Ljava/lang/Object;

    .line 436
    invoke-static {v11, v3, v10}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-virtual {v9, v7}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 442
    move-result v3

    .line 443
    const-string v10, "<-- onMultiRelease, state error: "

    .line 445
    const-string v12, "<-- onMultiRelease::, this:"

    .line 447
    if-eqz v3, :cond_1f1

    .line 449
    iget-object v3, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 451
    if-eqz v3, :cond_1df

    .line 453
    iget-short v13, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 455
    if-ne v13, v4, :cond_1df

    .line 457
    invoke-virtual {v9, v3}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    .line 462
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v3

    .line 472
    new-array v4, v8, [Ljava/lang/Object;

    .line 474
    invoke-static {v11, v3, v4}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :goto_1dc
    move v4, v8

    .line 478
    goto/16 :goto_2b5

    .line 480
    :cond_1df
    new-instance v3, Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v3

    .line 492
    new-array v4, v8, [Ljava/lang/Object;

    .line 494
    invoke-static {v11, v3, v4}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    goto :goto_1dc

    .line 498
    :cond_1f1
    invoke-virtual {v9, v6}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 501
    move-result v3

    .line 502
    if-nez v3, :cond_211

    .line 504
    const/4 v3, 0x5

    .line 505
    invoke-virtual {v9, v3}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 508
    move-result v3

    .line 509
    if-eqz v3, :cond_1ff

    .line 511
    goto :goto_211

    .line 512
    :cond_1ff
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object v3

    .line 524
    new-array v4, v8, [Ljava/lang/Object;

    .line 526
    invoke-static {v11, v3, v4}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    goto :goto_1dc

    .line 530
    :cond_211
    :goto_211
    iget-object v3, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 532
    iget-short v10, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 534
    iget-object v15, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 536
    const/4 v13, 0x0

    .line 537
    if-ne v4, v10, :cond_223

    .line 539
    invoke-virtual {v15, v8, v10}, Lcom/baidu/input/ime/keymap/KeyMap;->J0(IS)V

    .line 542
    iget-object v4, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 544
    invoke-virtual {v9, v13, v4, v13}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->f(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 547
    goto :goto_22f

    .line 548
    :cond_223
    iget-object v3, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 550
    iget-short v4, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 552
    invoke-virtual {v15, v8, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->J0(IS)V

    .line 555
    iget-object v4, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 557
    invoke-virtual {v9, v4, v4, v13}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->f(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 560
    :goto_22f
    iget-short v4, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 562
    iget-boolean v10, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 564
    if-nez v10, :cond_25e

    .line 566
    iput-boolean v7, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 568
    iget v10, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->c:I

    .line 570
    iget v14, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->d:I

    .line 572
    iget v13, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->e:F

    .line 574
    iget v5, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->f:F

    .line 576
    iget v6, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->g:F

    .line 578
    iget v7, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->h:F

    .line 580
    iget v8, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->i:F

    .line 582
    iget v3, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->j:I

    .line 584
    move/from16 v17, v13

    .line 586
    move-object v13, v15

    .line 587
    move/from16 v16, v14

    .line 589
    move v14, v4

    .line 590
    move-object/from16 v23, v15

    .line 592
    move v15, v10

    .line 593
    move/from16 v18, v5

    .line 595
    move/from16 v19, v6

    .line 597
    move/from16 v20, v7

    .line 599
    move/from16 v21, v8

    .line 601
    move/from16 v22, v3

    .line 603
    invoke-virtual/range {v13 .. v22}, Lcom/baidu/input/ime/keymap/KeyMap;->I0(SIIFFFFFI)V

    .line 606
    goto :goto_260

    .line 607
    :cond_25e
    move-object/from16 v23, v15

    .line 609
    :goto_260
    iget-object v3, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 611
    if-eqz v3, :cond_28e

    .line 613
    iget-short v14, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->a:S

    .line 615
    if-eq v4, v14, :cond_28e

    .line 617
    iget-boolean v4, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->b:Z

    .line 619
    if-nez v4, :cond_28e

    .line 621
    iget v15, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->c:I

    .line 623
    iget v4, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->d:I

    .line 625
    iget v5, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->e:F

    .line 627
    iget v6, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->f:F

    .line 629
    iget v7, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->g:F

    .line 631
    iget v8, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->h:F

    .line 633
    iget v3, v3, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;->i:F

    .line 635
    const/16 v22, 0x1

    .line 637
    move-object/from16 v13, v23

    .line 639
    move/from16 v16, v4

    .line 641
    move/from16 v17, v5

    .line 643
    move/from16 v18, v6

    .line 645
    move/from16 v19, v7

    .line 647
    move/from16 v20, v8

    .line 649
    move/from16 v21, v3

    .line 651
    invoke-virtual/range {v13 .. v22}, Lcom/baidu/input/ime/keymap/KeyMap;->K0(SIIFFFFFZ)V

    .line 654
    goto :goto_2a3

    .line 655
    :cond_28e
    const/16 v19, 0x0

    .line 657
    const/16 v20, 0x0

    .line 659
    const/4 v14, -0x1

    .line 660
    const/4 v15, 0x0

    .line 661
    const/16 v16, 0x0

    .line 663
    const/16 v17, 0x0

    .line 665
    const/16 v18, 0x0

    .line 667
    const/16 v21, 0x0

    .line 669
    const/16 v22, 0x1

    .line 671
    move-object/from16 v13, v23

    .line 673
    invoke-virtual/range {v13 .. v22}, Lcom/baidu/input/ime/keymap/KeyMap;->K0(SIIFFFFFZ)V

    .line 676
    :goto_2a3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 678
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    move-result-object v3

    .line 688
    const/4 v4, 0x0

    .line 689
    new-array v5, v4, [Ljava/lang/Object;

    .line 691
    invoke-static {v11, v3, v5}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    :goto_2b5
    const/4 v3, 0x1

    .line 695
    goto :goto_304

    .line 696
    :cond_2b7
    move v4, v8

    .line 697
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 699
    invoke-virtual {v0, v4, v3}, Lcom/baidu/input/ime/keymap/KeyMap;->l0(SLcom/baidu/input/ime/TouchPoint;)V

    .line 702
    goto :goto_2b5

    .line 703
    :cond_2be
    move v4, v8

    .line 704
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    new-array v3, v4, [Ljava/lang/Object;

    .line 709
    const-string v4, "--> onRelease::"

    .line 711
    invoke-static {v11, v4, v3}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    const/4 v3, 0x1

    .line 715
    invoke-virtual {v9, v3}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 718
    move-result v4

    .line 719
    if-nez v4, :cond_2eb

    .line 721
    invoke-virtual {v9, v10}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->a(I)Z

    .line 724
    move-result v4

    .line 725
    if-nez v4, :cond_2eb

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    .line 729
    const-string v5, "<-- onRelease, state error: "

    .line 731
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    move-result-object v4

    .line 741
    const/4 v5, 0x0

    .line 742
    new-array v6, v5, [Ljava/lang/Object;

    .line 744
    invoke-static {v11, v4, v6}, Lcom/baidu/input/devtool/log/BDLog;->q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    goto :goto_304

    .line 748
    :cond_2eb
    iget-object v4, v9, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;

    .line 750
    invoke-virtual {v9, v4}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->d(Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector$KeyTouch;)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    .line 755
    const-string v5, "<-- onRelease::, this:"

    .line 757
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    move-result-object v4

    .line 767
    const/4 v5, 0x0

    .line 768
    new-array v6, v5, [Ljava/lang/Object;

    .line 770
    invoke-static {v11, v4, v6}, Lcom/baidu/input/devtool/log/BDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :goto_304
    iget-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->R:Z

    .line 775
    if-eqz v4, :cond_329

    .line 777
    invoke-virtual {v9}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->c()S

    .line 780
    move-result v4

    .line 781
    invoke-virtual {v0, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->y0(S)Z

    .line 784
    move-result v4

    .line 785
    if-nez v4, :cond_329

    .line 787
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 790
    move-result-object v4

    .line 791
    iget-object v4, v4, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 793
    invoke-virtual {v4}, Lcom/baidu/iptcore/async/AsyncImePad;->m0()V

    .line 796
    new-instance v5, Lcom/baidu/x8;

    .line 798
    const/4 v6, 0x2

    .line 799
    invoke-direct {v5, v4, v6}, Lcom/baidu/x8;-><init>(Lcom/baidu/iptcore/async/AsyncImePad;I)V

    .line 802
    iget-object v4, v4, Lcom/baidu/iptcore/async/AsyncImePad;->n:Lcom/baidu/iptcore/async/CoreThreadEngine;

    .line 804
    invoke-virtual {v4, v5}, Lcom/baidu/iptcore/async/CoreThreadEngine;->c(Ljava/lang/Runnable;)V

    .line 807
    const/4 v4, 0x0

    .line 808
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->R:Z

    .line 810
    :cond_329
    :goto_329
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 812
    iget v5, v4, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 814
    if-eqz v5, :cond_340

    .line 816
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 818
    if-nez v5, :cond_339

    .line 820
    iget-byte v4, v4, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 822
    const/4 v5, 0x2

    .line 823
    and-int/2addr v4, v5

    .line 824
    if-nez v4, :cond_340

    .line 826
    :cond_339
    iget-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->u:Z

    .line 828
    if-eqz v4, :cond_340

    .line 830
    invoke-virtual {v0, v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->P0(II)V

    .line 833
    :cond_340
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->O0()V

    .line 836
    goto :goto_348

    .line 837
    :cond_344
    move v3, v7

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->V0()V

    .line 841
    :goto_348
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 843
    invoke-virtual {v4}, Lcom/baidu/input/ime/InputStatMac;->s()V

    .line 846
    invoke-virtual {v9}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->c()S

    .line 849
    move-result v4

    .line 850
    if-nez v4, :cond_358

    .line 852
    sget-object v4, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 854
    invoke-virtual {v4}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 857
    :cond_358
    iget-object v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 859
    if-eqz v4, :cond_35f

    .line 861
    const/4 v5, -0x1

    .line 862
    iput v5, v4, Lcom/baidu/input/ime/SubList;->m:I

    .line 864
    :cond_35f
    const/4 v4, 0x0

    .line 865
    sput v4, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 867
    sput v4, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 869
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 871
    invoke-virtual {v5}, Lcom/baidu/input/ime/TouchPoint;->c()V

    .line 874
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 876
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->j:Z

    .line 878
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->o:Z

    .line 880
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->p:Z

    .line 882
    const/4 v4, -0x1

    .line 883
    if-eq v1, v4, :cond_3a3

    .line 885
    if-eq v2, v4, :cond_3a3

    .line 887
    iget-boolean v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 889
    if-eqz v5, :cond_39e

    .line 891
    const v5, 0xf0024

    .line 894
    const/4 v6, 0x2

    .line 895
    invoke-virtual {v0, v6, v5}, Lcom/baidu/input/ime/keymap/KeyMap;->X(BI)I

    .line 898
    move-result v5

    .line 899
    if-eq v5, v4, :cond_399

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 904
    move-result-object v4

    .line 905
    aget-object v4, v4, v5

    .line 907
    iget-object v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 909
    if-eqz v4, :cond_396

    .line 911
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 914
    move-result v1

    .line 915
    if-eqz v1, :cond_396

    .line 917
    move v7, v3

    .line 918
    goto :goto_397

    .line 919
    :cond_396
    const/4 v7, 0x0

    .line 920
    :goto_397
    move v4, v7

    .line 921
    goto :goto_39a

    .line 922
    :cond_399
    const/4 v4, 0x0

    .line 923
    :goto_39a
    iput-boolean v4, v0, Lcom/baidu/input/ime/keymap/KeyMap;->n:Z

    .line 925
    const/4 v1, 0x0

    .line 926
    goto :goto_3a1

    .line 927
    :cond_39e
    const/4 v1, 0x0

    .line 928
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->n:Z

    .line 930
    :goto_3a1
    iput-boolean v1, v0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 932
    :cond_3a3
    return-void
.end method

.method public V(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final V0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 6
    return-void
.end method

.method public final W(II)B
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/ime/keymap/KeyMap;->v0(II)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_11

    .line 9
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/ime/keymap/KeyMap;->w0(II)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x3

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x2

    .line 18
    :goto_11
    return p1
.end method

.method public final W0()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->g:Lcom/baidu/input/ime/params/KeymapLoader;

    .line 5
    if-eqz v0, :cond_136

    .line 7
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 9
    if-nez v1, :cond_c

    .line 11
    goto/16 :goto_136

    .line 13
    :cond_c
    iget-object v2, v1, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_15

    .line 18
    iput-object v3, v2, Lcom/baidu/input/ime/params/PanelParam;->o:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 20
    iput-object v3, v2, Lcom/baidu/input/ime/params/PanelParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 22
    :cond_15
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->e:Ljava/util/ArrayList;

    .line 24
    invoke-static {v1}, Lcom/baidu/input/common/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_97

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v1

    .line 34
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_97

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/baidu/input/ime/params/CandParam;

    .line 46
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 48
    if-eqz v2, :cond_21

    .line 50
    const/4 v4, 0x0

    .line 51
    iput-object v4, v2, Lcom/baidu/input/ime/params/CandLoader;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 53
    iput-object v4, v2, Lcom/baidu/input/ime/params/CandLoader;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 55
    iput-object v4, v2, Lcom/baidu/input/ime/params/CandLoader;->o:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 57
    iput-object v4, v2, Lcom/baidu/input/ime/params/CandLoader;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 59
    iget-object v5, v2, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 61
    if-eqz v5, :cond_52

    .line 63
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 65
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 67
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 69
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 71
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 73
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->o:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 75
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 77
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 79
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->s:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 81
    iput-object v4, v5, Lcom/baidu/input/ime/params/CandStyleParam;->t:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 83
    :cond_52
    iget-object v5, v2, Lcom/baidu/input/ime/params/CandLoader;->i:[Lcom/baidu/input/ime/params/IconParam;

    .line 85
    const/4 v6, 0x0

    .line 86
    if-eqz v5, :cond_6e

    .line 88
    move v7, v6

    .line 89
    :goto_58
    array-length v8, v5

    .line 90
    if-ge v7, v8, :cond_6e

    .line 92
    aget-object v8, v5, v7

    .line 94
    if-eqz v8, :cond_6b

    .line 96
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 98
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 100
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 102
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 104
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->r:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 106
    iput-object v4, v8, Lcom/baidu/input/ime/params/IconParam;->s:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 108
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    .line 110
    goto :goto_58

    .line 111
    :cond_6e
    iget-object v5, v2, Lcom/baidu/input/ime/params/CandLoader;->j:[Lcom/baidu/input/ime/params/IconParam;

    .line 113
    if-eqz v5, :cond_88

    .line 115
    :goto_72
    array-length v7, v5

    .line 116
    if-ge v6, v7, :cond_88

    .line 118
    aget-object v7, v5, v6

    .line 120
    if-eqz v7, :cond_85

    .line 122
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 124
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 126
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 128
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 130
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->r:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 132
    iput-object v4, v7, Lcom/baidu/input/ime/params/IconParam;->s:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 134
    :cond_85
    add-int/lit8 v6, v6, 0x1

    .line 136
    goto :goto_72

    .line 137
    :cond_88
    iget-object v4, v2, Lcom/baidu/input/ime/params/CandLoader;->k:Ljava/util/HashMap;

    .line 139
    if-eqz v4, :cond_8f

    .line 141
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 144
    :cond_8f
    iget-object v2, v2, Lcom/baidu/input/ime/params/CandLoader;->l:Ljava/util/HashMap;

    .line 146
    if-eqz v2, :cond_21

    .line 148
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 151
    goto :goto_21

    .line 152
    :cond_97
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 154
    iget-object v2, v1, Lcom/baidu/input/ime/params/KeyMapParams;->f:Lcom/baidu/input/ime/params/SubCandParam;

    .line 156
    if-eqz v2, :cond_a3

    .line 158
    iput-object v3, v2, Lcom/baidu/input/ime/params/SubCandParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 160
    iput-object v3, v2, Lcom/baidu/input/ime/params/SubCandParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 162
    iput-object v3, v2, Lcom/baidu/input/ime/params/SubCandParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 164
    :cond_a3
    iget-object v2, v1, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 166
    if-eqz v2, :cond_b1

    .line 168
    iput-object v3, v2, Lcom/baidu/input/ime/params/ListParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 170
    iput-object v3, v2, Lcom/baidu/input/ime/params/ListParam;->o:[Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 172
    iput-object v3, v2, Lcom/baidu/input/ime/params/ListParam;->p:[Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 174
    iput-object v3, v2, Lcom/baidu/input/ime/params/ListParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 176
    iput-object v3, v2, Lcom/baidu/input/ime/params/ListParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 178
    :cond_b1
    iget-object v2, v1, Lcom/baidu/input/ime/params/KeyMapParams;->g:Lcom/baidu/input/ime/params/InputParam;

    .line 180
    if-eqz v2, :cond_bb

    .line 182
    iput-object v3, v2, Lcom/baidu/input/ime/params/InputParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 184
    iput-object v3, v2, Lcom/baidu/input/ime/params/InputParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 186
    iput-object v3, v2, Lcom/baidu/input/ime/params/InputParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 188
    :cond_bb
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->h:Lcom/baidu/input/ime/params/HintParam;

    .line 190
    const/4 v2, 0x0

    .line 191
    if-eqz v1, :cond_e7

    .line 193
    iget-object v1, v1, Lcom/baidu/input/ime/params/HintParam;->d:Lcom/baidu/input/ime/params/HintLoader;

    .line 195
    if-eqz v1, :cond_e7

    .line 197
    iput-object v3, v1, Lcom/baidu/input/ime/params/HintLoader;->n:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 199
    iput-object v3, v1, Lcom/baidu/input/ime/params/HintLoader;->r:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 201
    iput-object v3, v1, Lcom/baidu/input/ime/params/HintLoader;->s:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 203
    iget-object v4, v1, Lcom/baidu/input/ime/params/HintLoader;->i:[Lcom/baidu/input/ime/params/IconParam;

    .line 205
    if-eqz v4, :cond_e7

    .line 207
    move v4, v2

    .line 208
    :goto_cf
    iget-object v5, v1, Lcom/baidu/input/ime/params/HintLoader;->i:[Lcom/baidu/input/ime/params/IconParam;

    .line 210
    array-length v6, v5

    .line 211
    if-ge v4, v6, :cond_e7

    .line 213
    aget-object v5, v5, v4

    .line 215
    if-eqz v5, :cond_e4

    .line 217
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 219
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->l:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 221
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->p:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 223
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->q:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 225
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->r:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 227
    iput-object v3, v5, Lcom/baidu/input/ime/params/IconParam;->s:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 229
    :cond_e4
    add-int/lit8 v4, v4, 0x1

    .line 231
    goto :goto_cf

    .line 232
    :cond_e7
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 234
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->j:[Lcom/baidu/input/ime/params/KeyParam;

    .line 236
    invoke-static {v1}, Lcom/baidu/input/ime/params/KeymapLoader;->O([Lcom/baidu/input/ime/params/KeyParam;)V

    .line 239
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 241
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->s:[Lcom/baidu/input/ime/params/KeyParam;

    .line 243
    invoke-static {v1}, Lcom/baidu/input/ime/params/KeymapLoader;->O([Lcom/baidu/input/ime/params/KeyParam;)V

    .line 246
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeymapLoader;->e:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 248
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeyMapParams;->i:Lcom/baidu/input/ime/params/MoreParam;

    .line 250
    if-eqz v1, :cond_103

    .line 252
    iput-object v3, v1, Lcom/baidu/input/ime/params/MoreParam;->g:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 254
    iput-object v3, v1, Lcom/baidu/input/ime/params/MoreParam;->h:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 256
    iput-object v3, v1, Lcom/baidu/input/ime/params/MoreParam;->i:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 258
    iput-object v3, v1, Lcom/baidu/input/ime/params/MoreParam;->j:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 260
    :cond_103
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->k:Lcom/baidu/input/ime/params/SugBarParam;

    .line 262
    if-eqz v0, :cond_111

    .line 264
    iput-object v3, v0, Lcom/baidu/input/ime/params/SugBarParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 266
    iput-object v3, v0, Lcom/baidu/input/ime/params/SugBarParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 268
    iput-object v3, v0, Lcom/baidu/input/ime/params/SugBarParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 270
    iput-object v3, v0, Lcom/baidu/input/ime/params/SugBarParam;->f:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 272
    iput-object v3, v0, Lcom/baidu/input/ime/params/SugBarParam;->g:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 274
    :cond_111
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 277
    move-result-object v0

    .line 278
    iget-object v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->r:Lcom/baidu/input/ime/params/SceneParam;

    .line 280
    invoke-virtual {v0}, Lcom/baidu/input/ime/params/SceneParam;->g()V

    .line 283
    invoke-static {}, Lcom/baidu/input/ime/params/StyleParam;->r()V

    .line 286
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 289
    move-result-object v0

    .line 290
    iput-boolean v2, v0, Lcom/baidu/skinrender/SkinRenderStatus;->o:Z

    .line 292
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 295
    move-result-object v0

    .line 296
    iput-boolean v2, v0, Lcom/baidu/skinrender/SkinRenderStatus;->p:Z

    .line 298
    sget-object v0, Lcom/baidu/input/ime/params/StyleParam;->B:Landroid/graphics/Paint;

    .line 300
    if-eqz v0, :cond_130

    .line 302
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    :cond_130
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 308
    move-result-object v0

    .line 309
    iput-boolean v2, v0, Lcom/baidu/skinrender/SkinRenderStatus;->q:Z

    .line 311
    :cond_136
    :goto_136
    return-void
.end method

.method public final X(BI)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->f0()S

    .line 12
    move-result v0

    .line 13
    :goto_c
    if-lez v0, :cond_5a

    .line 15
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 18
    move-result-object v2

    .line 19
    aget-object v2, v2, v0

    .line 21
    if-nez v2, :cond_17

    .line 23
    goto :goto_56

    .line 24
    :cond_17
    if-eqz p1, :cond_4b

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq p1, v2, :cond_42

    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq p1, v2, :cond_39

    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq p1, v2, :cond_30

    .line 35
    const/4 v2, 0x4

    .line 36
    if-eq p1, v2, :cond_27

    .line 38
    move v2, v1

    .line 39
    goto :goto_53

    .line 40
    :cond_27
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 43
    move-result-object v2

    .line 44
    aget-object v2, v2, v0

    .line 46
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->g:I

    .line 48
    goto :goto_53

    .line 49
    :cond_30
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 52
    move-result-object v2

    .line 53
    aget-object v2, v2, v0

    .line 55
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->i:I

    .line 57
    goto :goto_53

    .line 58
    :cond_39
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 61
    move-result-object v2

    .line 62
    aget-object v2, v2, v0

    .line 64
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 66
    goto :goto_53

    .line 67
    :cond_42
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 70
    move-result-object v2

    .line 71
    aget-object v2, v2, v0

    .line 73
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->h:I

    .line 75
    goto :goto_53

    .line 76
    :cond_4b
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 79
    move-result-object v2

    .line 80
    aget-object v2, v2, v0

    .line 82
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 84
    :goto_53
    if-ne p2, v2, :cond_56

    .line 86
    return v0

    .line 87
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, -0x1

    .line 89
    int-to-short v0, v0

    .line 90
    goto :goto_c

    .line 91
    :cond_5a
    return v1
.end method

.method public X0(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public Y(II)I
    .registers 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/ime/keymap/KeyMap;->M(II)V

    .line 4
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->f0()S

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    move v0, p2

    .line 10
    :goto_9
    if-lez p1, :cond_d7

    .line 12
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 15
    move-result-object v1

    .line 16
    aget-object v1, v1, p1

    .line 18
    if-eqz v1, :cond_d3

    .line 20
    iget v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 22
    const v3, 0xf0035

    .line 25
    if-eq v2, v3, :cond_d3

    .line 27
    const v3, 0xffff

    .line 30
    and-int/2addr v2, v3

    .line 31
    const/16 v3, 0x96

    .line 33
    if-ne v2, v3, :cond_24

    .line 35
    goto/16 :goto_d3

    .line 37
    :cond_24
    iget-object v2, v1, Lcom/baidu/input/ime/params/KeyParam;->u0:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 39
    sget-object v3, Lcom/baidu/input/ime/params/enumtype/FacadeState;->d:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 41
    if-eq v2, v3, :cond_d3

    .line 43
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/keymap/KeyMap;->L(Lcom/baidu/input/ime/params/KeyParam;)V

    .line 46
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 48
    iget-object v3, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 55
    iget-boolean v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->h:Z

    .line 57
    if-eqz v2, :cond_9f

    .line 59
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->h0:[B

    .line 61
    if-eqz v2, :cond_9f

    .line 63
    iget v3, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 65
    add-int/lit8 v3, v3, -0x61

    .line 67
    if-ltz v3, :cond_9f

    .line 69
    const/16 v4, 0x1a

    .line 71
    if-ge v3, v4, :cond_9f

    .line 73
    aget-byte v2, v2, v3

    .line 75
    if-eqz v2, :cond_87

    .line 77
    const/4 v3, 0x2

    .line 78
    if-eq v2, v3, :cond_6e

    .line 80
    const/4 v3, 0x3

    .line 81
    if-eq v2, v3, :cond_53

    .line 83
    goto :goto_9f

    .line 84
    :cond_53
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 86
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 88
    sget-byte v4, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 92
    sub-int/2addr v3, v4

    .line 93
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 95
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 97
    add-int/2addr v3, v4

    .line 98
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 100
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 105
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 107
    add-int/2addr v4, v3

    .line 108
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 110
    goto :goto_9f

    .line 111
    :cond_6e
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 113
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 115
    sget-byte v4, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 117
    sub-int/2addr v3, v4

    .line 118
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 120
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 122
    add-int/2addr v3, v4

    .line 123
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 125
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 127
    sub-int/2addr v3, v4

    .line 128
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 130
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 132
    add-int/2addr v3, v4

    .line 133
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 135
    goto :goto_9f

    .line 136
    :cond_87
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 138
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 140
    sget-byte v4, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 142
    add-int/2addr v3, v4

    .line 143
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 145
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 147
    sub-int/2addr v3, v4

    .line 148
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 150
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 152
    add-int/2addr v3, v4

    .line 153
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 155
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 157
    sub-int/2addr v3, v4

    .line 158
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 160
    :cond_9f
    :goto_9f
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 162
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->j0:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_d3

    .line 170
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 175
    move-result v2

    .line 176
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 178
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v3

    .line 182
    mul-int/2addr v3, v2

    .line 183
    if-le v3, v0, :cond_b9

    .line 185
    goto :goto_d1

    .line 186
    :cond_b9
    if-ne v3, v0, :cond_d3

    .line 188
    instance-of v2, p0, Lcom/baidu/input/ime/keymap/more/KeyMapMoreCand;

    .line 190
    if-eqz v2, :cond_d3

    .line 192
    sget-object v2, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_d3

    .line 203
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 205
    const v2, 0xf0024

    .line 208
    if-ne v1, v2, :cond_d3

    .line 210
    :goto_d1
    move p2, p1

    .line 211
    move v0, v3

    .line 212
    :cond_d3
    :goto_d3
    add-int/lit8 p1, p1, -0x1

    .line 214
    goto/16 :goto_9

    .line 216
    :cond_d7
    return p2
.end method

.method public final Y0(IILjava/util/ArrayList;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 3
    int-to-char v1, p1

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 7
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 13
    move-result-object v0

    .line 14
    aget-object v0, v0, p2

    .line 16
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 18
    int-to-char v0, v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->B0(I)Z

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    const/16 v3, 0x27

    .line 26
    if-eqz v0, :cond_53

    .line 28
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 30
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 33
    move-result-object v4

    .line 34
    aget-object v4, v4, p2

    .line 36
    iget v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 38
    int-to-char v4, v4

    .line 39
    invoke-direct {v0, v4, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 42
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 47
    iget v4, v0, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 49
    const/16 v5, 0x20

    .line 51
    if-ne v4, v5, :cond_53

    .line 53
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 55
    if-ne v0, v2, :cond_53

    .line 57
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 60
    move-result-object v0

    .line 61
    aget-object v0, v0, p2

    .line 63
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 65
    int-to-char v0, v0

    .line 66
    if-ne v0, v3, :cond_53

    .line 68
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 70
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 73
    move-result-object v4

    .line 74
    aget-object v4, v4, p2

    .line 76
    iget v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 78
    invoke-direct {v0, v1, v4}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 81
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_53
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 86
    iget v1, v0, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 88
    const/16 v4, 0x10

    .line 90
    if-ne v1, v4, :cond_7d

    .line 92
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 94
    if-ne v0, v2, :cond_7d

    .line 96
    const/16 v0, 0x31

    .line 98
    if-ne p1, v0, :cond_7d

    .line 100
    new-instance v1, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 102
    invoke-direct {v1, v0, v3}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 105
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 110
    const/16 v2, 0x2d

    .line 112
    invoke-direct {v1, v2, v3}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 115
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 120
    invoke-direct {v1, v3, v0}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 123
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_7d
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 129
    move-result-object v0

    .line 130
    aget-object v0, v0, p2

    .line 132
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 134
    int-to-char v0, v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->B0(I)Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_9d

    .line 141
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 143
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 146
    move-result-object v1

    .line 147
    aget-object v1, v1, p2

    .line 149
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 151
    int-to-char v1, v1

    .line 152
    invoke-direct {v0, v1, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 155
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_9d
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 161
    move-result-object v0

    .line 162
    aget-object v0, v0, p2

    .line 164
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->i:I

    .line 166
    int-to-char v0, v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->B0(I)Z

    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_bd

    .line 173
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 175
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 178
    move-result-object v1

    .line 179
    aget-object v1, v1, p2

    .line 181
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->i:I

    .line 183
    int-to-char v1, v1

    .line 184
    invoke-direct {v0, v1, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 187
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_bd
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 193
    move-result-object v0

    .line 194
    aget-object v0, v0, p2

    .line 196
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->g:I

    .line 198
    int-to-char v0, v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->B0(I)Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_dd

    .line 205
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 207
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 210
    move-result-object v1

    .line 211
    aget-object v1, v1, p2

    .line 213
    iget v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->g:I

    .line 215
    int-to-char v1, v1

    .line 216
    invoke-direct {v0, v1, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 219
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_dd
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 225
    move-result-object v0

    .line 226
    aget-object v0, v0, p2

    .line 228
    iget v0, v0, Lcom/baidu/input/ime/params/BasicKeyParam;->h:I

    .line 230
    int-to-char v0, v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->B0(I)Z

    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_fd

    .line 237
    new-instance v0, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;

    .line 239
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 242
    move-result-object v1

    .line 243
    aget-object p2, v1, p2

    .line 245
    iget p2, p2, Lcom/baidu/input/ime/params/BasicKeyParam;->h:I

    .line 247
    int-to-char p2, p2

    .line 248
    invoke-direct {v0, p2, p1}, Lcom/baidu/iptcore/MultiPadConfiguration$KeymapChar;-><init>(CI)V

    .line 251
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_fd
    return-void
.end method

.method public final Z()[Lcom/baidu/input/ime/params/KeyParam;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->j:[Lcom/baidu/input/ime/params/KeyParam;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public final Z0()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    move v3, v2

    .line 9
    :goto_8
    iget-object v4, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 11
    iget-object v4, v4, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 13
    iget-object v4, v4, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 15
    iget-short v4, v4, Lcom/baidu/input/ime/params/PanelParam;->h:S

    .line 17
    if-gt v3, v4, :cond_4e

    .line 19
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 22
    move-result-object v4

    .line 23
    aget-object v4, v4, v3

    .line 25
    if-nez v4, :cond_1b

    .line 27
    goto :goto_4a

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 31
    move-result-object v4

    .line 32
    aget-object v4, v4, v3

    .line 34
    iget-boolean v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->B:Z

    .line 36
    if-eqz v4, :cond_4a

    .line 38
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 41
    move-result-object v4

    .line 42
    aget-object v4, v4, v3

    .line 44
    iget v4, v4, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 46
    const/16 v5, 0x61

    .line 48
    if-lt v4, v5, :cond_35

    .line 50
    const/16 v5, 0x7a

    .line 52
    if-le v4, v5, :cond_3d

    .line 54
    :cond_35
    const/16 v5, 0x41

    .line 56
    if-lt v4, v5, :cond_4a

    .line 58
    const/16 v5, 0x5a

    .line 60
    if-gt v4, v5, :cond_4a

    .line 62
    :cond_3d
    if-nez v1, :cond_47

    .line 64
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 66
    iget-object v1, v1, Lcom/baidu/input/ime/InputEventHandler;->E:Lcom/baidu/input/ime/newcore/operator/InputHandler2;

    .line 68
    invoke-virtual {v1}, Lcom/baidu/input/ime/newcore/operator/InputHandler2;->d()V

    .line 71
    move v1, v2

    .line 72
    :cond_47
    invoke-virtual {p0, v4, v3, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->Y0(IILjava/util/ArrayList;)V

    .line 75
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    .line 77
    int-to-byte v3, v3

    .line 78
    goto :goto_8

    .line 79
    :cond_4e
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 82
    move-result-object v1

    .line 83
    iget-object v1, v1, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v2, Lcom/baidu/d;

    .line 90
    const/16 v3, 0x1d

    .line 92
    invoke-direct {v2, v1, v0, v3}, Lcom/baidu/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 95
    iget-object v0, v1, Lcom/baidu/iptcore/async/AsyncImePad;->n:Lcom/baidu/iptcore/async/CoreThreadEngine;

    .line 97
    invoke-virtual {v0, v2}, Lcom/baidu/iptcore/async/CoreThreadEngine;->c(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public a()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->E()V

    .line 4
    invoke-static {}, Lcom/baidu/input/eventbus/InnerEventBus;->a()Lcom/baidu/input/eventbus/InnerEventBus;

    .line 7
    move-result-object v0

    .line 8
    const-class v1, Lcom/baidu/input/ime/params/event/ActionEvent;

    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/baidu/input/eventbus/InnerEventBus;->i(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 19
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 25
    if-eqz v1, :cond_1d

    .line 27
    invoke-virtual {v1}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->E()V

    .line 30
    :cond_1d
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 32
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 34
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 37
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->a()V

    .line 44
    :cond_2b
    return-void
.end method

.method public final a0()[Lcom/baidu/input/ime/params/KeyParam;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->s:[Lcom/baidu/input/ime/params/KeyParam;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public a1(B)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/baidu/input/ime/render/KeymapRender;

    .line 7
    invoke-direct {v0, p0}, Lcom/baidu/input/ime/render/KeymapRender;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;)V

    .line 10
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 12
    :cond_b
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->g(I)Lcom/baidu/input/ime/params/KeymapLoader;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->D(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 21
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 23
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 25
    if-nez v0, :cond_48

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "KeyMap.setParams Error, pmPanel null! currKeymapLoader="

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->g(I)Lcom/baidu/input/ime/params/KeymapLoader;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, ", gen="

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->i()Lcom/baidu/input/ime/params/KeymapLoader;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ", isServiceInitialFinished =  "

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 60
    invoke-virtual {p1}, Lcom/baidu/input/modular/ObservableImeService;->isServiceInitialFinished()Z

    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    sput-object p1, Lcom/baidu/input/ime/params/SkinRenderCallback;->c:Ljava/lang/String;

    .line 73
    :cond_48
    return-void
.end method

.method public b([Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;
    if-eqz v0, :baidu_mod_update_original
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/SubList;->baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V
    :baidu_mod_update_original

    .line 1
    iget-byte v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->h:B

    .line 3
    const/16 v1, 0xe

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_18

    .line 9
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 11
    const/16 v1, 0x6e

    .line 13
    aget-boolean v0, v0, v1

    .line 15
    if-eqz v0, :cond_18

    .line 17
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->b()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_18

    .line 23
    move v0, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v3

    .line 26
    :goto_19
    if-nez p1, :cond_21

    .line 28
    iget-object p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 32
    move v4, v2

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    move-object v1, p1

    .line 35
    move v4, v3

    .line 36
    :goto_23
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 38
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->E:Lcom/baidu/input/ime/newcore/operator/InputHandler2;

    .line 40
    iget-object v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    if-nez v6, :cond_2f

    .line 47
    goto :goto_84

    .line 48
    :cond_2f
    if-nez v4, :cond_6f

    .line 50
    if-nez p1, :cond_34

    .line 52
    goto :goto_6f

    .line 53
    :cond_34
    iget-object v1, v5, Lcom/baidu/input/ime/newcore/operator/InputHandlerBase;->g:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 55
    iget-object v1, v1, Lcom/baidu/input/ime/newcore/state/ListState2;->a:Lcom/baidu/input/support/state/IptListState;

    .line 57
    if-eqz v1, :cond_40

    .line 59
    iget-boolean v4, v1, Lcom/baidu/input/support/state/IptListState;->b:Z

    .line 61
    if-eqz v4, :cond_40

    .line 63
    move v4, v2

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v4, v3

    .line 66
    :goto_41
    if-nez v1, :cond_45

    .line 68
    const/4 v7, -0x1

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    iget v7, v1, Lcom/baidu/input/support/state/IptListState;->c:I

    .line 72
    :goto_47
    if-eqz v4, :cond_67

    .line 74
    if-nez v0, :cond_5b

    .line 76
    if-eqz v1, :cond_5b

    .line 78
    iget-boolean v0, v1, Lcom/baidu/input/support/state/IptListState;->a:Z

    .line 80
    if-eqz v0, :cond_5b

    .line 82
    array-length v0, p1

    .line 83
    sub-int/2addr v0, v2

    .line 84
    new-array v0, v0, [Ljava/lang/String;

    .line 86
    array-length v1, p1

    .line 87
    sub-int/2addr v1, v2

    .line 88
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    move-object p1, v0

    .line 92
    :cond_5b
    iput v3, v6, Lcom/baidu/input/ime/SubList;->h0:I

    .line 94
    invoke-virtual {v6}, Lcom/baidu/input/ime/SubList;->x()V

    .line 97
    invoke-virtual {v6, p1, v3}, Lcom/baidu/input/ime/SubList;->A([Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v6, p1, v3}, Lcom/baidu/input/ime/SubList;->D([Ljava/lang/String;Z)V

    .line 103
    goto :goto_84

    .line 104
    :cond_67
    iput v7, v6, Lcom/baidu/input/ime/SubList;->o:I

    .line 106
    iget-object v0, v5, Lcom/baidu/input/ime/newcore/operator/InputHandlerBase;->a:Lcom/baidu/input/ime/InputStatMac;

    .line 108
    invoke-virtual {v6, v0, p1}, Lcom/baidu/input/ime/SubList;->g(Lcom/baidu/input/ime/InputStatMac;[Ljava/lang/String;)V

    .line 111
    goto :goto_84

    .line 112
    :cond_6f
    :goto_6f
    iput v3, v6, Lcom/baidu/input/ime/SubList;->h0:I

    .line 114
    if-eqz v0, :cond_7a

    .line 116
    invoke-static {p1}, Lcom/baidu/input/ime/SubList;->h([Ljava/lang/String;)Z

    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7a

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v2, v3

    .line 124
    :goto_7b
    invoke-virtual {v6, p1, v2}, Lcom/baidu/input/ime/SubList;->A([Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {v6, v1, v2}, Lcom/baidu/input/ime/SubList;->D([Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {v6}, Lcom/baidu/input/ime/SubList;->x()V

    .line 133
    :goto_84
    return-void
.end method

.method public final b0()Landroid/graphics/Rect;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2b

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    if-ge v0, v1, :cond_2b

    .line 15
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 18
    move-result-object v1

    .line 19
    aget-object v1, v1, v0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v2}, Lcom/baidu/input/ime/keymap/KeyMap;->e0(Lcom/baidu/input/ime/params/KeyParam;B)I

    .line 25
    move-result v2

    .line 26
    if-eqz v1, :cond_28

    .line 28
    const v3, 0xf0024

    .line 31
    if-ne v2, v3, :cond_28

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    iget-object v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 37
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 40
    return-object v0

    .line 41
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_7

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method public b1(Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V
    .registers 4

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/baidu/input/ime/params/anim/IsolationAnimHandler;->c(Lcom/baidu/input/ime/params/KeyParam;Lcom/baidu/input/ime/params/CandParam;B)V

    .line 5
    return-void
.end method

.method public final c0()Landroid/graphics/Rect;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_24

    .line 11
    aget-object v3, v0, v2

    .line 13
    if-nez v3, :cond_f

    .line 15
    goto :goto_21

    .line 16
    :cond_f
    const/4 v4, 0x2

    .line 17
    invoke-static {v3, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->e0(Lcom/baidu/input/ime/params/KeyParam;B)I

    .line 20
    move-result v4

    .line 21
    const v5, 0xf0027

    .line 24
    if-ne v4, v5, :cond_21

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    .line 28
    iget-object v1, v3, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 30
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 33
    return-object v0

    .line 34
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method

.method public c1(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 21
    move-result-object v2

    .line 22
    iget v2, v2, Lcom/baidu/skinrender/SkinRenderSettings;->i:I

    .line 24
    add-int/2addr v2, p2

    .line 25
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->o()Lcom/baidu/skinrender/SkinRenderSettings;

    .line 28
    move-result-object v3

    .line 29
    iget v3, v3, Lcom/baidu/skinrender/SkinRenderSettings;->j:I

    .line 31
    add-int/2addr p2, v3

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v1, v2, v3, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 39
    return-void
.end method

.method public final d0()Lcom/baidu/input/ime/params/KeyParam;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->b()S

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_36

    .line 9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 12
    move-result-object v1

    .line 13
    aget-object v1, v1, v0

    .line 15
    iget-boolean v1, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->J:Z

    .line 17
    if-eqz v1, :cond_2f

    .line 19
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 22
    move-result-object v1

    .line 23
    aget-object v1, v1, v0

    .line 25
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/KeyParam;->I()S

    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_2f

    .line 31
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 33
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 35
    iget-object v2, v2, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 37
    iget-short v2, v2, Lcom/baidu/input/ime/params/PanelParam;->i:S

    .line 39
    if-gt v1, v2, :cond_2f

    .line 41
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 44
    move-result-object v0

    .line 45
    aget-object v0, v0, v1

    .line 47
    return-object v0

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 51
    move-result-object v1

    .line 52
    aget-object v0, v1, v0

    .line 54
    return-object v0

    .line 55
    :cond_36
    const/4 v0, 0x0

    .line 56
    return-object v0
.end method

.method public final d1(Z)V
    .registers 6

    .line 1
    const-class v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 3
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 9
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel;->U2()Lcom/baidu/input/ime/viewmanager/KeymapViewManager;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;

    .line 15
    sget-short v2, Lcom/baidu/input/pub/ImeBaseGlobal;->s:S

    .line 17
    sget-short v3, Lcom/baidu/input/pub/Global;->d1:S

    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->j0(Z)Landroid/graphics/Rect;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v1, v2, v3, p1}, Lcom/baidu/input/ime/viewmanager/size/SizeInfor;-><init>(IILandroid/graphics/Rect;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/baidu/input/ime/viewmanager/KeymapViewManager;->j(Lcom/baidu/input/ime/viewmanager/size/SizeInfor;)V

    .line 29
    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 9

    .line 1
    sget-object p3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 3
    iget-object p3, p3, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 9
    iget-byte v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->a:B

    .line 11
    invoke-virtual {p3, v0}, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->b0(B)Z

    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_80

    .line 17
    iget-object p3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 19
    iget-object p3, p3, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 21
    iget-byte p3, p3, Lcom/baidu/input/ime/params/KeyMapParams;->a:B

    .line 23
    const/16 v0, 0x1d

    .line 25
    if-eq p3, v0, :cond_80

    .line 27
    const/16 v0, 0x5b

    .line 29
    if-eq p3, v0, :cond_80

    .line 31
    const/16 v0, 0x5a

    .line 33
    if-eq p3, v0, :cond_80

    .line 35
    sget-object p3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 37
    invoke-virtual {p3}, Lcom/baidu/input/ImeService;->getCandViewWrapper()Lcom/baidu/input/CandViewWrapper;

    .line 40
    move-result-object p3

    .line 41
    invoke-interface {p3}, Lcom/baidu/input/CandViewWrapper;->f()Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v0, Lcom/baidu/input/ime/params/KeymapLoader;->R:Landroid/graphics/ColorMatrixColorFilter;

    .line 50
    if-nez v0, :cond_3c

    .line 52
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 54
    sget-object v1, Lcom/baidu/skinrender/SkinRenderConsts;->a:[F

    .line 56
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 59
    sput-object v0, Lcom/baidu/input/ime/params/KeymapLoader;->R:Landroid/graphics/ColorMatrixColorFilter;

    .line 61
    :cond_3c
    invoke-static {}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->d()Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_47

    .line 67
    sget-object v0, Lcom/baidu/input/ime/params/KeymapLoader;->R:Landroid/graphics/ColorMatrixColorFilter;

    .line 69
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    :cond_47
    iget-object v0, p3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->a:[I

    .line 74
    const/4 v1, 0x3

    .line 75
    aget v1, v0, v1

    .line 77
    const/4 v2, 0x0

    .line 78
    rsub-int/lit8 v1, v1, 0x0

    .line 80
    iget-object v3, p3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->b:Landroid/graphics/Bitmap;

    .line 82
    if-eqz v3, :cond_62

    .line 84
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_62

    .line 90
    iget-object v3, p3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->b:Landroid/graphics/Bitmap;

    .line 92
    aget v2, v0, v2

    .line 94
    int-to-float v2, v2

    .line 95
    int-to-float v4, v1

    .line 96
    invoke-virtual {p1, v3, v2, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_62
    iget-object v2, p3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->c:Landroid/graphics/Bitmap;

    .line 101
    if-eqz v2, :cond_76

    .line 103
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_76

    .line 109
    iget-object p3, p3, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->c:Landroid/graphics/Bitmap;

    .line 111
    const/4 v2, 0x4

    .line 112
    aget v0, v0, v2

    .line 114
    int-to-float v0, v0

    .line 115
    int-to-float v1, v1

    .line 116
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_76
    invoke-static {}, Lcom/baidu/input/panel/render/cand/params/HeterotypeCandHandler;->d()Z

    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_80

    .line 125
    const/4 p3, 0x0

    .line 126
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 129
    :cond_80
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->V(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->V0()V

    .line 4
    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 7
    sput v0, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 9
    iput v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->K:I

    .line 11
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 13
    invoke-virtual {v0}, Lcom/baidu/input/ime/TouchPoint;->c()V

    .line 16
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 18
    invoke-virtual {v0}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 21
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->Z:Lcom/baidu/input/ime/KeyAction;

    .line 23
    invoke-virtual {v0}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 26
    return-void
.end method

.method public final f0()S
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iget-short v0, v0, Lcom/baidu/input/ime/params/PanelParam;->h:S

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public final g0(SIIZ)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_36

    .line 9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 12
    move-result-object v0

    .line 13
    array-length v0, v0

    .line 14
    if-le v0, p1, :cond_36

    .line 16
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 19
    move-result-object v0

    .line 20
    aget-object p1, v0, p1

    .line 22
    if-eqz p1, :cond_36

    .line 24
    if-eqz p4, :cond_21

    .line 26
    iget p4, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->h:I

    .line 28
    if-eqz p4, :cond_1f

    .line 30
    :goto_1d
    move p4, v1

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    move p4, v2

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    iget p4, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->i:I

    .line 36
    if-eqz p4, :cond_1f

    .line 38
    goto :goto_1d

    .line 39
    :goto_26
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 41
    const/high16 v0, 0xff0000

    .line 43
    and-int/2addr v0, p1

    .line 44
    const/high16 v3, 0xf0000

    .line 46
    and-int/2addr p1, v3

    .line 47
    if-eqz p1, :cond_37

    .line 49
    const/high16 p1, 0xb0000

    .line 51
    if-eq v0, p1, :cond_37

    .line 53
    move v2, v1

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move p4, v2

    .line 56
    :cond_37
    :goto_37
    if-eqz v2, :cond_3c

    .line 58
    shr-int/lit8 p1, p2, 0x1

    .line 60
    return p1

    .line 61
    :cond_3c
    if-eqz p4, :cond_41

    .line 63
    shr-int/lit8 p1, p3, 0x1

    .line 65
    return p1

    .line 66
    :cond_41
    sget-object p1, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 68
    const/4 p2, 0x4

    .line 69
    aget-boolean p1, p1, p2

    .line 71
    if-eqz p1, :cond_4c

    .line 73
    const p1, 0x7fffffff

    .line 76
    return p1

    .line 77
    :cond_4c
    int-to-double p1, p3

    .line 78
    const-wide p3, 0x3feccccccccccccdL  # 0.9

    .line 83
    mul-double/2addr p1, p3

    .line 84
    double-to-int p1, p1

    .line 85
    return p1
.end method

.method public final h0(SIZ)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 10
    move-result-object v0

    .line 11
    array-length v0, v0

    .line 12
    if-le v0, p1, :cond_26

    .line 14
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 17
    move-result-object v0

    .line 18
    aget-object p1, v0, p1

    .line 20
    if-eqz p1, :cond_26

    .line 22
    if-eqz p3, :cond_1c

    .line 24
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->g:I

    .line 26
    if-eqz p1, :cond_26

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->f:I

    .line 31
    if-eqz p1, :cond_26

    .line 33
    :goto_20
    if-nez p3, :cond_23

    .line 35
    return p2

    .line 36
    :cond_23
    shr-int/lit8 p1, p2, 0x1

    .line 38
    return p1

    .line 39
    :cond_26
    const p1, 0x7fffffff

    .line 42
    return p1
.end method

.method public i0()S
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->j()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->m()S

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 18
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 20
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 22
    if-eqz v0, :cond_21

    .line 24
    iget-object v0, v0, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 26
    if-eqz v0, :cond_21

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    move-result v0

    .line 32
    int-to-short v0, v0

    .line 33
    return v0

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public j(SS)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 7
    const/16 v2, 0xa

    .line 9
    const/high16 v3, 0xb0000

    .line 11
    const/high16 v4, 0xf0000

    .line 13
    const v5, 0xffff

    .line 16
    const/high16 v6, 0xff0000

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v0, :cond_3b

    .line 22
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 25
    move-result-object v0

    .line 26
    array-length v0, v0

    .line 27
    if-le v0, p1, :cond_3b

    .line 29
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 32
    move-result-object v0

    .line 33
    aget-object p1, v0, p1

    .line 35
    if-eqz p1, :cond_3b

    .line 37
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 39
    and-int v0, p1, v6

    .line 41
    and-int v9, p1, v5

    .line 43
    and-int/2addr p1, v4

    .line 44
    if-eqz p1, :cond_31

    .line 46
    if-eq v0, v3, :cond_31

    .line 48
    move p1, v7

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move p1, v8

    .line 51
    :goto_32
    if-eq v9, v2, :cond_39

    .line 53
    if-ne v9, v1, :cond_37

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    move v0, v8

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    :goto_39
    move v0, v7

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    move p1, v8

    .line 61
    move v0, p1

    .line 62
    :goto_3d
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 65
    move-result-object v9

    .line 66
    if-eqz v9, :cond_64

    .line 68
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 71
    move-result-object v9

    .line 72
    array-length v9, v9

    .line 73
    if-le v9, p2, :cond_64

    .line 75
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 78
    move-result-object v9

    .line 79
    aget-object p2, v9, p2

    .line 81
    if-eqz p2, :cond_64

    .line 83
    iget p2, p2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 85
    and-int/2addr v6, p2

    .line 86
    and-int/2addr v5, p2

    .line 87
    and-int/2addr p2, v4

    .line 88
    if-eqz p2, :cond_5d

    .line 90
    if-eq v6, v3, :cond_5d

    .line 92
    move p2, v7

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move p2, v8

    .line 95
    :goto_5e
    if-eq v5, v2, :cond_62

    .line 97
    if-ne v5, v1, :cond_65

    .line 99
    :cond_62
    move v0, v7

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move p2, v8

    .line 102
    :cond_65
    :goto_65
    if-nez v0, :cond_6d

    .line 104
    if-nez p1, :cond_6c

    .line 106
    if-nez p2, :cond_6c

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v7, v8

    .line 110
    :cond_6d
    :goto_6d
    return v7
.end method

.method public final j0(Z)Landroid/graphics/Rect;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->i0()S

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/baidu/input/pub/Global;->C()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    const-class v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 12
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 18
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->V()S

    .line 25
    move-result v2

    .line 26
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 32
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->I()S

    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz p1, :cond_4a

    .line 43
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 49
    invoke-interface {p1}, Lcom/baidu/input/cocomodule/panel/IPanel;->C()Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;

    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/baidu/input/cocomodule/panel/IPanel$ISetting;->g()Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_41

    .line 59
    iget-object p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 61
    iget-object p1, p1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 63
    iget-short p1, p1, Lcom/baidu/input/ime/params/KeyMapParams;->n:S

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move p1, v4

    .line 67
    :goto_42
    new-instance v1, Landroid/graphics/Rect;

    .line 69
    add-int/2addr v2, p1

    .line 70
    sub-int/2addr v3, p1

    .line 71
    invoke-direct {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    return-object v1

    .line 75
    :cond_4a
    new-instance p1, Landroid/graphics/Rect;

    .line 77
    invoke-direct {p1, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    return-object p1
.end method

.method public k0()Lcom/baidu/input/ime/params/KeymapLoader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    iget-byte v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->a:B

    .line 7
    invoke-static {v0}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->g(I)Lcom/baidu/input/ime/params/KeymapLoader;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final l0(SLcom/baidu/input/ime/TouchPoint;)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p1, :cond_7b

    .line 5
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 7
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 9
    iget-object v2, v2, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 11
    iget-short v2, v2, Lcom/baidu/input/ime/params/PanelParam;->i:S

    .line 13
    if-lez v2, :cond_48

    .line 15
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 18
    move-result-object v2

    .line 19
    aget-object v2, v2, p1

    .line 21
    iget-boolean v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->J:Z

    .line 23
    if-eqz v2, :cond_48

    .line 25
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 27
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 30
    move-result-object v3

    .line 31
    aget-object v3, v3, p1

    .line 33
    invoke-virtual {v2, v3}, Lcom/baidu/input/ime/render/KeymapRender;->r(Lcom/baidu/input/ime/params/KeyParam;)S

    .line 36
    move-result v2

    .line 37
    iput-short v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 39
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 42
    move-result-object v2

    .line 43
    aget-object v2, v2, p1

    .line 45
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 47
    const/16 v3, 0x27

    .line 49
    if-ne v2, v3, :cond_3a

    .line 51
    invoke-static {}, Lcom/baidu/input/pub/Global;->T()Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3a

    .line 57
    iput-short v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 59
    :cond_3a
    iget-short v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 61
    iget-object v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 63
    iget-object v3, v3, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 65
    iget-object v3, v3, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 67
    iget-short v3, v3, Lcom/baidu/input/ime/params/PanelParam;->i:S

    .line 69
    if-le v2, v3, :cond_48

    .line 71
    iput-short v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 73
    :cond_48
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 75
    iget-byte v2, v2, Lcom/baidu/input/ime/InputStatMac;->g:B

    .line 77
    if-ne v2, v1, :cond_7b

    .line 79
    iget-short v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 81
    if-lez v2, :cond_69

    .line 83
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 86
    move-result-object v2

    .line 87
    iget-short v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 89
    aget-object v2, v2, v3

    .line 91
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 93
    if-eqz v2, :cond_69

    .line 95
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 98
    move-result-object v2

    .line 99
    iget-short v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->I:S

    .line 101
    aget-object v2, v2, v3

    .line 103
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 105
    goto :goto_71

    .line 106
    :cond_69
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 109
    move-result-object v2

    .line 110
    aget-object v2, v2, p1

    .line 112
    iget v2, v2, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 114
    :goto_71
    const v3, 0xf001b

    .line 117
    if-ne v2, v3, :cond_7b

    .line 119
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->L:Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;

    .line 121
    invoke-virtual {v2}, Lcom/baidu/input/ime/keymap/MultiKeyTouchDetector;->e()V

    .line 124
    :cond_7b
    sget-object v2, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 126
    aget-boolean v3, v2, v1

    .line 128
    const/4 v4, 0x2

    .line 129
    if-nez v3, :cond_9f

    .line 131
    aget-boolean v3, v2, v4

    .line 133
    if-eqz v3, :cond_87

    .line 135
    goto :goto_9f

    .line 136
    :cond_87
    sget-object v3, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 138
    iget v3, v3, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 140
    const/16 v5, 0x20

    .line 142
    if-ne v3, v5, :cond_9a

    .line 144
    const/16 v3, 0xe

    .line 146
    aget-boolean v2, v2, v3

    .line 148
    if-eqz v2, :cond_9a

    .line 150
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 152
    iput-byte v1, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 154
    goto :goto_a3

    .line 155
    :cond_9a
    sget-object v1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 157
    iput-byte v0, v1, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 159
    goto :goto_a3

    .line 160
    :cond_9f
    :goto_9f
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 162
    iput-byte v1, v0, Lcom/baidu/input/ime/KeyAction;->g:B

    .line 164
    :goto_a3
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 166
    iput-byte v4, v0, Lcom/baidu/input/ime/KeyAction;->e:B

    .line 168
    if-lez p1, :cond_ac

    .line 170
    invoke-virtual {p0, p1, v4}, Lcom/baidu/input/ime/keymap/KeyMap;->S(SB)V

    .line 173
    :cond_ac
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 175
    invoke-virtual {p2}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 178
    move-result v0

    .line 179
    iput v0, p1, Lcom/baidu/input/ime/KeyAction;->j:I

    .line 181
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 183
    invoke-virtual {p2}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 186
    move-result v0

    .line 187
    iput v0, p1, Lcom/baidu/input/ime/KeyAction;->k:I

    .line 189
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->a0:Lcom/baidu/input/ime/KeyAction;

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget v0, p2, Lcom/baidu/input/ime/TouchPoint;->e:F

    .line 196
    iput v0, p1, Lcom/baidu/input/ime/KeyAction;->l:F

    .line 198
    iget p2, p2, Lcom/baidu/input/ime/TouchPoint;->f:F

    .line 200
    iput p2, p1, Lcom/baidu/input/ime/KeyAction;->m:F

    .line 202
    return-void
.end method

.method public final m0()V
    .registers 15

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x30

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 8
    if-eqz v4, :cond_c

    .line 10
    invoke-interface {v4}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->e()V

    .line 13
    :cond_c
    invoke-virtual {p0, v3}, Lcom/baidu/input/panel/render/AbsKeyboardRenderWrapper;->r(Z)V

    .line 16
    invoke-static {}, Lcom/baidu/input/ime/params/event/PanelChangeEvent;->a()Lcom/baidu/input/ime/params/event/PanelChangeEvent;

    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Lcom/baidu/input/eventbus/InnerEventBus;->a()Lcom/baidu/input/eventbus/InnerEventBus;

    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6, v5}, Lcom/baidu/input/eventbus/InnerEventBus;->d(Lcom/baidu/input/eventbus/IEvent;)V

    .line 30
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 32
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 34
    iget-object v5, v5, Lcom/baidu/input/ime/params/KeyMapParams;->d:Lcom/baidu/input/ime/params/CandParam;

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v5, :cond_4b

    .line 40
    iget-object v5, v5, Lcom/baidu/input/ime/params/CandParam;->g:Lcom/baidu/input/ime/params/CandLoader;

    .line 42
    if-eqz v5, :cond_4b

    .line 44
    iget-object v5, v5, Lcom/baidu/input/ime/params/CandLoader;->h:Lcom/baidu/input/ime/params/CandStyleParam;

    .line 46
    if-eqz v5, :cond_4b

    .line 48
    iput-boolean v6, v5, Lcom/baidu/input/ime/params/CandStyleParam;->r:Z

    .line 50
    iget-object v8, v5, Lcom/baidu/input/ime/params/CandStyleParam;->k:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 52
    invoke-static {v8}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 55
    move-result-object v8

    .line 56
    if-eqz v8, :cond_4b

    .line 58
    iget-object v8, v8, Lcom/baidu/input/ime/params/StyleParam;->m:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 60
    if-nez v8, :cond_3f

    .line 62
    move-object v8, v7

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    invoke-virtual {v8}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    .line 67
    move-result-object v8

    .line 68
    :goto_43
    if-eqz v8, :cond_4b

    .line 70
    iget-object v8, v8, Lcom/baidu/input/ime/params/ImgParam;->e:[I

    .line 72
    if-eqz v8, :cond_4b

    .line 74
    iput-boolean v3, v5, Lcom/baidu/input/ime/params/CandStyleParam;->r:Z

    .line 76
    :cond_4b
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 79
    move-result-object v5

    .line 80
    iget-boolean v5, v5, Lcom/baidu/skinrender/SkinRenderStatus;->o:Z

    .line 82
    if-eqz v5, :cond_56

    .line 84
    invoke-static {}, Lcom/baidu/input/ime/params/StyleParam;->r()V

    .line 87
    :cond_56
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 89
    sget-object v8, Lcom/baidu/input/ime/ImePref;->a:[Z

    .line 91
    iput-boolean v6, v5, Lcom/baidu/input/ime/render/KeymapRender;->h:Z

    .line 93
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->u:Z

    .line 95
    iput-object v7, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 97
    iput-object v7, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 99
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->i:Z

    .line 101
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->j:Z

    .line 103
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->o:Z

    .line 105
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->p:Z

    .line 107
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->k:Z

    .line 109
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->n:Z

    .line 111
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 113
    invoke-virtual {v5}, Lcom/baidu/input/ime/InputStatMac;->l()Z

    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_78

    .line 119
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->w:Z

    .line 121
    :cond_78
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 123
    sget-boolean v8, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 125
    iget-object v9, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 127
    iget-object v9, v9, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 129
    iget-object v9, v9, Lcom/baidu/input/ime/params/KeyMapParams;->i:Lcom/baidu/input/ime/params/MoreParam;

    .line 131
    if-nez v9, :cond_86

    .line 133
    move-object v9, v7

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    iget-object v9, v9, Lcom/baidu/input/ime/params/MoreParam;->e:[Ljava/lang/String;

    .line 137
    :goto_88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    sget-object v5, Lcom/baidu/input/ime/params/util/SkinPathUtil;->f:[[Ljava/lang/String;

    .line 142
    xor-int/2addr v8, v3

    .line 143
    aput-object v9, v5, v8

    .line 145
    if-eqz v4, :cond_97

    .line 147
    invoke-interface {v4}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->d()Z

    .line 150
    move-result v5

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v5, v3

    .line 153
    :goto_98
    if-eqz v5, :cond_b0

    .line 155
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 157
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 159
    iget-object v5, v5, Lcom/baidu/input/ime/params/KeyMapParams;->b:Lcom/baidu/input/ime/params/PanelParam;

    .line 161
    if-eqz v5, :cond_ad

    .line 163
    iget-object v5, v5, Lcom/baidu/input/ime/params/PanelParam;->j:Landroid/graphics/Rect;

    .line 165
    if-nez v5, :cond_a7

    .line 167
    goto :goto_ad

    .line 168
    :cond_a7
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 171
    move-result v5

    .line 172
    int-to-short v5, v5

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    :goto_ad
    move v5, v6

    .line 175
    :goto_ae
    sput-short v5, Lcom/baidu/input/pub/ImeBaseGlobal;->r:S

    .line 177
    :cond_b0
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 179
    iget-object v5, v5, Lcom/baidu/input/ime/InputEventHandler;->Q:Lcom/baidu/input/panel/hint/HintHandler;

    .line 181
    iget-object v8, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 183
    iget-object v8, v8, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 185
    iget-object v8, v8, Lcom/baidu/input/ime/params/KeyMapParams;->h:Lcom/baidu/input/ime/params/HintParam;

    .line 187
    sget-boolean v9, Lcom/baidu/input/ime/ImePref;->d:Z

    .line 189
    if-eqz v8, :cond_e3

    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget-object v10, v8, Lcom/baidu/input/ime/params/HintParam;->d:Lcom/baidu/input/ime/params/HintLoader;

    .line 196
    if-nez v10, :cond_c6

    .line 198
    goto :goto_e3

    .line 199
    :cond_c6
    iget-short v11, v10, Lcom/baidu/input/ime/params/HintLoader;->k:S

    .line 201
    if-gtz v11, :cond_d1

    .line 203
    iget-object v11, v10, Lcom/baidu/input/ime/params/HintLoader;->p:[S

    .line 205
    if-eqz v11, :cond_cf

    .line 207
    goto :goto_d1

    .line 208
    :cond_cf
    move v11, v6

    .line 209
    goto :goto_d2

    .line 210
    :cond_d1
    :goto_d1
    move v11, v3

    .line 211
    :goto_d2
    and-int/2addr v9, v11

    .line 212
    iput-boolean v9, v5, Lcom/baidu/input/panel/hint/HintHandler;->c:Z

    .line 214
    iget-short v9, v10, Lcom/baidu/input/ime/params/HintLoader;->m:S

    .line 216
    invoke-virtual {v10, v9}, Lcom/baidu/input/ime/params/HintLoader;->D(I)Lcom/baidu/input/ime/params/IconParam;

    .line 219
    move-result-object v9

    .line 220
    if-eqz v9, :cond_df

    .line 222
    move v9, v3

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    move v9, v6

    .line 225
    :goto_e0
    iput-boolean v9, v5, Lcom/baidu/input/panel/hint/HintHandler;->b:Z

    .line 227
    goto :goto_e7

    .line 228
    :cond_e3
    :goto_e3
    iput-boolean v6, v5, Lcom/baidu/input/panel/hint/HintHandler;->c:Z

    .line 230
    iput-boolean v6, v5, Lcom/baidu/input/panel/hint/HintHandler;->b:Z

    .line 232
    :goto_e7
    iget-boolean v9, v5, Lcom/baidu/input/panel/hint/HintHandler;->c:Z

    .line 234
    const-class v10, Lcom/baidu/input/cocomodule/temp/ITemporary;

    .line 236
    if-nez v9, :cond_fc

    .line 238
    iget-boolean v9, v5, Lcom/baidu/input/panel/hint/HintHandler;->b:Z

    .line 240
    if-eqz v9, :cond_f2

    .line 242
    goto :goto_fc

    .line 243
    :cond_f2
    invoke-static {v10}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Lcom/baidu/input/cocomodule/temp/ITemporary;

    .line 249
    invoke-interface {v5, v7}, Lcom/baidu/input/cocomodule/temp/ITemporary;->v5(Lcom/baidu/input/ime/params/HintParam;)V

    .line 252
    goto :goto_10e

    .line 253
    :cond_fc
    :goto_fc
    iget-byte v9, v8, Lcom/baidu/input/ime/params/HintParam;->c:B

    .line 255
    if-nez v9, :cond_102

    .line 257
    move v9, v3

    .line 258
    goto :goto_103

    .line 259
    :cond_102
    move v9, v6

    .line 260
    :goto_103
    iput-boolean v9, v5, Lcom/baidu/input/panel/hint/HintHandler;->d:Z

    .line 262
    invoke-static {v10}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Lcom/baidu/input/cocomodule/temp/ITemporary;

    .line 268
    invoke-interface {v5, v8}, Lcom/baidu/input/cocomodule/temp/ITemporary;->v5(Lcom/baidu/input/ime/params/HintParam;)V

    .line 271
    :goto_10e
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 273
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 275
    iget-object v5, v5, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 277
    const/16 v8, 0x8

    .line 279
    if-nez v5, :cond_126

    .line 281
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 284
    move-result-object v0

    .line 285
    iput-byte v6, v0, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 287
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 290
    move-result-object v0

    .line 291
    iput-boolean v6, v0, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 293
    goto/16 :goto_27d

    .line 295
    :cond_126
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 297
    if-nez v5, :cond_142

    .line 299
    sget-byte v5, Lcom/baidu/input/pub/Global;->i0:B

    .line 301
    if-ne v5, v1, :cond_130

    .line 303
    move v5, v6

    .line 304
    goto :goto_131

    .line 305
    :cond_130
    move v5, v3

    .line 306
    :goto_131
    if-eqz v5, :cond_13b

    .line 308
    new-instance v5, Lcom/baidu/input/optimization/MainSubListWrapper;

    .line 310
    invoke-direct {v5}, Lcom/baidu/input/optimization/MainSubListWrapper;-><init>()V

    .line 313
    iput-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 315
    goto :goto_142

    .line 316
    :cond_13b
    new-instance v5, Lcom/baidu/input/ime/SubList;

    .line 318
    invoke-direct {v5}, Lcom/baidu/input/ime/SubList;-><init>()V

    .line 321
    iput-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 323
    :cond_142
    :goto_142
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 325
    iget-object v9, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 327
    iget-object v9, v9, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 329
    iget-object v9, v9, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 331
    instance-of v10, p0, Lcom/baidu/input/theme/diy/preview/DiyKeymap;

    .line 333
    invoke-virtual {v5, v9, v10}, Lcom/baidu/input/ime/SubList;->p(Lcom/baidu/input/ime/params/ListParam;Z)V

    .line 336
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 339
    move-result-object v5

    .line 340
    iget-object v9, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 342
    iget v10, v9, Lcom/baidu/input/ime/SubList;->w:I

    .line 344
    int-to-short v10, v10

    .line 345
    iput-short v10, v5, Lcom/baidu/skinrender/SkinRenderStatus;->m:S

    .line 347
    invoke-virtual {v9}, Lcom/baidu/input/ime/SubList;->x()V

    .line 350
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 352
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 354
    iget-object v5, v5, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 356
    iget-byte v5, v5, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 358
    if-eqz v5, :cond_195

    .line 360
    if-eq v5, v3, :cond_188

    .line 362
    if-eq v5, v1, :cond_17b

    .line 364
    if-eq v5, v0, :cond_16e

    .line 366
    goto :goto_1a1

    .line 367
    :cond_16e
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 370
    move-result-object v5

    .line 371
    iput-byte v1, v5, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 373
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 376
    move-result-object v5

    .line 377
    iput-boolean v6, v5, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 379
    goto :goto_1a1

    .line 380
    :cond_17b
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 383
    move-result-object v5

    .line 384
    iput-byte v1, v5, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 386
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 389
    move-result-object v5

    .line 390
    iput-boolean v3, v5, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 392
    goto :goto_1a1

    .line 393
    :cond_188
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 396
    move-result-object v5

    .line 397
    iput-byte v3, v5, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 399
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 402
    move-result-object v5

    .line 403
    iput-boolean v6, v5, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 405
    goto :goto_1a1

    .line 406
    :cond_195
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 409
    move-result-object v5

    .line 410
    iput-byte v3, v5, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 412
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 415
    move-result-object v5

    .line 416
    iput-boolean v3, v5, Lcom/baidu/skinrender/SkinRenderStatus;->k:Z

    .line 418
    :goto_1a1
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 420
    iget v5, v5, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 422
    int-to-byte v5, v5

    .line 423
    sget-boolean v9, Lcom/baidu/input/ime/editor/CustomSubList;->b:Z

    .line 425
    if-nez v9, :cond_1bf

    .line 427
    sput-boolean v3, Lcom/baidu/input/ime/editor/CustomSubList;->b:Z

    .line 429
    invoke-static {}, Lcom/baidu/input/manager/FilesManager;->i()Lcom/baidu/input/manager/FilesManager;

    .line 432
    move-result-object v9

    .line 433
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    const-string v9, "mylist"

    .line 438
    invoke-static {v9}, Lcom/baidu/input/manager/FilesManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    move-result-object v9

    .line 442
    invoke-static {v9, v6}, Lcom/baidu/input/common/utils/SysIO;->open(Ljava/lang/String;Z)[B

    .line 445
    move-result-object v9

    .line 446
    sput-object v9, Lcom/baidu/input/ime/editor/CustomSubList;->a:[B

    .line 448
    :cond_1bf
    sget-object v9, Lcom/baidu/input/ime/editor/CustomSubList;->a:[B

    .line 450
    if-eqz v9, :cond_1f5

    .line 452
    array-length v9, v9

    .line 453
    if-nez v9, :cond_1c7

    .line 455
    goto :goto_1f5

    .line 456
    :cond_1c7
    move v9, v6

    .line 457
    :goto_1c8
    sget-object v10, Lcom/baidu/input/ime/editor/CustomSubList;->a:[B

    .line 459
    array-length v11, v10

    .line 460
    if-ge v9, v11, :cond_1f2

    .line 462
    aget-byte v11, v10, v9

    .line 464
    add-int/lit8 v12, v9, 0x1

    .line 466
    aget-byte v12, v10, v12

    .line 468
    and-int/lit16 v12, v12, 0xff

    .line 470
    shl-int/2addr v12, v8

    .line 471
    add-int/lit8 v13, v9, 0x2

    .line 473
    aget-byte v13, v10, v13

    .line 475
    and-int/lit16 v13, v13, 0xff

    .line 477
    or-int/2addr v12, v13

    .line 478
    if-gez v12, :cond_1e0

    .line 480
    goto :goto_1f2

    .line 481
    :cond_1e0
    add-int/2addr v9, v0

    .line 482
    if-ne v5, v11, :cond_1f0

    .line 484
    :try_start_1e3
    new-instance v0, Ljava/lang/String;

    .line 486
    const-string v5, "UTF-8"

    .line 488
    invoke-direct {v0, v10, v9, v12, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1ea} :catch_1eb

    .line 491
    goto :goto_1f3

    .line 492
    :catch_1eb
    move-exception v0

    .line 493
    invoke-static {v0}, Lcom/baidu/input/devtool/log/BDLog;->k(Ljava/lang/Throwable;)V

    .line 496
    goto :goto_1f2

    .line 497
    :cond_1f0
    add-int/2addr v9, v12

    .line 498
    goto :goto_1c8

    .line 499
    :cond_1f2
    :goto_1f2
    move-object v0, v7

    .line 500
    :goto_1f3
    if-nez v0, :cond_1f7

    .line 502
    :cond_1f5
    :goto_1f5
    move-object v0, v7

    .line 503
    goto :goto_1fd

    .line 504
    :cond_1f7
    const-string v5, "\n"

    .line 506
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 509
    move-result-object v0

    .line 510
    :goto_1fd
    if-eqz v0, :cond_218

    .line 512
    array-length v5, v0

    .line 513
    if-ne v5, v3, :cond_210

    .line 515
    aget-object v5, v0, v6

    .line 517
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 520
    move-result-object v5

    .line 521
    const-string v9, ""

    .line 523
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    move-result v5

    .line 527
    if-eqz v5, :cond_213

    .line 529
    :cond_210
    array-length v5, v0

    .line 530
    if-le v5, v3, :cond_218

    .line 532
    :cond_213
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 536
    goto :goto_226

    .line 537
    :cond_218
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 539
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 541
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 543
    iget-object v5, v0, Lcom/baidu/input/ime/params/ListParam;->i:[Ljava/lang/String;

    .line 545
    iput-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 547
    iget-object v0, v0, Lcom/baidu/input/ime/params/ListParam;->j:[Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 551
    :goto_226
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 554
    move-result-object v0

    .line 555
    iget-byte v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 557
    if-ne v0, v3, :cond_279

    .line 559
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 561
    iget v0, v0, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 563
    const/16 v5, 0x10

    .line 565
    if-ne v0, v5, :cond_27d

    .line 567
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 569
    sget-object v5, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 571
    const/16 v7, 0x73

    .line 573
    aget-boolean v7, v5, v7

    .line 575
    const v9, 0x7f030015

    .line 578
    if-eqz v7, :cond_250

    .line 580
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 587
    move-result-object v0

    .line 588
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 590
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 592
    goto :goto_27d

    .line 593
    :cond_250
    const/16 v7, 0x6d

    .line 595
    aget-boolean v7, v5, v7

    .line 597
    if-eqz v7, :cond_263

    .line 599
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 606
    move-result-object v0

    .line 607
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 609
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 611
    goto :goto_27d

    .line 612
    :cond_263
    const/16 v7, 0x1d

    .line 614
    aget-boolean v5, v5, v7

    .line 616
    if-eqz v5, :cond_27d

    .line 618
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 621
    move-result-object v0

    .line 622
    const v5, 0x7f030014

    .line 625
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 628
    move-result-object v0

    .line 629
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 633
    goto :goto_27d

    .line 634
    :cond_279
    iput-object v7, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 636
    iput-object v7, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 638
    :cond_27d
    :goto_27d
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 640
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 642
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->g:Lcom/baidu/input/ime/params/InputParam;

    .line 644
    if-nez v0, :cond_28a

    .line 646
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 648
    iput-boolean v6, v0, Lcom/baidu/input/ime/KeymapMac;->k:Z

    .line 650
    goto :goto_290

    .line 651
    :cond_28a
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 653
    iput-boolean v3, v5, Lcom/baidu/input/ime/KeymapMac;->k:Z

    .line 655
    sput-object v0, Lcom/baidu/input/pub/Global;->h0:Lcom/baidu/input/ime/params/InputParam;

    .line 657
    :goto_290
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 659
    iget-boolean v0, v0, Lcom/baidu/input/ime/KeymapMac;->u:Z

    .line 661
    if-eqz v0, :cond_29f

    .line 663
    sput v6, Lcom/baidu/input/ime/keymap/KeyMap;->k0:I

    .line 665
    sput v6, Lcom/baidu/input/ime/keymap/KeyMap;->l0:I

    .line 667
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 669
    invoke-virtual {v0}, Lcom/baidu/input/ime/TouchPoint;->c()V

    .line 672
    :cond_29f
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->q:Z

    .line 674
    iput-boolean v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->r:Z

    .line 676
    iput v6, p0, Lcom/baidu/input/ime/keymap/KeyMap;->s:I

    .line 678
    new-instance v0, Landroid/graphics/Rect;

    .line 680
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 683
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->W:Landroid/graphics/Rect;

    .line 685
    new-instance v0, Landroid/graphics/Rect;

    .line 687
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 690
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 692
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 694
    const/4 v5, 0x7

    .line 695
    aput-boolean v6, v0, v5

    .line 697
    aput-boolean v6, v0, v8

    .line 699
    sget-byte v0, Lcom/baidu/input/pub/Global;->q0:B

    .line 701
    sput-byte v0, Lcom/baidu/input/ime/keymap/KeyMap;->p0:B

    .line 703
    mul-int/lit8 v0, v0, 0x6

    .line 705
    sput v0, Lcom/baidu/input/ime/keymap/KeyMap;->q0:I

    .line 707
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 709
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->b:B

    .line 711
    const/16 v5, 0x21

    .line 713
    if-ne v0, v5, :cond_2d8

    .line 715
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->g:Z

    .line 717
    if-eqz v0, :cond_2d8

    .line 719
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 721
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->l()Z

    .line 724
    move-result v0

    .line 725
    if-nez v0, :cond_2d8

    .line 727
    move v0, v3

    .line 728
    goto :goto_2d9

    .line 729
    :cond_2d8
    move v0, v6

    .line 730
    :goto_2d9
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->v:Z

    .line 732
    sget-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->n0:[Z

    .line 734
    if-eqz v5, :cond_2e3

    .line 736
    sget-boolean v5, Lcom/baidu/input/pub/Global;->E0:Z

    .line 738
    if-eqz v5, :cond_32b

    .line 740
    :cond_2e3
    sget-boolean v5, Lcom/baidu/input/pub/Global;->Y:Z

    .line 742
    if-eqz v5, :cond_32b

    .line 744
    if-eqz v0, :cond_32b

    .line 746
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 748
    iget-byte v0, v0, Lcom/baidu/input/ime/InputStatMac;->d:B

    .line 750
    if-ne v0, v3, :cond_32b

    .line 752
    sput-boolean v6, Lcom/baidu/input/pub/Global;->E0:Z

    .line 754
    const/16 v0, 0x80

    .line 756
    new-array v0, v0, [B

    .line 758
    const/16 v5, 0xa

    .line 760
    new-array v7, v5, [Z

    .line 762
    sput-object v7, Lcom/baidu/input/ime/keymap/KeyMap;->n0:[Z

    .line 764
    new-array v5, v5, [Z

    .line 766
    sput-object v5, Lcom/baidu/input/ime/keymap/KeyMap;->o0:[Z

    .line 768
    move v5, v2

    .line 769
    :goto_300
    const/16 v7, 0x3a

    .line 771
    if-ge v5, v7, :cond_32b

    .line 773
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 775
    iget-object v7, v7, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 777
    iget-object v7, v7, Lcom/baidu/input/ime/InputEventHandler;->E:Lcom/baidu/input/ime/newcore/operator/InputHandler2;

    .line 779
    int-to-byte v8, v5

    .line 780
    invoke-virtual {v7, v8, v0}, Lcom/baidu/input/ime/newcore/operator/InputHandler2;->i(B[B)I

    .line 783
    move-result v7

    .line 784
    if-lez v7, :cond_317

    .line 786
    sget-object v7, Lcom/baidu/input/ime/keymap/KeyMap;->n0:[Z

    .line 788
    add-int/lit8 v9, v5, -0x30

    .line 790
    aput-boolean v3, v7, v9

    .line 792
    :cond_317
    sget-object v7, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 794
    iget-object v7, v7, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 796
    iget-object v7, v7, Lcom/baidu/input/ime/InputEventHandler;->E:Lcom/baidu/input/ime/newcore/operator/InputHandler2;

    .line 798
    invoke-virtual {v7, v8, v0}, Lcom/baidu/input/ime/newcore/operator/InputHandler2;->j(B[B)I

    .line 801
    move-result v7

    .line 802
    if-lez v7, :cond_329

    .line 804
    sget-object v7, Lcom/baidu/input/ime/keymap/KeyMap;->o0:[Z

    .line 806
    add-int/lit8 v8, v5, -0x30

    .line 808
    aput-boolean v3, v7, v8

    .line 810
    :cond_329
    add-int/2addr v5, v3

    .line 811
    goto :goto_300

    .line 812
    :cond_32b
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 814
    iget-object v2, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 816
    iget-byte v2, v2, Lcom/baidu/input/ime/params/KeyMapParams;->a:B

    .line 818
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->g:Lcom/baidu/input/ime/params/KeymapLoader;

    .line 820
    if-eqz v0, :cond_33a

    .line 822
    invoke-virtual {v0, v2}, Lcom/baidu/input/ime/params/KeymapLoader;->j(B)B

    .line 825
    move-result v0

    .line 826
    goto :goto_33b

    .line 827
    :cond_33a
    move v0, v6

    .line 828
    :goto_33b
    if-nez v0, :cond_344

    .line 830
    const/16 v0, 0x5b

    .line 832
    if-ne v2, v0, :cond_343

    .line 834
    move v0, v1

    .line 835
    goto :goto_344

    .line 836
    :cond_343
    move v0, v3

    .line 837
    :cond_344
    :goto_344
    if-lez v0, :cond_367

    .line 839
    sget-short v2, Lcom/baidu/input/pub/ImeBaseGlobal;->r:S

    .line 841
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 844
    move-result-object v5

    .line 845
    invoke-virtual {v5}, Lcom/baidu/skinrender/SkinRenderStatus;->i()Z

    .line 848
    move-result v5

    .line 849
    if-eqz v5, :cond_35e

    .line 851
    if-ne v0, v1, :cond_35e

    .line 853
    invoke-static {}, Lcom/baidu/input/pub/Global;->s()I

    .line 856
    move-result v5

    .line 857
    sget-short v7, Lcom/baidu/input/pub/Global;->d1:S

    .line 859
    add-int/2addr v5, v7

    .line 860
    if-le v5, v2, :cond_35e

    .line 862
    move v2, v5

    .line 863
    :cond_35e
    iget-object v5, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 865
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->g:Lcom/baidu/input/ime/params/KeymapLoader;

    .line 867
    if-eqz v5, :cond_367

    .line 869
    invoke-virtual {v5, v0, v2, v6}, Lcom/baidu/input/ime/params/KeymapLoader;->r(BIZ)V

    .line 872
    :cond_367
    if-ne v0, v1, :cond_387

    .line 874
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 877
    move-result-object v0

    .line 878
    iget-byte v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->l:B

    .line 880
    if-ne v0, v1, :cond_387

    .line 882
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 884
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->g:Lcom/baidu/input/ime/params/KeymapLoader;

    .line 886
    if-eqz v0, :cond_37c

    .line 888
    invoke-virtual {v0, v3}, Lcom/baidu/input/ime/params/KeymapLoader;->k(Z)I

    .line 891
    move-result v0

    .line 892
    goto :goto_37d

    .line 893
    :cond_37c
    move v0, v6

    .line 894
    :goto_37d
    if-lez v0, :cond_387

    .line 896
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->f()Lcom/baidu/skinrender/SkinSession;

    .line 899
    move-result-object v1

    .line 900
    iget-object v1, v1, Lcom/baidu/skinrender/SkinSession;->m:Lcom/baidu/input/ime/params/theme/ThemeData;

    .line 902
    iput v0, v1, Lcom/baidu/input/ime/params/theme/ThemeData;->f:I

    .line 904
    :cond_387
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 907
    move-result-object v0

    .line 908
    iget-boolean v0, v0, Lcom/baidu/skinrender/SkinRenderStatus;->o:Z

    .line 910
    if-eqz v0, :cond_3e4

    .line 912
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->z0()Z

    .line 915
    move-result v0

    .line 916
    if-eqz v0, :cond_3ba

    .line 918
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 921
    move-result-object v0

    .line 922
    iput-boolean v6, v0, Lcom/baidu/skinrender/SkinRenderStatus;->y:Z

    .line 924
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 926
    invoke-static {v0}, Lcom/baidu/input/acgfont/FontUtils;->o(Landroid/content/ContextWrapper;)Landroid/graphics/Typeface;

    .line 929
    move-result-object v0

    .line 930
    invoke-static {v0}, Lcom/baidu/input/ime/params/StyleParam;->w(Landroid/graphics/Typeface;)V

    .line 933
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 935
    if-eqz v1, :cond_3e4

    .line 937
    iget-object v1, v1, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 939
    if-eqz v1, :cond_3e4

    .line 941
    iget-object v1, v1, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 943
    if-eqz v1, :cond_3e4

    .line 945
    iget-object v1, v1, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 947
    if-eqz v1, :cond_3e4

    .line 949
    if-eqz v0, :cond_3e4

    .line 951
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 954
    goto :goto_3e4

    .line 955
    :cond_3ba
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 958
    move-result-object v0

    .line 959
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->A0()Z

    .line 962
    move-result v1

    .line 963
    iput-boolean v1, v0, Lcom/baidu/skinrender/SkinRenderStatus;->y:Z

    .line 965
    invoke-static {}, Lcom/baidu/input/acgfont/FontUtils;->k()Landroid/graphics/Typeface;

    .line 968
    move-result-object v0

    .line 969
    invoke-static {v0}, Lcom/baidu/input/ime/params/StyleParam;->w(Landroid/graphics/Typeface;)V

    .line 972
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 974
    if-eqz v0, :cond_3e4

    .line 976
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 978
    if-eqz v0, :cond_3e4

    .line 980
    iget-object v0, v0, Lcom/baidu/input/ime/AbsSoftView;->e:Lcom/baidu/input/ime/SubList;

    .line 982
    if-eqz v0, :cond_3e4

    .line 984
    invoke-static {}, Lcom/baidu/input/acgfont/FontUtils;->k()Landroid/graphics/Typeface;

    .line 987
    move-result-object v1

    .line 988
    iget-object v0, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 990
    if-eqz v0, :cond_3e4

    .line 992
    if-eqz v1, :cond_3e4

    .line 994
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 997
    :cond_3e4
    :goto_3e4
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->c0:Lcom/baidu/input/ime/InputStatMac;

    .line 999
    iput-boolean v6, v0, Lcom/baidu/input/ime/InputStatMac;->m:Z

    .line 1001
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 1004
    move-result-object v1

    .line 1005
    iget-object v1, v1, Lcom/baidu/iptcore/ImeCoreManager;->a:Lcom/baidu/iptcore/async/AsyncCoreConfig;

    .line 1007
    iget-boolean v0, v0, Lcom/baidu/input/ime/InputStatMac;->m:Z

    .line 1009
    iput-boolean v0, v1, Lcom/baidu/iptcore/CoreConfig;->a:Z

    .line 1011
    new-instance v0, Landroid/os/Handler;

    .line 1013
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1016
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->C:Landroid/os/Handler;

    .line 1018
    new-instance v0, Landroid/os/Handler;

    .line 1020
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1023
    iput-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->F:Landroid/os/Handler;

    .line 1025
    if-eqz v4, :cond_405

    .line 1027
    invoke-interface {v4}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->f()V

    .line 1030
    :cond_405
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->q0()V

    .line 1033
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1036
    move-result-object v0

    .line 1037
    if-eqz v0, :cond_441

    .line 1039
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1042
    move-result-object v0

    .line 1043
    array-length v0, v0

    .line 1044
    if-nez v0, :cond_416

    .line 1046
    goto :goto_441

    .line 1047
    :cond_416
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1050
    move-result-object v0

    .line 1051
    array-length v1, v0

    .line 1052
    move v2, v6

    .line 1053
    :goto_41c
    if-ge v2, v1, :cond_425

    .line 1055
    aget-object v4, v0, v2

    .line 1057
    invoke-static {v4}, Lcom/baidu/input/ime/keymap/KeyMap;->N(Lcom/baidu/input/ime/params/KeyParam;)V

    .line 1060
    add-int/2addr v2, v3

    .line 1061
    goto :goto_41c

    .line 1062
    :cond_425
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1065
    move-result-object v0

    .line 1066
    if-eqz v0, :cond_441

    .line 1068
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1071
    move-result-object v0

    .line 1072
    array-length v0, v0

    .line 1073
    if-nez v0, :cond_433

    .line 1075
    goto :goto_441

    .line 1076
    :cond_433
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->a0()[Lcom/baidu/input/ime/params/KeyParam;

    .line 1079
    move-result-object v0

    .line 1080
    array-length v1, v0

    .line 1081
    :goto_438
    if-ge v6, v1, :cond_441

    .line 1083
    aget-object v2, v0, v6

    .line 1085
    invoke-static {v2}, Lcom/baidu/input/ime/keymap/KeyMap;->N(Lcom/baidu/input/ime/params/KeyParam;)V

    .line 1088
    add-int/2addr v6, v3

    .line 1089
    goto :goto_438

    .line 1090
    :cond_441
    :goto_441
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 1092
    if-eqz v0, :cond_44f

    .line 1094
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 1096
    iget-object v1, v1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 1098
    iget-short v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->n:S

    .line 1100
    iget-object v0, v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 1102
    iput-short v1, v0, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 1104
    :cond_44f
    iput-boolean v3, p0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 1106
    return-void
.end method

.method public final n0(B)V
    .registers 4

    .line 1
    iput-byte p1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->h:B

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->t:Z

    .line 6
    new-instance v1, Lcom/baidu/input/ime/render/KeymapRender;

    .line 8
    invoke-direct {v1, p0}, Lcom/baidu/input/ime/render/KeymapRender;-><init>(Lcom/baidu/input/ime/keymap/KeyMap;)V

    .line 11
    iput-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 13
    iget-boolean v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->Q:Z

    .line 15
    if-eqz v1, :cond_19

    .line 17
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->c()Lcom/baidu/input/ime/international/keymap/IKeymapSwitchWrapper;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, p1}, Lcom/baidu/input/ime/international/keymap/IKeymapSwitcher;->i(B)B

    .line 24
    move-result v1

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-static {p1}, Lcom/baidu/input/ime/keymap/KeyMap;->C0(B)B

    .line 29
    move-result v1

    .line 30
    :goto_1d
    if-nez p1, :cond_2e

    .line 32
    sget-object p1, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 34
    iget-object p1, p1, Lcom/baidu/input/ime/KeymapMac;->v:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1, v0}, Lcom/baidu/input/ime/params/util/SkinPathUtil;->f(Ljava/lang/String;Z)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Lcom/baidu/input/ime/params/KeymapLoaderWrapper;->m(BLjava/lang/String;)V

    .line 47
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/keymap/KeyMap;->q(B)V

    .line 50
    return-void
.end method

.method public final o(Lcom/baidu/input/ime/params/KeyParam;)Z
    .registers 3

    .line 1
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 3
    const v0, 0xf004e

    .line 6
    if-ne p1, v0, :cond_9

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return p1
.end method

.method public final o0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    iget-object v1, v0, Lcom/baidu/input/ime/params/KeyMapParams;->d:Lcom/baidu/input/ime/params/CandParam;

    .line 7
    if-nez v1, :cond_e

    .line 9
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v2, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v2, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 20
    :goto_13
    sget-object v2, Lcom/baidu/input/ime/keymap/KeyMap;->d0:Lcom/baidu/input/ime/KeymapMac;

    .line 22
    iget-boolean v2, v2, Lcom/baidu/input/ime/KeymapMac;->a:Z

    .line 24
    if-eqz v2, :cond_54

    .line 26
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 28
    if-nez v2, :cond_21

    .line 30
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->T()V

    .line 33
    goto :goto_54

    .line 34
    :cond_21
    iget-short v3, v0, Lcom/baidu/input/ime/params/KeyMapParams;->n:S

    .line 36
    iget-object v4, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 38
    iput-short v3, v4, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 40
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->f:Lcom/baidu/input/ime/params/SubCandParam;

    .line 42
    invoke-virtual {v2, v1, v0}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l2(Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V

    .line 45
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 47
    invoke-static {v0}, Lcom/baidu/input/common/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_54

    .line 53
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->e:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_54

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/baidu/input/ime/cand/CandHandler;

    .line 71
    iget-object v2, v1, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 73
    iget-short v3, v2, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 75
    iput-short v3, v2, Lcom/baidu/input/ime/render/CandRender;->J:S

    .line 77
    iget-object v3, v2, Lcom/baidu/input/ime/render/CandRender;->c:Lcom/baidu/input/ime/params/CandParam;

    .line 79
    iget-object v2, v2, Lcom/baidu/input/ime/render/CandRender;->d:Lcom/baidu/input/ime/params/SubCandParam;

    .line 81
    invoke-virtual {v1, v3, v2}, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->l2(Lcom/baidu/input/ime/params/CandParam;Lcom/baidu/input/ime/params/SubCandParam;)V

    .line 84
    goto :goto_3a

    .line 85
    :cond_54
    :goto_54
    return-void
.end method

.method public p0(Z)V
    .registers 9

    .line 1
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->e0:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->E:Lcom/baidu/input/ime/newcore/operator/InputHandler2;

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/newcore/operator/InputHandlerBase;->g:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 7
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->f:[Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->g:[Ljava/lang/String;

    .line 11
    if-nez v1, :cond_14

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v2, v1, [Ljava/lang/String;

    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 18
    move-object v6, v2

    .line 19
    move-object v2, v1

    .line 20
    move-object v1, v6

    .line 21
    :cond_14
    invoke-static {}, Lcom/baidu/iptcore/ImeCoreManager;->b()Lcom/baidu/iptcore/ImeCoreManager;

    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lcom/baidu/iptcore/ImeCoreManager;->b:Lcom/baidu/iptcore/async/AsyncImePad;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v4, Lcom/baidu/v3;

    .line 32
    const/4 v5, 0x6

    .line 33
    invoke-direct {v4, v3, v1, v2, v5}, Lcom/baidu/v3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    iget-object v1, v3, Lcom/baidu/iptcore/async/AsyncImePad;->n:Lcom/baidu/iptcore/async/CoreThreadEngine;

    .line 38
    invoke-virtual {v1, v4}, Lcom/baidu/iptcore/async/CoreThreadEngine;->c(Ljava/lang/Runnable;)V

    .line 41
    if-eqz p1, :cond_35

    .line 43
    const/4 p1, 0x0

    .line 44
    iput-byte p1, v0, Lcom/baidu/input/ime/newcore/state/ListState2;->e:B

    .line 46
    invoke-virtual {v0}, Lcom/baidu/input/ime/newcore/state/ListState2;->e()V

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-interface {p0, p1}, Lcom/baidu/input/ime/keymap/IKeyMap;->b([Ljava/lang/String;)V

    .line 53
    goto :goto_43

    .line 54
    :cond_35
    iget-object p1, v0, Lcom/baidu/input/ime/newcore/state/ListState2;->a:Lcom/baidu/input/support/state/IptListState;

    .line 56
    if-eqz p1, :cond_3e

    .line 58
    iget-boolean p1, p1, Lcom/baidu/input/support/state/IptListState;->b:Z

    .line 60
    if-eqz p1, :cond_3e

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    iget-object p1, v0, Lcom/baidu/input/ime/newcore/state/ListState2;->b:[Ljava/lang/String;

    .line 65
    invoke-interface {p0, p1}, Lcom/baidu/input/ime/keymap/IKeyMap;->b([Ljava/lang/String;)V

    .line 68
    :goto_43
    return-void
.end method

.method public final q(B)V
    .registers 3

    .line 1
    const/16 v0, 0x5a

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->E0(B)V

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/keymap/KeyMap;->a1(B)V

    .line 11
    return-void
.end method

.method public q0()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/keymap/KeyMap;->p0(Z)V

    .line 5
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/temp/ITemporary$IKeymapIntercept;->i()V

    .line 12
    :cond_b
    return-void
.end method

.method public r0()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/baidu/input/panel/session/PanelSession;->e:Lcom/baidu/input/ime/InputStatMac;

    .line 7
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->l()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_16

    .line 14
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 16
    iget-object v0, v0, Lcom/baidu/input/ImeService;->t:Lcom/baidu/input/ime/keymap/more/MoreCandidateWordView;

    .line 18
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/more/MoreCandidateWordView;->D:Lcom/baidu/input/ime/keymap/more/KeyMapCand;

    .line 20
    if-ne p0, v0, :cond_1f

    .line 22
    return v1

    .line 23
    :cond_16
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 25
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 27
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/SoftKeyboardView;->D:Lcom/baidu/input/ime/keymap/KeyMap;

    .line 29
    if-ne p0, v0, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public s0()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->X:Lcom/baidu/input/ime/keymap/AbsKeyMapVoice;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_17

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-static {v2}, Lcom/baidu/input/ime/KeyMapSwitcher;->f(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    move v2, v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    move v2, v0

    .line 25
    :goto_18
    sget-byte v3, Lcom/baidu/input/ime/ImePref;->U:B

    .line 27
    if-lez v3, :cond_23

    .line 29
    if-eqz v2, :cond_23

    .line 31
    iget-boolean v2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->r:Z

    .line 33
    if-nez v2, :cond_23

    .line 35
    move v1, v0

    .line 36
    :cond_23
    return v1
.end method

.method public t(S)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public u0()Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/baidu/input/ime/keymap/KeyMapDef26;

    .line 3
    return v0
.end method

.method public final v(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILcom/baidu/input/ime/params/KeyParam;)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v3, p1

    .line 5
    move-object/from16 v4, p2

    .line 7
    move-object/from16 v1, p4

    .line 9
    sget-object v2, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const-class v2, Lcom/baidu/input/aivoice/api/IAIVoice;

    .line 23
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/baidu/input/aivoice/api/IAIVoice;

    .line 29
    invoke-interface {v2}, Lcom/baidu/input/aivoice/api/IAIVoice;->Jj()Z

    .line 32
    move-result v2

    .line 33
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 35
    iget-object v5, v5, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 37
    iget v5, v5, Lcom/baidu/input/ime/params/KeyMapParams;->r:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    const-string v8, "en/"

    .line 43
    const/high16 v9, 0x41300000  # 11.0f

    .line 45
    if-lez v5, :cond_214

    .line 47
    if-nez v2, :cond_214

    .line 49
    iget v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 51
    const v5, 0xf004e

    .line 54
    if-ne v2, v5, :cond_210

    .line 56
    iget-object v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    .line 61
    move-result v5

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    .line 65
    move-result v10

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 69
    move-result-object v11

    .line 70
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    sget-object v12, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 75
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 81
    move-result v12

    .line 82
    const v13, 0x7f0603cc

    .line 85
    const v14, 0x7f0603cd

    .line 88
    if-eqz v12, :cond_69

    .line 90
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 93
    move-result v12

    .line 94
    if-eqz v12, :cond_64

    .line 96
    invoke-static {v14}, Lcom/baidu/input/pub/Global;->t(I)I

    .line 99
    move-result v12

    .line 100
    goto :goto_a1

    .line 101
    :cond_64
    invoke-static {v13}, Lcom/baidu/input/pub/Global;->t(I)I

    .line 104
    move-result v12

    .line 105
    goto :goto_a1

    .line 106
    :cond_69
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v12}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_81

    .line 116
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 119
    move-result v12

    .line 120
    if-nez v12, :cond_81

    .line 122
    const v12, 0x7f0603cb

    .line 125
    invoke-static {v12}, Lcom/baidu/input/pub/Global;->t(I)I

    .line 128
    move-result v12

    .line 129
    goto :goto_a1

    .line 130
    :cond_81
    invoke-virtual/range {p4 .. p4}, Lcom/baidu/input/ime/params/BasicKeyParam;->q()[Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 133
    move-result-object v12

    .line 134
    if-eqz v12, :cond_9d

    .line 136
    invoke-virtual/range {p4 .. p4}, Lcom/baidu/input/ime/params/BasicKeyParam;->q()[Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 139
    move-result-object v12

    .line 140
    array-length v12, v12

    .line 141
    if-lez v12, :cond_9d

    .line 143
    invoke-virtual/range {p4 .. p4}, Lcom/baidu/input/ime/params/BasicKeyParam;->q()[Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 146
    move-result-object v12

    .line 147
    aget-object v12, v12, v6

    .line 149
    invoke-static {v12}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 152
    move-result-object v12

    .line 153
    if-eqz v12, :cond_9d

    .line 155
    iget v12, v12, Lcom/baidu/input/ime/params/StyleParam;->g:I

    .line 157
    goto :goto_a1

    .line 158
    :cond_9d
    invoke-static {}, Lcom/baidu/input/ime/handwriting/HandWritingUtils;->a()I

    .line 161
    move-result v12

    .line 162
    :goto_a1
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-static {}, Lcom/baidu/input/ime/handwriting/HandWritingUtils;->c()Ljava/lang/String;

    .line 168
    move-result-object v12

    .line 169
    sget-object v15, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 171
    const-string v7, " "

    .line 173
    if-eqz v15, :cond_f2

    .line 175
    invoke-virtual {v15}, Lcom/baidu/input/ImeService;->getCurentState()Lcom/baidu/input/ime/searchservice/frame/ICandState;

    .line 178
    move-result-object v15

    .line 179
    sget-object v16, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 181
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/input/ImeService;->getGameFloatCandState()Lcom/baidu/input/ime/searchservice/frame/ICandState;

    .line 184
    move-result-object v13

    .line 185
    if-ne v15, v13, :cond_f2

    .line 187
    sget v8, Lcom/baidu/input/pub/ImeBaseGlobal;->q:F

    .line 189
    mul-float/2addr v8, v9

    .line 190
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 195
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 212
    int-to-float v9, v9

    .line 213
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 216
    move-result v13

    .line 217
    int-to-float v13, v13

    .line 218
    invoke-virtual {v3, v8, v9, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 223
    int-to-float v8, v8

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 239
    move-result v7

    .line 240
    :goto_ef
    add-float/2addr v7, v8

    .line 241
    float-to-int v7, v7

    .line 242
    goto :goto_166

    .line 243
    :cond_f2
    sget-object v13, Lcom/baidu/input/pub/Global;->H0:Ljava/lang/String;

    .line 245
    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_130

    .line 251
    sget v8, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 253
    mul-float/2addr v8, v9

    .line 254
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 259
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v8

    .line 274
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 276
    int-to-float v9, v9

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 280
    move-result v13

    .line 281
    int-to-float v13, v13

    .line 282
    invoke-virtual {v3, v8, v9, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 287
    int-to-float v8, v8

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v7

    .line 300
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 303
    move-result v7

    .line 304
    goto :goto_ef

    .line 305
    :cond_130
    sget v8, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 307
    mul-float/2addr v8, v9

    .line 308
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 313
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v8

    .line 328
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 330
    int-to-float v9, v9

    .line 331
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 334
    move-result v13

    .line 335
    int-to-float v13, v13

    .line 336
    invoke-virtual {v3, v8, v9, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 339
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 341
    int-to-float v8, v8

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object v7

    .line 354
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 357
    move-result v7

    .line 358
    goto :goto_ef

    .line 359
    :goto_166
    iget-object v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 361
    if-nez v8, :cond_1b5

    .line 363
    sget-object v8, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 365
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 368
    move-result-object v8

    .line 369
    const v9, 0x7f080adf

    .line 372
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 375
    move-result-object v9

    .line 376
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 378
    invoke-direct {v12, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 381
    iput-object v12, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 383
    invoke-static {}, Lcom/baidu/input/ime/params/util/SkinStatus;->b()Z

    .line 386
    move-result v8

    .line 387
    if-nez v8, :cond_193

    .line 389
    iget-object v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 391
    new-instance v9, Landroid/graphics/LightingColorFilter;

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    .line 396
    move-result v12

    .line 397
    invoke-direct {v9, v6, v12}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 400
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 403
    goto :goto_1b5

    .line 404
    :cond_193
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 407
    move-result v8

    .line 408
    if-eqz v8, :cond_1b5

    .line 410
    invoke-static {}, Lcom/baidu/input/pub/Global;->a0()Z

    .line 413
    move-result v8

    .line 414
    if-eqz v8, :cond_1a4

    .line 416
    invoke-static {v14}, Lcom/baidu/input/pub/Global;->t(I)I

    .line 419
    move-result v8

    .line 420
    goto :goto_1ab

    .line 421
    :cond_1a4
    const v8, 0x7f0603cc

    .line 424
    invoke-static {v8}, Lcom/baidu/input/pub/Global;->t(I)I

    .line 427
    move-result v8

    .line 428
    :goto_1ab
    iget-object v9, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 430
    new-instance v12, Landroid/graphics/LightingColorFilter;

    .line 432
    invoke-direct {v12, v6, v8}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 435
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 438
    :cond_1b5
    :goto_1b5
    iget-object v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->T:Landroid/graphics/Paint$FontMetricsInt;

    .line 440
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 443
    iget-object v9, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 445
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    .line 448
    move-result v9

    .line 449
    int-to-float v9, v9

    .line 450
    sget v12, Lcom/baidu/input/pub/ImeBaseGlobal;->o:F

    .line 452
    div-float/2addr v9, v12

    .line 453
    sget v12, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 455
    mul-float/2addr v9, v12

    .line 456
    float-to-int v9, v9

    .line 457
    iget-object v12, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 459
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    .line 462
    move-result v12

    .line 463
    int-to-float v12, v12

    .line 464
    sget v13, Lcom/baidu/input/pub/ImeBaseGlobal;->o:F

    .line 466
    div-float/2addr v12, v13

    .line 467
    sget v13, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 469
    mul-float/2addr v12, v13

    .line 470
    float-to-int v12, v12

    .line 471
    int-to-float v7, v7

    .line 472
    const/high16 v14, 0x40400000  # 3.0f

    .line 474
    mul-float/2addr v13, v14

    .line 475
    add-float/2addr v13, v7

    .line 476
    float-to-int v7, v13

    .line 477
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 480
    move-result v13

    .line 481
    iget v14, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 483
    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 485
    add-int/2addr v14, v8

    .line 486
    sub-int/2addr v14, v12

    .line 487
    div-int/lit8 v14, v14, 0x2

    .line 489
    add-int/2addr v14, v13

    .line 490
    add-int/2addr v9, v7

    .line 491
    iget-object v8, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 493
    add-int/2addr v12, v14

    .line 494
    invoke-virtual {v8, v7, v14, v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    iget-object v7, v0, Lcom/baidu/input/ime/keymap/KeyMap;->S:Landroid/graphics/drawable/BitmapDrawable;

    .line 499
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 502
    iget-object v7, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 504
    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 507
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 509
    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 511
    iget-object v7, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 513
    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 522
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 525
    :cond_20c
    const/16 v16, 0x1

    .line 527
    goto/16 :goto_2d8

    .line 529
    :cond_210
    move/from16 v16, v7

    .line 531
    goto/16 :goto_2d8

    .line 533
    :cond_214
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v5}, Lcom/baidu/skinrender/SkinRenderStatus;->g()Z

    .line 540
    move-result v5

    .line 541
    if-eqz v5, :cond_20c

    .line 543
    if-nez v2, :cond_20c

    .line 545
    iget v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 547
    const v5, 0xf0035

    .line 550
    if-ne v2, v5, :cond_20c

    .line 552
    iget-object v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->F:Landroid/graphics/Rect;

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    .line 557
    move-result v5

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    .line 561
    move-result v7

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 565
    move-result-object v10

    .line 566
    const/4 v11, 0x1

    .line 567
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 570
    invoke-static {}, Lcom/baidu/input/ime/handwriting/HandWritingUtils;->a()I

    .line 573
    move-result v11

    .line 574
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    sget v11, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 579
    mul-float/2addr v11, v9

    .line 580
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 583
    invoke-static {}, Lcom/baidu/input/ime/handwriting/HandWritingUtils;->c()Ljava/lang/String;

    .line 586
    move-result-object v9

    .line 587
    sget v11, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 589
    const/high16 v12, 0x41200000  # 10.0f

    .line 591
    mul-float/2addr v11, v12

    .line 592
    float-to-int v11, v11

    .line 593
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 596
    move-result v12

    .line 597
    float-to-int v12, v12

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 601
    move-result-object v13

    .line 602
    iget v14, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 604
    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 606
    sub-float/2addr v14, v13

    .line 607
    float-to-double v13, v14

    .line 608
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 611
    move-result-wide v13

    .line 612
    const-wide/high16 v15, 0x4000000000000000L  # 2.0

    .line 614
    add-double/2addr v13, v15

    .line 615
    sget-byte v15, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 617
    const/16 v16, 0x1

    .line 619
    shl-int/lit8 v15, v15, 0x1

    .line 621
    move/from16 v17, v7

    .line 623
    int-to-double v6, v15

    .line 624
    add-double/2addr v13, v6

    .line 625
    double-to-int v6, v13

    .line 626
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 629
    move-result-object v7

    .line 630
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    iget-object v7, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 635
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 637
    add-int/2addr v13, v11

    .line 638
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 640
    add-int/2addr v2, v11

    .line 641
    add-int/2addr v12, v13

    .line 642
    add-int/2addr v6, v2

    .line 643
    invoke-virtual {v7, v13, v2, v12, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 646
    sget-object v2, Lcom/baidu/input/pub/Global;->H0:Ljava/lang/String;

    .line 648
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_2b7

    .line 654
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 656
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    .line 661
    const-string v6, "  "

    .line 663
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    move-result-object v2

    .line 673
    iget-object v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 675
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    .line 678
    move-result v6

    .line 679
    int-to-float v6, v6

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    .line 683
    move-result v7

    .line 684
    add-float/2addr v7, v6

    .line 685
    iget-object v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 687
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 690
    move-result v6

    .line 691
    int-to-float v6, v6

    .line 692
    invoke-virtual {v3, v2, v7, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 695
    goto :goto_2cd

    .line 696
    :cond_2b7
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 698
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 701
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 703
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 706
    move-result v2

    .line 707
    int-to-float v2, v2

    .line 708
    iget-object v6, v0, Lcom/baidu/input/ime/keymap/KeyMap;->z:Landroid/graphics/Rect;

    .line 710
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 713
    move-result v6

    .line 714
    int-to-float v6, v6

    .line 715
    invoke-virtual {v3, v9, v2, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 718
    :goto_2cd
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 721
    move/from16 v2, v17

    .line 723
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 726
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 729
    :goto_2d8
    sget-object v2, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 731
    iget-object v2, v2, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 733
    iget-object v5, v0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 735
    invoke-virtual {v5}, Lcom/baidu/input/ime/render/KeymapRender;->t()Z

    .line 738
    move-result v5

    .line 739
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    invoke-static {}, Lcom/baidu/input/ime/international/keymap/KeymapSwitcherFactory;->f()Z

    .line 745
    move-result v2

    .line 746
    if-eqz v2, :cond_2ed

    .line 748
    goto/16 :goto_35f

    .line 750
    :cond_2ed
    iget v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 752
    const v6, 0xf0026

    .line 755
    if-ne v2, v6, :cond_2f7

    .line 757
    move/from16 v11, v16

    .line 759
    goto :goto_2f8

    .line 760
    :cond_2f7
    const/4 v11, 0x0

    .line 761
    :goto_2f8
    if-nez v5, :cond_311

    .line 763
    iget v2, v1, Lcom/baidu/input/ime/params/BasicKeyParam;->C:I

    .line 765
    if-nez v2, :cond_311

    .line 767
    invoke-virtual/range {p4 .. p4}, Lcom/baidu/input/ime/params/KeyParam;->J()S

    .line 770
    move-result v2

    .line 771
    const/16 v5, 0x22

    .line 773
    if-eq v2, v5, :cond_311

    .line 775
    invoke-virtual/range {p4 .. p4}, Lcom/baidu/input/ime/params/KeyParam;->J()S

    .line 778
    move-result v2

    .line 779
    const/16 v5, 0x25

    .line 781
    if-eq v2, v5, :cond_311

    .line 783
    move/from16 v6, v16

    .line 785
    goto :goto_312

    .line 786
    :cond_311
    const/4 v6, 0x0

    .line 787
    :goto_312
    sget-boolean v2, Lcom/baidu/input/ime/ImePref;->c0:Z

    .line 789
    if-eqz v2, :cond_35f

    .line 791
    if-eqz v11, :cond_35f

    .line 793
    if-eqz v6, :cond_35f

    .line 795
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 797
    iget-object v5, v2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 799
    if-eqz v5, :cond_335

    .line 801
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->i:Ljava/lang/Object;

    .line 803
    if-eqz v2, :cond_335

    .line 805
    invoke-interface {v2}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->e()Z

    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_335

    .line 811
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 813
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->i:Ljava/lang/Object;

    .line 815
    invoke-interface {v2, v1}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->a(Lcom/baidu/input/ime/params/IniParam;)Z

    .line 818
    move-result v2

    .line 819
    if-eqz v2, :cond_335

    .line 821
    goto :goto_35f

    .line 822
    :cond_335
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->d:Lcom/baidu/input/ime/cand/CandHandler;

    .line 824
    if-eqz v2, :cond_35f

    .line 826
    iget-object v2, v2, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->z0:Lcom/baidu/input/ime/render/CandRender;

    .line 828
    iget v5, v2, Lcom/baidu/input/ime/render/CandRender;->h:I

    .line 830
    if-eqz v5, :cond_35f

    .line 832
    iget v2, v2, Lcom/baidu/input/ime/render/CandRender;->k:I

    .line 834
    if-ne v2, v5, :cond_34a

    .line 836
    const/16 v2, 0xa6

    .line 838
    invoke-static {v5, v2}, Lcom/baidu/util/ColorPicker;->applyAlphaToColor(II)I

    .line 841
    move-result v2

    .line 842
    move v5, v2

    .line 843
    :cond_34a
    iget-object v2, v0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 845
    iget-object v2, v2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 847
    iget-byte v7, v2, Lcom/baidu/input/ime/params/KeyMapParams;->a:B

    .line 849
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 852
    move-result-object v2

    .line 853
    const/4 v8, 0x0

    .line 854
    const/4 v6, 0x1

    .line 855
    move-object/from16 v1, p4

    .line 857
    move-object/from16 v3, p1

    .line 859
    move-object/from16 v4, p2

    .line 861
    invoke-virtual/range {v1 .. v8}, Lcom/baidu/input/ime/params/KeyParam;->A(Lcom/baidu/input/ime/params/ThemeLoader;Landroid/graphics/Canvas;Landroid/graphics/Paint;IZBZ)V

    .line 864
    :cond_35f
    :goto_35f
    return-void
.end method

.method public final v0(II)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-object v1, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 7
    iget-object v1, v1, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 9
    iget-object v1, v1, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 11
    if-eqz v1, :cond_18

    .line 13
    iget-byte v1, v1, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ge v1, v2, :cond_18

    .line 18
    iget-object v0, v0, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final w()Lcom/baidu/input/ime/params/KeyMapParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 5
    return-object v0
.end method

.method public w0(II)Z
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public x(Landroid/graphics/Canvas;I)V
    .registers 3

    .line 1
    return-void
.end method

.method public final x0(SB)Z
    .registers 5

    .line 1
    if-lez p1, :cond_34

    .line 3
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_34

    .line 9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 12
    move-result-object v0

    .line 13
    array-length v0, v0

    .line 14
    if-ge p1, v0, :cond_34

    .line 16
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 19
    move-result-object v0

    .line 20
    aget-object p1, v0, p1

    .line 22
    if-eqz p1, :cond_34

    .line 24
    iget v0, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 26
    const/high16 v1, 0xf0000

    .line 28
    or-int/2addr p2, v1

    .line 29
    if-ne v0, p2, :cond_34

    .line 31
    iget-object p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->G:Landroid/graphics/Rect;

    .line 33
    sget-object p2, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 35
    invoke-virtual {p2}, Lcom/baidu/input/ime/TouchPoint;->a()I

    .line 38
    move-result p2

    .line 39
    sget-object v0, Lcom/baidu/input/ime/keymap/KeyMap;->m0:Lcom/baidu/input/ime/TouchPoint;

    .line 41
    invoke-virtual {v0}, Lcom/baidu/input/ime/TouchPoint;->b()I

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_34

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_34
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method public y(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 3
    if-eqz p2, :cond_49

    .line 5
    instance-of v0, p2, Lcom/baidu/input/optimization/IMainSub;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast p2, Lcom/baidu/input/optimization/IMainSub;

    .line 11
    invoke-interface {p2}, Lcom/baidu/input/optimization/IMainSub;->computeScroll()V

    .line 14
    :cond_d
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 16
    iget-object v0, p2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 18
    if-eqz v0, :cond_2c

    .line 20
    iget-object p2, p2, Lcom/baidu/input/ime/render/KeymapRender;->i:Ljava/lang/Object;

    .line 22
    if-eqz p2, :cond_2c

    .line 24
    invoke-interface {p2}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->e()Z

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2c

    .line 30
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 32
    iget-object v0, p2, Lcom/baidu/input/ime/render/KeymapRender;->i:Ljava/lang/Object;

    .line 34
    iget-object p2, p2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 36
    iget-object p2, p2, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 38
    invoke-interface {v0, p2}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->a(Lcom/baidu/input/ime/params/IniParam;)Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2c

    .line 44
    return-void

    .line 45
    :cond_2c
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 47
    iget-object v0, p2, Lcom/baidu/input/ime/render/KeymapRender;->j:Lcom/baidu/input/ime/params/KeyMapParams;

    .line 49
    iget-object v0, v0, Lcom/baidu/input/ime/params/KeyMapParams;->c:Lcom/baidu/input/ime/params/ListParam;

    .line 51
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 53
    const/4 v1, 0x2

    .line 54
    if-ge v0, v1, :cond_49

    .line 56
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 58
    iget-object v1, p2, Lcom/baidu/input/ime/render/KeymapRender;->i:Ljava/lang/Object;

    .line 60
    iput-object v1, v0, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 62
    invoke-virtual {p2}, Lcom/baidu/input/ime/render/KeymapRender;->y()Z

    .line 65
    move-result p2

    .line 66
    invoke-virtual {v0, p1, p3, p2}, Lcom/baidu/input/ime/SubList;->w(Landroid/graphics/Canvas;IZ)V

    .line 69
    iget-object p2, p0, Lcom/baidu/input/ime/keymap/KeyMap;->c:Lcom/baidu/input/ime/SubList;

    .line 71
    const/4 p3, 0x0

    .line 72
    iput-object p3, p2, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 74
    :cond_49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    return-void
.end method

.method public final y0(S)Z
    .registers 3

    .line 1
    if-lez p1, :cond_29

    .line 3
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->f0()S

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_29

    .line 9
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_29

    .line 15
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 18
    move-result-object v0

    .line 19
    array-length v0, v0

    .line 20
    if-ge p1, v0, :cond_29

    .line 22
    invoke-virtual {p0}, Lcom/baidu/input/ime/keymap/KeyMap;->Z()[Lcom/baidu/input/ime/params/KeyParam;

    .line 25
    move-result-object v0

    .line 26
    aget-object p1, v0, p1

    .line 28
    iget p1, p1, Lcom/baidu/input/ime/params/BasicKeyParam;->e:I

    .line 30
    const v0, 0xf000a

    .line 33
    if-eq p1, v0, :cond_27

    .line 35
    const v0, 0xf000b

    .line 38
    if-ne p1, v0, :cond_29

    .line 40
    :cond_27
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public final z()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/keymap/KeyMap;->V:Lcom/baidu/input/ime/render/KeymapRender;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/ime/render/KeymapRender;->u()V

    .line 6
    return-void
.end method

.method public z0()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/ime/font/ImeFontComponent;->a:Lcom/baidu/input/ime/font/ImeFontComponent$Companion;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/ime/font/ImeFontComponent$Companion;->a()Lcom/baidu/input/font/api/IFontService;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/baidu/input/font/api/IFontService;->M()Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method
