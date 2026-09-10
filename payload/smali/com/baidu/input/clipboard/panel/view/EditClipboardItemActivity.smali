.class public final Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;
.super Lcom/baidu/input/ImeHomeFinishActivity;
.source "Proguard"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\r\u0010\u000eJ1\u0010\u0015\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J1\u0010\u0018\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u0019\u0010\u001a\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "
    }
    d2 = {
        "Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;",
        "Lcom/baidu/input/ImeHomeFinishActivity;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroid/text/TextWatcher;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "",
        "shouldFinishWhenHome",
        "()Z",
        "",
        "s",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
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
.field public static final synthetic j:I


# instance fields
.field public final synthetic d:Lkotlinx/coroutines/internal/ContextScope;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/app/Dialog;

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/baidu/input/ImeHomeFinishActivity;-><init>()V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->b()Lkotlinx/coroutines/internal/ContextScope;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->d:Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->h:J

    .line 14
    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Landroid/text/SpannableString;

    .line 5
    sget v3, Lkotlin/jvm/internal/StringCompanionObject;->a:I

    .line 7
    sget-object v3, Lcom/baidu/input/pub/ImeBaseGlobal;->m:Landroid/app/Application;

    .line 9
    const v4, 0x7f1203ef

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    const-string v4, "getImeApp().getString(R.….content_limit_formatter)"

    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    const v5, 0x5f5e100

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 31
    new-array v6, v1, [Ljava/lang/Object;

    .line 33
    aput-object v4, v6, v0

    .line 35
    const/4 v4, 0x1

    .line 36
    aput-object v5, v6, v4

    .line 38
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    const/16 v1, 0x1b4e

    .line 51
    if-gt v1, p1, :cond_56

    .line 53
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 55
    const/high16 v3, -0x10000

    .line 57
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string p1, ""

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 80
    move-result p1

    .line 81
    const/16 v3, 0x21

    .line 83
    invoke-virtual {v2, v1, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    :cond_56
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1  # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->f:Landroid/widget/TextView;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1b

    .line 6
    iget-object v1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 8
    if-eqz v1, :cond_15

    .line 10
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v0

    .line 18
    invoke-static {p1, v0}, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->a(Landroid/widget/TextView;I)V

    .line 21
    return-void

    .line 22
    :cond_15
    const-string p1, "editText"

    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1b
    const-string p1, "lengthHintText"

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->d:Lkotlinx/coroutines/internal/ContextScope;

    .line 3
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->a:Lkotlin/coroutines/CoroutineContext;

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-super {p0, p1}, Lcom/baidu/input/ImeHomeFinishActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 10
    const-string v2, "id"

    .line 12
    const-wide/16 v3, -0x1

    .line 14
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->h:J

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    const-string v2, "is_recent"

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->i:Z

    .line 33
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    move-result-object p1

    .line 37
    const v2, 0x7f0d0230

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object v2

    .line 49
    const v5, 0x7f0d0238

    .line 52
    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 56
    const-string v5, "from(this).inflate(R.lay…log_edit_clipboard, null)"

    .line 58
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/baidu/input/common/utils/TypefaceUtils;->getInstance()Lcom/baidu/input/common/utils/TypefaceUtils;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/baidu/input/common/utils/TypefaceUtils;->getCusTypeface()Landroid/graphics/Typeface;

    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_4d

    .line 71
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 73
    const-string v6, "DEFAULT"

    .line 75
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :cond_4d
    const v6, 0x7f0a0167

    .line 81
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    const-string v7, "编辑"

    .line 92
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 98
    move-result-object v7

    .line 99
    invoke-interface {v7}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->v()Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;

    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v7}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->l()I

    .line 106
    move-result v7

    .line 107
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const v6, 0x7f0a0750

    .line 113
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v6

    .line 117
    const-string v7, "contentLayout.findViewById(R.id.edit)"

    .line 119
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    check-cast v6, Landroid/widget/EditText;

    .line 124
    iput-object v6, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 126
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    iget-object v6, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 131
    const-string v7, "editText"

    .line 133
    if-eqz v6, :cond_249

    .line 135
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    .line 137
    const v9, 0x5f5e100

    .line 139
    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 142
    new-array v9, v1, [Landroid/text/InputFilter;

    .line 144
    aput-object v8, v9, v3

    .line 146
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 149
    iget-boolean v6, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->i:Z

    .line 151
    const-class v8, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;

    .line 153
    if-eqz v6, :cond_e7

    .line 155
    invoke-static {v8}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;

    .line 161
    invoke-interface {v6}, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;->Bj()Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 164
    move-result-object v6

    .line 165
    iget-wide v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->h:J

    .line 167
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 173
    new-instance v6, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;

    .line 175
    invoke-direct {v6}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;-><init>()V

    .line 178
    sget-object v6, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 180
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 186
    move-result-object v6

    .line 187
    iget-object v6, v6, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 189
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    new-instance v10, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 194
    invoke-direct {v10, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 197
    sget-object v6, Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 199
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 206
    move-result-object v6

    .line 207
    new-array v8, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 209
    invoke-virtual {v10, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 212
    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 215
    move-result-object v6

    .line 216
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/List;)Ljava/lang/Object;

    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 222
    if-nez v6, :cond_e2

    .line 224
    :goto_e0
    move-object v6, v4

    .line 225
    goto :goto_109

    .line 226
    :cond_e2
    invoke-static {v6}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 229
    move-result-object v6

    .line 230
    goto :goto_109

    .line 231
    :cond_e7
    invoke-static {v8}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;

    .line 237
    invoke-interface {v6}, Lcom/baidu/input/clipboard/datamanager/IClipboardDataManagerModule;->Bj()Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 240
    move-result-object v6

    .line 241
    iget-wide v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->h:J

    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 249
    new-instance v6, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 251
    invoke-direct {v6}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 254
    invoke-static {v8, v9}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->tk(J)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 257
    move-result-object v6

    .line 258
    if-nez v6, :cond_105

    .line 260
    goto :goto_e0

    .line 261
    :cond_105
    invoke-static {v6}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 264
    move-result-object v6

    .line 265
    :goto_109
    iget-object v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 267
    if-eqz v8, :cond_245

    .line 269
    if-eqz v6, :cond_112

    .line 271
    iget-object v9, v6, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->b:Ljava/lang/String;

    .line 273
    goto :goto_113

    .line 274
    :cond_112
    move-object v9, v4

    .line 275
    :goto_113
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 280
    if-eqz v8, :cond_241

    .line 282
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 285
    move-result-object v9

    .line 286
    invoke-interface {v9}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->v()Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;

    .line 289
    move-result-object v9

    .line 290
    invoke-interface {v9}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->b()I

    .line 293
    move-result v9

    .line 294
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    const v8, 0x7f0a0dd2

    .line 300
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 303
    move-result-object v8

    .line 304
    const-string v9, "contentLayout.findViewById(R.id.length_hint)"

    .line 306
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    check-cast v8, Landroid/widget/TextView;

    .line 311
    iput-object v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->f:Landroid/widget/TextView;

    .line 313
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 316
    iget-object v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->f:Landroid/widget/TextView;

    .line 318
    const-string v9, "lengthHintText"

    .line 320
    if-eqz v8, :cond_23d

    .line 322
    invoke-static {}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPaletteKt;->a()Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;

    .line 325
    move-result-object v10

    .line 326
    invoke-interface {v10}, Lcom/baidu/input/inspirationcorpus/common/palette/IInspirationCorpusPalette;->v()Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;

    .line 329
    move-result-object v10

    .line 330
    invoke-interface {v10}, Lcom/baidu/input/inspirationcorpus/common/palette/IEditorDialogPalette;->o()I

    .line 333
    move-result v10

    .line 334
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v8, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->f:Landroid/widget/TextView;

    .line 339
    if-eqz v8, :cond_239

    .line 341
    if-eqz v6, :cond_15f

    .line 343
    iget-object v9, v6, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->b:Ljava/lang/String;

    .line 345
    if-eqz v9, :cond_15f

    .line 347
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 350
    move-result v3

    .line 351
    :cond_15f
    invoke-static {v8, v3}, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->a(Landroid/widget/TextView;I)V

    .line 354
    iget-object v3, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 356
    if-eqz v3, :cond_235

    .line 358
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    new-instance v3, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;

    .line 363
    const-class v8, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 365
    invoke-static {v8}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 368
    move-result-object v8

    .line 369
    check-cast v8, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;

    .line 371
    invoke-interface {v8}, Lcom/baidu/input/inspiration_corpus/api/InspirationCorpusDependency;->xb()Z

    .line 374
    move-result v8

    .line 375
    const/4 v9, 0x2

    .line 376
    if-eqz v8, :cond_17c

    .line 378
    move v8, v9

    .line 379
    goto :goto_17d

    .line 380
    :cond_17c
    move v8, v1

    .line 381
    :goto_17d
    invoke-direct {v3, p0, v8}, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 384
    iget-object v3, v3, Lcom/baidu/input/dialog/compose/ComposeDialogBuilder;->a:Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 386
    invoke-interface {v3, p1}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->w2(Landroid/view/View;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 389
    invoke-interface {v3, v1}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->oh(I)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 392
    invoke-interface {v3, v2}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setView(Landroid/view/View;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 395
    invoke-interface {v3, v5}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setTypeface(Landroid/graphics/Typeface;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 398
    new-instance p1, Lcom/baidu/p4;

    .line 400
    invoke-direct {p1, p0, v6, v0}, Lcom/baidu/p4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 403
    const-string v2, "确认"

    .line 405
    invoke-interface {v3, v2, p1}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->C8(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    move-result-object p1

    .line 412
    const v2, 0x7f1202a3

    .line 415
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 418
    move-result-object p1

    .line 419
    new-instance v2, Lcom/baidu/t;

    .line 421
    const/16 v5, 0x8

    .line 423
    invoke-direct {v2, p0, v5}, Lcom/baidu/t;-><init>(Ljava/lang/Object;I)V

    .line 426
    invoke-interface {v3, p1, v2}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->wi(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 429
    new-instance p1, Lcom/baidu/r3;

    .line 431
    invoke-direct {p1, p0, v0}, Lcom/baidu/r3;-><init>(Ljava/lang/Object;I)V

    .line 434
    invoke-interface {v3, p1}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;

    .line 437
    invoke-interface {v3}, Lcom/baidu/input/dialog/compose/customizer/api/ICustomDialogBuilder;->a()Landroid/app/Dialog;

    .line 440
    move-result-object p1

    .line 441
    const-string v0, "builder.create<Dialog>()"

    .line 443
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iput-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->g:Landroid/app/Dialog;

    .line 448
    const-class p1, Lcom/baidu/input/cocomodule/dialog/IDialogManager;

    .line 450
    invoke-static {p1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 453
    move-result-object p1

    .line 454
    check-cast p1, Lcom/baidu/input/cocomodule/dialog/IDialogManager;

    .line 456
    iget-object v0, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->g:Landroid/app/Dialog;

    .line 458
    const-string v2, "dialog"

    .line 460
    if-eqz v0, :cond_231

    .line 462
    invoke-interface {p1, v0}, Lcom/baidu/input/cocomodule/dialog/IDialogManager;->Gb(Landroid/app/Dialog;)V

    .line 465
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 467
    if-eqz p1, :cond_22d

    .line 469
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 472
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 474
    if-eqz p1, :cond_229

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 479
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->g:Landroid/app/Dialog;

    .line 481
    if-eqz p1, :cond_225

    .line 483
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 486
    move-result-object p1

    .line 487
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 490
    const v0, 0x20008

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 496
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->g:Landroid/app/Dialog;

    .line 498
    if-eqz p1, :cond_221

    .line 500
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 503
    move-result-object p1

    .line 504
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 507
    const/4 v0, 0x5

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 514
    move-result-object p1

    .line 515
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 518
    move-result-object p1

    .line 519
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 521
    if-ne p1, v9, :cond_220

    .line 523
    iget-object p1, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 525
    if-eqz p1, :cond_21c

    .line 527
    new-instance v0, Lcom/baidu/fg;

    .line 529
    const/16 v1, 0xd

    .line 531
    invoke-direct {v0, p0, v1}, Lcom/baidu/fg;-><init>(Ljava/lang/Object;I)V

    .line 534
    const-wide/16 v1, 0x64

    .line 536
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    goto :goto_220

    .line 540
    :cond_21c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 543
    throw v4

    .line 544
    :cond_220
    :goto_220
    return-void

    .line 545
    :cond_221
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 548
    throw v4

    .line 549
    :cond_225
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 552
    throw v4

    .line 553
    :cond_229
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 556
    throw v4

    .line 557
    :cond_22d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 560
    throw v4

    .line 561
    :cond_231
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 564
    throw v4

    .line 565
    :cond_235
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 568
    throw v4

    .line 569
    :cond_239
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 572
    throw v4

    .line 573
    :cond_23d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 576
    throw v4

    .line 577
    :cond_241
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 580
    throw v4

    .line 581
    :cond_245
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 584
    throw v4

    .line 585
    :cond_249
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 588
    throw v4
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/baidu/input/ImeHomeFinishActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/baidu/input/clipboard/panel/view/EditClipboardItemActivity;->e:Landroid/widget/EditText;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    return-void

    .line 12
    :cond_b
    const-string v0, "editText"

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public shouldFinishWhenHome()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
