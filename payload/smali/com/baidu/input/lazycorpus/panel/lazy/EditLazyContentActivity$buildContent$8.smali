.class public final Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"
    }
    d2 = {
        "com/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8",
        "Landroid/text/TextWatcher;",
        "lazycorpus_panel_release"
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
.field public final synthetic a:Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;

.field public final synthetic b:Lcom/baidu/input/acgfont/ImeTextView;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Lcom/baidu/input/acgfont/ImeTextView;Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->a:Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;

    .line 6
    iput-object p2, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->b:Lcom/baidu/input/acgfont/ImeTextView;

    .line 8
    iput-object p3, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->c:Landroid/widget/TextView;

    .line 10
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_f

    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    iget-object v0, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->c:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 22
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    const-string p2, "charSequence"

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    const-string p2, "charSequence"

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result p1

    .line 10
    const p2, 0x5f5e100

    .line 12
    iget-object p3, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->a:Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;

    .line 14
    iget-object p4, p0, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity$buildContent$8;->b:Lcom/baidu/input/acgfont/ImeTextView;

    .line 16
    invoke-static {p3, p4, p1, p2}, Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;->access$setLimitText(Lcom/baidu/input/lazycorpus/panel/lazy/EditLazyContentActivity;Landroid/widget/TextView;II)V

    .line 19
    return-void
.end method
