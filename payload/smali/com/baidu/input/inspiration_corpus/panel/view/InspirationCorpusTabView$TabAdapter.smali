.class final Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001¨\u0006\u0004"
    }
    d2 = {
        "Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;",
        "Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;",
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
.field public final f:Ljava/util/ArrayList;

.field public g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

.field public h:Z

.field public final synthetic i:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;


# direct methods
.method public constructor <init>(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->i:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 11

    .line 1
    check-cast p1, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;

    .line 3
    const-string v0, "holder"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 16
    :cond_28
    iget-object v2, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    iget-boolean v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->h:Z

    .line 28
    const-string v2, "tab"

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v2, p1, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;->j:Lcom/baidu/input/acgfont/ImeTextView;

    .line 35
    const/4 v3, -0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz p2, :cond_bb

    .line 39
    invoke-static {}, Lcom/baidu/input/common/utils/RomUtil;->isVivo()Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_51

    .line 45
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 56
    goto :goto_5d

    .line 57
    :cond_51
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 64
    move-result-object v5

    .line 65
    const/4 v6, 0x1

    .line 66
    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    :goto_5d
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v6}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->b()Lcom/baidu/input/inspirationcorpus/common/palette/IMainTabPalette;

    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v6}, Lcom/baidu/input/inspirationcorpus/common/palette/IMainTabPalette;->d()Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v5

    .line 90
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 108
    move-result-object v6

    .line 109
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->getTitle()Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 116
    move-result v6

    .line 117
    float-to-int v6, v6

    .line 118
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/InspirationCorpusCommonGlobalKt;->k()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->a()I

    move-result v6

    if-eqz v6, :cond_9f

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_aa

    :cond_9f
    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/input/inspiration_corpus/util/DimensionUtilKt;->a(Ljava/lang/Number;)I

    move-result v6

    add-int/2addr v7, v6

    :cond_aa
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    if-eqz v0, :cond_b5

    .line 129
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 131
    const/4 v0, 0x4

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    goto :goto_107

    .line 136
    :cond_b5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 138
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    goto :goto_107

    .line 142
    :cond_bb
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->getTitle()Ljava/lang/String;

    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 153
    move-result v0

    .line 154
    float-to-int v0, v0

    .line 155
    const/16 v5, 0x96

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5}, Lcom/baidu/input/inspiration_corpus/util/DimensionUtilKt;->a(Ljava/lang/Number;)I

    .line 164
    move-result v5

    .line 165
    if-le v0, v5, :cond_d5

    move v0, v5

    :cond_d5
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->a()I

    move-result v5

    if-eqz v5, :cond_de

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e9

    :cond_de
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/input/inspiration_corpus/util/DimensionUtilKt;->a(Ljava/lang/Number;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_e9
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 170
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 184
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 186
    const/4 v5, 0x0

    .line 187
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    move-result-object p1

    .line 196
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    :goto_107
    sget-object p1, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->a:Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    sget-boolean p1, Lcom/baidu/input/inspirationcorpus/common/TurtleSoupSceneManager;->b:Z

    .line 205
    if-eqz p1, :cond_114

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    goto :goto_11f

    .line 211
    :cond_114
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p1, p2}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->A(Z)I

    .line 218
    move-result p1

    .line 219
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    :goto_11f
    invoke-interface {v1}, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;->getTitle()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 1
    const-string p2, "parent"

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;

    .line 8
    new-instance p2, Landroid/widget/FrameLayout;

    .line 10
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->i:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p1, v0, p2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;-><init>(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;Landroid/widget/FrameLayout;)V

    .line 22
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 24
    new-instance v1, Lcom/baidu/input/inspiration_corpus/panel/view/b;

    .line 26
    invoke-direct {v1, p1, p0, v0}, Lcom/baidu/input/inspiration_corpus/panel/view/b;-><init>(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabViewHolder;Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)V

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-object p1
.end method

.method public final p(I)Z
    .registers 4

    .line 1
    if-ltz p1, :cond_15

    .line 3
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-ge p1, v1, :cond_15

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    :goto_16
    return p1
.end method

.method public final q()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget-object v0, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;Ljava/lang/Object;)I

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_14
    :goto_14
    const/4 v0, -0x1

    .line 22
    return v0
.end method

.method public final r(I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->q()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->f:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 13
    const-string v3, "tab"

    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v2, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->g:Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 23
    iget-object v2, p0, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->i:Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;

    .line 25
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getOnTabChosenListener$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$OnTabChosenListener;

    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_56

    .line 31
    const/4 v4, -0x1

    .line 32
    if-ne v0, v4, :cond_23

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_4d

    .line 36
    :cond_23
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 39
    move-result-object v4

    .line 40
    iget-boolean v4, v4, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->h:Z

    .line 42
    if-eqz v4, :cond_41

    .line 44
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    iput-boolean v5, v4, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->h:Z

    .line 51
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 54
    move-result-object v4

    .line 55
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$getAdapter$p(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$TabAdapter;->q()I

    .line 62
    move-result v5

    .line 63
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 66
    :cond_41
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$hideLeftEdge(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)V

    .line 69
    invoke-static {v2}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;->access$hideRightEdge(Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 78
    :goto_4d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;

    .line 84
    invoke-interface {v3, v0, p1}, Lcom/baidu/input/inspiration_corpus/panel/view/InspirationCorpusTabView$OnTabChosenListener;->a(Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;)V

    .line 87
    :cond_56
    return-void
.end method
