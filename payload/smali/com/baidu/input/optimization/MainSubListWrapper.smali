.class public final Lcom/baidu/input/optimization/MainSubListWrapper;
.super Lcom/baidu/input/ime/SubList;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/optimization/IMainSub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/optimization/MainSubListWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"
    }
    d2 = {
        "Lcom/baidu/input/optimization/MainSubListWrapper;",
        "Lcom/baidu/input/ime/SubList;",
        "Lcom/baidu/input/optimization/IMainSub;",
        "<init>",
        "()V",
        "Companion",
        "ime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final F0:Lkotlin/Lazy;

.field public final G0:Lkotlin/Lazy;

.field public final H0:I

.field public final I0:I

.field public final J0:I

.field public K0:Z

.field public L0:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/baidu/input/optimization/MainSubListWrapper$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/input/optimization/MainSubListWrapper$Companion;-><init>(I)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/baidu/input/ime/SubList;-><init>()V

    .line 4
    sget-object v0, Lcom/baidu/input/optimization/MainSubListWrapper$mScroller$2;->a:Lcom/baidu/input/optimization/MainSubListWrapper$mScroller$2;

    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->F0:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lcom/baidu/input/optimization/MainSubListWrapper$mVelocityTracker$2;->a:Lcom/baidu/input/optimization/MainSubListWrapper$mVelocityTracker$2;

    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->G0:Lkotlin/Lazy;

    .line 20
    sget-object v0, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 22
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->I0:I

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->J0:I

    .line 41
    const/16 v0, 0xf

    .line 43
    int-to-float v0, v0

    .line 44
    sget v1, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 46
    mul-float/2addr v0, v1

    .line 47
    float-to-int v0, v0

    .line 48
    iput v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->H0:I

    .line 50
    return-void
.end method


# virtual methods
.method public final B(ZZ)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_8

    .line 5
    if-nez p2, :cond_8

    .line 7
    move v2, v1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v2, v0

    .line 10
    :goto_9
    iput-boolean v2, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->K0:Z

    .line 12
    if-eqz p1, :cond_11

    .line 14
    if-nez p2, :cond_11

    .line 16
    move v2, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v2, v0

    .line 19
    :goto_12
    iput-boolean v2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 21
    if-eqz p1, :cond_19

    .line 23
    if-nez p2, :cond_19

    .line 25
    move v0, v1

    .line 26
    :cond_19
    iput-boolean v0, p0, Lcom/baidu/input/ime/SubList;->Y:Z

    .line 28
    invoke-super {p0, p1, p2}, Lcom/baidu/input/ime/SubList;->B(ZZ)V

    .line 31
    return-void
.end method

.method public final F()Landroid/widget/Scroller;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->F0:Lkotlin/Lazy;

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/Scroller;

    .line 9
    return-object v0
.end method

.method public final G()V
    .registers 10

    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->baiduModStopMotion()V
    return-void
    :baidu_mod_original

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 9
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->h:Z

    .line 11
    const/16 v7, 0x1f4

    .line 13
    const/4 v8, 0x0

    .line 14
    if-eqz v0, :cond_31

    .line 16
    iget v0, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 18
    if-nez v0, :cond_20

    .line 20
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 23
    move-result-object v2

    .line 24
    iget v4, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 26
    neg-int v6, v4

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 32
    goto :goto_2e

    .line 33
    :cond_20
    if-ne v0, v1, :cond_2e

    .line 35
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 38
    move-result-object v2

    .line 39
    iget v3, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 41
    neg-int v5, v3

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 47
    :cond_2e
    :goto_2e
    iput-boolean v8, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 49
    goto :goto_67

    .line 50
    :cond_31
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->i:Z

    .line 52
    if-eqz v0, :cond_67

    .line 54
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 56
    array-length v0, v0

    .line 57
    iget v2, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 59
    sub-int/2addr v0, v2

    .line 60
    if-gez v0, :cond_3e

    .line 62
    move v0, v8

    .line 63
    :cond_3e
    iget v2, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 65
    mul-int/2addr v0, v2

    .line 66
    iget v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 68
    add-int/2addr v0, v2

    .line 69
    if-gez v0, :cond_67

    .line 71
    iget v2, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 73
    if-nez v2, :cond_57

    .line 75
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 78
    move-result-object v2

    .line 79
    iget v4, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 81
    neg-int v6, v0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 87
    goto :goto_65

    .line 88
    :cond_57
    if-ne v2, v1, :cond_65

    .line 90
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 93
    move-result-object v2

    .line 94
    iget v3, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 96
    neg-int v5, v0

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 102
    :cond_65
    :goto_65
    iput-boolean v8, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method public final a()V
    .registers 3

    # Also clear the wrapper's animation/redraw state on touch or mode changes.
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_stop_original
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->K0:Z
    iput-boolean v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->L0:Z
    :baidu_mod_stop_original

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 9
    return-void
.end method

.method public final b(IIZ)V
    .registers 13

    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {p0}, Lcom/baidu/input/ime/SubList;->baiduModStopMotion()V
    return-void
    :baidu_mod_original

    .line 1
    if-eqz p3, :cond_9e

    .line 3
    iget-object p3, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->G0:Lkotlin/Lazy;

    .line 5
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/VelocityTracker;

    .line 11
    iget v1, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->J0:I

    .line 13
    int-to-float v1, v1

    .line 14
    const/16 v2, 0x1f4

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 19
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/VelocityTracker;

    .line 25
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 28
    move-result v0

    .line 29
    float-to-int v0, v0

    .line 30
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Landroid/view/VelocityTracker;

    .line 36
    invoke-virtual {p3}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 39
    move-result p3

    .line 40
    float-to-int p3, p3

    .line 41
    iget v1, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 43
    if-nez v1, :cond_2e

    .line 45
    move p1, p2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move p3, v0

    .line 48
    :goto_2f
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 51
    move-result p2

    .line 52
    iget v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->H0:I

    .line 54
    iget v1, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->I0:I

    .line 56
    if-gt p2, v1, :cond_3f

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 61
    move-result p2

    .line 62
    if-le p2, v0, :cond_9e

    .line 64
    :cond_3f
    iget-boolean p2, p0, Lcom/baidu/input/ime/SubList;->h:Z

    .line 66
    if-eqz p2, :cond_47

    .line 68
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->G()V

    .line 71
    goto :goto_9e

    .line 72
    :cond_47
    iget-boolean p2, p0, Lcom/baidu/input/ime/SubList;->i:Z

    .line 74
    if-eqz p2, :cond_4f

    .line 76
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->G()V

    .line 79
    goto :goto_9e

    .line 80
    :cond_4f
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 83
    move-result p2

    .line 84
    if-gt p2, v1, :cond_5b

    .line 86
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 89
    move-result p1

    .line 90
    if-le p1, v0, :cond_9e

    .line 92
    :cond_5b
    iget p1, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 94
    const/4 p2, 0x0

    .line 95
    if-nez p1, :cond_7d

    .line 97
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 100
    move-result-object v0

    .line 101
    iget v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 103
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 105
    array-length p1, p1

    .line 106
    iget v1, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 108
    sub-int/2addr p1, v1

    .line 109
    if-gez p1, :cond_6f

    .line 111
    move p1, p2

    .line 112
    :cond_6f
    iget v1, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 114
    mul-int/2addr p1, v1

    .line 115
    neg-int v7, p1

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v1, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    move v4, p3

    .line 122
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 125
    goto :goto_9c

    .line 126
    :cond_7d
    const/4 v0, 0x1

    .line 127
    if-ne p1, v0, :cond_9c

    .line 129
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 132
    move-result-object v0

    .line 133
    iget v1, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 135
    iget-object p1, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 137
    array-length p1, p1

    .line 138
    iget v2, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 140
    sub-int/2addr p1, v2

    .line 141
    if-gez p1, :cond_8f

    .line 143
    move p1, p2

    .line 144
    :cond_8f
    iget v2, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 146
    mul-int/2addr p1, v2

    .line 147
    neg-int v5, p1

    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v7, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    move v3, p3

    .line 154
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 157
    :cond_9c
    :goto_9c
    iput-boolean p2, p0, Lcom/baidu/input/ime/SubList;->W:Z

    .line 159
    :cond_9e
    :goto_9e
    return-void
.end method

.method public final c()Landroid/view/VelocityTracker;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->G0:Lkotlin/Lazy;

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/VelocityTracker;

    .line 9
    const-string v1, "mVelocityTracker"

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method public final computeScroll()V
    .registers 4

    # While direct touch is enabled, animation frames cannot write j/k.
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    return-void
    :baidu_mod_original

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_70

    .line 13
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_70

    .line 23
    iget v0, p0, Lcom/baidu/input/ime/SubList;->z:I

    .line 25
    if-nez v0, :cond_2f

    .line 27
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 37
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 47
    goto :goto_45

    .line 48
    :cond_2f
    if-ne v0, v2, :cond_45

    .line 50
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 60
    invoke-virtual {p0}, Lcom/baidu/input/optimization/MainSubListWrapper;->F()Landroid/widget/Scroller;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 70
    :cond_45
    :goto_45
    iput-boolean v2, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->L0:Z

    .line 72
    iput-boolean v1, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->K0:Z

    .line 74
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 76
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 78
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5c

    .line 86
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 88
    iget-object v0, v0, Lcom/baidu/input/ImeService;->m:Lcom/baidu/input/ime/keymap/SoftKeyboardView;

    .line 90
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->n()V

    .line 93
    :cond_5c
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 95
    iget-object v0, v0, Lcom/baidu/input/ImeService;->t:Lcom/baidu/input/ime/keymap/more/MoreCandidateWordView;

    .line 97
    iget-object v0, v0, Lcom/baidu/input/ime/keymap/AbsKeymapView;->a:Lcom/baidu/input/ime/view/InputContainerView;

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_78

    .line 105
    sget-object v0, Lcom/baidu/input/pub/Global;->U:Lcom/baidu/input/ImeService;

    .line 107
    iget-object v0, v0, Lcom/baidu/input/ImeService;->t:Lcom/baidu/input/ime/keymap/more/MoreCandidateWordView;

    .line 109
    invoke-virtual {v0}, Lcom/baidu/input/ime/keymap/AbsKeymapView;->n()V

    .line 112
    goto :goto_78

    .line 113
    :cond_70
    iget-boolean v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->L0:Z

    .line 115
    if-eqz v0, :cond_78

    .line 117
    iput-boolean v2, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->K0:Z

    .line 119
    iput-boolean v1, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->L0:Z

    .line 121
    :cond_78
    :goto_78
    return-void
.end method

.method public final d(I)I
    .registers 5

    # Replace the quarter-speed edge resistance with a bounded 1:1 delta.
    iget-boolean v0, p0, Lcom/baidu/input/ime/SubList;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    iget v0, p0, Lcom/baidu/input/ime/SubList;->j:I
    add-int/2addr p1, v0
    invoke-virtual {p0, p1}, Lcom/baidu/input/ime/SubList;->baiduModClampOffset(I)I
    move-result p1
    iput p1, p0, Lcom/baidu/input/ime/SubList;->k:I
    sub-int/2addr p1, v0
    return p1
    :baidu_mod_original

    .line 1
    iget v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/baidu/input/ime/SubList;->k:I

    .line 6
    const/high16 v1, 0x3e800000  # 0.25f

    .line 8
    if-lez v0, :cond_d

    .line 10
    :goto_9
    int-to-float p1, p1

    .line 11
    mul-float/2addr p1, v1

    .line 12
    float-to-int p1, p1

    .line 13
    goto :goto_21

    .line 14
    :cond_d
    if-gez v0, :cond_21

    .line 16
    iget-object v0, p0, Lcom/baidu/input/ime/SubList;->I:[Ljava/lang/String;

    .line 18
    array-length v0, v0

    .line 19
    iget v2, p0, Lcom/baidu/input/ime/SubList;->L:I

    .line 21
    sub-int/2addr v0, v2

    .line 22
    if-gez v0, :cond_18

    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_18
    iget v2, p0, Lcom/baidu/input/ime/SubList;->p0:I

    .line 27
    mul-int/2addr v0, v2

    .line 28
    iget v2, p0, Lcom/baidu/input/ime/SubList;->j:I

    .line 30
    add-int/2addr v0, v2

    .line 31
    if-gez v0, :cond_21

    .line 33
    goto :goto_9

    .line 34
    :cond_21
    :goto_21
    return p1
.end method

.method public final r()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final s()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/baidu/input/optimization/MainSubListWrapper;->K0:Z

    .line 3
    return v0
.end method
