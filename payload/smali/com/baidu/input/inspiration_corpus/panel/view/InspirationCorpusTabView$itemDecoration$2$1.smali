.class public final Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$itemDecoration$2$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"
    }
    d2 = {
        "com/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$itemDecoration$2$1",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "inspiration_corpus_impl_release"
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
.field public final synthetic e:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;


# direct methods
.method public constructor <init>(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$itemDecoration$2$1;->e:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 1
    const-string v0, "outRect"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "view"

    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "parent"

    .line 13
    const-string v1, "state"

    .line 15
    invoke-static {p3, v0, p4, v1, p2}, Lcom/baidu/nl;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$State;Ljava/lang/String;Landroid/view/View;)I

    .line 18
    move-result p2

    .line 19
    iget-object p3, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$itemDecoration$2$1;->e:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;

    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    move-result-object p4

    iget-object p4, p4, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    invoke-interface {p4}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->a()I

    move-result p4

    if-eqz p4, :cond_29

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2f

    :cond_29
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 21
    :cond_2f
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 24
    move-result-object p4

    .line 25
    invoke-virtual {p4, p2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->p(I)Z

    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_40

    .line 31
    const/4 p2, 0x0

    .line 32
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 36
    goto/16 :goto_cf

    .line 38
    :cond_40
    if-nez p2, :cond_63

    .line 40
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->k()I

    .line 43
    move-result p4

    .line 44
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 46
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 49
    move-result-object p4

    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 52
    invoke-virtual {p4, p2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->p(I)Z

    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_5c

    .line 58
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 61
    move-result p2

    .line 62
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 64
    goto/16 :goto_cf

    .line 66
    :cond_5c
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 69
    move-result p2

    .line 70
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 72
    goto :goto_cf

    .line 73
    :cond_63
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 76
    move-result-object p4

    .line 77
    iget-object p4, p4, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result p4

    .line 83
    add-int/lit8 p4, p4, -0x1

    .line 85
    if-ne p2, p4, :cond_91

    .line 87
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 90
    move-result-object p4

    .line 91
    add-int/lit8 p2, p2, -0x1

    .line 93
    invoke-virtual {p4, p2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->p(I)Z

    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_84

    .line 99
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 102
    move-result p2

    .line 103
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 105
    goto :goto_8a

    .line 106
    :cond_84
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 109
    move-result p2

    .line 110
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 112
    :goto_8a
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->k()I

    .line 115
    move-result p2

    .line 116
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 118
    goto :goto_cf

    .line 119
    :cond_91
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 122
    move-result-object p4

    .line 123
    add-int/lit8 v0, p2, -0x1

    .line 125
    invoke-virtual {p4, v0}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->p(I)Z

    .line 128
    move-result p4

    .line 129
    if-eqz p4, :cond_aa

    .line 131
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 134
    move-result p2

    .line 135
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 137
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 140
    move-result p2

    .line 141
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 143
    goto :goto_cf

    .line 144
    :cond_aa
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 147
    move-result-object p4

    .line 148
    add-int/lit8 p2, p2, 0x1

    .line 150
    invoke-virtual {p4, p2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->p(I)Z

    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_c3

    .line 156
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 159
    move-result p2

    .line 160
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 162
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 165
    move-result p2

    .line 166
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 168
    goto :goto_cf

    .line 169
    :cond_c3
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 172
    move-result p2

    .line 173
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 175
    invoke-static {p3}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getNonNearTheSelectedItemHorizontalMargin$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)I

    .line 178
    move-result p2

    .line 179
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 181
    :goto_cf
    return-void
.end method
