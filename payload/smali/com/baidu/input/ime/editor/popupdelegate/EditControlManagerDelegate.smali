.class public final Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;
.super Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;,
        Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$FontText;
    }
.end annotation


# static fields
.field public static final synthetic J0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic K0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static final synthetic L0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public A0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public B0:Landroid/graphics/Rect;

.field public C0:Landroid/graphics/Rect;

.field public D0:I

.field public E0:[I

.field public F0:Landroid/util/SparseArray;

.field public G0:Landroid/graphics/Bitmap;

.field public H0:Landroid/graphics/Bitmap;

.field public I0:Landroid/graphics/Bitmap;

.field public T:I

.field public U:Z

.field public V:Landroid/view/inputmethod/ExtractedText;

.field public W:I

.field public X:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public Y:Landroid/graphics/LightingColorFilter;

.field public Z:Landroid/graphics/LightingColorFilter;

.field public a0:I

.field public b0:I

.field public c0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public k0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public r0:Lcom/baidu/input/ime/params/ImginiLoader;

.field public s0:F

.field public t0:Landroid/graphics/Rect;

.field public u0:Landroid/graphics/Rect;

.field public v0:Landroid/graphics/Rect;

.field public w0:Landroid/graphics/Rect;

.field public x0:Landroid/graphics/Rect;

.field public y0:Landroid/graphics/Rect;

.field public z0:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    .line 3
    const-string v0, "EditControlManagerDelegate.java"

    .line 5
    const-class v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;

    .line 7
    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    const-string v4, "java.lang.String"

    .line 12
    const-string v5, "fileName"

    .line 14
    const-string v1, "1"

    .line 16
    const-string v2, "open"

    .line 18
    const-string v3, "android.content.res.AssetManager"

    .line 20
    const-string v6, "java.io.IOException"

    .line 22
    const-string v7, "java.io.InputStream"

    .line 24
    move-object v0, v8

    .line 25
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    .line 28
    move-result-object v0

    .line 29
    const-string v9, "method-call"

    .line 31
    const/16 v1, 0x1aa

    .line 33
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->g(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->J0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 39
    const-string v4, "java.lang.String"

    .line 41
    const-string v5, "fileName"

    .line 43
    const-string v1, "1"

    .line 45
    const-string v2, "open"

    .line 47
    const-string v3, "android.content.res.AssetManager"

    .line 49
    const-string v6, "java.io.IOException"

    .line 51
    const-string v7, "java.io.InputStream"

    .line 53
    move-object v0, v8

    .line 54
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x1ac

    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->g(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->K0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 66
    const-string v4, "java.lang.String"

    .line 68
    const-string v5, "fileName"

    .line 70
    const-string v1, "1"

    .line 72
    const-string v2, "open"

    .line 74
    const-string v3, "android.content.res.AssetManager"

    .line 76
    const-string v6, "java.io.IOException"

    .line 78
    const-string v7, "java.io.InputStream"

    .line 80
    move-object v0, v8

    .line 81
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x1ae

    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->g(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->L0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 93
    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final D()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/baidu/input/pub/Global;->U()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final F()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 18
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 20
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0:I

    .line 26
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->M:I

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0:I

    .line 34
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 36
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, v2, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 42
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Y:Landroid/graphics/LightingColorFilter;

    .line 44
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 46
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->M:I

    .line 48
    invoke-direct {v0, v2, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 51
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z:Landroid/graphics/LightingColorFilter;

    .line 53
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-class v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 67
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 73
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->D()S

    .line 80
    move-result v1

    .line 81
    invoke-static {v0}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/baidu/input/cocomodule/panel/IPanel;

    .line 87
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->Y()S

    .line 94
    move-result v0

    .line 95
    iget-object v2, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->c:Landroid/graphics/Rect;

    .line 97
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 99
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 101
    return-void
.end method

.method public final G()Z
    .registers 5

    .line 1
    sget-byte v0, Lcom/baidu/input/panel/render/cand/AbsCandHandler;->i1:B

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_10

    .line 6
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->b:Lcom/baidu/input/ImeService;

    .line 8
    iget-object v0, v0, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, 0xf002

    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 17
    :cond_10
    invoke-static {}, Lcom/baidu/input/common/rx/RxUtils;->g()Ljava/util/concurrent/ExecutorService;

    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lcom/baidu/ci;

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, p0, v3}, Lcom/baidu/ci;-><init>(Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;I)V

    .line 27
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return v1
.end method

.method public final I()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 4
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 6
    if-eqz v1, :cond_c

    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 11
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 13
    :cond_c
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 15
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->c0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 17
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->r0:Lcom/baidu/input/ime/params/ImginiLoader;

    .line 19
    if-eqz v1, :cond_19

    .line 21
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/ImginiLoader;->D()V

    .line 24
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->r0:Lcom/baidu/input/ime/params/ImginiLoader;

    .line 26
    :cond_19
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->G0:Landroid/graphics/Bitmap;

    .line 28
    if-eqz v1, :cond_22

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->G0:Landroid/graphics/Bitmap;

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->H0:Landroid/graphics/Bitmap;

    .line 37
    if-eqz v1, :cond_2b

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->H0:Landroid/graphics/Bitmap;

    .line 44
    :cond_2b
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->I0:Landroid/graphics/Bitmap;

    .line 46
    if-eqz v1, :cond_34

    .line 48
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->I0:Landroid/graphics/Bitmap;

    .line 53
    :cond_34
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 55
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->u0:Landroid/graphics/Rect;

    .line 57
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 59
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Y:Landroid/graphics/LightingColorFilter;

    .line 61
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z:Landroid/graphics/LightingColorFilter;

    .line 63
    return-void
.end method

.method public final K(II)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z(III)V

    .line 5
    return-void
.end method

.method public final M(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z(III)V

    .line 5
    return-void
.end method

.method public final O(II)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z(III)V

    .line 5
    return-void
.end method

.method public final T(I)Z
    .registers 8

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_67

    .line 6
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->isFakeInputConnection()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_67

    .line 13
    :cond_c
    const/4 v0, 0x6

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p1, v0, :cond_16

    .line 17
    const/4 v0, 0x4

    .line 18
    if-ne p1, v0, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    move p1, v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    move p1, v2

    .line 24
    :goto_17
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 26
    invoke-virtual {v0}, Lcom/baidu/input/ImeService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 29
    move-result-object v0

    .line 30
    iget-object v3, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->p:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 32
    iget-object v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->a:Lcom/baidu/input/ime/InputEventHandler;

    .line 34
    if-nez p1, :cond_44

    .line 36
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_44

    .line 46
    iget-boolean p1, v4, Lcom/baidu/input/ime/InputEventHandler;->k:Z

    .line 48
    if-eqz p1, :cond_40

    .line 50
    iget-boolean p1, v4, Lcom/baidu/input/ime/InputEventHandler;->l:Z

    .line 52
    if-eqz p1, :cond_40

    .line 54
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_40

    .line 64
    return v1

    .line 65
    :cond_40
    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 68
    return v2

    .line 69
    :cond_44
    if-eqz p1, :cond_67

    .line 71
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_67

    .line 81
    iget-boolean p1, v4, Lcom/baidu/input/ime/InputEventHandler;->k:Z

    .line 83
    if-eqz p1, :cond_63

    .line 85
    iget-boolean p1, v4, Lcom/baidu/input/ime/InputEventHandler;->m:Z

    .line 87
    if-eqz p1, :cond_63

    .line 89
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_63

    .line 99
    return v1

    .line 100
    :cond_63
    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 103
    return v2

    .line 104
    :cond_67
    :goto_67
    return v1
.end method

.method public final U(II)I
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 4
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 6
    if-eqz v0, :cond_2a

    .line 8
    array-length v0, v0

    .line 9
    if-lez v0, :cond_2a

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_b
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 14
    array-length v1, v1

    .line 15
    if-ge v0, v1, :cond_2a

    .line 17
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_27

    .line 23
    iget-object v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 25
    if-eqz v1, :cond_27

    .line 27
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_27

    .line 33
    iget p1, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 35
    if-eq p1, v0, :cond_2a

    .line 37
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_b

    .line 43
    :cond_2a
    :goto_2a
    iget p1, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 45
    return p1
.end method

.method public final W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;
    .registers 4

    .line 1
    if-ltz p1, :cond_16

    .line 3
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 5
    if-eqz v0, :cond_16

    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_16

    .line 10
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 12
    if-eqz v1, :cond_16

    .line 14
    aget p1, v0, p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    return-object p1
.end method

.method public final Z(III)V
    .registers 15

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->k:I

    .line 3
    sub-int/2addr p3, v0

    .line 4
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->c:Landroid/graphics/Rect;

    .line 6
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->p:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x6

    .line 10
    if-eqz p1, :cond_20b

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq p1, v4, :cond_1f

    .line 15
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_23d

    .line 21
    invoke-virtual {p0, p2, p3}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0(II)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_23d

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U(II)I

    .line 30
    goto/16 :goto_23d

    .line 32
    :cond_1f
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_207

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0(II)Z

    .line 44
    move-result p1

    .line 45
    const/4 v0, -0x1

    .line 46
    if-nez p1, :cond_204

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U(II)I

    .line 51
    iget p1, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 53
    if-ltz p1, :cond_201

    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_201

    .line 61
    sget p2, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 63
    invoke-static {p2}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p2, v4}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->e(I)V

    .line 70
    iget-object p2, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->a:Lcom/baidu/input/ime/InputEventHandler;

    .line 72
    iget p1, p1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 74
    const/16 p3, 0x34

    .line 76
    const/16 v5, 0x32

    .line 78
    const/16 v6, 0x2e

    .line 80
    const/16 v7, 0xc

    .line 82
    const/16 v8, 0xe

    .line 84
    const-class v9, Lcom/baidu/stats/impl/TraceStats;

    .line 86
    const/4 v10, 0x0

    .line 87
    packed-switch p1, :pswitch_data_242

    .line 90
    goto/16 :goto_1ea

    .line 92
    :pswitch_5b  #0xe
    sget-object p3, Lcom/baidu/input/pub/Global;->T:[I

    .line 94
    const-class p3, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 96
    invoke-static {p3}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 102
    invoke-interface {p3}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->h3()V

    .line 105
    const/16 p3, 0x4c

    .line 107
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 110
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 113
    sget-object p2, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 115
    const/16 p3, 0x94

    .line 117
    invoke-static {p2, p3}, Lcom/baidu/nl;->z(Lcom/baidu/input/di/ImeComponent;I)V

    .line 120
    goto/16 :goto_1ea

    .line 122
    :pswitch_79  #0xd
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 124
    invoke-virtual {p3, v8}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 127
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 133
    const/4 v2, 0x7

    .line 134
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 137
    const/16 p3, 0x2f

    .line 139
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 142
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 145
    goto/16 :goto_1ea

    .line 147
    :pswitch_92  #0xc
    sget-object p3, Lcom/baidu/input/ime/front/utils/ClipManager;->a:Ljava/lang/String;

    .line 149
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 151
    const/16 v2, 0x12

    .line 153
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 156
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 159
    move-result-object p3

    .line 160
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 162
    const/16 v2, 0x9

    .line 164
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 167
    const/16 p3, 0x2c

    .line 169
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 172
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 175
    goto/16 :goto_1ea

    .line 177
    :pswitch_b0  #0xb
    sget-object p3, Lcom/baidu/input/ime/front/utils/ClipManager;->a:Ljava/lang/String;

    .line 179
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 181
    const/16 v2, 0x10

    .line 183
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 186
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 189
    move-result-object p3

    .line 190
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 192
    const/16 v2, 0x8

    .line 194
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 197
    const/16 p3, 0x2d

    .line 199
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 202
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 205
    goto/16 :goto_1ea

    .line 207
    :pswitch_ce  #0xa
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 209
    invoke-virtual {p3, v7}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 212
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 215
    move-result-object p3

    .line 216
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 218
    invoke-virtual {p3, v4, v4, v3}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 221
    const/16 p3, 0x3d

    .line 223
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 226
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 229
    goto/16 :goto_1ea

    .line 231
    :pswitch_e6  #0x9
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 233
    const/16 v2, 0x14

    .line 235
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 238
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 241
    move-result-object p3

    .line 242
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 244
    const/16 v2, 0xa

    .line 246
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 249
    invoke-virtual {p2, v6, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 252
    sget-object p2, Lcom/baidu/input/pub/Global;->V:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 254
    invoke-virtual {p2}, Lcom/baidu/input/ime/editor/KeymapPopupView;->b()V

    .line 257
    goto/16 :goto_1ea

    .line 259
    :pswitch_102  #0x8
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 261
    invoke-virtual {p3, v5}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 264
    const/16 p3, 0x2a

    .line 266
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 269
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 272
    goto/16 :goto_1ea

    .line 274
    :pswitch_111  #0x7
    sget-object v2, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 276
    invoke-virtual {v2, p3}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 279
    const/16 p3, 0x2b

    .line 281
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 284
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 287
    goto/16 :goto_1ea

    .line 289
    :pswitch_120  #0x6
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 291
    const/16 v2, 0x18

    .line 293
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 296
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 299
    move-result-object p3

    .line 300
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 302
    invoke-virtual {p3, v4, v4, v7}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 308
    move-result p3

    .line 309
    if-eqz p3, :cond_138

    .line 311
    goto/16 :goto_1ea

    .line 313
    :cond_138
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 315
    invoke-virtual {p2, v5, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 318
    goto/16 :goto_1ea

    .line 320
    :pswitch_13f  #0x5
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 322
    const/16 v2, 0x16

    .line 324
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 327
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 330
    move-result-object p3

    .line 331
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 333
    const/16 v2, 0xb

    .line 335
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 341
    move-result p3

    .line 342
    if-eqz p3, :cond_159

    .line 344
    goto/16 :goto_1ea

    .line 346
    :cond_159
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 348
    const/16 p3, 0x31

    .line 350
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 353
    goto/16 :goto_1ea

    .line 355
    :pswitch_162  #0x4
    sget-object v2, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 357
    const/16 v3, 0x1c

    .line 359
    invoke-virtual {v2, v3}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 362
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 365
    move-result-object v2

    .line 366
    check-cast v2, Lcom/baidu/stats/impl/TraceStats;

    .line 368
    invoke-virtual {v2, v4, v4, v8}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_17a

    .line 377
    goto/16 :goto_1ea

    .line 379
    :cond_17a
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 381
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 384
    goto :goto_1ea

    .line 385
    :pswitch_180  #0x3
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 387
    const/16 v2, 0x1a

    .line 389
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 392
    invoke-static {v9}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 395
    move-result-object p3

    .line 396
    check-cast p3, Lcom/baidu/stats/impl/TraceStats;

    .line 398
    const/16 v2, 0xd

    .line 400
    invoke-virtual {p3, v4, v4, v2}, Lcom/baidu/stats/impl/TraceStats;->d(BBB)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 406
    move-result p3

    .line 407
    if-eqz p3, :cond_199

    .line 409
    goto :goto_1ea

    .line 410
    :cond_199
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 412
    const/16 p3, 0x33

    .line 414
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 417
    goto :goto_1ea

    .line 418
    :pswitch_1a1  #0x2
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 420
    invoke-virtual {p3, v6}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 423
    sget-object p3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 425
    invoke-virtual {p3}, Lcom/baidu/input/ImeService;->getSceneManager()Lcom/baidu/input/ime/scene/ISceneManager;

    .line 428
    move-result-object p3

    .line 429
    invoke-interface {p3, v2}, Lcom/baidu/input/ime/scene/ISceneManager;->l(I)Z

    .line 432
    move-result p3

    .line 433
    const/16 v2, 0x24

    .line 435
    if-eqz p3, :cond_1d4

    .line 437
    sget-object p3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 439
    iget-object p3, p3, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 441
    iget-object p3, p3, Lcom/baidu/input/ime/InputEventHandler;->I:Lcom/baidu/input/ime/smartcloudbar/handler/SmartCloudBarHandler;

    .line 443
    sget-object v3, Lcom/baidu/input/aicard/SmartCloudCardType;->d:Lcom/baidu/input/aicard/SmartCloudCardType;

    .line 445
    invoke-virtual {p3, v3}, Lcom/baidu/input/ime/smartcloudbar/handler/SmartCloudBarHandler;->d(Lcom/baidu/input/aicard/SmartCloudCardType;)Z

    .line 448
    move-result p3

    .line 449
    if-nez p3, :cond_1d0

    .line 451
    sget-object p3, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 453
    iget-object p3, p3, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 455
    iget-object p3, p3, Lcom/baidu/input/ime/InputEventHandler;->I:Lcom/baidu/input/ime/smartcloudbar/handler/SmartCloudBarHandler;

    .line 457
    sget-object v3, Lcom/baidu/input/aicard/SmartCloudCardType;->f:Lcom/baidu/input/aicard/SmartCloudCardType;

    .line 459
    invoke-virtual {p3, v3}, Lcom/baidu/input/ime/smartcloudbar/handler/SmartCloudBarHandler;->d(Lcom/baidu/input/aicard/SmartCloudCardType;)Z

    .line 462
    move-result p3

    .line 463
    if-eqz p3, :cond_1d4

    .line 465
    :cond_1d0
    invoke-virtual {p2, v2, v4}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 468
    goto :goto_1d7

    .line 469
    :cond_1d4
    invoke-virtual {p2, v2, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 472
    :goto_1d7
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 475
    goto :goto_1ea

    .line 476
    :pswitch_1db  #0x1
    sget-object p3, Lcom/baidu/input/pub/Global;->z0:Lcom/baidu/input/pub/Option;

    .line 478
    const/16 v2, 0x30

    .line 480
    invoke-virtual {p3, v2}, Lcom/baidu/input/pub/Option;->a(S)V

    .line 483
    const/16 p3, 0x27

    .line 485
    invoke-virtual {p2, p3, v10}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 488
    invoke-virtual {p0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->e0()V

    .line 491
    :goto_1ea
    sget p2, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 493
    invoke-static {p2}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 496
    move-result-object p2

    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 500
    move-result-object p3

    .line 501
    sget v2, Lcom/baidu/input/ime/editor/soundvibration/SoundVibrationManager;->a:I

    .line 503
    invoke-static {v2}, Lcom/baidu/input/ime/toucheffect/TouchEffectFactory;->a(I)Lcom/baidu/input/ime/toucheffect/ITouchEffect;

    .line 506
    move-result-object v2

    .line 507
    invoke-interface {v2, p1}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->i(I)I

    .line 510
    move-result p1

    .line 511
    invoke-interface {p2, p1, p3}, Lcom/baidu/input/ime/toucheffect/ITouchEffect;->b(ILandroid/content/Context;)V

    .line 514
    :cond_201
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 516
    goto :goto_23d

    .line 517
    :cond_204
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 519
    goto :goto_23d

    .line 520
    :cond_207
    invoke-virtual {v1}, Lcom/baidu/input/ime/editor/KeymapPopupView;->b()V

    .line 523
    return-void

    .line 524
    :cond_20b
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    .line 527
    move-result p1

    .line 528
    if-eqz p1, :cond_23d

    .line 530
    invoke-virtual {p0, p2, p3}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U(II)I

    .line 533
    move-result p1

    .line 534
    iput p1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W:I

    .line 536
    if-ltz p1, :cond_23d

    .line 538
    if-ltz p1, :cond_23d

    .line 540
    iget-object p2, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 542
    if-eqz p2, :cond_23d

    .line 544
    array-length p2, p2

    .line 545
    if-le p2, p1, :cond_23d

    .line 547
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 550
    move-result-object p1

    .line 551
    if-eqz p1, :cond_23d

    .line 553
    iget p1, p1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 555
    const/4 p2, 0x2

    .line 556
    if-eq p1, p2, :cond_238

    .line 558
    if-eq p1, v2, :cond_238

    .line 560
    const/4 p2, 0x4

    .line 561
    if-eq p1, p2, :cond_238

    .line 563
    const/4 p2, 0x5

    .line 564
    if-eq p1, p2, :cond_238

    .line 566
    if-eq p1, v3, :cond_238

    .line 568
    goto :goto_23d

    .line 569
    :cond_238
    const-wide/16 p1, 0x1f4

    .line 571
    invoke-virtual {v1, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    :cond_23d
    :goto_23d
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 577
    return-void

    nop

    .line 579
    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_1db  #00000001
        :pswitch_1a1  #00000002
        :pswitch_180  #00000003
        :pswitch_162  #00000004
        :pswitch_13f  #00000005
        :pswitch_120  #00000006
        :pswitch_111  #00000007
        :pswitch_102  #00000008
        :pswitch_e6  #00000009
        :pswitch_ce  #0000000a
        :pswitch_b0  #0000000b
        :pswitch_92  #0000000c
        :pswitch_79  #0000000d
        :pswitch_5b  #0000000e
    .end packed-switch
.end method

.method public final a0(II)Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W:I

    .line 3
    if-ltz v0, :cond_1c

    .line 5
    iget-object v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 7
    array-length v1, v1

    .line 8
    if-ge v0, v1, :cond_1c

    .line 10
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1c

    .line 16
    iget-object v0, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_19

    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W:I

    .line 29
    :cond_1c
    const/4 p1, 0x1

    .line 30
    :goto_1d
    return p1
.end method

.method public final b0(IIIILandroid/graphics/Rect;I)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p5

    .line 7
    move/from16 v3, p3

    .line 9
    int-to-float v3, v3

    .line 10
    sget v4, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 12
    mul-float/2addr v3, v4

    .line 13
    float-to-int v3, v3

    .line 14
    move/from16 v5, p4

    .line 16
    int-to-float v5, v5

    .line 17
    mul-float/2addr v5, v4

    .line 18
    float-to-int v5, v5

    .line 19
    iget-boolean v6, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 21
    if-eqz v6, :cond_1f

    .line 23
    const/high16 v6, 0x41a80000  # 21.0f

    .line 25
    mul-float/2addr v6, v4

    .line 26
    float-to-int v6, v6

    .line 27
    const/high16 v7, 0x41b80000  # 23.0f

    .line 29
    mul-float/2addr v4, v7

    .line 30
    float-to-int v4, v4

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    move v4, v3

    .line 33
    move v6, v4

    .line 34
    :goto_21
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    .line 37
    move-result v7

    .line 38
    shl-int/lit8 v8, v5, 0x1

    .line 40
    sub-int/2addr v7, v8

    .line 41
    add-int/lit8 v8, v1, -0x1

    .line 43
    mul-int/2addr v8, v3

    .line 44
    sub-int/2addr v7, v8

    .line 45
    div-int v8, v7, v1

    .line 47
    rem-int/2addr v7, v1

    .line 48
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result v9

    .line 52
    sub-int/2addr v9, v6

    .line 53
    sub-int/2addr v9, v4

    .line 54
    add-int/lit8 v4, p1, -0x1

    .line 56
    mul-int/2addr v4, v3

    .line 57
    sub-int/2addr v9, v4

    .line 58
    div-int v4, v9, p1

    .line 60
    rem-int v9, v9, p1

    .line 62
    const/4 v11, 0x0

    .line 63
    move/from16 v12, p6

    .line 65
    const/4 v13, 0x1

    .line 66
    const/4 v14, 0x1

    .line 67
    :goto_42
    if-ge v11, v12, :cond_93

    .line 69
    new-instance v15, Landroid/graphics/Rect;

    .line 71
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 74
    iget v10, v2, Landroid/graphics/Rect;->left:I

    .line 76
    add-int/2addr v10, v5

    .line 77
    add-int/lit8 v16, v13, -0x1

    .line 79
    add-int v17, v3, v8

    .line 81
    mul-int v17, v17, v16

    .line 83
    add-int v17, v17, v10

    .line 85
    const/4 v10, 0x1

    .line 86
    shr-int/lit8 v16, v7, 0x1

    .line 88
    add-int v10, v17, v16

    .line 90
    iput v10, v15, Landroid/graphics/Rect;->left:I

    .line 92
    move/from16 v16, v5

    .line 94
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 96
    add-int/2addr v5, v6

    .line 97
    add-int/lit8 v17, v14, -0x1

    .line 99
    add-int v18, v3, v4

    .line 101
    mul-int v18, v18, v17

    .line 103
    add-int v18, v18, v5

    .line 105
    const/4 v5, 0x1

    .line 106
    shr-int/lit8 v17, v9, 0x1

    .line 108
    add-int v5, v18, v17

    .line 110
    iput v5, v15, Landroid/graphics/Rect;->top:I

    .line 112
    add-int/2addr v10, v8

    .line 113
    iput v10, v15, Landroid/graphics/Rect;->right:I

    .line 115
    add-int/2addr v5, v4

    .line 116
    iput v5, v15, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget-object v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 120
    iget-object v10, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 122
    aget v10, v10, v11

    .line 124
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 130
    if-eqz v5, :cond_87

    .line 132
    iput-object v15, v5, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 134
    iput-object v15, v5, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 136
    :cond_87
    add-int/lit8 v13, v13, 0x1

    .line 138
    if-le v13, v1, :cond_8e

    .line 140
    add-int/lit8 v14, v14, 0x1

    .line 142
    const/4 v13, 0x1

    .line 143
    :cond_8e
    add-int/lit8 v11, v11, 0x1

    .line 145
    move/from16 v5, v16

    .line 147
    goto :goto_42

    .line 148
    :cond_93
    return-void
.end method

.method public final e0()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->a:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    iget-boolean v0, v0, Lcom/baidu/input/ime/InputEventHandler;->k:Z

    .line 5
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x7

    .line 8
    const/4 v3, 0x6

    .line 9
    const/4 v4, 0x5

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x3

    .line 12
    const/16 v7, 0xa

    .line 14
    if-eqz v0, :cond_26

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v7, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 20
    invoke-virtual {p0, v6, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 23
    invoke-virtual {p0, v5, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 26
    invoke-virtual {p0, v4, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 29
    invoke-virtual {p0, v3, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 32
    invoke-virtual {p0, v2, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 38
    goto :goto_3c

    .line 39
    :cond_26
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v7, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 43
    invoke-virtual {p0, v6, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 46
    invoke-virtual {p0, v5, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 49
    invoke-virtual {p0, v4, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 52
    invoke-virtual {p0, v3, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 55
    invoke-virtual {p0, v2, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->f0(IZ)V

    .line 61
    :goto_3c
    return-void
.end method

.method public final f0(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 11
    if-eqz p1, :cond_e

    .line 13
    iput-boolean p2, p1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->c:Z

    .line 15
    :cond_e
    return-void
.end method

.method public final h(Landroid/view/View;Lcom/baidu/input/accessibility/AccessibilityHelper;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    check-cast p2, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;

    .line 7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v3

    .line 20
    float-to-int v3, v3

    .line 21
    iget v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->k:I

    .line 23
    sub-int/2addr v3, v4

    .line 24
    iget-object v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 26
    const/4 v5, -0x1

    .line 27
    if-eqz v4, :cond_38

    .line 29
    array-length v4, v4

    .line 30
    if-lez v4, :cond_38

    .line 32
    :goto_1f
    iget-object v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 34
    array-length v4, v4

    .line 35
    if-ge v0, v4, :cond_38

    .line 37
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_35

    .line 43
    iget-object v4, v4, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 45
    if-eqz v4, :cond_35

    .line 47
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_35

    .line 53
    goto :goto_39

    .line 54
    :cond_35
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_1f

    .line 57
    :cond_38
    move v0, v5

    .line 58
    :goto_39
    iget-object v2, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->p:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 60
    const/16 v3, 0xa

    .line 62
    const/16 v4, 0x9

    .line 64
    const/4 v6, 0x7

    .line 65
    if-eq v1, v6, :cond_63

    .line 67
    if-eq v1, v4, :cond_55

    .line 69
    if-eq v1, v3, :cond_47

    .line 71
    goto :goto_90

    .line 72
    :cond_47
    if-eq v0, v5, :cond_90

    .line 74
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 77
    move-result-object v0

    .line 78
    iget v0, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 80
    invoke-virtual {p2, v2, v0, v1}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 83
    iput v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->i:I

    .line 85
    goto :goto_90

    .line 86
    :cond_55
    if-eq v0, v5, :cond_90

    .line 88
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->i:I

    .line 90
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 93
    move-result-object v0

    .line 94
    iget v0, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 96
    invoke-virtual {p2, v2, v0, v1}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 99
    goto :goto_90

    .line 100
    :cond_63
    if-eq v0, v5, :cond_90

    .line 102
    iget v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->i:I

    .line 104
    if-ne v5, v0, :cond_73

    .line 106
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 109
    move-result-object v0

    .line 110
    iget v0, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 112
    invoke-virtual {p2, v2, v0, v1}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 115
    goto :goto_90

    .line 116
    :cond_73
    invoke-virtual {p0, v5}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 119
    move-result-object v1

    .line 120
    iget v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 122
    invoke-virtual {p2, v2, v1, v3}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 125
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->i:I

    .line 127
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 130
    move-result-object v1

    .line 131
    iget v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 133
    invoke-virtual {p2, v2, v1, v4}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 139
    move-result-object v0

    .line 140
    iget v0, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 142
    invoke-virtual {p2, v2, v0, v6}, Lcom/baidu/input/accessibility/EditControlAccessibilityHelper;->m(Lcom/baidu/input/ime/editor/KeymapPopupView;II)V

    .line 145
    :cond_90
    :goto_90
    invoke-static {p3, p1}, Lcom/baidu/input/accessibility/AccessibilityUtil;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 148
    const/4 p1, 0x1

    .line 149
    return p1
.end method

.method public final j(I)I
    .registers 9

    .line 1
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/baidu/input/panel/session/PanelSession;->e:Lcom/baidu/input/ime/InputStatMac;

    .line 7
    invoke-virtual {v0}, Lcom/baidu/input/ime/InputStatMac;->f()B

    .line 10
    invoke-static {}, Lcom/baidu/input/pub/Global;->C()I

    .line 13
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    sget-boolean v0, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 17
    const/high16 v1, 0x433e0000  # 190.0f

    .line 19
    const/high16 v2, 0x42f00000  # 120.0f

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v0, :cond_3c

    .line 25
    invoke-static {}, Lcom/baidu/input/ime/pad/FoldUtils;->a()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3c

    .line 31
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 33
    mul-float/2addr v1, v0

    .line 34
    float-to-int v1, v1

    .line 35
    if-lt p1, v1, :cond_2b

    .line 37
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 39
    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 42
    goto/16 :goto_93

    .line 44
    :cond_2b
    mul-float/2addr v0, v2

    .line 45
    float-to-int v0, v0

    .line 46
    if-lt p1, v0, :cond_31

    .line 48
    move v0, v4

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v3

    .line 51
    :goto_32
    iput-boolean v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 53
    if-eqz v0, :cond_38

    .line 55
    move v0, v4

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    const/4 v0, 0x2

    .line 58
    :goto_39
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 60
    goto :goto_93

    .line 61
    :cond_3c
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 63
    mul-float/2addr v0, v2

    .line 64
    float-to-int v0, v0

    .line 65
    if-lt p1, v0, :cond_44

    .line 67
    move v0, v4

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move v0, v3

    .line 70
    :goto_45
    iput-boolean v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 72
    if-eqz v0, :cond_4b

    .line 74
    const/4 v0, 0x3

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    const/4 v0, 0x4

    .line 77
    :goto_4c
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 79
    invoke-static {}, Lcom/baidu/input/pub/Global;->N()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_93

    .line 85
    sget-short v0, Lcom/baidu/input/pub/ImeBaseGlobal;->s:S

    .line 87
    int-to-float v0, v0

    .line 88
    const/high16 v5, 0x3f800000  # 1.0f

    .line 90
    mul-float/2addr v0, v5

    .line 91
    sget-short v5, Lcom/baidu/input/pub/ImeBaseGlobal;->r:S

    .line 93
    int-to-float v5, v5

    .line 94
    div-float/2addr v0, v5

    .line 95
    const v5, 0x40066666  # 2.1f

    .line 98
    cmpl-float v0, v0, v5

    .line 100
    const/4 v5, 0x7

    .line 101
    const/16 v6, 0x8

    .line 103
    if-lez v0, :cond_78

    .line 105
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 107
    mul-float/2addr v0, v2

    .line 108
    float-to-int v0, v0

    .line 109
    if-ge p1, v0, :cond_73

    .line 111
    iput v6, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 113
    iput-boolean v3, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 115
    goto :goto_93

    .line 116
    :cond_73
    iput v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 118
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 120
    goto :goto_93

    .line 121
    :cond_78
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 123
    mul-float/2addr v1, v0

    .line 124
    float-to-int v1, v1

    .line 125
    if-lt p1, v1, :cond_84

    .line 127
    iput-boolean v4, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 129
    const/4 v0, 0x6

    .line 130
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 132
    goto :goto_93

    .line 133
    :cond_84
    mul-float/2addr v0, v2

    .line 134
    float-to-int v0, v0

    .line 135
    if-lt p1, v0, :cond_8a

    .line 137
    move v0, v4

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move v0, v3

    .line 140
    :goto_8b
    iput-boolean v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 142
    if-eqz v0, :cond_90

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    move v5, v6

    .line 146
    :goto_91
    iput v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 148
    :cond_93
    :goto_93
    iget-boolean v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 150
    if-eqz v0, :cond_a5

    .line 152
    sget-object v0, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 154
    if-eqz v0, :cond_a2

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_a2

    .line 162
    move v3, v4

    .line 163
    :cond_a2
    iput-boolean v3, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->F:Z

    .line 165
    goto :goto_a7

    .line 166
    :cond_a5
    iput-boolean v3, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->F:Z

    .line 168
    :goto_a7
    return p1
.end method

.method public final n(Landroid/graphics/Canvas;)V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-boolean v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 7
    if-nez v1, :cond_c

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->k(Landroid/graphics/Canvas;)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m(Landroid/graphics/Canvas;)V

    .line 16
    :goto_f
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x6

    .line 20
    const/4 v10, 0x5

    .line 21
    if-eq v1, v10, :cond_18

    .line 23
    if-ne v1, v9, :cond_b5

    .line 25
    :cond_18
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->G0:Landroid/graphics/Bitmap;

    .line 27
    if-eqz v1, :cond_24

    .line 29
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 31
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 33
    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    goto :goto_40

    .line 37
    :cond_24
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v3

    .line 57
    shr-int/lit8 v3, v3, 0x1

    .line 59
    int-to-float v3, v3

    .line 60
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 62
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    :goto_40
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->H0:Landroid/graphics/Bitmap;

    .line 67
    if-eqz v1, :cond_4c

    .line 69
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 71
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 73
    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    goto :goto_68

    .line 77
    :cond_4c
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 82
    move-result v1

    .line 83
    int-to-float v1, v1

    .line 84
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 89
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 96
    move-result v3

    .line 97
    shr-int/lit8 v3, v3, 0x1

    .line 99
    int-to-float v3, v3

    .line 100
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 102
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    :goto_68
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->I0:Landroid/graphics/Bitmap;

    .line 107
    if-eqz v1, :cond_7d

    .line 109
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->y0:Landroid/graphics/Rect;

    .line 111
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 113
    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->I0:Landroid/graphics/Bitmap;

    .line 118
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->x0:Landroid/graphics/Rect;

    .line 120
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 122
    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    goto :goto_b5

    .line 126
    :cond_7d
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->x0:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 131
    move-result v1

    .line 132
    int-to-float v1, v1

    .line 133
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->x0:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 138
    move-result v2

    .line 139
    int-to-float v2, v2

    .line 140
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->x0:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 145
    move-result v3

    .line 146
    shr-int/lit8 v3, v3, 0x1

    .line 148
    int-to-float v3, v3

    .line 149
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 151
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->y0:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 159
    move-result v1

    .line 160
    int-to-float v1, v1

    .line 161
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->y0:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 166
    move-result v2

    .line 167
    int-to-float v2, v2

    .line 168
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->y0:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 173
    move-result v3

    .line 174
    shr-int/lit8 v3, v3, 0x1

    .line 176
    int-to-float v3, v3

    .line 177
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 179
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    :cond_b5
    :goto_b5
    new-instance v11, Landroid/graphics/Rect;

    .line 184
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 187
    const/4 v12, 0x0

    .line 188
    move v13, v12

    .line 189
    :goto_bc
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 191
    array-length v1, v1

    .line 192
    if-ge v13, v1, :cond_306

    .line 194
    invoke-virtual {v0, v13}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_302

    .line 200
    iget-object v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 202
    if-eqz v1, :cond_302

    .line 204
    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->k:I

    .line 209
    neg-int v1, v1

    .line 210
    invoke-virtual {v11, v12, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 213
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 215
    const-wide v2, 0x3fd999999999999aL  # 0.4

    .line 220
    if-eq v1, v10, :cond_107

    .line 222
    if-ne v1, v9, :cond_e0

    .line 224
    goto :goto_107

    .line 225
    :cond_e0
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 227
    if-ltz v1, :cond_ed

    .line 229
    if-ne v13, v1, :cond_ed

    .line 231
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->t:Landroid/graphics/NinePatch;

    .line 233
    invoke-virtual {v1, v7, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 236
    goto/16 :goto_194

    .line 238
    :cond_ed
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 243
    move-result v1

    .line 244
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 246
    int-to-double v5, v1

    .line 247
    mul-double/2addr v5, v2

    .line 248
    double-to-int v2, v5

    .line 249
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->s:Landroid/graphics/NinePatch;

    .line 254
    invoke-virtual {v2, v7, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 257
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 259
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    goto/16 :goto_194

    .line 264
    :cond_107
    :goto_107
    invoke-virtual {v0, v13}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 267
    move-result-object v1

    .line 268
    if-eqz v1, :cond_194

    .line 270
    iget v4, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 272
    packed-switch v4, :pswitch_data_308

    .line 275
    :pswitch_112  #0x9
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 277
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 280
    move-result v1

    .line 281
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 283
    int-to-double v5, v1

    .line 284
    mul-double/2addr v5, v2

    .line 285
    double-to-int v2, v5

    .line 286
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    iget v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 291
    if-ltz v2, :cond_131

    .line 293
    if-ne v13, v2, :cond_131

    .line 295
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->s:Landroid/graphics/NinePatch;

    .line 297
    invoke-virtual {v2, v7, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 300
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->t:Landroid/graphics/NinePatch;

    .line 302
    invoke-virtual {v2, v7, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 305
    goto :goto_136

    .line 306
    :cond_131
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->s:Landroid/graphics/NinePatch;

    .line 308
    invoke-virtual {v2, v7, v11}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 311
    :goto_136
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->w:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 313
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    goto :goto_194

    .line 317
    :pswitch_13c  #0x7, 0x8, 0xa
    iget v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 319
    if-ltz v2, :cond_194

    .line 321
    if-ne v13, v2, :cond_194

    .line 323
    iget-object v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 325
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 327
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 329
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 335
    move-result v2

    .line 336
    int-to-float v2, v2

    .line 337
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 340
    move-result v3

    .line 341
    int-to-float v3, v3

    .line 342
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 345
    move-result v1

    .line 346
    shr-int/lit8 v1, v1, 0x1

    .line 348
    int-to-float v1, v1

    .line 349
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 351
    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 354
    goto :goto_194

    .line 355
    :pswitch_162  #0x3, 0x4, 0x5, 0x6
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 357
    if-ltz v1, :cond_194

    .line 359
    if-ne v13, v1, :cond_194

    .line 361
    new-instance v2, Landroid/graphics/RectF;

    .line 363
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->z0:Landroid/graphics/RectF;

    .line 365
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 368
    const/4 v1, 0x3

    .line 369
    if-eq v4, v1, :cond_180

    .line 371
    const/4 v1, 0x4

    .line 372
    if-eq v4, v1, :cond_17d

    .line 374
    if-eq v4, v10, :cond_17a

    .line 376
    const/16 v1, 0x2d

    .line 378
    goto :goto_182

    .line 379
    :cond_17a
    const/16 v1, 0xe1

    .line 381
    goto :goto_182

    .line 382
    :cond_17d
    const/16 v1, 0x13b

    .line 384
    goto :goto_182

    .line 385
    :cond_180
    const/16 v1, 0x87

    .line 387
    :goto_182
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 389
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 391
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    int-to-float v3, v1

    .line 395
    iget-object v6, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 397
    const/high16 v4, 0x42b40000  # 90.0f

    .line 399
    const/4 v5, 0x0

    .line 400
    move-object/from16 v1, p1

    .line 402
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 405
    :cond_194
    :goto_194
    invoke-virtual {v0, v13}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 408
    move-result-object v1

    .line 409
    if-eqz v1, :cond_26c

    .line 411
    sget-boolean v2, Lcom/baidu/input/acgfont/FontUtils;->c:Z

    .line 413
    if-nez v2, :cond_26c

    .line 415
    iget v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 417
    const/16 v2, 0x9

    .line 419
    if-eq v1, v2, :cond_1b8

    .line 421
    const/16 v2, 0xa

    .line 423
    if-eq v1, v2, :cond_1b8

    .line 425
    const/16 v2, 0xb

    .line 427
    if-eq v1, v2, :cond_1b8

    .line 429
    const/16 v2, 0xc

    .line 431
    if-eq v1, v2, :cond_1b8

    .line 433
    const/16 v2, 0xd

    .line 435
    if-eq v1, v2, :cond_1b8

    .line 437
    const/16 v2, 0xe

    .line 439
    if-ne v1, v2, :cond_26c

    .line 441
    :cond_1b8
    invoke-virtual {v0, v13}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 444
    move-result-object v1

    .line 445
    if-eqz v1, :cond_1d6

    .line 447
    iget v2, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 449
    packed-switch v2, :pswitch_data_31c

    .line 452
    goto :goto_1d6

    .line 453
    :pswitch_1c4  #0xe
    const-string v2, "剪切板"

    .line 455
    goto :goto_1d8

    .line 456
    :pswitch_1c7  #0xd
    const-string v2, "全选"

    .line 458
    goto :goto_1d8

    .line 459
    :pswitch_1ca  #0xc
    const-string v2, "剪切"

    .line 461
    goto :goto_1d8

    .line 462
    :pswitch_1cd  #0xb
    const-string v2, "复制"

    .line 464
    goto :goto_1d8

    .line 465
    :pswitch_1d0  #0xa
    const-string v2, "选择"

    .line 467
    goto :goto_1d8

    .line 468
    :pswitch_1d3  #0x9
    const-string v2, "粘贴"

    .line 470
    goto :goto_1d8

    .line 471
    :cond_1d6
    :goto_1d6
    const-string v2, ""

    .line 473
    :goto_1d8
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 475
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 478
    move-result-object v3

    .line 479
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 481
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 484
    move-result v4

    .line 485
    iget-object v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 487
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 490
    if-eqz v1, :cond_221

    .line 492
    iget-boolean v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->c:Z

    .line 494
    if-eqz v1, :cond_213

    .line 496
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 498
    if-ltz v1, :cond_204

    .line 500
    if-ne v13, v1, :cond_204

    .line 502
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 504
    sget v5, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 506
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 511
    iget v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0:I

    .line 513
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    goto :goto_221

    .line 517
    :cond_204
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 519
    sget v5, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->M:I

    .line 521
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 526
    iget v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0:I

    .line 528
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 531
    goto :goto_221

    .line 532
    :cond_213
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 534
    sget v5, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 536
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 541
    iget v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0:I

    .line 543
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 546
    :cond_221
    :goto_221
    const/high16 v1, 0x41880000  # 17.0f

    .line 548
    sget v5, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 550
    mul-float/2addr v5, v1

    .line 551
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->s0:F

    .line 553
    mul-float/2addr v5, v1

    .line 554
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 556
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 559
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 564
    move-result v5

    .line 565
    iget-object v6, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->C0:Landroid/graphics/Rect;

    .line 567
    invoke-virtual {v1, v2, v12, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 570
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    .line 573
    move-result v1

    .line 574
    iget-object v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->C0:Landroid/graphics/Rect;

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    .line 579
    move-result v5

    .line 580
    sub-int/2addr v1, v5

    .line 581
    int-to-float v1, v1

    .line 582
    iget-object v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 584
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 587
    move-result-object v5

    .line 588
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 591
    move-result v6

    .line 592
    int-to-float v6, v6

    .line 593
    iget v14, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 595
    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 597
    sub-float v5, v14, v5

    .line 599
    const/high16 v15, 0x40000000  # 2.0f

    .line 601
    div-float/2addr v5, v15

    .line 602
    add-float/2addr v5, v6

    .line 603
    sub-float/2addr v5, v14

    .line 604
    iget-object v6, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 606
    invoke-virtual {v7, v2, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 609
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 611
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 616
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 619
    goto/16 :goto_302

    .line 621
    :cond_26c
    invoke-virtual {v0, v13}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 624
    move-result-object v1

    .line 625
    if-eqz v1, :cond_302

    .line 627
    iget-object v2, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->r0:Lcom/baidu/input/ime/params/ImginiLoader;

    .line 629
    iget-object v2, v2, Lcom/baidu/input/ime/params/ImginiLoader;->k:[Lcom/baidu/input/ime/params/ImgParam;

    .line 631
    iget v3, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 633
    aget-object v2, v2, v3

    .line 635
    iget-object v2, v2, Lcom/baidu/input/ime/params/ImgParam;->g:Landroid/graphics/Bitmap;

    .line 637
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 639
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 642
    move-result v4

    .line 643
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 646
    move-result v5

    .line 647
    invoke-virtual {v3, v12, v12, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 650
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 652
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 655
    move-result v3

    .line 656
    int-to-float v3, v3

    .line 657
    iget v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->s0:F

    .line 659
    mul-float/2addr v3, v4

    .line 660
    float-to-int v3, v3

    .line 661
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 663
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 666
    move-result v4

    .line 667
    int-to-float v4, v4

    .line 668
    iget v5, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->s0:F

    .line 670
    mul-float/2addr v4, v5

    .line 671
    float-to-int v4, v4

    .line 672
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    .line 675
    move-result v5

    .line 676
    shr-int/lit8 v6, v3, 0x1

    .line 678
    sub-int/2addr v5, v6

    .line 679
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    .line 682
    move-result v6

    .line 683
    shr-int/lit8 v14, v4, 0x1

    .line 685
    sub-int/2addr v6, v14

    .line 686
    iget-object v14, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->u0:Landroid/graphics/Rect;

    .line 688
    add-int/2addr v3, v5

    .line 689
    add-int/2addr v4, v6

    .line 690
    invoke-virtual {v14, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 693
    iget-boolean v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->c:Z

    .line 695
    if-eqz v1, :cond_2e6

    .line 697
    iget v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->h:I

    .line 699
    if-ltz v1, :cond_2d2

    .line 701
    if-ne v13, v1, :cond_2d2

    .line 703
    sget-object v1, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 705
    invoke-static {v1}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 708
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 710
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Y:Landroid/graphics/LightingColorFilter;

    .line 712
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 715
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 717
    iget v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0:I

    .line 719
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 722
    goto :goto_2f9

    .line 723
    :cond_2d2
    sget-object v1, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 725
    invoke-static {v1}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 728
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 730
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Z:Landroid/graphics/LightingColorFilter;

    .line 732
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 735
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 737
    iget v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0:I

    .line 739
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 742
    goto :goto_2f9

    .line 743
    :cond_2e6
    sget-object v1, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 745
    invoke-static {v1}, Lcom/baidu/pf;->u(Lcom/baidu/input/di/ImeComponent;)V

    .line 748
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 750
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->Y:Landroid/graphics/LightingColorFilter;

    .line 752
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 755
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 757
    iget v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->a0:I

    .line 759
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 762
    :goto_2f9
    iget-object v1, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 764
    iget-object v3, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->u0:Landroid/graphics/Rect;

    .line 766
    iget-object v4, v0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 768
    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 771
    :cond_302
    :goto_302
    add-int/lit8 v13, v13, 0x1

    .line 773
    goto/16 :goto_bc

    .line 775
    :cond_306
    return-void

    nop

    .line 777
    :pswitch_data_308
    .packed-switch 0x3
        :pswitch_162  #00000003
        :pswitch_162  #00000004
        :pswitch_162  #00000005
        :pswitch_162  #00000006
        :pswitch_13c  #00000007
        :pswitch_13c  #00000008
        :pswitch_112  #00000009
        :pswitch_13c  #0000000a
    .end packed-switch

    .line 797
    :pswitch_data_31c
    .packed-switch 0x9
        :pswitch_1d3  #00000009
        :pswitch_1d0  #0000000a
        :pswitch_1cd  #0000000b
        :pswitch_1ca  #0000000c
        :pswitch_1c7  #0000000d
        :pswitch_1c4  #0000000e
    .end packed-switch
.end method

.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->a:Lcom/baidu/input/ime/InputEventHandler;

    .line 3
    if-eqz v0, :cond_70

    .line 5
    iget v1, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W:I

    .line 7
    if-ltz v1, :cond_70

    .line 9
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W(I)Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_70

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    iget v1, v1, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 19
    if-eq v1, v2, :cond_61

    .line 21
    const/4 v2, 0x3

    .line 22
    const/16 v4, 0xc8

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v1, v2, :cond_52

    .line 27
    const/4 v2, 0x4

    .line 28
    if-eq v1, v2, :cond_43

    .line 30
    const/4 v2, 0x5

    .line 31
    if-eq v1, v2, :cond_34

    .line 33
    const/4 v2, 0x6

    .line 34
    if-eq v1, v2, :cond_24

    .line 36
    goto :goto_68

    .line 37
    :cond_24
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2b

    .line 43
    goto :goto_68

    .line 44
    :cond_2b
    iput-boolean v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 46
    const/16 v1, 0x32

    .line 48
    invoke-virtual {v0, v1, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 51
    :goto_32
    move v3, v4

    .line 52
    goto :goto_68

    .line 53
    :cond_34
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3b

    .line 59
    goto :goto_68

    .line 60
    :cond_3b
    iput-boolean v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 62
    const/16 v1, 0x31

    .line 64
    invoke-virtual {v0, v1, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 67
    goto :goto_32

    .line 68
    :cond_43
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4a

    .line 74
    goto :goto_68

    .line 75
    :cond_4a
    iput-boolean v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 77
    const/16 v1, 0x34

    .line 79
    invoke-virtual {v0, v1, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 82
    goto :goto_32

    .line 83
    :cond_52
    invoke-virtual {p0, v1}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T(I)Z

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_59

    .line 89
    goto :goto_68

    .line 90
    :cond_59
    iput-boolean v5, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->U:Z

    .line 92
    const/16 v1, 0x33

    .line 94
    invoke-virtual {v0, v1, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 97
    goto :goto_32

    .line 98
    :cond_61
    const/16 v1, 0x24

    .line 100
    invoke-virtual {v0, v1, v3}, Lcom/baidu/input/ime/InputEventHandler;->G(IZ)Z

    .line 103
    const/16 v3, 0x3f

    .line 105
    :goto_68
    if-lez v3, :cond_70

    .line 107
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->p:Lcom/baidu/input/ime/editor/KeymapPopupView;

    .line 109
    int-to-long v1, v3

    .line 110
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_70
    return-void
.end method

.method public final t()V
    .registers 30

    .line 1
    move-object/from16 v7, p0

    .line 3
    const/4 v11, 0x5

    .line 4
    const/4 v13, 0x3

    .line 5
    const/4 v14, 0x2

    .line 6
    const/16 v15, 0xa

    .line 8
    const/16 v0, 0xc

    .line 10
    const/16 v1, 0xd

    .line 12
    const/4 v6, 0x1

    .line 13
    const-class v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 15
    invoke-static {v2}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 21
    invoke-interface {v2}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->L4()Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->d()Z

    .line 28
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->b:Lcom/baidu/input/ImeService;

    .line 30
    invoke-virtual {v2}, Lcom/baidu/input/ImeService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_32

    .line 37
    invoke-static {v2, v3}, La;->f(Landroid/view/inputmethod/InputConnection;I)Landroid/view/inputmethod/ExtractedText;

    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_32

    .line 43
    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 45
    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 47
    if-eq v4, v2, :cond_32

    .line 49
    move v2, v6

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v2, v14

    .line 52
    :goto_33
    iput v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->T:I

    .line 54
    const/4 v4, 0x0

    .line 55
    if-nez v2, :cond_5b

    .line 57
    iget v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 59
    packed-switch v2, :pswitch_data_420

    .line 62
    iput-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 64
    goto/16 :goto_c5

    .line 66
    :pswitch_41  #0x5, 0x6
    new-array v0, v1, [I

    .line 68
    fill-array-data v0, :array_45c

    .line 71
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 73
    goto/16 :goto_c5

    .line 75
    :pswitch_4a  #0x3, 0x4, 0x7, 0x8
    new-array v0, v0, [I

    .line 77
    fill-array-data v0, :array_47a

    .line 80
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 82
    goto/16 :goto_c5

    .line 84
    :pswitch_53  #0x1, 0x2
    new-array v0, v15, [I

    .line 86
    fill-array-data v0, :array_496

    .line 89
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 91
    goto :goto_c5

    .line 92
    :cond_5b
    if-ne v6, v2, :cond_60

    .line 94
    move/from16 v21, v0

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    move/from16 v21, v1

    .line 99
    :goto_62
    iget v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 101
    packed-switch v0, :pswitch_data_434

    .line 104
    iput-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 106
    goto :goto_c5

    .line 107
    :pswitch_6a  #0x5, 0x6
    const/16 v27, 0x8

    .line 109
    const/16 v28, 0x7

    .line 111
    const/16 v17, 0x2

    .line 113
    const/16 v18, 0xb

    .line 115
    const/16 v19, 0x1

    .line 117
    const/16 v16, 0x9

    .line 119
    const/16 v0, 0xe

    .line 121
    const/16 v22, 0xa

    .line 123
    const/16 v23, 0x3

    .line 125
    const/16 v24, 0x4

    .line 127
    const/16 v25, 0x5

    .line 129
    const/16 v26, 0x6

    .line 131
    move/from16 v20, v21

    .line 133
    move/from16 v21, v0

    .line 135
    filled-new-array/range {v16 .. v28}, [I

    .line 138
    move-result-object v0

    .line 139
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 141
    goto :goto_c5

    .line 142
    :pswitch_8d  #0x3, 0x4, 0x7, 0x8
    const/16 v26, 0xb

    .line 144
    const/16 v27, 0xe

    .line 146
    const/16 v16, 0x8

    .line 148
    const/16 v17, 0x5

    .line 150
    const/16 v18, 0x7

    .line 152
    const/16 v19, 0xa

    .line 154
    const/4 v0, 0x2

    .line 155
    const/16 v22, 0x3

    .line 157
    const/16 v23, 0x6

    .line 159
    const/16 v24, 0x4

    .line 161
    const/16 v25, 0x9

    .line 163
    move/from16 v20, v21

    .line 165
    move/from16 v21, v0

    .line 167
    filled-new-array/range {v16 .. v27}, [I

    .line 170
    move-result-object v0

    .line 171
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 173
    goto :goto_c5

    .line 174
    :pswitch_ad  #0x1, 0x2
    const/16 v24, 0xe

    .line 176
    const/16 v25, 0x2

    .line 178
    const/16 v16, 0xa

    .line 180
    const/16 v17, 0x3

    .line 182
    const/16 v18, 0x4

    .line 184
    const/16 v19, 0x5

    .line 186
    const/16 v20, 0x6

    .line 188
    const/16 v22, 0xb

    .line 190
    const/16 v23, 0x9

    .line 192
    filled-new-array/range {v16 .. v25}, [I

    .line 195
    move-result-object v0

    .line 196
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 198
    :goto_c5
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 200
    if-eqz v0, :cond_f7

    .line 202
    array-length v0, v0

    .line 203
    if-lez v0, :cond_f7

    .line 205
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 207
    if-nez v0, :cond_d7

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    .line 211
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 214
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 216
    :cond_d7
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 218
    array-length v1, v0

    .line 219
    move v2, v3

    .line 220
    :goto_db
    if-ge v2, v1, :cond_f7

    .line 222
    aget v4, v0, v2

    .line 224
    iget-object v5, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 226
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v5

    .line 230
    if-nez v5, :cond_f5

    .line 232
    iget-object v5, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 234
    new-instance v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 236
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-boolean v3, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->c:Z

    .line 241
    iput v4, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->d:I

    .line 243
    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    :cond_f5
    add-int/2addr v2, v6

    .line 247
    goto :goto_db

    .line 248
    :cond_f7
    iget-boolean v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->m:Z

    .line 250
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->c:Landroid/graphics/Rect;

    .line 252
    if-eqz v0, :cond_10c

    .line 254
    sget-short v0, Lcom/baidu/input/pub/ImeBaseGlobal;->i:S

    .line 256
    sget-short v1, Lcom/baidu/input/pub/ImeBaseGlobal;->r:S

    .line 258
    sub-int/2addr v0, v1

    .line 259
    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 261
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 263
    sget-short v1, Lcom/baidu/input/pub/ImeBaseGlobal;->i:S

    .line 265
    if-le v0, v1, :cond_10c

    .line 267
    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 269
    :cond_10c
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 271
    if-eqz v0, :cond_41e

    .line 273
    iget v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 275
    packed-switch v0, :pswitch_data_448

    .line 278
    goto/16 :goto_41e

    .line 280
    :pswitch_117  #0x7, 0x8
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 282
    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    iget-object v5, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 287
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 289
    iget-object v1, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->d:[I

    .line 291
    aget v2, v1, v6

    .line 293
    add-int/2addr v0, v2

    .line 294
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 296
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 298
    aget v1, v1, v13

    .line 300
    sub-int/2addr v0, v1

    .line 301
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 303
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 305
    array-length v6, v0

    .line 306
    const/4 v3, 0x4

    .line 307
    const/16 v4, 0x8

    .line 309
    const/4 v1, 0x2

    .line 310
    const/4 v2, 0x6

    .line 311
    move-object/from16 v0, p0

    .line 313
    invoke-virtual/range {v0 .. v6}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0(IIIILandroid/graphics/Rect;I)V

    .line 316
    goto/16 :goto_41e

    .line 318
    :pswitch_13d  #0x5, 0x6
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 321
    move-result v0

    .line 322
    mul-int/lit16 v0, v0, 0x23d

    .line 324
    div-int/lit16 v5, v0, 0x438

    .line 326
    new-instance v4, Landroid/graphics/Rect;

    .line 328
    invoke-direct {v4, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 331
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 333
    add-int/2addr v0, v5

    .line 334
    const/high16 v1, 0x41980000  # 19.0f

    .line 336
    sget v2, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 338
    mul-float/2addr v2, v1

    .line 339
    float-to-int v1, v2

    .line 340
    sub-int/2addr v0, v1

    .line 341
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 343
    const/4 v3, 0x7

    .line 344
    const/16 v17, 0x13

    .line 346
    const/4 v1, 0x3

    .line 347
    const/4 v2, 0x2

    .line 348
    const/16 v18, 0x6

    .line 350
    move-object/from16 v0, p0

    .line 352
    move-object/from16 v19, v4

    .line 354
    move/from16 v4, v17

    .line 356
    move/from16 v17, v5

    .line 358
    move-object/from16 v5, v19

    .line 360
    move v9, v6

    .line 361
    move/from16 v6, v18

    .line 363
    invoke-virtual/range {v0 .. v6}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0(IIIILandroid/graphics/Rect;I)V

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    .line 368
    invoke-direct {v0, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 371
    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 373
    add-int v1, v1, v17

    .line 375
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 377
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 379
    const/high16 v2, 0x42540000  # 53.0f

    .line 381
    mul-float/2addr v2, v1

    .line 382
    float-to-int v2, v2

    .line 383
    float-to-double v3, v1

    .line 384
    const-wide v5, 0x4040333333333333L  # 32.4

    .line 389
    mul-double/2addr v5, v3

    .line 390
    double-to-int v5, v5

    .line 391
    const-wide v17, 0x403535c28f5c28f6L  # 21.21

    .line 396
    mul-double v12, v3, v17

    .line 398
    double-to-int v8, v12

    .line 399
    const/high16 v12, 0x41a00000  # 20.0f

    .line 401
    mul-float/2addr v1, v12

    .line 402
    float-to-int v1, v1

    .line 403
    const-wide v12, 0x403707ae147ae148L  # 23.03

    .line 408
    mul-double/2addr v3, v12

    .line 409
    double-to-int v3, v3

    .line 410
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 412
    add-int/2addr v4, v1

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 416
    move-result v12

    .line 417
    shl-int/lit8 v13, v1, 0x1

    .line 419
    sub-int/2addr v12, v13

    .line 420
    sget-object v13, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 422
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 428
    move-result-object v13

    .line 429
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    sub-int v13, v12, v2

    .line 434
    shr-int/lit8 v17, v13, 0x1

    .line 436
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 438
    add-int/2addr v6, v8

    .line 439
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    new-instance v8, Landroid/graphics/Rect;

    .line 448
    add-int v10, v4, v12

    .line 450
    add-int/2addr v12, v6

    .line 451
    invoke-direct {v8, v4, v6, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    iput-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 456
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 459
    move-result v4

    .line 460
    shr-int/lit8 v6, v2, 0x1

    .line 462
    sub-int/2addr v4, v6

    .line 463
    iget-object v6, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 465
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    .line 468
    move-result v6

    .line 469
    shr-int/lit8 v8, v2, 0x1

    .line 471
    sub-int/2addr v6, v8

    .line 472
    new-instance v8, Landroid/graphics/Rect;

    .line 474
    add-int v10, v4, v2

    .line 476
    add-int/2addr v2, v6

    .line 477
    invoke-direct {v8, v4, v6, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 480
    iput-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 482
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 484
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 490
    iget-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 492
    iput-object v4, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 494
    new-instance v4, Landroid/graphics/Rect;

    .line 496
    iget-object v6, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 498
    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 501
    iput-object v4, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 503
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 505
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 508
    move-result v2

    .line 509
    shr-int/lit8 v4, v13, 0x2

    .line 511
    sub-int/2addr v2, v4

    .line 512
    iget-object v6, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 514
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 516
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 518
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 520
    sub-int/2addr v8, v6

    .line 521
    sub-int v8, v8, v17

    .line 523
    shr-int/2addr v8, v9

    .line 524
    add-int/2addr v6, v8

    .line 525
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 527
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 530
    move-result-object v8

    .line 531
    check-cast v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 533
    new-instance v10, Landroid/graphics/Rect;

    .line 535
    add-int v11, v2, v17

    .line 537
    add-int v12, v6, v17

    .line 539
    invoke-direct {v10, v2, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 542
    iput-object v10, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 544
    new-instance v6, Landroid/graphics/Rect;

    .line 546
    iget-object v10, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 548
    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 551
    iput-object v6, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 553
    iget-object v6, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 555
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 557
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 559
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 561
    sub-int/2addr v8, v6

    .line 562
    sub-int v8, v8, v17

    .line 564
    shr-int/2addr v8, v9

    .line 565
    add-int/2addr v6, v8

    .line 566
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 568
    const/4 v10, 0x6

    .line 569
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 572
    move-result-object v8

    .line 573
    check-cast v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 575
    new-instance v10, Landroid/graphics/Rect;

    .line 577
    add-int v12, v6, v17

    .line 579
    invoke-direct {v10, v2, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    iput-object v10, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 584
    new-instance v2, Landroid/graphics/Rect;

    .line 586
    iget-object v6, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 588
    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 591
    iput-object v2, v8, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 593
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 595
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 597
    iget-object v8, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 599
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 601
    sub-int/2addr v8, v6

    .line 602
    sub-int v8, v8, v17

    .line 604
    shr-int/2addr v8, v9

    .line 605
    add-int/2addr v6, v8

    .line 606
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 609
    move-result v2

    .line 610
    sub-int/2addr v2, v4

    .line 611
    iget-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 613
    const/4 v8, 0x3

    .line 614
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 617
    move-result-object v4

    .line 618
    check-cast v4, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 620
    new-instance v8, Landroid/graphics/Rect;

    .line 622
    add-int v10, v6, v17

    .line 624
    add-int v11, v2, v17

    .line 626
    invoke-direct {v8, v6, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 629
    iput-object v8, v4, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 631
    new-instance v6, Landroid/graphics/Rect;

    .line 633
    iget-object v8, v4, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 635
    invoke-direct {v6, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 638
    iput-object v6, v4, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 640
    iget-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 642
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 644
    iget-object v6, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 646
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 648
    sub-int/2addr v6, v4

    .line 649
    sub-int v6, v6, v17

    .line 651
    shr-int/2addr v6, v9

    .line 652
    add-int/2addr v4, v6

    .line 653
    iget-object v6, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 655
    const/4 v8, 0x4

    .line 656
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 659
    move-result-object v6

    .line 660
    check-cast v6, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 662
    new-instance v8, Landroid/graphics/Rect;

    .line 664
    add-int v10, v4, v17

    .line 666
    invoke-direct {v8, v4, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 669
    iput-object v8, v6, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 671
    new-instance v2, Landroid/graphics/Rect;

    .line 673
    iget-object v4, v6, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 675
    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 678
    iput-object v2, v6, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 680
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 682
    add-int/2addr v2, v1

    .line 683
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 685
    sub-int/2addr v1, v3

    .line 686
    sub-int/2addr v1, v5

    .line 687
    iget-object v3, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 689
    const/16 v4, 0x8

    .line 691
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 694
    move-result-object v3

    .line 695
    check-cast v3, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 697
    new-instance v4, Landroid/graphics/Rect;

    .line 699
    add-int v6, v2, v5

    .line 701
    add-int v8, v1, v5

    .line 703
    invoke-direct {v4, v2, v1, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    iput-object v4, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->x0:Landroid/graphics/Rect;

    .line 708
    iput-object v4, v3, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 710
    new-instance v2, Landroid/graphics/Rect;

    .line 712
    iget-object v4, v3, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 714
    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 717
    iput-object v2, v3, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 719
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 722
    move-result v0

    .line 723
    mul-int/2addr v0, v14

    .line 724
    iget-object v2, v3, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 726
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 728
    sub-int/2addr v0, v2

    .line 729
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->F0:Landroid/util/SparseArray;

    .line 731
    const/4 v3, 0x7

    .line 732
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 735
    move-result-object v2

    .line 736
    check-cast v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;

    .line 738
    new-instance v3, Landroid/graphics/Rect;

    .line 740
    add-int/2addr v5, v0

    .line 741
    invoke-direct {v3, v0, v1, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 744
    iput-object v3, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->y0:Landroid/graphics/Rect;

    .line 746
    iput-object v3, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 748
    new-instance v0, Landroid/graphics/Rect;

    .line 750
    iget-object v1, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->a:Landroid/graphics/Rect;

    .line 752
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 755
    iput-object v0, v2, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate$EditorKey;->b:Landroid/graphics/Rect;

    .line 757
    new-instance v0, Landroid/graphics/RectF;

    .line 759
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 762
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->z0:Landroid/graphics/RectF;

    .line 764
    iget-object v1, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 766
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 768
    iget-object v3, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 770
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 772
    add-int/2addr v2, v4

    .line 773
    shr-int/2addr v2, v9

    .line 774
    int-to-float v2, v2

    .line 775
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 777
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 779
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 781
    add-int/2addr v2, v4

    .line 782
    shr-int/2addr v2, v9

    .line 783
    int-to-float v2, v2

    .line 784
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 786
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 788
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 790
    add-int/2addr v2, v4

    .line 791
    shr-int/2addr v2, v9

    .line 792
    int-to-float v2, v2

    .line 793
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 795
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 797
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 799
    add-int/2addr v1, v2

    .line 800
    shr-int/2addr v1, v9

    .line 801
    int-to-float v1, v1

    .line 802
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 804
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 806
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 809
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 811
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 813
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 816
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 818
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 821
    invoke-static {}, Lcom/baidu/input/ime/params/util/SkinStatus;->a()Z

    .line 824
    move-result v0

    .line 825
    if-eqz v0, :cond_351

    .line 827
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 829
    const v2, -0x16120f

    .line 832
    if-nez v0, :cond_347

    .line 834
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 836
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    goto :goto_372

    .line 840
    :cond_347
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 842
    invoke-static {v2}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    .line 845
    move-result v2

    .line 846
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 849
    goto :goto_372

    .line 850
    :cond_351
    iget-boolean v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->G:Z

    .line 852
    if-eqz v0, :cond_364

    .line 854
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 856
    sget v2, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->O:I

    .line 858
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 861
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 863
    const/16 v2, 0xcc

    .line 865
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 868
    goto :goto_372

    .line 869
    :cond_364
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 871
    sget v2, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->M:I

    .line 873
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 878
    const/16 v2, 0x33

    .line 880
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    :goto_372
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->v0:Landroid/graphics/Rect;

    .line 885
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 888
    move-result v0

    .line 889
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->w0:Landroid/graphics/Rect;

    .line 891
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 894
    move-result v2

    .line 895
    sub-int/2addr v0, v2

    .line 896
    shr-int/2addr v0, v9

    .line 897
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->A0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 899
    int-to-float v0, v0

    .line 900
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 903
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 905
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 908
    iput-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 910
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 913
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 915
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 918
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 920
    const/high16 v1, 0x40000000  # 2.0f

    .line 922
    cmpl-float v0, v0, v1

    .line 924
    if-ltz v0, :cond_3a3

    .line 926
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 928
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 931
    goto :goto_3aa

    .line 932
    :cond_3a3
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 934
    const/high16 v1, 0x3f800000  # 1.0f

    .line 936
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 939
    :goto_3aa
    invoke-static {}, Lcom/baidu/input/ime/params/util/SkinStatus;->a()Z

    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_3c6

    .line 945
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 947
    const v1, -0x5a352a1d

    .line 950
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 953
    sget-boolean v0, Lcom/baidu/input/ime/ImePref;->T:Z

    .line 955
    if-eqz v0, :cond_3e0

    .line 957
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 959
    invoke-static {v1}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    .line 962
    move-result v1

    .line 963
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 966
    goto :goto_3e0

    .line 967
    :cond_3c6
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 969
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 971
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 974
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 976
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->N:I

    .line 978
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 981
    move-result v1

    .line 982
    int-to-double v1, v1

    .line 983
    const-wide v3, 0x3fd999999999999aL  # 0.4

    .line 988
    mul-double/2addr v1, v3

    .line 989
    double-to-int v1, v1

    .line 990
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 993
    :cond_3e0
    :goto_3e0
    invoke-static {}, Lcom/baidu/input/di/ImeComponent;->b()Lcom/baidu/input/di/ImeFlavorMacro;

    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    goto :goto_41e

    .line 1001
    :pswitch_3e8  #0x1, 0x2, 0x3, 0x4
    move v9, v6

    .line 1002
    const/4 v10, 0x6

    .line 1003
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 1005
    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1008
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 1010
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 1012
    iget-object v2, v7, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->d:[I

    .line 1014
    aget v3, v2, v9

    .line 1016
    add-int/2addr v1, v3

    .line 1017
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1019
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1021
    const/4 v3, 0x3

    .line 1022
    aget v2, v2, v3

    .line 1024
    sub-int/2addr v1, v2

    .line 1025
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1027
    sget-boolean v0, Lcom/baidu/input/pub/ImeBaseGlobal;->n:Z

    .line 1029
    if-eqz v0, :cond_40f

    .line 1031
    invoke-static {}, Lcom/baidu/input/ime/pad/FoldUtils;->a()Z

    .line 1034
    move-result v0

    .line 1035
    if-eqz v0, :cond_40d

    .line 1037
    goto :goto_40f

    .line 1038
    :cond_40d
    move v2, v11

    .line 1039
    goto :goto_410

    .line 1040
    :cond_40f
    :goto_40f
    move v2, v10

    .line 1041
    :goto_410
    iget-object v5, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 1043
    iget-object v0, v7, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->E0:[I

    .line 1045
    array-length v6, v0

    .line 1046
    const/4 v3, 0x4

    .line 1047
    const/16 v4, 0x8

    .line 1049
    const/4 v1, 0x2

    .line 1050
    move-object/from16 v0, p0

    .line 1052
    invoke-virtual/range {v0 .. v6}, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->b0(IIIILandroid/graphics/Rect;I)V

    .line 1055
    :cond_41e
    :goto_41e
    return-void

    nop

    .line 1057
    :pswitch_data_420
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_53  #00000002
        :pswitch_4a  #00000003
        :pswitch_4a  #00000004
        :pswitch_41  #00000005
        :pswitch_41  #00000006
        :pswitch_4a  #00000007
        :pswitch_4a  #00000008
    .end packed-switch

    .line 1077
    :pswitch_data_434
    .packed-switch 0x1
        :pswitch_ad  #00000001
        :pswitch_ad  #00000002
        :pswitch_8d  #00000003
        :pswitch_8d  #00000004
        :pswitch_6a  #00000005
        :pswitch_6a  #00000006
        :pswitch_8d  #00000007
        :pswitch_8d  #00000008
    .end packed-switch

    .line 1097
    :pswitch_data_448
    .packed-switch 0x1
        :pswitch_3e8  #00000001
        :pswitch_3e8  #00000002
        :pswitch_3e8  #00000003
        :pswitch_3e8  #00000004
        :pswitch_13d  #00000005
        :pswitch_13d  #00000006
        :pswitch_117  #00000007
        :pswitch_117  #00000008
    .end packed-switch

    .line 1117
    :array_45c
    .array-data 4
        0xd
        0x2
        0xb
        0x1
        0xc
        0x9
        0xa
        0x3
        0x4
        0x5
        0x6
        0x8
        0x7
    .end array-data

    .line 1147
    :array_47a
    .array-data 4
        0x8
        0x5
        0x7
        0xa
        0xd
        0x2
        0x3
        0x6
        0x4
        0xc
        0xb
        0x9
    .end array-data

    .line 1175
    :array_496
    .array-data 4
        0xa
        0x3
        0x4
        0x5
        0x6
        0xd
        0xb
        0x9
        0xc
        0x2
    .end array-data
.end method

.method public final v()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final w()V
    .registers 5

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
    new-instance v0, Lcom/baidu/input/ime/params/ImginiLoader;

    .line 15
    invoke-direct {v0}, Lcom/baidu/input/ime/params/ImginiLoader;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->r0:Lcom/baidu/input/ime/params/ImginiLoader;

    .line 20
    sget v1, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 22
    const-string v2, "edit_panel"

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/input/ime/params/ImginiLoader;->H(Ljava/lang/String;FZ)V

    .line 28
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->W:I

    .line 31
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 33
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->X:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 38
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 40
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->c0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->c0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 51
    const/16 v2, 0xa6

    .line 53
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    sget v0, Lcom/baidu/input/ime/editor/popupdelegate/AbsPopupDelegate;->Q:F

    .line 58
    invoke-static {v0, v1}, Lcom/baidu/util/SkinSysIO;->checkScale(FZ)F

    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->s0:F

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    .line 66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->t0:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    .line 73
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->u0:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    .line 80
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->B0:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    .line 87
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->C0:Landroid/graphics/Rect;

    .line 92
    iput v3, p0, Lcom/baidu/input/ime/editor/popupdelegate/EditControlManagerDelegate;->D0:I

    .line 94
    return-void
.end method

.method public final y(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1
    return-void
.end method
