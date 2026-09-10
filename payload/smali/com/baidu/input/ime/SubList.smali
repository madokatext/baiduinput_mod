.class public Lcom/baidu/input/ime/SubList;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/ime/keymap/sublist/ISubListRefresh;
.implements Lcom/baidu/input/ime/keymap/sublist/ISubList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/ime/SubList$Cell;
    }
.end annotation


# static fields
.field public static A0:Landroid/graphics/Bitmap;

.field public static B0:Landroid/graphics/Bitmap;

.field public static C0:I

.field public static D0:I

.field public static E0:I

.field public static x0:Ljava/lang/String;

.field public static y0:Landroid/graphics/NinePatch;

.field public static z0:B


# instance fields
.field public baiduModDirectTouch:Z

.field public A:Lcom/baidu/input/ime/params/ListParam;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Lcom/baidu/input/ime/params/StyleParam;

.field public G:Lcom/baidu/input/ime/params/StyleParam;

.field public H:[I

.field public I:[Ljava/lang/String;

.field public J:[Ljava/lang/String;

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:D

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final a:Z

.field public a0:F

.field public final b:Lcom/baidu/input/ime/newcore/state/ListState2;

.field public b0:F

.field public c:Z

.field public c0:F

.field public final d:J

.field public d0:I

.field public e:Ljava/lang/String;

.field public e0:Landroid/graphics/Rect;

.field public f:Ljava/lang/Object;

.field public f0:Landroid/graphics/Rect;

.field public g:I

.field public final g0:Landroid/graphics/Rect;

.field public h:Z

.field public h0:I

.field public i:Z

.field public i0:I

.field public j:I

.field public j0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public k:I

.field public k0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public l:[Lcom/baidu/input/ime/SubList$Cell;

.field public l0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public m:I

.field public m0:Lcom/baidu/input/acgfont/ImeBasePaint;

.field public n:Landroid/graphics/Rect;

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:Z

.field public r:I

.field public r0:Z

.field public s:I

.field public s0:Lcom/baidu/input/ime/SubList$Cell;

.field public t:I

.field public t0:I

.field public u:I

.field public u0:I

.field public v:I

.field public v0:Z

.field public w:I

.field public w0:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/baidu/input/ime/SubList;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->c:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 5
    iput v0, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 6
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 8
    iput v1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 9
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->V:Z

    .line 10
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 11
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 12
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Z:Z

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/input/ime/SubList;->g0:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->q0:Z

    .line 15
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->a:Z

    .line 16
    sget-object p1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    iget-object p1, p1, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 17
    iget-object p1, p1, Lcom/baidu/input/ime/InputEventHandler;->D:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 18
    iput-object p1, p0, Lcom/baidu/input/ime/SubList;->b:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/input/ime/SubList;->d:J

    return-void
.end method

.method public static final h([Ljava/lang/String;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    array-length v1, p0

    .line 6
    move v2, v0

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-ge v2, v1, :cond_43

    .line 10
    aget-object v4, p0, v2

    .line 12
    if-eqz v4, :cond_40

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 17
    move-result v5

    .line 18
    const/4 v6, 0x2

    .line 19
    if-ge v5, v6, :cond_15

    .line 21
    goto :goto_40

    .line 22
    :cond_15
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x46

    .line 28
    if-ne v5, v6, :cond_33

    .line 30
    :try_start_1d
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    .line 38
    goto :goto_2b

    .line 39
    :catch_26
    move-exception v3

    .line 40
    invoke-static {v3}, Lcom/baidu/input/devtool/log/BDLog;->k(Ljava/lang/Throwable;)V

    .line 43
    move v3, v0

    .line 44
    :goto_2b
    const v4, 0xf009

    .line 47
    if-eq v3, v4, :cond_40

    .line 49
    if-eqz v3, :cond_40

    .line 51
    return v0

    .line 52
    :cond_33
    const/16 v6, 0x5a

    .line 54
    if-ne v5, v6, :cond_40

    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v3

    .line 60
    const/16 v4, 0x2b

    .line 62
    if-ne v3, v4, :cond_40

    .line 64
    return v0

    .line 65
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_6

    .line 68
    :cond_43
    return v3
.end method

.method public static n()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/baidu/input/ime/SubList;->x0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static v()Lcom/baidu/input/acgfont/ImeBasePaint;
    .registers 2

    .line 1
    new-instance v0, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 3
    invoke-direct {v0}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 6
    sget-object v1, Lcom/baidu/input/ime/font/ImeFontComponent;->a:Lcom/baidu/input/ime/font/ImeFontComponent$Companion;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/baidu/input/ime/font/ImeFontComponent$Companion;->a()Lcom/baidu/input/font/api/IFontService;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/baidu/input/font/api/IFontService;->M()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1b

    .line 21
    sget-object v1, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 23
    invoke-static {v1}, Lcom/baidu/input/acgfont/FontUtils;->o(Landroid/content/ContextWrapper;)Landroid/graphics/Typeface;

    .line 26
    move-result-object v1

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-static {}, Lcom/baidu/input/acgfont/FontUtils;->k()Landroid/graphics/Typeface;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public final A([Ljava/lang/String;Z)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_a

    .line 5
    iget-object v2, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 7
    if-nez v2, :cond_a

    .line 9
    move v2, v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v2, v1

    .line 12
    :goto_b
    if-eqz p1, :cond_39

    .line 14
    iget-object v3, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 16
    if-eqz v3, :cond_39

    .line 18
    array-length v4, p1

    .line 19
    array-length v3, v3

    .line 20
    if-ne v4, v3, :cond_39

    .line 22
    move v3, v0

    .line 23
    :goto_16
    array-length v4, p1

    .line 24
    if-ge v3, v4, :cond_35

    .line 26
    aget-object v4, p1, v3

    .line 28
    if-nez v4, :cond_24

    .line 30
    iget-object v5, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 32
    aget-object v5, v5, v3

    .line 34
    if-nez v5, :cond_24

    .line 36
    goto :goto_32

    .line 37
    :cond_24
    if-eqz v4, :cond_35

    .line 39
    iget-object v5, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 41
    aget-object v5, v5, v3

    .line 43
    if-eqz v5, :cond_35

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_35

    .line 51
    :goto_32
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_16

    .line 54
    :cond_35
    array-length v4, p1

    .line 55
    if-ne v3, v4, :cond_39

    .line 57
    move v2, v0

    .line 58
    :cond_39
    if-nez p1, :cond_48

    .line 60
    iget p1, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 62
    new-array p1, p1, [Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 66
    iput v0, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 68
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 70
    iput v0, p0, Lcom/baidu/input/ime/SubList;->v:I

    .line 72
    goto :goto_8b

    .line 73
    :cond_48
    array-length v3, p1

    .line 74
    iput v3, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 76
    if-eqz p2, :cond_50

    .line 78
    add-int/2addr v3, v1

    .line 79
    iput v3, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 81
    :cond_50
    iget v3, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 83
    iget v4, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 85
    if-ge v3, v4, :cond_57

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v4, v3

    .line 89
    :goto_58
    new-array v4, v4, [Ljava/lang/String;

    .line 91
    iput-object v4, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 93
    if-eqz p2, :cond_60

    .line 95
    add-int/lit8 v3, v3, -0x1

    .line 97
    :cond_60
    move v4, v0

    .line 98
    :goto_61
    if-ge v4, v3, :cond_6c

    .line 100
    iget-object v5, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 102
    aget-object v6, p1, v4

    .line 104
    aput-object v6, v5, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 108
    goto :goto_61

    .line 109
    :cond_6c
    if-eqz p2, :cond_74

    .line 111
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 113
    const-string p2, "F61449"

    .line 115
    aput-object p2, p1, v4

    .line 117
    :cond_74
    iget p1, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 119
    iget p2, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 121
    if-le p1, p2, :cond_7b

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move v1, v0

    .line 125
    :goto_7c
    iput-boolean v1, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 127
    iget p2, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 129
    if-nez p2, :cond_86

    .line 131
    iget p2, p0, Lcom/baidu/input/ime/SubList;->r:I

    .line 133
    :goto_84
    mul-int/2addr p1, p2

    .line 134
    goto :goto_89

    .line 135
    :cond_86
    iget p2, p0, Lcom/baidu/input/ime/SubList;->q:I

    .line 137
    goto :goto_84

    .line 138
    :goto_89
    iput p1, p0, Lcom/baidu/input/ime/SubList;->v:I

    .line 140
    :goto_8b
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 142
    if-eqz p1, :cond_a8

    .line 144
    sget-object p2, Lcom/baidu/input/ime/SubList;->y0:Landroid/graphics/NinePatch;

    .line 146
    if-eqz p2, :cond_a8

    .line 148
    const/4 p2, 0x0

    .line 149
    iput p2, p0, Lcom/baidu/input/ime/SubList;->b0:F

    .line 151
    iget p2, p0, Lcom/baidu/input/ime/SubList;->u:I

    .line 153
    int-to-float p2, p2

    .line 154
    const/high16 v1, 0x3f800000  # 1.0f

    .line 156
    mul-float/2addr p2, v1

    .line 157
    iget v1, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 159
    int-to-float v1, v1

    .line 160
    mul-float/2addr p2, v1

    .line 161
    iget v1, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 163
    int-to-float v1, v1

    .line 164
    div-float/2addr p2, v1

    .line 165
    iput p2, p0, Lcom/baidu/input/ime/SubList;->c0:F

    .line 167
    iput p2, p0, Lcom/baidu/input/ime/SubList;->a0:F

    .line 169
    :cond_a8
    if-nez p1, :cond_ae

    .line 171
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 173
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 175
    :cond_ae
    if-eqz v2, :cond_b3

    .line 177
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->q()V

    .line 180
    :cond_b3
    return-void
.end method

.method public B(ZZ)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->V:Z

    .line 3
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 5
    if-nez p1, :cond_9

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->V:Z

    .line 10
    :cond_9
    return-void
.end method

.method public final C(J)V
    .registers 14

    # Release/cancel must not schedule the legacy spring or inertia loop.
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_release_original
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->w0:Z
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->baiduModStopMotion()V
    return-void
    :baidu_mod_release_original

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->w0:Z

    .line 4
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_b

    .line 9
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 11
    return-void

    .line 12
    :cond_b
    iget v3, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 14
    if-lez v3, :cond_1e

    .line 16
    div-int/lit8 p1, v3, 0x8

    .line 18
    iput p1, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 20
    if-nez p1, :cond_17

    .line 22
    iput v3, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 24
    :cond_17
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 26
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 28
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 30
    return-void

    .line 31
    :cond_1e
    array-length v1, v1

    .line 32
    iget v4, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 34
    sub-int/2addr v1, v4

    .line 35
    if-gez v1, :cond_25

    .line 37
    move v1, v2

    .line 38
    :cond_25
    iget v4, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 40
    mul-int/2addr v1, v4

    .line 41
    add-int/2addr v1, v3

    .line 42
    if-gez v1, :cond_3b

    .line 44
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 46
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 48
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 50
    neg-int p1, v1

    .line 51
    div-int/lit8 p2, p1, 0x8

    .line 53
    iput p2, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 55
    if-nez p2, :cond_3a

    .line 57
    iput p1, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 59
    :cond_3a
    return-void

    .line 60
    :cond_3b
    iget-boolean v1, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 62
    if-nez v1, :cond_40

    .line 64
    return-void

    .line 65
    :cond_40
    const-wide/16 v3, 0x0

    .line 67
    cmp-long v1, p1, v3

    .line 69
    if-nez v1, :cond_56

    .line 71
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 73
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 75
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->s()Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_53

    .line 81
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 83
    goto :goto_55

    .line 84
    :cond_53
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 86
    :goto_55
    return-void

    .line 87
    :cond_56
    iget v1, p0, Lcom/baidu/input/ime/SubList;->P:I

    .line 89
    const/4 v3, -0x1

    .line 90
    if-ne v1, v3, :cond_6b

    .line 92
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 94
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 96
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->s()Z

    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_68

    .line 102
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 107
    :goto_6a
    return-void

    .line 108
    :cond_6b
    long-to-double p1, p1

    .line 109
    const-wide v4, 0x408f400000000000L  # 1000.0

    .line 114
    div-double/2addr p1, v4

    .line 115
    const-wide v4, 0x3fb999999999999aL  # 0.1

    .line 120
    cmpl-double v4, p1, v4

    .line 122
    if-lez v4, :cond_8b

    .line 124
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 126
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 128
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->s()Z

    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_88

    .line 134
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 136
    goto :goto_8a

    .line 137
    :cond_88
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 139
    :goto_8a
    return-void

    .line 140
    :cond_8b
    iget v4, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 142
    if-nez v4, :cond_a1

    .line 144
    iget v1, p0, Lcom/baidu/input/ime/SubList;->O:I

    .line 146
    if-ne v1, v3, :cond_9b

    .line 148
    iget v1, p0, Lcom/baidu/input/ime/SubList;->S:I

    .line 150
    iget v3, p0, Lcom/baidu/input/ime/SubList;->Q:I

    .line 152
    sub-int/2addr v1, v3

    .line 153
    iput v1, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 155
    goto :goto_b0

    .line 156
    :cond_9b
    iget v3, p0, Lcom/baidu/input/ime/SubList;->S:I

    .line 158
    sub-int/2addr v3, v1

    .line 159
    iput v3, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 161
    goto :goto_b0

    .line 162
    :cond_a1
    iget v4, p0, Lcom/baidu/input/ime/SubList;->N:I

    .line 164
    if-ne v4, v3, :cond_ab

    .line 166
    iget v3, p0, Lcom/baidu/input/ime/SubList;->R:I

    .line 168
    sub-int/2addr v3, v1

    .line 169
    iput v3, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 171
    goto :goto_b0

    .line 172
    :cond_ab
    iget v1, p0, Lcom/baidu/input/ime/SubList;->R:I

    .line 174
    sub-int/2addr v1, v4

    .line 175
    iput v1, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 177
    :goto_b0
    iget v1, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 179
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 182
    move-result v1

    .line 183
    int-to-double v3, v1

    .line 184
    const-wide v5, 0x3fd999999999999aL  # 0.4

    .line 189
    mul-double/2addr v3, v5

    .line 190
    div-double/2addr v3, p1

    .line 191
    iput-wide v3, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 193
    iget p1, p0, Lcom/baidu/input/ime/SubList;->u:I

    .line 195
    int-to-double v5, p1

    .line 196
    cmpl-double p2, v3, v5

    .line 198
    if-lez p2, :cond_c9

    .line 200
    iput-wide v5, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 202
    :cond_c9
    iget-wide v3, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 204
    iget p2, p0, Lcom/baidu/input/ime/SubList;->i0:I

    .line 206
    int-to-double v7, p2

    .line 207
    cmpl-double p2, v3, v7

    .line 209
    if-ltz p2, :cond_114

    .line 211
    iget p2, p0, Lcom/baidu/input/ime/SubList;->U:I

    .line 213
    if-lez p2, :cond_e3

    .line 215
    iget p2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 217
    int-to-double v9, p2

    .line 218
    add-double/2addr v9, v3

    .line 219
    cmpl-double v1, v9, v5

    .line 221
    if-lez v1, :cond_fc

    .line 223
    sub-int/2addr p1, p2

    .line 224
    int-to-double p1, p1

    .line 225
    iput-wide p1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 227
    goto :goto_fc

    .line 228
    :cond_e3
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 230
    array-length p2, p2

    .line 231
    iget v1, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 233
    sub-int/2addr p2, v1

    .line 234
    if-gez p2, :cond_ec

    .line 236
    move p2, v2

    .line 237
    :cond_ec
    iget v1, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 239
    mul-int/2addr p2, v1

    .line 240
    iget v1, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 242
    add-int/2addr p2, v1

    .line 243
    int-to-double v9, p2

    .line 244
    sub-double/2addr v3, v9

    .line 245
    cmpl-double v1, v3, v5

    .line 247
    if-lez v1, :cond_fc

    .line 249
    add-int/2addr p1, p2

    .line 250
    int-to-double p1, p1

    .line 251
    iput-wide p1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 253
    :cond_fc
    :goto_fc
    iget-wide p1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 255
    const-wide/16 v3, 0x0

    .line 257
    cmpg-double p1, p1, v3

    .line 259
    if-gez p1, :cond_106

    .line 261
    iput-wide v7, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 263
    :cond_106
    iget-wide p1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 265
    const-wide/high16 v3, 0x4020000000000000L  # 8.0

    .line 267
    div-double v3, p1, v3

    .line 269
    double-to-int v1, v3

    .line 270
    iput v1, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 272
    if-nez v1, :cond_114

    .line 274
    double-to-int p1, p1

    .line 275
    iput p1, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 277
    :cond_114
    iget-wide p1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 279
    cmpg-double p1, p1, v7

    .line 281
    if-gez p1, :cond_12a

    .line 283
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 285
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 287
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->s()Z

    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_127

    .line 293
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 295
    goto :goto_130

    .line 296
    :cond_127
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 298
    goto :goto_130

    .line 299
    :cond_12a
    iget-boolean p1, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 301
    iput-boolean p1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 303
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 305
    :goto_130
    return-void
.end method

.method public final D([Ljava/lang/String;Z)V
    .registers 7

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/baidu/input/ime/SubList;->J:[Ljava/lang/String;

    .line 6
    goto :goto_27

    .line 7
    :cond_6
    array-length v0, p1

    .line 8
    if-eqz p2, :cond_b

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    :cond_b
    new-array v1, v0, [Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/baidu/input/ime/SubList;->J:[Ljava/lang/String;

    .line 16
    if-eqz p2, :cond_13

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    if-ge v1, v0, :cond_1f

    .line 23
    iget-object v2, p0, Lcom/baidu/input/ime/SubList;->J:[Ljava/lang/String;

    .line 25
    aget-object v3, p1, v1

    .line 27
    aput-object v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_14

    .line 32
    :cond_1f
    if-eqz p2, :cond_27

    .line 34
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->J:[Ljava/lang/String;

    .line 36
    const-string p2, "F61449"

    .line 38
    aput-object p2, p1, v1

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public final E(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gez p1, :cond_e

    .line 4
    iget p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 6
    if-lez p1, :cond_1b

    .line 8
    sub-int/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 11
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->q()V

    .line 14
    return v0

    .line 15
    :cond_e
    iget p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 17
    add-int/2addr p1, v0

    .line 18
    iget v1, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 20
    if-ge p1, v1, :cond_1b

    .line 22
    iput p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 24
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->q()V

    .line 27
    return v0

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final e()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/gamekeyboard/ImeGameComponent;->b()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget v0, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 11
    if-nez v0, :cond_1f

    .line 13
    sget-object v0, Lcom/baidu/input/pub/Global;->n0:[Z

    .line 15
    const/16 v2, 0x6e

    .line 17
    aget-boolean v0, v0, v2

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->J:[Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/baidu/input/ime/SubList;->h([Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_1f
    return v1
.end method

.method public final f()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ime/params/ListParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    .line 5
    invoke-static {v0}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lcom/baidu/skinrender/SkinRenderStatus;->z:F

    .line 17
    iget-short v0, v0, Lcom/baidu/input/ime/params/StyleParam;->e:S

    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    int-to-short v0, v0

    .line 23
    iput v0, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 25
    goto :goto_1b

    .line 26
    :catch_19
    move-exception v0

    .line 27
    goto :goto_4f

    .line 28
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 30
    if-lez v0, :cond_52

    .line 32
    iget v1, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 34
    if-nez v1, :cond_37

    .line 36
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 38
    int-to-float v0, v0

    .line 39
    const v2, 0x3f99999a  # 1.2f

    .line 42
    mul-float/2addr v0, v2

    .line 43
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->m0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 48
    iget v1, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 50
    int-to-float v1, v1

    .line 51
    mul-float/2addr v1, v2

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    goto :goto_45

    .line 56
    :cond_37
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 58
    int-to-float v0, v0

    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->m0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 64
    iget v1, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 66
    int-to-float v1, v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    :goto_45
    iget v0, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 72
    shr-int/lit8 v0, v0, 0x1

    .line 74
    sget-byte v1, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    .line 76
    sub-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/baidu/input/ime/SubList;->p:I
    :try_end_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4e} :catch_19

    .line 79
    goto :goto_52

    .line 80
    :goto_4f
    invoke-static {v0}, Lcom/baidu/input/devtool/log/BDLog;->k(Ljava/lang/Throwable;)V

    .line 83
    :cond_52
    :goto_52
    return-void
.end method

.method public final g(Lcom/baidu/input/ime/InputStatMac;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/SubList;->baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V

    .line 1
    invoke-virtual {p1}, Lcom/baidu/input/ime/InputStatMac;->f()B

    .line 4
    move-result v0

    .line 5
    iget-byte v1, p1, Lcom/baidu/input/ime/InputStatMac;->g:B

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_44

    .line 11
    invoke-static {}, Lcom/baidu/input/ime/hardkeyboard/HardKeyboardComponent;->b()Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/baidu/input/hardkeyboard/api/IHardKeyboard;->D7()Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;

    .line 18
    move-result-object v1

    .line 19
    iget-boolean v1, v1, Lcom/baidu/input/hardkeyboard/impl/HardKeyboardState;->c:Z

    .line 21
    if-eqz v1, :cond_17

    .line 23
    goto :goto_44

    .line 24
    :cond_17
    const/16 v1, 0x32

    .line 26
    if-ne v0, v1, :cond_1f

    .line 28
    const/4 p1, 0x4

    .line 29
    iput p1, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 31
    goto :goto_47

    .line 32
    :cond_1f
    iget v1, p1, Lcom/baidu/input/ime/InputStatMac;->a:I

    .line 34
    const/16 v4, 0x10

    .line 36
    if-ne v1, v4, :cond_29

    .line 38
    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 41
    goto :goto_47

    .line 42
    :cond_29
    const/16 v1, 0x24

    .line 44
    if-eq v0, v1, :cond_35

    .line 46
    const/16 v1, 0x25

    .line 48
    if-ne v0, v1, :cond_32

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    iput v3, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 53
    goto :goto_47

    .line 54
    :cond_35
    :goto_35
    iput v2, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 56
    invoke-virtual {p1}, Lcom/baidu/input/ime/InputStatMac;->l()Z

    .line 59
    move-result p1

    .line 60
    xor-int/lit8 p1, p1, 0x1

    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/baidu/input/ime/SubList;->D([Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {p0, p2, p1}, Lcom/baidu/input/ime/SubList;->A([Ljava/lang/String;Z)V

    .line 68
    return-void

    .line 69
    :cond_44
    :goto_44
    const/4 p1, 0x5

    .line 70
    iput p1, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 72
    :goto_47
    invoke-virtual {p0, p2, v2}, Lcom/baidu/input/ime/SubList;->A([Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V
    .registers 14

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_1
    if-ge v0, p3, :cond_32

    .line 4
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 6
    array-length v2, v1

    .line 7
    if-ge v0, v2, :cond_32

    .line 9
    aget-object v2, v1, v0

    .line 11
    iget-object v2, v2, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 13
    add-int/lit8 v3, v0, -0x1

    .line 15
    aget-object v1, v1, v3

    .line 17
    iget-object v1, v1, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 22
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 24
    aget-object v1, v1, v0

    .line 26
    iget-object v1, v1, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 28
    iget v2, p0, Lcom/baidu/input/ime/SubList;->n0:I

    .line 30
    iget v3, p0, Lcom/baidu/input/ime/SubList;->o0:I

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 35
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 37
    aget-object v5, v1, v0

    .line 39
    add-int v6, p4, v0

    .line 41
    move-object v2, p0

    .line 42
    move-object v3, p1

    .line 43
    move-object v4, p2

    .line 44
    move v7, p5

    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_32
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V
    .registers 15

    .line 1
    if-eqz p3, :cond_1e7

    .line 3
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 5
    if-nez v0, :cond_8

    .line 7
    goto/16 :goto_1e7

    .line 9
    :cond_8
    array-length v1, v0

    .line 10
    if-lt p4, v1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v1, p0, Lcom/baidu/input/ime/SubList;->v0:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_13

    .line 18
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 20
    :cond_13
    iget-boolean v3, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 22
    const/4 v4, 0x1

    .line 23
    if-nez v3, :cond_2e

    .line 25
    sget-boolean v3, Lcom/baidu/input/ime/ImePref;->e:Z

    .line 27
    if-nez v3, :cond_1e

    .line 29
    if-eqz v1, :cond_2e

    .line 31
    :cond_1e
    iget v1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 33
    if-eq p4, v1, :cond_26

    .line 35
    iget v1, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 37
    if-ne p4, v1, :cond_2e

    .line 39
    :cond_26
    aget-object v1, v0, p4

    .line 41
    if-eqz v1, :cond_2e

    .line 43
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->v0:Z

    .line 45
    move v1, v4

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v1, v2

    .line 48
    :goto_2f
    aget-object v0, v0, p4

    .line 50
    iput-object v0, p3, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 52
    iput p4, p3, Lcom/baidu/input/ime/SubList$Cell;->a:I

    .line 54
    sget-object v0, Lcom/baidu/input/di/ImeComponent;->e:Lcom/baidu/input/di/ImeComponent;

    .line 56
    invoke-static {v0}, Lcom/baidu/nl;->y(Lcom/baidu/input/di/ImeComponent;)V

    .line 59
    if-eqz v1, :cond_4c

    .line 61
    sget-object v0, Lcom/baidu/input/ime/SubList;->B0:Landroid/graphics/Bitmap;

    .line 63
    if-eqz v0, :cond_6f

    .line 65
    iget-object v3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 67
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 69
    int-to-float v5, v5

    .line 70
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v3, v3

    .line 73
    invoke-virtual {p1, v0, v5, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    goto :goto_6f

    .line 77
    :cond_4c
    sget-object v0, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    .line 79
    if-eqz v0, :cond_6f

    .line 81
    sget v3, Lcom/baidu/input/ime/SubList;->C0:I

    .line 83
    if-gez v3, :cond_62

    .line 85
    if-lez p4, :cond_62

    .line 87
    iget-object v3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 89
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 91
    int-to-float v5, v5

    .line 92
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 94
    int-to-float v3, v3

    .line 95
    invoke-virtual {p1, v0, v5, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    goto :goto_6f

    .line 99
    :cond_62
    if-lez v3, :cond_6f

    .line 101
    iget-object v3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 103
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 105
    int-to-float v5, v5

    .line 106
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 108
    int-to-float v3, v3

    .line 109
    invoke-virtual {p1, v0, v5, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 114
    aget-object p4, v0, p4

    .line 116
    if-eqz p4, :cond_1e7

    .line 118
    if-eqz v1, :cond_7a

    .line 120
    iget p4, p0, Lcom/baidu/input/ime/SubList;->B:I

    .line 122
    goto :goto_7c

    .line 123
    :cond_7a
    iget p4, p0, Lcom/baidu/input/ime/SubList;->C:I

    .line 125
    :goto_7c
    if-eqz p4, :cond_1e7

    .line 127
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 133
    move-result v0

    .line 134
    iget-object v3, p0, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 136
    if-eqz v3, :cond_ac

    .line 138
    invoke-interface {v3}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->e()Z

    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_ac

    .line 144
    iget-object v3, p0, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 146
    iget-object v5, p0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 148
    invoke-interface {v3, v5, v0}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->c(Lcom/baidu/input/ime/params/IniParam;I)Landroid/util/Pair;

    .line 151
    move-result-object v3

    .line 152
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 154
    check-cast v5, Ljava/lang/Boolean;

    .line 156
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_ac

    .line 162
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 164
    check-cast v3, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result v3

    .line 170
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    :cond_ac
    iget-object v3, p3, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 175
    const-string v5, "F61449"

    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_143

    .line 183
    const/16 v1, 0x1b

    .line 185
    invoke-static {v1}, Lcom/baidu/input/ime/params/KeymapLoader;->o(B)Landroid/graphics/Bitmap;

    .line 188
    move-result-object v1

    .line 189
    iget-object v3, p0, Lcom/baidu/input/ime/SubList;->l0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 191
    if-nez v3, :cond_c7

    .line 193
    new-instance v3, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 195
    invoke-direct {v3}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 198
    iput-object v3, p0, Lcom/baidu/input/ime/SubList;->l0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 200
    :cond_c7
    if-eqz p5, :cond_cb

    .line 202
    move-object p4, p2

    .line 203
    goto :goto_dc

    .line 204
    :cond_cb
    iget-object p5, p0, Lcom/baidu/input/ime/SubList;->l0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 206
    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 209
    iget-object p5, p0, Lcom/baidu/input/ime/SubList;->l0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 211
    new-instance v3, Landroid/graphics/LightingColorFilter;

    .line 213
    invoke-direct {v3, v2, p4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 216
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 219
    iget-object p4, p0, Lcom/baidu/input/ime/SubList;->l0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 221
    :goto_dc
    if-eqz v1, :cond_1e4

    .line 223
    sget-object p5, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->a:Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;

    .line 225
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-static {}, Lcom/baidu/input/ime/extendedlayout/ExtendedLayoutUtil;->d()Z

    .line 231
    move-result p5

    .line 232
    if-eqz p5, :cond_124

    .line 234
    new-instance p5, Landroid/graphics/Rect;

    .line 236
    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    .line 239
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 242
    move-result v2

    .line 243
    int-to-float v2, v2

    .line 244
    const/high16 v3, 0x42640000  # 57.0f

    .line 246
    div-float/2addr v2, v3

    .line 247
    const/high16 v4, 0x42200000  # 40.0f

    .line 249
    mul-float/2addr v2, v4

    .line 250
    float-to-int v2, v2

    .line 251
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 254
    move-result v5

    .line 255
    int-to-float v5, v5

    .line 256
    div-float/2addr v5, v3

    .line 257
    mul-float/2addr v5, v4

    .line 258
    float-to-int v3, v5

    .line 259
    iget-object v4, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 261
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 264
    move-result v4

    .line 265
    shr-int/lit8 v5, v2, 0x1

    .line 267
    sub-int/2addr v4, v5

    .line 268
    iput v4, p5, Landroid/graphics/Rect;->left:I

    .line 270
    add-int/2addr v4, v2

    .line 271
    iput v4, p5, Landroid/graphics/Rect;->right:I

    .line 273
    iget-object p3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 275
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 278
    move-result p3

    .line 279
    shr-int/lit8 v2, v3, 0x1

    .line 281
    sub-int/2addr p3, v2

    .line 282
    iput p3, p5, Landroid/graphics/Rect;->top:I

    .line 284
    add-int/2addr p3, v3

    .line 285
    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    .line 287
    const/4 p3, 0x0

    .line 288
    invoke-virtual {p1, v1, p3, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    goto/16 :goto_1e4

    .line 293
    :cond_124
    iget-object p5, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {p5}, Landroid/graphics/Rect;->centerX()I

    .line 298
    move-result p5

    .line 299
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 302
    move-result v2

    .line 303
    shr-int/2addr v2, v4

    .line 304
    sub-int/2addr p5, v2

    .line 305
    int-to-float p5, p5

    .line 306
    iget-object p3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 311
    move-result p3

    .line 312
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 315
    move-result v2

    .line 316
    shr-int/2addr v2, v4

    .line 317
    sub-int/2addr p3, v2

    .line 318
    int-to-float p3, p3

    .line 319
    invoke-virtual {p1, v1, p5, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 322
    goto/16 :goto_1e4

    .line 324
    :cond_143
    iget-object p4, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 326
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    .line 329
    move-result p4

    .line 330
    iget v5, p0, Lcom/baidu/input/ime/SubList;->p:I

    .line 332
    add-int/2addr p4, v5

    .line 333
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 336
    move-result v5

    .line 337
    iget-object v6, p3, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 339
    const-class v7, Lcom/baidu/input/emotion/cocomodule/IEmotion;

    .line 341
    invoke-static {v7}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 344
    move-result-object v8

    .line 345
    check-cast v8, Lcom/baidu/input/emotion/cocomodule/IEmotion;

    .line 347
    invoke-interface {v8}, Lcom/baidu/input/emotion/cocomodule/IEmotion;->vb()Lcom/baidu/input/emotion/data/manager/emoji/IEmojiManager;

    .line 350
    move-result-object v8

    .line 351
    invoke-interface {v8, v6}, Lcom/baidu/input/emotion/data/manager/emoji/IEmojiManager;->h(Ljava/lang/String;)I

    .line 354
    move-result v6

    .line 355
    const/4 v8, -0x1

    .line 356
    if-le v6, v8, :cond_175

    .line 358
    invoke-static {v7}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 361
    move-result-object p4

    .line 362
    check-cast p4, Lcom/baidu/input/emotion/cocomodule/IEmotion;

    .line 364
    invoke-interface {p4}, Lcom/baidu/input/emotion/cocomodule/IEmotion;->va()Lcom/baidu/input/emotion/type/emoji/IEmojiPicsDrawer;

    .line 367
    move-result-object p4

    .line 368
    iget-object p3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 370
    invoke-interface {p4, v6, p1, p2, p3}, Lcom/baidu/input/emotion/type/emoji/IEmojiPicsDrawer;->h(ILandroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Landroid/graphics/Rect;)V

    .line 373
    goto :goto_1e4

    .line 374
    :cond_175
    iget-object v6, p3, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 376
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 379
    move-result v6

    .line 380
    iget v7, p0, Lcom/baidu/input/ime/SubList;->q:I

    .line 382
    int-to-float v7, v7

    .line 383
    cmpl-float v8, v6, v7

    .line 385
    if-lez v8, :cond_1b1

    .line 387
    int-to-float v8, v5

    .line 388
    sub-float v7, v6, v7

    .line 390
    mul-float/2addr v7, v8

    .line 391
    div-float/2addr v7, v6

    .line 392
    float-to-int v6, v7

    .line 393
    :goto_188
    sub-int v7, v5, v6

    .line 395
    if-ltz v7, :cond_1b1

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    .line 399
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    iget-object v8, p3, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 404
    invoke-static {v8, v2, v7}, Lcom/baidu/input/pub/StringUtil;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v7, "..."

    .line 413
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 423
    move-result v7

    .line 424
    iget v8, p0, Lcom/baidu/input/ime/SubList;->q:I

    .line 426
    int-to-float v8, v8

    .line 427
    cmpl-float v7, v7, v8

    .line 429
    if-lez v7, :cond_1b1

    .line 431
    add-int/lit8 v6, v6, 0x1

    .line 433
    goto :goto_188

    .line 434
    :cond_1b1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 437
    move-result v5

    .line 438
    if-ne v5, v4, :cond_1c5

    .line 440
    sget-boolean v4, Lcom/baidu/input/acgfont/FontUtils;->c:Z

    .line 442
    if-nez v4, :cond_1c5

    .line 444
    iget v4, p0, Lcom/baidu/input/ime/SubList;->E:I

    .line 446
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 449
    move-result v2

    .line 450
    invoke-static {v4, v2}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCharOffset(IC)I

    .line 453
    move-result v2

    .line 454
    :cond_1c5
    if-eqz v1, :cond_1d8

    .line 456
    if-eqz p5, :cond_1d8

    .line 458
    iget-object p3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 460
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 463
    move-result p3

    .line 464
    add-int/2addr p3, v2

    .line 465
    int-to-float p3, p3

    .line 466
    int-to-float p4, p4

    .line 467
    iget-object p5, p0, Lcom/baidu/input/ime/SubList;->m0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 469
    invoke-virtual {p1, v3, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 472
    goto :goto_1e4

    .line 473
    :cond_1d8
    iget-object p3, p3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 475
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 478
    move-result p3

    .line 479
    add-int/2addr p3, v2

    .line 480
    int-to-float p3, p3

    .line 481
    int-to-float p4, p4

    .line 482
    invoke-virtual {p1, v3, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 485
    :cond_1e4
    :goto_1e4
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    :cond_1e7
    :goto_1e7
    return-void
.end method

.method public final k(IZLcom/baidu/input/ime/KeyAction;)B
    .registers 10

    .line 1
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 3
    iget-object v0, v0, Lcom/baidu/input/ImeService;->u:Lcom/baidu/input/ime/InputEventHandler;

    .line 5
    iget-object v0, v0, Lcom/baidu/input/ime/InputEventHandler;->B:Lcom/baidu/input/ime/newcore/state/CandState2;

    .line 7
    iget-object v0, v0, Lcom/baidu/input/ime/newcore/state/CandState2;->k:Lcom/baidu/input/pub/CoreString;

    .line 9
    iget v1, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 11
    iget-object v2, p0, Lcom/baidu/input/ime/SubList;->b:Lcom/baidu/input/ime/newcore/state/ListState2;

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v1, v5, :cond_6a

    .line 18
    const/4 p2, 0x3

    .line 19
    if-eq v1, p2, :cond_4e

    .line 21
    const/4 v0, 0x4

    .line 22
    if-eq v1, v0, :cond_43

    .line 24
    const/4 p2, 0x5

    .line 25
    if-eq v1, p2, :cond_38

    .line 27
    if-ltz p1, :cond_33

    .line 29
    iget p2, p0, Lcom/baidu/input/ime/SubList;->v:I

    .line 31
    if-lez p2, :cond_33

    .line 33
    invoke-virtual {p3}, Lcom/baidu/input/ime/KeyAction;->a()V

    .line 36
    const/high16 p2, 0xa0000

    .line 38
    or-int/2addr p1, p2

    .line 39
    iput p1, p3, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 41
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 43
    if-eqz p1, :cond_b7

    .line 45
    sget-object p2, Lcom/baidu/input/pub/Global;->f0:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    goto/16 :goto_b7

    .line 52
    :cond_33
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->x()V

    .line 55
    goto/16 :goto_b7

    .line 57
    :cond_38
    if-ltz p1, :cond_b7

    .line 59
    iget p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 61
    iget p2, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 63
    if-eq p1, p2, :cond_42

    .line 65
    iput v4, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 67
    :cond_42
    return v5

    .line 68
    :cond_43
    if-ltz p1, :cond_b7

    .line 70
    iget p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 72
    iget p3, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 74
    if-eq p1, p3, :cond_4d

    .line 76
    iput v4, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 78
    :cond_4d
    return p2

    .line 79
    :cond_4e
    if-ltz p1, :cond_66

    .line 81
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 83
    if-eqz p2, :cond_5d

    .line 85
    iget v1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 87
    if-le v1, v4, :cond_5d

    .line 89
    array-length v4, p2

    .line 90
    if-ge v1, v4, :cond_5d

    .line 92
    aget-object v3, p2, v1

    .line 94
    :cond_5d
    iput-object v3, v0, Lcom/baidu/input/pub/CoreStringInfo;->value:Ljava/lang/String;

    .line 96
    const/high16 p2, 0x90000

    .line 98
    or-int/2addr p2, p1

    .line 99
    iput p2, p3, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 101
    iput p1, v2, Lcom/baidu/input/ime/newcore/state/ListState2;->d:I

    .line 103
    :cond_66
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->x()V

    .line 106
    goto :goto_b7

    .line 107
    :cond_6a
    iget v0, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 109
    iget v1, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 111
    if-ne v0, v1, :cond_b5

    .line 113
    iget v1, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 115
    if-le v1, p1, :cond_b5

    .line 117
    if-le p1, v4, :cond_b5

    .line 119
    iput v4, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 121
    if-nez p2, :cond_7b

    .line 123
    goto :goto_b7

    .line 124
    :cond_7b
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 126
    if-eqz p2, :cond_86

    .line 128
    if-le v0, v4, :cond_86

    .line 130
    array-length v1, p2

    .line 131
    if-ge v0, v1, :cond_86

    .line 133
    aget-object v3, p2, v0

    .line 135
    :cond_86
    if-eqz v3, :cond_af

    .line 137
    const-string p2, "||"

    .line 139
    invoke-static {v3, p2}, Lcom/baidu/ft;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    move-result-object p2

    .line 143
    iget-byte v0, v2, Lcom/baidu/input/ime/newcore/state/ListState2;->e:B

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    const-class v0, Lcom/baidu/stats/impl/TraceStats;

    .line 154
    invoke-static {v0}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/baidu/stats/impl/TraceStats;

    .line 160
    const/16 v3, 0x9

    .line 162
    invoke-virtual {v1, v3}, Lcom/baidu/stats/impl/TraceStats;->g(B)V

    .line 165
    invoke-static {v0}, Lcom/baidu/stats/Stats;->c(Ljava/lang/Class;)Lcom/baidu/stats/a;

    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lcom/baidu/stats/impl/TraceStats;

    .line 171
    const/16 v1, 0x12

    .line 173
    invoke-virtual {v0, v3, v1, p2}, Lcom/baidu/stats/impl/TraceStats;->f(BBLjava/lang/String;)V

    .line 176
    :cond_af
    const/high16 p2, 0x70000

    .line 178
    iput p2, p3, Lcom/baidu/input/ime/KeyAction;->c:I

    .line 180
    iput p1, v2, Lcom/baidu/input/ime/newcore/state/ListState2;->d:I

    .line 182
    :cond_b5
    iput v4, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 184
    :cond_b7
    :goto_b7
    const/4 p1, 0x0

    .line 185
    return p1
.end method

.method public final l(II)V
    .registers 7

    # A new touch owns the offset immediately, including during an old fling.
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_down_original
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->baiduModStopMotion()V
    :baidu_mod_down_original

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Z:Z

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/baidu/input/ime/SubList;->N:I

    .line 11
    iput v1, p0, Lcom/baidu/input/ime/SubList;->O:I

    .line 13
    iput v1, p0, Lcom/baidu/input/ime/SubList;->P:I

    .line 15
    iput v1, p0, Lcom/baidu/input/ime/SubList;->Q:I

    .line 17
    :goto_10
    iget-object v2, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 19
    array-length v3, v2

    .line 20
    if-ge v0, v3, :cond_36

    .line 22
    aget-object v2, v2, v0

    .line 24
    iget-object v2, v2, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_33

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    .line 34
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 36
    aget-object p2, p2, v0

    .line 38
    iget-object p2, p2, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 40
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 43
    iput-object p1, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 45
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 47
    aget-object p1, p1, v0

    .line 49
    iget p1, p1, Lcom/baidu/input/ime/SubList$Cell;->a:I

    .line 51
    goto :goto_37

    .line 52
    :cond_33
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_10

    .line 55
    :cond_36
    move p1, v1

    .line 56
    :goto_37
    if-le p1, v1, :cond_41

    .line 58
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 60
    array-length p2, p2

    .line 61
    if-ge p1, p2, :cond_41

    .line 63
    iput p1, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 69
    :goto_44
    return-void
.end method

.method public final m(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-boolean v1, p0, Lcom/baidu/input/ime/SubList;->r0:Z

    .line 7
    if-eqz v1, :cond_12

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 18
    move-result p2

    .line 19
    :cond_12
    iput p1, p0, Lcom/baidu/input/ime/SubList;->R:I

    .line 21
    iput p2, p0, Lcom/baidu/input/ime/SubList;->S:I

    .line 23
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->n:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_26

    .line 31
    iget p1, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 33
    iget p2, p0, Lcom/baidu/input/ime/SubList;->K:I

    .line 35
    if-ge p1, p2, :cond_26

    .line 37
    iput p1, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 39
    :cond_26
    return-void
.end method

.method public final o(Lcom/baidu/input/ime/params/ListParam;Lcom/baidu/input/ime/params/ThemeLoader;BZZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x1

    .line 1
    iput-boolean v4, v0, Lcom/baidu/input/ime/SubList;->c:Z

    if-nez v1, :cond_18

    .line 2
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/input/ime/SubList;->e:Ljava/lang/String;

    .line 3
    :cond_18
    sget v5, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    const v6, 0x407b851f  # 3.93f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 4
    iput v6, v0, Lcom/baidu/input/ime/SubList;->t0:I

    const v6, 0x401b22d1  # 2.424f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 5
    iput v5, v0, Lcom/baidu/input/ime/SubList;->u0:I

    const/4 v5, 0x0

    .line 6
    iput v5, v0, Lcom/baidu/input/ime/SubList;->M:I

    .line 7
    iput-object v1, v0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 8
    iget v6, v1, Lcom/baidu/input/ime/params/ListParam;->k:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->L:I

    .line 9
    iget-object v6, v1, Lcom/baidu/input/ime/params/ListParam;->h:[I

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->H:[I

    .line 10
    iget-object v6, v1, Lcom/baidu/input/ime/params/ListParam;->f:[I

    aget v7, v6, v5

    iput v7, v0, Lcom/baidu/input/ime/SubList;->q:I

    .line 11
    aget v6, v6, v4

    iput v6, v0, Lcom/baidu/input/ime/SubList;->r:I

    .line 12
    iget-object v6, v1, Lcom/baidu/input/ime/params/ListParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v6

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->F:Lcom/baidu/input/ime/params/StyleParam;

    .line 13
    iget-object v6, v0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    iget-object v6, v6, Lcom/baidu/input/ime/params/ListParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v6

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->G:Lcom/baidu/input/ime/params/StyleParam;

    .line 14
    iget-object v6, v0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    iget-object v6, v6, Lcom/baidu/input/ime/params/ListParam;->e:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v6}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v6

    .line 15
    sget-byte v7, Lcom/baidu/input/pub/Global;->i0:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_64

    .line 16
    iget v7, v0, Lcom/baidu/input/ime/SubList;->q:I

    shr-int/2addr v7, v8

    iput v7, v0, Lcom/baidu/input/ime/SubList;->E:I

    goto :goto_74

    :cond_64
    if-eqz v6, :cond_74

    .line 17
    invoke-static {}, Lcom/baidu/skinrender/SkinRender;->p()Lcom/baidu/skinrender/SkinRenderStatus;

    move-result-object v7

    .line 18
    iget v7, v7, Lcom/baidu/skinrender/SkinRenderStatus;->z:F

    .line 19
    iget-short v9, v6, Lcom/baidu/input/ime/params/StyleParam;->e:S

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    int-to-short v7, v7

    iput v7, v0, Lcom/baidu/input/ime/SubList;->E:I

    :cond_74
    :goto_74
    if-le v3, v4, :cond_a7

    const/high16 v7, 0x20000

    .line 20
    invoke-virtual {v2, v7}, Lcom/baidu/input/ime/params/ThemeLoader;->D(I)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 21
    iget v6, v2, Lcom/baidu/input/ime/params/ThemeLoader;->o:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->B:I

    .line 22
    iget v7, v2, Lcom/baidu/input/ime/params/ThemeLoader;->n:I

    iput v7, v0, Lcom/baidu/input/ime/SubList;->C:I

    .line 23
    iget v7, v2, Lcom/baidu/input/ime/params/ThemeLoader;->m:I

    iput v7, v0, Lcom/baidu/input/ime/SubList;->D:I

    .line 24
    sget-boolean v7, Lcom/baidu/input/ime/ImePref;->T:Z

    if-eqz v7, :cond_c1

    if-nez p5, :cond_c1

    .line 25
    invoke-static {v6}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    move-result v6

    iput v6, v0, Lcom/baidu/input/ime/SubList;->B:I

    .line 26
    iget v6, v0, Lcom/baidu/input/ime/SubList;->C:I

    invoke-static {v6}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    move-result v6

    iput v6, v0, Lcom/baidu/input/ime/SubList;->C:I

    .line 27
    iget v6, v0, Lcom/baidu/input/ime/SubList;->D:I

    invoke-static {v6}, Lcom/baidu/util/GraphicsLibrary;->changeToNightMode(I)I

    move-result v6

    iput v6, v0, Lcom/baidu/input/ime/SubList;->D:I

    goto :goto_c1

    :cond_a7
    if-nez v6, :cond_ae

    .line 28
    iput v5, v0, Lcom/baidu/input/ime/SubList;->B:I

    .line 29
    iput v5, v0, Lcom/baidu/input/ime/SubList;->C:I

    goto :goto_b6

    .line 30
    :cond_ae
    iget v7, v6, Lcom/baidu/input/ime/params/StyleParam;->h:I

    iput v7, v0, Lcom/baidu/input/ime/SubList;->B:I

    .line 31
    iget v6, v6, Lcom/baidu/input/ime/params/StyleParam;->g:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->C:I

    .line 32
    :goto_b6
    iget-object v6, v0, Lcom/baidu/input/ime/SubList;->G:Lcom/baidu/input/ime/params/StyleParam;

    if-nez v6, :cond_bd

    .line 33
    iput v5, v0, Lcom/baidu/input/ime/SubList;->D:I

    goto :goto_c1

    .line 34
    :cond_bd
    iget v6, v6, Lcom/baidu/input/ime/params/StyleParam;->h:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->D:I

    .line 35
    :cond_c1
    :goto_c1
    iget-byte v6, v1, Lcom/baidu/input/ime/params/ListParam;->m:B

    const/4 v7, 0x3

    if-ge v6, v8, :cond_d5

    .line 36
    iget v6, v1, Lcom/baidu/input/ime/params/ListParam;->l:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->z:I

    .line 37
    iget-object v6, v1, Lcom/baidu/input/ime/params/ListParam;->g:[I

    aget v9, v6, v5

    iput v9, v0, Lcom/baidu/input/ime/SubList;->x:I

    .line 38
    aget v6, v6, v4

    iput v6, v0, Lcom/baidu/input/ime/SubList;->y:I

    goto :goto_117

    .line 39
    :cond_d5
    invoke-static {}, Lcom/baidu/input/panel/session/PanelSession;->a()Lcom/baidu/input/panel/session/PanelSession;

    move-result-object v6

    .line 40
    iget-object v6, v6, Lcom/baidu/input/panel/session/PanelSession;->b:Lcom/baidu/input/panel/cand/CandStatus;

    .line 41
    iget-short v6, v6, Lcom/baidu/input/panel/cand/CandStatus;->c:S

    if-eqz v6, :cond_e9

    shl-int/2addr v6, v4

    .line 42
    iget v9, v0, Lcom/baidu/input/ime/SubList;->L:I

    div-int/2addr v6, v9

    add-int/2addr v6, v4

    .line 43
    iget v9, v0, Lcom/baidu/input/ime/SubList;->q:I

    sub-int/2addr v9, v6

    iput v9, v0, Lcom/baidu/input/ime/SubList;->q:I

    .line 44
    :cond_e9
    iput v4, v0, Lcom/baidu/input/ime/SubList;->z:I

    .line 45
    const-class v6, Lcom/baidu/input/cocomodule/panel/IPanel;

    invoke-static {v6}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/input/cocomodule/panel/IPanel;

    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel;->V()Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;

    move-result-object v6

    invoke-interface {v6}, Lcom/baidu/input/cocomodule/panel/IPanel$IKeymap;->D()S

    move-result v6

    iput v6, v0, Lcom/baidu/input/ime/SubList;->x:I

    .line 46
    iget-object v6, v0, Lcom/baidu/input/ime/SubList;->H:[I

    aget v9, v6, v4

    iput v9, v0, Lcom/baidu/input/ime/SubList;->y:I

    .line 47
    aput v5, v6, v5

    .line 48
    sget-short v10, Lcom/baidu/input/pub/ImeBaseGlobal;->s:S

    iget v11, v0, Lcom/baidu/input/ime/SubList;->q:I

    iget v12, v0, Lcom/baidu/input/ime/SubList;->L:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    aput v10, v6, v8

    .line 49
    iget v10, v0, Lcom/baidu/input/ime/SubList;->r:I

    add-int/2addr v10, v9

    aget v6, v6, v7

    add-int/2addr v10, v6

    iput v10, v0, Lcom/baidu/input/ime/SubList;->w:I

    .line 50
    :goto_117
    iget v6, v0, Lcom/baidu/input/ime/SubList;->z:I

    if-nez v6, :cond_136

    .line 51
    iget v6, v0, Lcom/baidu/input/ime/SubList;->q:I

    iput v6, v0, Lcom/baidu/input/ime/SubList;->s:I

    .line 52
    iget v6, v0, Lcom/baidu/input/ime/SubList;->r:I

    iget v9, v0, Lcom/baidu/input/ime/SubList;->L:I

    mul-int/2addr v9, v6

    iput v9, v0, Lcom/baidu/input/ime/SubList;->t:I

    .line 53
    iput v9, v0, Lcom/baidu/input/ime/SubList;->u:I

    .line 54
    iget v9, v1, Lcom/baidu/input/ime/params/ListParam;->n:I

    if-nez v9, :cond_12f

    .line 55
    iput v7, v0, Lcom/baidu/input/ime/SubList;->d0:I

    goto :goto_131

    .line 56
    :cond_12f
    iput v8, v0, Lcom/baidu/input/ime/SubList;->d0:I

    .line 57
    :goto_131
    iput v5, v0, Lcom/baidu/input/ime/SubList;->n0:I

    .line 58
    iput v6, v0, Lcom/baidu/input/ime/SubList;->o0:I

    goto :goto_150

    .line 59
    :cond_136
    iget v6, v0, Lcom/baidu/input/ime/SubList;->q:I

    iget v9, v0, Lcom/baidu/input/ime/SubList;->L:I

    mul-int/2addr v9, v6

    iput v9, v0, Lcom/baidu/input/ime/SubList;->s:I

    .line 60
    iget v10, v0, Lcom/baidu/input/ime/SubList;->r:I

    iput v10, v0, Lcom/baidu/input/ime/SubList;->t:I

    .line 61
    iput v9, v0, Lcom/baidu/input/ime/SubList;->u:I

    .line 62
    iget v9, v1, Lcom/baidu/input/ime/params/ListParam;->n:I

    if-nez v9, :cond_14a

    .line 63
    iput v4, v0, Lcom/baidu/input/ime/SubList;->d0:I

    goto :goto_14c

    .line 64
    :cond_14a
    iput v5, v0, Lcom/baidu/input/ime/SubList;->d0:I

    .line 65
    :goto_14c
    iput v6, v0, Lcom/baidu/input/ime/SubList;->n0:I

    .line 66
    iput v5, v0, Lcom/baidu/input/ime/SubList;->o0:I

    .line 67
    :goto_150
    iget v6, v0, Lcom/baidu/input/ime/SubList;->n0:I

    iget v9, v0, Lcom/baidu/input/ime/SubList;->o0:I

    add-int/2addr v6, v9

    iput v6, v0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 68
    iget v6, v0, Lcom/baidu/input/ime/SubList;->L:I

    add-int/2addr v6, v4

    new-array v6, v6, [Lcom/baidu/input/ime/SubList$Cell;

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    move v6, v5

    .line 69
    :goto_15f
    iget v9, v0, Lcom/baidu/input/ime/SubList;->L:I

    add-int/2addr v9, v4

    if-ge v6, v9, :cond_17b

    .line 70
    iget-object v9, v0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    new-instance v10, Lcom/baidu/input/ime/SubList$Cell;

    invoke-direct {v10}, Lcom/baidu/input/ime/SubList$Cell;-><init>()V

    aput-object v10, v9, v6

    .line 71
    iget-object v9, v0, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    aget-object v9, v9, v6

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    add-int/lit8 v6, v6, 0x1

    goto :goto_15f

    .line 72
    :cond_17b
    iget v6, v0, Lcom/baidu/input/ime/SubList;->E:I

    shr-int/2addr v6, v4

    sget-byte v9, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    sub-int/2addr v6, v9

    iput v6, v0, Lcom/baidu/input/ime/SubList;->p:I

    .line 73
    iget v6, v0, Lcom/baidu/input/ime/SubList;->z:I

    if-nez v6, :cond_19f

    .line 74
    new-instance v6, Landroid/graphics/Rect;

    iget v9, v0, Lcom/baidu/input/ime/SubList;->x:I

    iget v10, v0, Lcom/baidu/input/ime/SubList;->y:I

    iget v11, v0, Lcom/baidu/input/ime/SubList;->q:I

    add-int/2addr v11, v9

    iget v12, v0, Lcom/baidu/input/ime/SubList;->u:I

    add-int/2addr v12, v10

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 75
    iget v6, v0, Lcom/baidu/input/ime/SubList;->r:I

    shr-int/lit8 v6, v6, 0x4

    iput v6, v0, Lcom/baidu/input/ime/SubList;->i0:I

    goto :goto_1b6

    .line 76
    :cond_19f
    new-instance v6, Landroid/graphics/Rect;

    iget v9, v0, Lcom/baidu/input/ime/SubList;->x:I

    iget v10, v0, Lcom/baidu/input/ime/SubList;->y:I

    iget v11, v0, Lcom/baidu/input/ime/SubList;->u:I

    add-int/2addr v11, v9

    iget v12, v0, Lcom/baidu/input/ime/SubList;->r:I

    add-int/2addr v12, v10

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->e0:Landroid/graphics/Rect;

    .line 77
    iget v6, v0, Lcom/baidu/input/ime/SubList;->q:I

    shr-int/lit8 v6, v6, 0x4

    iput v6, v0, Lcom/baidu/input/ime/SubList;->i0:I

    .line 78
    :goto_1b6
    invoke-static {}, Lcom/baidu/input/ime/SubList;->v()Lcom/baidu/input/acgfont/ImeBasePaint;

    move-result-object v6

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 79
    invoke-static {}, Lcom/baidu/input/ime/SubList;->v()Lcom/baidu/input/acgfont/ImeBasePaint;

    move-result-object v6

    iput-object v6, v0, Lcom/baidu/input/ime/SubList;->m0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 80
    iget v9, v0, Lcom/baidu/input/ime/SubList;->E:I

    if-lez v9, :cond_1d7

    .line 81
    iget v10, v0, Lcom/baidu/input/ime/SubList;->h0:I

    if-nez v10, :cond_1d3

    int-to-float v9, v9

    const v10, 0x3f99999a  # 1.2f

    mul-float/2addr v9, v10

    .line 82
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1d7

    :cond_1d3
    int-to-float v9, v9

    .line 83
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    :cond_1d7
    :goto_1d7
    sget-object v6, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1e6

    .line 85
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 86
    sget-object v9, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto :goto_1e8

    :cond_1e6
    move v6, v5

    move v9, v6

    .line 87
    :goto_1e8
    iget v10, v0, Lcom/baidu/input/ime/SubList;->r:I

    if-ne v9, v10, :cond_1f0

    iget v11, v0, Lcom/baidu/input/ime/SubList;->q:I

    if-eq v6, v11, :cond_214

    :cond_1f0
    if-le v9, v10, :cond_1f3

    goto :goto_1f4

    :cond_1f3
    move v9, v10

    .line 88
    :goto_1f4
    iget v10, v0, Lcom/baidu/input/ime/SubList;->q:I

    if-le v6, v10, :cond_1f9

    goto :goto_1fa

    :cond_1f9
    move v6, v10

    :goto_1fa
    if-lez v6, :cond_214

    if-lez v9, :cond_214

    .line 89
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v11, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/baidu/input/ime/SubList;->B0:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {v6, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    sput v5, Lcom/baidu/input/ime/SubList;->C0:I

    :cond_214
    if-le v3, v4, :cond_222

    const/high16 v6, 0x10000

    .line 94
    invoke-virtual {v2, v6}, Lcom/baidu/input/ime/params/ThemeLoader;->D(I)Z

    move-result v6

    if-eqz v6, :cond_222

    .line 95
    iget v2, v2, Lcom/baidu/input/ime/params/ThemeLoader;->p:I

    const/4 v6, -0x1

    goto :goto_232

    .line 96
    :cond_222
    iget-object v2, v0, Lcom/baidu/input/ime/SubList;->G:Lcom/baidu/input/ime/params/StyleParam;

    if-nez v2, :cond_229

    :cond_226
    move v2, v5

    move v6, v2

    goto :goto_232

    .line 97
    :cond_229
    iget-object v2, v0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    iget-object v2, v2, Lcom/baidu/input/ime/params/ListParam;->d:Lcom/baidu/input/ime/params/patch/StyleIndex;

    if-eqz v2, :cond_226

    .line 98
    iget v6, v2, Lcom/baidu/input/ime/params/patch/StyleIndex;->b:I

    move v2, v5

    .line 99
    :goto_232
    sget v9, Lcom/baidu/input/ime/SubList;->C0:I

    sget-object v15, Lcom/baidu/input/ime/params/enumtype/FacadeState;->a:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    if-ne v6, v9, :cond_24b

    sget v9, Lcom/baidu/input/ime/SubList;->D0:I

    iget v10, v0, Lcom/baidu/input/ime/SubList;->q:I

    if-ne v9, v10, :cond_24b

    sget v9, Lcom/baidu/input/ime/SubList;->E0:I

    iget v10, v0, Lcom/baidu/input/ime/SubList;->r:I

    if-ne v9, v10, :cond_24b

    if-eqz p4, :cond_247

    goto :goto_24b

    :cond_247
    :goto_247
    move-object/from16 v23, v15

    goto/16 :goto_31a

    .line 100
    :cond_24b
    :goto_24b
    sput v6, Lcom/baidu/input/ime/SubList;->C0:I

    .line 101
    iget v9, v0, Lcom/baidu/input/ime/SubList;->q:I

    sput v9, Lcom/baidu/input/ime/SubList;->D0:I

    .line 102
    iget v9, v0, Lcom/baidu/input/ime/SubList;->r:I

    sput v9, Lcom/baidu/input/ime/SubList;->E0:I

    .line 103
    sget-object v9, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_25c

    .line 104
    invoke-virtual {v9, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 105
    :cond_25c
    sget-object v9, Lcom/baidu/input/ime/SubList;->B0:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_263

    .line 106
    invoke-virtual {v9, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 107
    :cond_263
    new-instance v9, Landroid/graphics/Rect;

    iget v10, v0, Lcom/baidu/input/ime/SubList;->q:I

    iget v11, v0, Lcom/baidu/input/ime/SubList;->r:I

    invoke-direct {v9, v5, v5, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    .line 109
    sget-object v10, Lcom/baidu/input/ime/SubList;->A0:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-gez v6, :cond_2e4

    .line 110
    iget-object v3, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v3, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    shr-int/2addr v6, v4

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget v3, v0, Lcom/baidu/input/ime/SubList;->z:I

    if-nez v3, :cond_2aa

    .line 113
    iget v3, v9, Landroid/graphics/Rect;->left:I

    sget-byte v6, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    int-to-float v6, v11

    iget-object v11, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    move-object/from16 v16, v14

    move/from16 v17, v3

    move/from16 v18, v10

    move/from16 v19, v6

    move/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2c8

    .line 114
    :cond_2aa
    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v6, v9, Landroid/graphics/Rect;->top:I

    sget-byte v10, Lcom/baidu/input/pub/ImeBaseGlobal;->L:B

    add-int/2addr v6, v10

    int-to-float v6, v6

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v10

    int-to-float v10, v11

    iget-object v11, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    move-object/from16 v16, v14

    move/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v3

    move/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    :goto_2c8
    iget-object v3, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    sget-object v2, Lcom/baidu/input/ime/SubList;->B0:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v2, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    iget v3, v0, Lcom/baidu/input/ime/SubList;->D:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v2, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    invoke-virtual {v14, v9, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_247

    :cond_2e4
    if-lez v6, :cond_247

    .line 119
    iget-object v10, v0, Lcom/baidu/input/ime/SubList;->G:Lcom/baidu/input/ime/params/StyleParam;

    iget-object v12, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    if-eqz v3, :cond_2ee

    move v2, v4

    goto :goto_2ef

    :cond_2ee
    move v2, v5

    :goto_2ef
    const/16 v16, 0x0

    move-object v11, v14

    move-object v13, v9

    move-object v6, v14

    move-object v14, v15

    move-object/from16 v23, v15

    move v15, v2

    .line 120
    invoke-virtual/range {v10 .. v16}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 121
    sget-object v2, Lcom/baidu/input/ime/SubList;->B0:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v2, v0, Lcom/baidu/input/ime/SubList;->G:Lcom/baidu/input/ime/params/StyleParam;

    iget-object v10, v0, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    sget-object v20, Lcom/baidu/input/ime/params/enumtype/FacadeState;->b:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    if-eqz v3, :cond_30b

    move/from16 v21, v4

    goto :goto_30d

    :cond_30b
    move/from16 v21, v5

    :goto_30d
    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v9

    .line 123
    invoke-virtual/range {v16 .. v22}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 124
    :goto_31a
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/baidu/input/ime/SubList;->x:I

    iget-object v6, v0, Lcom/baidu/input/ime/SubList;->H:[I

    aget v5, v6, v5

    sub-int v5, v3, v5

    iget v9, v0, Lcom/baidu/input/ime/SubList;->y:I

    aget v4, v6, v4

    sub-int v4, v9, v4

    iget v10, v0, Lcom/baidu/input/ime/SubList;->s:I

    add-int/2addr v3, v10

    aget v8, v6, v8

    add-int/2addr v3, v8

    iget v8, v0, Lcom/baidu/input/ime/SubList;->t:I

    add-int/2addr v9, v8

    aget v6, v6, v7

    add-int/2addr v9, v6

    invoke-direct {v2, v5, v4, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 125
    iget-object v1, v1, Lcom/baidu/input/ime/params/ListParam;->c:Lcom/baidu/input/ime/params/patch/StyleIndex;

    invoke-static {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->e(Lcom/baidu/input/ime/params/patch/StyleIndex;)Lcom/baidu/input/ime/params/StyleParam;

    move-result-object v1

    if-eqz v1, :cond_355

    move-object/from16 v3, v23

    .line 126
    invoke-virtual {v1, v3}, Lcom/baidu/input/ime/params/StyleParam;->p(Lcom/baidu/input/ime/params/enumtype/FacadeState;)Lcom/baidu/input/ime/params/patch/StyleIndex;

    move-result-object v1

    if-eqz v1, :cond_355

    .line 127
    invoke-virtual {v1}, Lcom/baidu/input/ime/params/patch/StyleIndex;->c()Lcom/baidu/input/ime/params/ImgParam;

    move-result-object v1

    if-eqz v1, :cond_355

    .line 128
    invoke-static {v1, v2}, Lcom/baidu/input/ime/params/StyleParam;->q(Lcom/baidu/input/ime/params/ImgParam;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 129
    :cond_355
    iput-object v2, v0, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 130
    sget-object v1, Lcom/baidu/input/ime/SubList;->y0:Landroid/graphics/NinePatch;

    if-nez v1, :cond_366

    .line 131
    iget v1, v0, Lcom/baidu/input/ime/SubList;->C:I

    invoke-static {v1}, Lcom/baidu/input/ime/params/KeymapLoader;->u(I)Landroid/graphics/NinePatch;

    move-result-object v1

    sput-object v1, Lcom/baidu/input/ime/SubList;->y0:Landroid/graphics/NinePatch;

    const/4 v1, 0x5

    .line 132
    sput-byte v1, Lcom/baidu/input/ime/SubList;->z0:B

    :cond_366
    return-void
.end method

.method public final p(Lcom/baidu/input/ime/params/ListParam;Z)V
    .registers 10

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
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->q0:Z

    .line 15
    :cond_e
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 22
    move-result v4

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move v5, p2

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/input/ime/SubList;->o(Lcom/baidu/input/ime/params/ListParam;Lcom/baidu/input/ime/params/ThemeLoader;BZZ)V

    .line 30
    return-void
.end method

.method public final q()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_26

    .line 7
    iget-boolean v1, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_26

    .line 12
    :cond_b
    iget v1, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 14
    if-lt v0, v1, :cond_21

    .line 16
    sub-int v2, v0, v1

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    neg-int v2, v2

    .line 21
    iget v3, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 23
    mul-int/2addr v2, v3

    .line 24
    iput v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 26
    sub-int/2addr v0, v1

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    neg-int v0, v0

    .line 30
    mul-int/2addr v0, v3

    .line 31
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 33
    goto :goto_2a

    .line 34
    :cond_21
    iput v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 36
    iput v2, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    :goto_26
    iput v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 41
    iput v2, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 43
    :goto_2a
    return-void
.end method

.method public r()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-wide v2, p0, Lcom/baidu/input/ime/SubList;->T:D

    .line 9
    iget v0, p0, Lcom/baidu/input/ime/SubList;->i0:I

    .line 11
    int-to-double v4, v0

    .line 12
    cmpl-double v0, v2, v4

    .line 14
    if-ltz v0, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1
.end method

.method public s()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->h:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->i:Z

    .line 7
    if-eqz v0, :cond_e

    .line 9
    :cond_8
    iget v0, p0, Lcom/baidu/input/ime/SubList;->g:I

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public final t()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 3
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_18

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_18

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_17

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_11

    .line 17
    return v1

    .line 18
    :cond_11
    iget v0, p0, Lcom/baidu/input/ime/SubList;->h0:I

    .line 20
    if-eqz v0, :cond_16

    .line 22
    move v1, v2

    .line 23
    :cond_16
    return v1

    .line 24
    :cond_17
    return v2

    .line 25
    :cond_18
    return v1
.end method

.method public u()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->q0:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 9
    if-nez v0, :cond_10

    .line 11
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v1

    .line 18
    :goto_11
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->V:Z

    .line 20
    if-eqz v0, :cond_17

    .line 22
    iput-boolean v1, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 24
    :cond_17
    return v0
.end method

.method public final w(Landroid/graphics/Canvas;IZ)V
    .registers 21

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v14, p1

    .line 5
    move/from16 v15, p2

    .line 7
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual {v0, v15, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 13
    if-eqz p3, :cond_24

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 18
    move-result v0

    .line 19
    int-to-float v10, v0

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 23
    move-result v0

    .line 24
    int-to-float v11, v0

    .line 25
    iget-object v12, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/16 v13, 0x1f

    .line 31
    move-object/from16 v7, p1

    .line 33
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    :goto_27
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 45
    const/4 v13, 0x0

    .line 46
    if-eqz p3, :cond_52

    .line 48
    if-eqz v15, :cond_38

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    int-to-float v0, v15

    .line 54
    invoke-virtual {v14, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    :cond_38
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 59
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->p()Lcom/baidu/input/ime/params/ThemeLoader;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 66
    move-result v2

    .line 67
    iget-object v4, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object/from16 v3, p1

    .line 72
    move v12, v5

    .line 73
    move-object v5, v7

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/params/ListParam;->l(Lcom/baidu/input/ime/params/ThemeLoader;BLandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/NinePatch;)V

    .line 77
    if-eqz v15, :cond_53

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v12, v5

    .line 84
    :cond_53
    :goto_53
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 86
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 88
    const/4 v5, 0x1

    .line 89
    if-ne v0, v5, :cond_b1

    .line 91
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 96
    move-result v0

    .line 97
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 99
    if-eqz v1, :cond_89

    .line 101
    invoke-interface {v1}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->e()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_89

    .line 107
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 109
    iget-object v2, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 111
    invoke-interface {v1, v2, v0}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->c(Lcom/baidu/input/ime/params/IniParam;I)Landroid/util/Pair;

    .line 114
    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    check-cast v2, Ljava/lang/Boolean;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_89

    .line 125
    iget-object v2, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 127
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 129
    check-cast v1, Ljava/lang/Integer;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v1

    .line 135
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    :cond_89
    iget-object v7, v6, Lcom/baidu/input/ime/SubList;->F:Lcom/baidu/input/ime/params/StyleParam;

    .line 140
    if-eqz v7, :cond_a8

    .line 142
    iget-object v9, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 144
    iget-object v10, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 146
    sget-object v11, Lcom/baidu/input/ime/params/enumtype/FacadeState;->a:Lcom/baidu/input/ime/params/enumtype/FacadeState;

    .line 148
    invoke-static {}, Lcom/baidu/input/ime/params/KeymapLoader;->w()B

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_9b

    .line 154
    move v1, v5

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    move v1, v12

    .line 157
    :goto_9c
    const/4 v2, 0x0

    .line 158
    move-object/from16 v8, p1

    .line 160
    move v4, v12

    .line 161
    move v12, v1

    .line 162
    move/from16 v16, v13

    .line 164
    move v13, v2

    .line 165
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/input/ime/params/StyleParam;->s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Lcom/baidu/input/ime/params/enumtype/FacadeState;BZ)V

    .line 168
    goto :goto_ab

    .line 169
    :cond_a8
    move v4, v12

    .line 170
    move/from16 v16, v13

    .line 172
    :goto_ab
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 174
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    goto :goto_b4

    .line 178
    :cond_b1
    move v4, v12

    .line 179
    move/from16 v16, v13

    .line 181
    :goto_b4
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 183
    neg-int v1, v15

    .line 184
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 187
    iget v0, v6, Lcom/baidu/input/ime/SubList;->K:I

    .line 189
    const/4 v7, 0x2

    .line 190
    if-nez v0, :cond_c9

    .line 192
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 194
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 196
    if-lt v0, v7, :cond_c9

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 201
    return-void

    .line 202
    :cond_c9
    iget v0, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 204
    if-lez v0, :cond_cf

    .line 206
    move v1, v5

    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    move v1, v4

    .line 209
    :goto_d0
    iput-boolean v1, v6, Lcom/baidu/input/ime/SubList;->h:Z

    .line 211
    if-gez v0, :cond_e5

    .line 213
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 215
    array-length v1, v1

    .line 216
    iget v2, v6, Lcom/baidu/input/ime/SubList;->L:I

    .line 218
    sub-int/2addr v1, v2

    .line 219
    if-gez v1, :cond_dd

    .line 221
    move v1, v4

    .line 222
    :cond_dd
    iget v2, v6, Lcom/baidu/input/ime/SubList;->p0:I

    .line 224
    mul-int/2addr v1, v2

    .line 225
    add-int/2addr v1, v0

    .line 226
    if-gez v1, :cond_e5

    .line 228
    move v0, v5

    .line 229
    goto :goto_e6

    .line 230
    :cond_e5
    move v0, v4

    .line 231
    :goto_e6
    iput-boolean v0, v6, Lcom/baidu/input/ime/SubList;->i:Z

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    .line 235
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 238
    iget-boolean v1, v6, Lcom/baidu/input/ime/SubList;->h:Z

    .line 240
    if-eqz v1, :cond_119

    .line 242
    iget v1, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 244
    if-nez v1, :cond_107

    .line 246
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 248
    add-int/2addr v1, v15

    .line 249
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 251
    iget v3, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 253
    add-int/2addr v3, v2

    .line 254
    iget v8, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 256
    add-int/2addr v8, v1

    .line 257
    iget v9, v6, Lcom/baidu/input/ime/SubList;->u:I

    .line 259
    add-int/2addr v2, v9

    .line 260
    invoke-virtual {v0, v1, v3, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    goto :goto_16e

    .line 264
    :cond_107
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 266
    add-int/2addr v1, v15

    .line 267
    iget v2, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 269
    add-int/2addr v2, v1

    .line 270
    iget v3, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 272
    iget v8, v6, Lcom/baidu/input/ime/SubList;->u:I

    .line 274
    add-int/2addr v1, v8

    .line 275
    iget v8, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 277
    add-int/2addr v8, v3

    .line 278
    invoke-virtual {v0, v2, v3, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    goto :goto_16e

    .line 282
    :cond_119
    iget-boolean v1, v6, Lcom/baidu/input/ime/SubList;->i:Z

    .line 284
    if-eqz v1, :cond_14d

    .line 286
    iget v1, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 288
    if-nez v1, :cond_137

    .line 290
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 292
    add-int/2addr v1, v15

    .line 293
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 295
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 297
    add-int/2addr v3, v1

    .line 298
    iget-object v8, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 300
    array-length v8, v8

    .line 301
    iget v9, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 303
    mul-int/2addr v8, v9

    .line 304
    add-int/2addr v8, v2

    .line 305
    iget v9, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 307
    add-int/2addr v8, v9

    .line 308
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 311
    goto :goto_16e

    .line 312
    :cond_137
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 314
    add-int/2addr v1, v15

    .line 315
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 317
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 319
    array-length v3, v3

    .line 320
    iget v8, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 322
    mul-int/2addr v3, v8

    .line 323
    add-int/2addr v3, v1

    .line 324
    iget v8, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 326
    add-int/2addr v3, v8

    .line 327
    iget v8, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 329
    add-int/2addr v8, v2

    .line 330
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    goto :goto_16e

    .line 334
    :cond_14d
    iget v1, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 336
    if-nez v1, :cond_160

    .line 338
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 340
    add-int/2addr v1, v15

    .line 341
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 343
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 345
    add-int/2addr v3, v1

    .line 346
    iget v8, v6, Lcom/baidu/input/ime/SubList;->u:I

    .line 348
    add-int/2addr v8, v2

    .line 349
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    goto :goto_16e

    .line 353
    :cond_160
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 355
    add-int/2addr v1, v15

    .line 356
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 358
    iget v3, v6, Lcom/baidu/input/ime/SubList;->u:I

    .line 360
    add-int/2addr v3, v1

    .line 361
    iget v8, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 363
    add-int/2addr v8, v2

    .line 364
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    :goto_16e
    iget v1, v6, Lcom/baidu/input/ime/SubList;->M:I

    .line 369
    if-eqz v1, :cond_17b

    .line 371
    iget-object v2, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 373
    iget-byte v2, v2, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 375
    if-le v2, v5, :cond_17b

    .line 377
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 380
    :cond_17b
    if-nez v15, :cond_192

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 385
    iget v1, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 387
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 389
    iget v3, v6, Lcom/baidu/input/ime/SubList;->M:I

    .line 391
    add-int v8, v2, v3

    .line 393
    iget v9, v6, Lcom/baidu/input/ime/SubList;->s:I

    .line 395
    add-int/2addr v9, v1

    .line 396
    iget v10, v6, Lcom/baidu/input/ime/SubList;->t:I

    .line 398
    add-int/2addr v2, v10

    .line 399
    add-int/2addr v2, v3

    .line 400
    invoke-virtual {v14, v1, v8, v9, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 403
    :cond_192
    if-eqz p3, :cond_1ac

    .line 405
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 407
    if-nez v1, :cond_1a8

    .line 409
    invoke-static {}, Lcom/baidu/input/ime/SubList;->v()Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 412
    move-result-object v1

    .line 413
    iput-object v1, v6, Lcom/baidu/input/ime/SubList;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 415
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 417
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 419
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 425
    :cond_1a8
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->k0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 427
    :goto_1aa
    move-object v8, v1

    .line 428
    goto :goto_1af

    .line 429
    :cond_1ac
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->j0:Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 431
    goto :goto_1aa

    .line 432
    :goto_1af
    iget v1, v6, Lcom/baidu/input/ime/SubList;->E:I

    .line 434
    if-lez v1, :cond_1c4

    .line 436
    iget v2, v6, Lcom/baidu/input/ime/SubList;->h0:I

    .line 438
    if-nez v2, :cond_1c0

    .line 440
    int-to-float v1, v1

    .line 441
    const v2, 0x3f99999a  # 1.2f

    .line 444
    mul-float/2addr v1, v2

    .line 445
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    goto :goto_1c4

    .line 449
    :cond_1c0
    int-to-float v1, v1

    .line 450
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    :cond_1c4
    :goto_1c4
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 455
    array-length v2, v1

    .line 456
    move v3, v4

    .line 457
    :goto_1c8
    if-ge v3, v2, :cond_1da

    .line 459
    aget-object v9, v1, v3

    .line 461
    const/4 v10, -0x1

    .line 462
    iput v10, v9, Lcom/baidu/input/ime/SubList$Cell;->a:I

    .line 464
    iget-object v10, v9, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 466
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 469
    const/4 v10, 0x0

    .line 470
    iput-object v10, v9, Lcom/baidu/input/ime/SubList$Cell;->c:Ljava/lang/String;

    .line 472
    add-int/lit8 v3, v3, 0x1

    .line 474
    goto :goto_1c8

    .line 475
    :cond_1da
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 477
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 479
    iget v3, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 481
    if-nez v3, :cond_1e7

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 486
    move-result v0

    .line 487
    goto :goto_1eb

    .line 488
    :cond_1e7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 491
    move-result v0

    .line 492
    :goto_1eb
    iget v3, v6, Lcom/baidu/input/ime/SubList;->p0:I

    .line 494
    if-eqz v3, :cond_1f3

    .line 496
    div-int v9, v0, v3

    .line 498
    rem-int/2addr v0, v3

    .line 499
    goto :goto_1f5

    .line 500
    :cond_1f3
    move v0, v4

    .line 501
    move v9, v0

    .line 502
    :goto_1f5
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 505
    move-result v10

    .line 506
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 508
    if-eqz v3, :cond_220

    .line 510
    invoke-interface {v3}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->e()Z

    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_220

    .line 516
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->f:Ljava/lang/Object;

    .line 518
    iget-object v11, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 520
    invoke-interface {v3, v11, v10}, Lcom/baidu/input/ime/render/IKeymapRenderStrategy$IParamRenderMods;->c(Lcom/baidu/input/ime/params/IniParam;I)Landroid/util/Pair;

    .line 523
    move-result-object v3

    .line 524
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 526
    check-cast v11, Ljava/lang/Boolean;

    .line 528
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 531
    move-result v11

    .line 532
    if-eqz v11, :cond_220

    .line 534
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 536
    check-cast v3, Ljava/lang/Integer;

    .line 538
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 541
    move-result v3

    .line 542
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 545
    :cond_220
    iget-boolean v3, v6, Lcom/baidu/input/ime/SubList;->h:Z

    .line 547
    if-eqz v3, :cond_24d

    .line 549
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 551
    aget-object v0, v0, v4

    .line 553
    iget-object v0, v0, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 555
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 557
    add-int/2addr v3, v1

    .line 558
    iget v11, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 560
    add-int/2addr v11, v2

    .line 561
    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 564
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 566
    aget-object v3, v0, v4

    .line 568
    const/4 v11, 0x0

    .line 569
    move-object/from16 v0, p0

    .line 571
    move-object/from16 v1, p1

    .line 573
    move-object v2, v8

    .line 574
    move v12, v4

    .line 575
    move v4, v11

    .line 576
    move v11, v5

    .line 577
    move/from16 v5, p3

    .line 579
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 582
    add-int/lit8 v3, v9, 0x1

    .line 584
    const/4 v4, 0x0

    .line 585
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V

    .line 588
    goto/16 :goto_348

    .line 590
    :cond_24d
    move v12, v4

    .line 591
    move v11, v5

    .line 592
    iget-boolean v3, v6, Lcom/baidu/input/ime/SubList;->i:Z

    .line 594
    if-eqz v3, :cond_2d2

    .line 596
    if-lez v0, :cond_2a1

    .line 598
    iget v3, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 600
    if-nez v3, :cond_26c

    .line 602
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 604
    aget-object v3, v3, v12

    .line 606
    iget-object v3, v3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 608
    iget v4, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 610
    sub-int v4, v2, v4

    .line 612
    add-int/2addr v4, v0

    .line 613
    iget v5, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 615
    add-int/2addr v5, v1

    .line 616
    add-int/2addr v2, v0

    .line 617
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 620
    goto :goto_27e

    .line 621
    :cond_26c
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 623
    aget-object v3, v3, v12

    .line 625
    iget-object v3, v3, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 627
    iget v4, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 629
    sub-int v4, v1, v4

    .line 631
    add-int/2addr v4, v0

    .line 632
    add-int/2addr v1, v0

    .line 633
    iget v0, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 635
    add-int/2addr v0, v2

    .line 636
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 639
    :goto_27e
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 641
    aget-object v3, v0, v12

    .line 643
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 645
    array-length v0, v0

    .line 646
    sub-int/2addr v0, v9

    .line 647
    add-int/lit8 v4, v0, -0x1

    .line 649
    move-object/from16 v0, p0

    .line 651
    move-object/from16 v1, p1

    .line 653
    move-object v2, v8

    .line 654
    move/from16 v5, p3

    .line 656
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 659
    add-int/lit8 v3, v9, 0x1

    .line 661
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 663
    array-length v0, v0

    .line 664
    sub-int/2addr v0, v9

    .line 665
    add-int/lit8 v4, v0, -0x1

    .line 667
    move-object/from16 v0, p0

    .line 669
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V

    .line 672
    goto/16 :goto_348

    .line 674
    :cond_2a1
    if-lez v9, :cond_348

    .line 676
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 678
    aget-object v0, v0, v12

    .line 680
    iget-object v0, v0, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 682
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 684
    add-int/2addr v3, v1

    .line 685
    iget v4, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 687
    add-int/2addr v4, v2

    .line 688
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 691
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 693
    aget-object v3, v0, v12

    .line 695
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 697
    array-length v0, v0

    .line 698
    sub-int v4, v0, v9

    .line 700
    move-object/from16 v0, p0

    .line 702
    move-object/from16 v1, p1

    .line 704
    move-object v2, v8

    .line 705
    move/from16 v5, p3

    .line 707
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 710
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 712
    array-length v0, v0

    .line 713
    sub-int v4, v0, v9

    .line 715
    move-object/from16 v0, p0

    .line 717
    move v3, v9

    .line 718
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V

    .line 721
    goto/16 :goto_348

    .line 723
    :cond_2d2
    iget v0, v6, Lcom/baidu/input/ime/SubList;->p0:I

    .line 725
    if-eqz v0, :cond_2df

    .line 727
    iget v3, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 729
    neg-int v3, v3

    .line 730
    div-int v4, v3, v0

    .line 732
    rem-int v5, v3, v0

    .line 734
    move v9, v4

    .line 735
    goto :goto_2e1

    .line 736
    :cond_2df
    move v5, v12

    .line 737
    move v9, v5

    .line 738
    :goto_2e1
    if-lez v5, :cond_325

    .line 740
    iget v0, v6, Lcom/baidu/input/ime/SubList;->z:I

    .line 742
    if-nez v0, :cond_2fa

    .line 744
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 746
    aget-object v0, v0, v12

    .line 748
    iget-object v0, v0, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 750
    sub-int v3, v2, v5

    .line 752
    iget v4, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 754
    add-int/2addr v4, v1

    .line 755
    iget v13, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 757
    add-int/2addr v2, v13

    .line 758
    sub-int/2addr v2, v5

    .line 759
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 762
    goto :goto_30c

    .line 763
    :cond_2fa
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 765
    aget-object v0, v0, v12

    .line 767
    iget-object v0, v0, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 769
    sub-int v3, v1, v5

    .line 771
    iget v4, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 773
    add-int/2addr v1, v4

    .line 774
    sub-int/2addr v1, v5

    .line 775
    iget v4, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 777
    add-int/2addr v4, v2

    .line 778
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 781
    :goto_30c
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 783
    aget-object v3, v0, v12

    .line 785
    move-object/from16 v0, p0

    .line 787
    move-object/from16 v1, p1

    .line 789
    move-object v2, v8

    .line 790
    move v4, v9

    .line 791
    move/from16 v5, p3

    .line 793
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 796
    iget v0, v6, Lcom/baidu/input/ime/SubList;->L:I

    .line 798
    add-int/lit8 v3, v0, 0x1

    .line 800
    move-object/from16 v0, p0

    .line 802
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V

    .line 805
    goto :goto_348

    .line 806
    :cond_325
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 808
    aget-object v0, v0, v12

    .line 810
    iget-object v0, v0, Lcom/baidu/input/ime/SubList$Cell;->b:Landroid/graphics/Rect;

    .line 812
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 814
    add-int/2addr v3, v1

    .line 815
    iget v4, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 817
    add-int/2addr v4, v2

    .line 818
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 821
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->l:[Lcom/baidu/input/ime/SubList$Cell;

    .line 823
    aget-object v3, v0, v12

    .line 825
    move-object/from16 v0, p0

    .line 827
    move-object/from16 v1, p1

    .line 829
    move-object v2, v8

    .line 830
    move v4, v9

    .line 831
    move/from16 v5, p3

    .line 833
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->j(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;Lcom/baidu/input/ime/SubList$Cell;IZ)V

    .line 836
    iget v3, v6, Lcom/baidu/input/ime/SubList;->L:I

    .line 838
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/input/ime/SubList;->i(Landroid/graphics/Canvas;Lcom/baidu/input/acgfont/ImeBasePaint;IIZ)V

    .line 841
    :cond_348
    :goto_348
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 844
    if-nez v15, :cond_350

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 849
    :cond_350
    if-eqz v15, :cond_354

    .line 851
    iput-boolean v12, v6, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 853
    :cond_354
    iget-boolean v0, v6, Lcom/baidu/input/ime/SubList;->W:Z

    .line 855
    if-nez v0, :cond_360

    .line 857
    iget-boolean v0, v6, Lcom/baidu/input/ime/SubList;->V:Z

    .line 859
    if-nez v0, :cond_360

    .line 861
    iget-boolean v0, v6, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 863
    if-eqz v0, :cond_443

    .line 865
    :cond_360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 868
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 870
    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 873
    iget-boolean v0, v6, Lcom/baidu/input/ime/SubList;->q0:Z

    .line 875
    if-nez v0, :cond_36d

    .line 877
    goto :goto_384

    .line 878
    :cond_36d
    iget v1, v6, Lcom/baidu/input/ime/SubList;->j:I

    .line 880
    int-to-float v1, v1

    .line 881
    const/high16 v2, 0x3f800000  # 1.0f

    .line 883
    mul-float/2addr v1, v2

    .line 884
    iget v2, v6, Lcom/baidu/input/ime/SubList;->v:I

    .line 886
    int-to-float v2, v2

    .line 887
    div-float/2addr v1, v2

    .line 888
    iget v2, v6, Lcom/baidu/input/ime/SubList;->u:I

    .line 890
    int-to-float v2, v2

    .line 891
    mul-float/2addr v1, v2

    .line 892
    sub-float v13, v16, v1

    .line 894
    iput v13, v6, Lcom/baidu/input/ime/SubList;->b0:F

    .line 896
    iget v2, v6, Lcom/baidu/input/ime/SubList;->a0:F

    .line 898
    sub-float/2addr v2, v1

    .line 899
    iput v2, v6, Lcom/baidu/input/ime/SubList;->c0:F

    .line 901
    :goto_384
    if-nez v0, :cond_388

    .line 903
    goto/16 :goto_440

    .line 905
    :cond_388
    sget-object v0, Lcom/baidu/input/ime/SubList;->y0:Landroid/graphics/NinePatch;

    .line 907
    if-eqz v0, :cond_440

    .line 909
    iget-object v0, v6, Lcom/baidu/input/ime/SubList;->A:Lcom/baidu/input/ime/params/ListParam;

    .line 911
    if-eqz v0, :cond_440

    .line 913
    iget-object v1, v6, Lcom/baidu/input/ime/SubList;->g0:Landroid/graphics/Rect;

    .line 915
    if-nez v1, :cond_396

    .line 917
    goto/16 :goto_440

    .line 919
    :cond_396
    iget v2, v6, Lcom/baidu/input/ime/SubList;->d0:I

    .line 921
    if-eqz v2, :cond_414

    .line 923
    if-eq v2, v7, :cond_3f7

    .line 925
    const/4 v3, 0x3

    .line 926
    if-eq v2, v3, :cond_3bf

    .line 928
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 930
    iget v4, v6, Lcom/baidu/input/ime/SubList;->r:I

    .line 932
    add-int/2addr v2, v4

    .line 933
    iget-object v4, v6, Lcom/baidu/input/ime/SubList;->H:[I

    .line 935
    aget v3, v4, v3

    .line 937
    add-int/2addr v2, v3

    .line 938
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 940
    sget-byte v3, Lcom/baidu/input/ime/SubList;->z0:B

    .line 942
    sub-int/2addr v2, v3

    .line 943
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 945
    iget v2, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 947
    iget v3, v6, Lcom/baidu/input/ime/SubList;->b0:F

    .line 949
    float-to-int v3, v3

    .line 950
    add-int/2addr v3, v2

    .line 951
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 953
    iget v3, v6, Lcom/baidu/input/ime/SubList;->c0:F

    .line 955
    float-to-int v3, v3

    .line 956
    add-int/2addr v2, v3

    .line 957
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 959
    goto :goto_430

    .line 960
    :cond_3bf
    iget v2, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 962
    iget v3, v6, Lcom/baidu/input/ime/SubList;->q:I

    .line 964
    add-int/2addr v2, v3

    .line 965
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->H:[I

    .line 967
    aget v3, v3, v7

    .line 969
    add-int/2addr v2, v3

    .line 970
    iget v3, v6, Lcom/baidu/input/ime/SubList;->u0:I

    .line 972
    sub-int/2addr v2, v3

    .line 973
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 975
    sget-byte v3, Lcom/baidu/input/ime/SubList;->z0:B

    .line 977
    sub-int/2addr v2, v3

    .line 978
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 980
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 982
    iget v3, v6, Lcom/baidu/input/ime/SubList;->b0:F

    .line 984
    float-to-int v3, v3

    .line 985
    add-int/2addr v3, v2

    .line 986
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 988
    iget v4, v6, Lcom/baidu/input/ime/SubList;->c0:F

    .line 990
    float-to-int v4, v4

    .line 991
    add-int/2addr v2, v4

    .line 992
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 994
    iget-object v4, v6, Lcom/baidu/input/ime/SubList;->f0:Landroid/graphics/Rect;

    .line 996
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 998
    iget v7, v6, Lcom/baidu/input/ime/SubList;->t0:I

    .line 1000
    add-int/2addr v5, v7

    .line 1001
    if-ge v3, v5, :cond_3ec

    .line 1003
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1005
    :cond_3ec
    sub-int/2addr v2, v7

    .line 1006
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1008
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1010
    sub-int/2addr v3, v7

    .line 1011
    if-le v2, v3, :cond_430

    .line 1013
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1015
    goto :goto_430

    .line 1016
    :cond_3f7
    iget v2, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 1018
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->H:[I

    .line 1020
    aget v3, v3, v12

    .line 1022
    sub-int/2addr v2, v3

    .line 1023
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1025
    sget-byte v3, Lcom/baidu/input/ime/SubList;->z0:B

    .line 1027
    add-int/2addr v2, v3

    .line 1028
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1030
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 1032
    iget v3, v6, Lcom/baidu/input/ime/SubList;->b0:F

    .line 1034
    float-to-int v3, v3

    .line 1035
    add-int/2addr v3, v2

    .line 1036
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 1038
    iget v3, v6, Lcom/baidu/input/ime/SubList;->c0:F

    .line 1040
    float-to-int v3, v3

    .line 1041
    add-int/2addr v2, v3

    .line 1042
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1044
    goto :goto_430

    .line 1045
    :cond_414
    iget v2, v6, Lcom/baidu/input/ime/SubList;->y:I

    .line 1047
    iget-object v3, v6, Lcom/baidu/input/ime/SubList;->H:[I

    .line 1049
    aget v3, v3, v11

    .line 1051
    sub-int/2addr v2, v3

    .line 1052
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1054
    sget-byte v3, Lcom/baidu/input/ime/SubList;->z0:B

    .line 1056
    add-int/2addr v2, v3

    .line 1057
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1059
    iget v2, v6, Lcom/baidu/input/ime/SubList;->x:I

    .line 1061
    iget v3, v6, Lcom/baidu/input/ime/SubList;->b0:F

    .line 1063
    float-to-int v3, v3

    .line 1064
    add-int/2addr v3, v2

    .line 1065
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1067
    iget v3, v6, Lcom/baidu/input/ime/SubList;->c0:F

    .line 1069
    float-to-int v3, v3

    .line 1070
    add-int/2addr v2, v3

    .line 1071
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1073
    :cond_430
    :goto_430
    iget v2, v6, Lcom/baidu/input/ime/SubList;->M:I

    .line 1075
    if-eqz v2, :cond_43b

    .line 1077
    iget-byte v0, v0, Lcom/baidu/input/ime/params/ListParam;->m:B

    .line 1079
    if-le v0, v11, :cond_43b

    .line 1081
    invoke-virtual {v1, v12, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1084
    :cond_43b
    sget-object v0, Lcom/baidu/input/ime/SubList;->y0:Landroid/graphics/NinePatch;

    .line 1086
    invoke-virtual {v0, v14, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1089
    :cond_440
    :goto_440
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1092
    :cond_443
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1095
    return-void
.end method

.method public final x()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/baidu/input/ime/SubList;->m:I

    .line 4
    iput v0, p0, Lcom/baidu/input/ime/SubList;->o:I

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 9
    return-void
.end method

.method public final y(I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    instance-of v0, p0, Lcom/baidu/input/optimization/IMainSub;

    .line 8
    if-eqz v0, :cond_16

    .line 10
    iget v0, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 12
    move-object v1, p0

    .line 13
    check-cast v1, Lcom/baidu/input/optimization/IMainSub;

    .line 15
    invoke-interface {v1, p1}, Lcom/baidu/input/optimization/IMainSub;->d(I)I

    .line 18
    move-result p1

    .line 19
    add-int/2addr p1, v0

    .line 20
    iput p1, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    iput p1, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 25
    :goto_18
    return-void
.end method

.method public final z(IIII)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    sub-int p1, p4, p2

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sub-int p1, p3, p1

    .line 10
    :goto_9
    iget-boolean p2, p0, Lcom/baidu/input/ime/SubList;->X:Z

    .line 12
    if-nez p2, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/baidu/input/ime/SubList;->Z:Z

    .line 18
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 20
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 22
    iput-boolean p2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 24
    instance-of p2, p0, Lcom/baidu/input/optimization/IMainSub;

    .line 26
    if-eqz p2, :cond_28

    .line 28
    iget p2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 30
    move-object v0, p0

    .line 31
    check-cast v0, Lcom/baidu/input/optimization/IMainSub;

    .line 33
    invoke-interface {v0, p1}, Lcom/baidu/input/optimization/IMainSub;->d(I)I

    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, p2

    .line 38
    iput p1, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    iget p2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 43
    add-int/2addr p2, p1

    .line 44
    iput p2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 46
    :goto_2d
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_move_original
    iget p1, p0, Lcom/baidu/input/ime/SubList;->j:I
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/SubList;->baiduModClampOffset(I)I
    move-result p1
    iput p1, p0, Lcom/baidu/input/ime/SubList;->j:I
    iput p1, p0, Lcom/baidu/input/ime/SubList;->k:I
    :baidu_mod_move_original
    iget p1, p0, Lcom/baidu/input/ime/SubList;->P:I

    .line 48
    iput p1, p0, Lcom/baidu/input/ime/SubList;->N:I

    .line 50
    iget p1, p0, Lcom/baidu/input/ime/SubList;->Q:I

    .line 52
    iput p1, p0, Lcom/baidu/input/ime/SubList;->O:I

    .line 54
    iput p3, p0, Lcom/baidu/input/ime/SubList;->P:I

    .line 56
    iput p4, p0, Lcom/baidu/input/ime/SubList;->Q:I

    .line 58
    return-void
.end method

# Nine-key pinyin only: InputStatMac.o(false) maps b=0x21/d=1 to
# keyboard 0x0a. g=0 excludes handwriting and hardware keyboard modes.
.method public final baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V
    .registers 5

    invoke-virtual {p1}, Lcom/baidu/input/ime/InputStatMac;->f()B
    move-result v0
    const/16 v1, 0x21
    const/4 v2, 0x0
    if-ne v0, v1, :configured
    iget-byte v0, p1, Lcom/baidu/input/ime/InputStatMac;->d:B
    const/4 v1, 0x1
    if-ne v0, v1, :configured
    iget-byte v0, p1, Lcom/baidu/input/ime/InputStatMac;->g:B
    if-nez v0, :configured
    move v2, v1
    :configured
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eq v0, v2, :done
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->baiduModStopMotion()V
    :done
    return-void
.end method

# Same content extent as SubList.C and MainSubListWrapper.G, without overshoot.
# Clamp each event independently so reversing at an edge responds immediately.
.method public final baiduModClampOffset(I)I
    .registers 5

    const/4 v0, 0x0
    iget-object v1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;
    if-eqz v1, :empty
    iget v2, p0, Lcom/baidu/input/ime/SubList;->p0:I
    if-lez v2, :empty
    array-length v1, v1
    iget v2, p0, Lcom/baidu/input/ime/SubList;->L:I
    sub-int/2addr v1, v2
    if-lez v1, :empty
    iget v2, p0, Lcom/baidu/input/ime/SubList;->p0:I
    mul-int/2addr v1, v2
    neg-int v1, v1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
    move-result p1
    return p1
    :empty
    return v0
.end method

.method public final baiduModStopMotion()V
    .registers 3

    instance-of v0, p0, Lcom/baidu/input/optimization/IMainSub;
    if-eqz v0, :stopped
    move-object v0, p0
    check-cast v0, Lcom/baidu/input/optimization/IMainSub;
    invoke-interface {v0}, Lcom/baidu/input/optimization/IMainSub;->a()V
    :stopped
    iget v0, p0, Lcom/baidu/input/ime/SubList;->j:I
    invoke-virtual {p0, v0}, Lcom/baidu/input/ime/SubList;->baiduModClampOffset(I)I
    move-result v0
    iput v0, p0, Lcom/baidu/input/ime/SubList;->j:I
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/baidu/input/ime/SubList;->T:D
    const/4 v0, 0x0
    iput v0, p0, Lcom/baidu/input/ime/SubList;->g:I
    iput v0, p0, Lcom/baidu/input/ime/SubList;->U:I
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->V:Z
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->W:Z
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->h:Z
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->i:Z
    return-void
.end method
