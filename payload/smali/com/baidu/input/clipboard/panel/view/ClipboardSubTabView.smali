.class public final Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;
.super Landroid/widget/LinearLayout;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001dB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001e"
    }
    d2 = {
        "Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;",
        "curTab",
        "",
        "tabList",
        "",
        "setTabList",
        "(Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;Ljava/util/List;)V",
        "",
        "count",
        "setCount",
        "(I)V",
        "Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;",
        "listener",
        "addTabSelectorListener",
        "(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)V",
        "",
        "removeTabSelectorListener",
        "(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)Z",
        "Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;",
        "setOnClipboardSubTabViewEventListener",
        "(Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;)V",
        "ClipboardSubTabViewEventListener",
        "clipboard_panel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

.field public final b:Lcom/baidu/input/acgfont/ImeTextView;

.field public c:I

.field public d:Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    move-result-object p2

    invoke-interface {p2}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->C()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    new-instance v0, Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->a:Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000  # 1.0f

    .line 9
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x8

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 11
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v0, Lcom/baidu/input/acgfont/ImeTextView;

    invoke-direct {v0, p1}, Lcom/baidu/input/acgfont/ImeTextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xd

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 15
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->B()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iput-object v0, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->b:Lcom/baidu/input/acgfont/ImeTextView;

    .line 17
    const-string p1, "0/300"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide v1, 0x402be147ae147ae1L  # 13.94

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/input/inspirationcorpus/common/util/DimensionUtilKt;->b(Ljava/lang/Number;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance p1, Lcom/baidu/wa;

    const/16 p2, 0x17

    invoke-direct {p1, p0, p2}, Lcom/baidu/wa;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 2
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final addTabSelectorListener(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)V
    .registers 3
    .param p1  # Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->a:Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;->addTabSelectorListener(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)V

    .line 11
    return-void
.end method

.method public final removeTabSelectorListener(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)Z
    .registers 3
    .param p1  # Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->a:Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;->removeTabSelectorListener(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabSelectorListener;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final setCount(I)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->c:I

    .line 3
    const v0, 0x5f5e100

    .line 5
    iget-object v1, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->b:Lcom/baidu/input/acgfont/ImeTextView;

    .line 7
    if-le p1, v0, :cond_24

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "<font color =\'-65536\'>"

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, "</font>/300"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_38

    .line 36
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, "/300"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_38
    return-void
.end method

.method public final setOnClipboardSubTabViewEventListener(Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;)V
    .registers 3
    .param p1  # Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->d:Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView$ClipboardSubTabViewEventListener;

    .line 8
    return-void
.end method

.method public final setTabList(Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;Ljava/util/List;)V
    .registers 10
    .param p1  # Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/input/inspirationcorpus/common/tab/IInspirationCorpusTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "curTab"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "tabList"

    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    move-result v3

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    iget-object v1, p0, Lcom/baidu/input/clipboard/panel/view/ClipboardSubTabView;->a:Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v2, p2

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;->setTabListAndSelected$default(Lcom/baidu/input/inspirationcorpus/common/tab/InspirationCorpusSubTabView;Ljava/util/List;IIILjava/lang/Object;)V

    .line 24
    return-void
.end method
