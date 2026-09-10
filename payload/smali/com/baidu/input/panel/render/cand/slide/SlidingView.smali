.class public Lcom/baidu/input/panel/render/cand/slide/SlidingView;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/panel/render/cand/slide/ISlidingCandHandler;


# instance fields
.field public baiduModDirectTouch:Z

.field public final a:Landroid/graphics/Rect;

.field public b:Landroid/graphics/Rect;

.field public final c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

.field public final d:Lcom/baidu/input/panel/render/cand/slide/ISlidingViewDependence;

.field public e:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

.field public f:Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

.field public g:I

.field public h:I

.field public final i:Landroid/widget/Scroller;

.field public j:Landroid/view/VelocityTracker;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:Z

.field public p:B

.field public final q:Landroid/os/Handler;

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/graphics/Rect;Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;Lcom/baidu/input/panel/render/cand/slide/ISlidingViewDependence;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->a:Landroid/graphics/Rect;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B

    .line 14
    new-instance v1, Landroid/os/Handler;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    iput-object v1, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->q:Landroid/os/Handler;

    .line 25
    iput v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->r:I

    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->s:I

    .line 30
    iput v1, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->t:I

    .line 32
    iput-boolean v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->u:Z

    .line 34
    iput-object p3, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 36
    iput-object p4, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->d:Lcom/baidu/input/panel/render/cand/slide/ISlidingViewDependence;

    .line 38
    new-instance p3, Lcom/baidu/input/acgfont/ImeBasePaint;

    .line 40
    invoke-direct {p3}, Lcom/baidu/input/acgfont/ImeBasePaint;-><init>()V

    .line 43
    const/4 p4, 0x1

    .line 44
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    sget-object p4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 49
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 54
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p3, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->a:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    iput-object p3, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b:Landroid/graphics/Rect;

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 71
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 74
    move-result p3

    .line 75
    iput p3, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->m:I

    .line 77
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 80
    move-result p2

    .line 81
    iput p2, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->n:I

    .line 83
    sget p2, Lcom/baidu/input/pub/ImeBaseGlobal;->p:F

    .line 85
    const/high16 p3, 0x41700000  # 15.0f

    .line 87
    mul-float/2addr p3, p2

    .line 88
    float-to-int p3, p3

    .line 89
    iput p3, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->k:I

    .line 91
    const/4 p3, 0x0

    .line 92
    mul-float/2addr p2, p3

    .line 93
    float-to-int p2, p2

    .line 94
    iput p2, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->l:I

    .line 96
    new-instance p2, Landroid/widget/Scroller;

    .line 98
    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->i:Landroid/widget/Scroller;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 4
    if-nez v1, :cond_6

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v2, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->b:Landroid/graphics/Rect;

    .line 9
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 11
    sub-int/2addr v3, p2

    .line 12
    iget v4, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->l:I

    .line 14
    if-gt v3, v4, :cond_3a

    .line 16
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 18
    sub-int/2addr p2, v3

    .line 19
    if-le p2, v4, :cond_15

    .line 21
    goto :goto_3a

    .line 22
    :cond_15
    iget p2, v2, Landroid/graphics/Rect;->left:I

    .line 24
    sub-int/2addr p1, p2

    .line 25
    iget p2, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->c:I

    .line 27
    :goto_1a
    iget v2, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d:I

    .line 29
    if-gt p2, v2, :cond_3a

    .line 31
    invoke-virtual {v1, p2}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a(I)Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;

    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_25

    .line 37
    goto :goto_3a

    .line 38
    :cond_25
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getStart()I

    .line 41
    move-result v3

    .line 42
    invoke-interface {v2}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I

    .line 45
    move-result v4

    .line 46
    iget v5, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 48
    add-int/2addr v3, v5

    .line 49
    if-lt p1, v3, :cond_37

    .line 51
    add-int/2addr v4, v5

    .line 52
    if-gt p1, v4, :cond_37

    .line 54
    move-object v0, v2

    .line 55
    goto :goto_3a

    .line 56
    :cond_37
    add-int/lit8 p2, p2, 0x1

    .line 58
    goto :goto_1a

    .line 59
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public final b(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {p0, p1}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModMove(I)V
    return-void
    :baidu_mod_original

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I

    .line 7
    if-gtz v1, :cond_9

    .line 9
    goto :goto_42

    .line 10
    :cond_9
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b:Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;

    .line 12
    invoke-virtual {v1}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I

    .line 15
    move-result v2

    .line 16
    if-gtz v2, :cond_12

    .line 18
    goto :goto_42

    .line 19
    :cond_12
    iget v2, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 21
    add-int v3, v2, p1

    .line 23
    if-le v3, v2, :cond_1d

    .line 25
    iget v3, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->c:I

    .line 27
    if-nez v3, :cond_1d

    .line 29
    goto :goto_2b

    .line 30
    :cond_1d
    add-int v3, v2, p1

    .line 32
    if-gt v3, v2, :cond_31

    .line 34
    iget v2, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d:I

    .line 36
    invoke-virtual {v1}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I

    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 42
    if-ne v2, v1, :cond_31

    .line 44
    :goto_2b
    int-to-float p1, p1

    .line 45
    const v1, 0x3ee66666  # 0.45f

    .line 48
    mul-float/2addr p1, v1

    .line 49
    float-to-int p1, p1

    .line 50
    :cond_31
    iget v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 52
    add-int/2addr v1, p1

    .line 53
    invoke-virtual {v0, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e(I)I

    .line 56
    move-result p1

    .line 57
    const v1, 0x7fffffff

    .line 60
    if-eq v1, p1, :cond_3f

    .line 62
    iput p1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 64
    :cond_3f
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d()V

    .line 67
    :cond_42
    :goto_42
    return-void
.end method

.method public final c(I)V
    .registers 8

    iget-boolean v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {p0}, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->baiduModStopScroll()V
    return-void
    :baidu_mod_original

    .line 1
    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->i:Landroid/widget/Scroller;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 7
    iget-object v1, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;

    .line 9
    iget v1, v1, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0x1f4

    .line 15
    move v3, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 19
    return-void
.end method

.method public final baiduModStopScroll()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->i:Landroid/widget/Scroller;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V
    const/4 v0, 0x0
    iput-byte v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->p:B
    iput-boolean v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->u:Z
    return-void
.end method

# Use the existing lazy layout. g is a prefetch bound, not the content end.
# Once the final cell is cached, its end gives the actual lower offset bound.
.method public final baiduModMove(I)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/input/panel/render/cand/slide/SlidingView;->c:Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;
    if-eqz v0, :done
    iget v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I
    if-lez v1, :done
    iget-object v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->b:Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;
    invoke-virtual {v1}, Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;->a()I
    move-result v1
    if-lez v1, :done
    add-int/lit8 v1, v1, -0x1
    iget v2, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I
    add-int/2addr p1, v2
    const/4 v3, 0x0
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I
    move-result p1
    invoke-virtual {v0, p1}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e(I)I
    move-result v4
    iget-object v5, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->h:Landroid/util/SparseArray;
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;
    if-eqz v5, :use_result
    invoke-interface {v5}, Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;->getEnd()I
    move-result v5
    iget v1, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->a:I
    sub-int/2addr v1, v5
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
    move-result v1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I
    move-result v1
    if-eq v1, p1, :use_result
    invoke-virtual {v0, v1}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e(I)I
    move-result v4
    :use_result
    const v1, 0x7fffffff
    if-ne v4, v1, :apply
    # Restore visible-cell bookkeeping if the requested cells are unavailable.
    invoke-virtual {v0, v2}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e(I)I
    goto :prefetch
    :apply
    iput v4, v0, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->e:I
    :prefetch
    invoke-virtual {v0}, Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;->d()V
    :done
    return-void
.end method
