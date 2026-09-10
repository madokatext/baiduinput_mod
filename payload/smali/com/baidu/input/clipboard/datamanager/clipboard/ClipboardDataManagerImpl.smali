.class public final Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;
.super Lcom/baidu/coco/module/CocoBaseModule;
.source "Proguard"

# interfaces
.implements Lcom/baidu/input/clipboard/datamanager/clipboard/IClipboardDataManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"
    }
    d2 = {
        "Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;",
        "Lcom/baidu/input/clipboard/datamanager/clipboard/IClipboardDataManager;",
        "Lcom/baidu/coco/module/CocoBaseModule;",
        "<init>",
        "()V",
        "clipboard_datamanager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/coco/module/CocoBaseModule;-><init>()V

    .line 4
    return-void
.end method

.method public static ik(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->d:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 3
    invoke-virtual {v0}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a()Lkotlin/jvm/functions/Function1;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1b

    .line 19
    invoke-virtual {v0}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 27
    goto :goto_37

    .line 28
    :cond_1b
    sget-object v0, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->e:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 30
    invoke-virtual {v0}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a()Lkotlin/jvm/functions/Function1;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_36

    .line 46
    invoke-virtual {v0}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 49
    move-result p0

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p0

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    :goto_37
    return-object p0
.end method

.method public static jk(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    add-int/lit16 v1, v1, 0x1f3

    .line 12
    div-int/lit16 v1, v1, 0x1f4

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :cond_f
    :goto_f
    if-ge v3, v1, :cond_5b

    .line 18
    mul-int/lit16 v4, v3, 0x1f4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 22
    mul-int/lit16 v5, v3, 0x1f4

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v6

    .line 28
    if-ge v5, v6, :cond_1e

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v5

    .line 35
    :goto_22
    sget-object v6, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 43
    move-result-object v6

    .line 44
    iget-object v6, v6, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v7, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 51
    invoke-direct {v7, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 54
    sget-object v6, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 56
    invoke-virtual {p0, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/util/Collection;

    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v6, v4}, Lorg/greenrobot/greendao/Property;->b([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 72
    move-result-object v4

    .line 73
    new-array v5, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 75
    invoke-virtual {v7, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 78
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_f

    .line 88
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    goto :goto_f

    .line 92
    :cond_5b
    return-object v0
.end method

.method public static lk(Ljava/util/List;Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImplKt;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "observerList.iterator()"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;

    .line 24
    invoke-interface {v1, p0, p1}, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;->onDelete(Ljava/util/List;Z)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public static mk(Ljava/util/List;Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImplKt;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "observerList.iterator()"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;

    .line 24
    invoke-interface {v1, p0, p1}, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;->onInsert(Ljava/util/List;Z)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public static nk(Ljava/util/List;Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImplKt;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "observerList.iterator()"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;

    .line 24
    invoke-interface {v1, p0, p1}, Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;->onUpdate(Ljava/util/List;Z)V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public static pk(Ljava/lang/Integer;Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;)Ljava/util/List;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v5

    .line 16
    sget-object v7, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 18
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 24
    move-result-object v7

    .line 25
    iget-object v7, v7, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v8, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 32
    invoke-direct {v8, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 35
    sget-object v7, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Deleted:Lorg/greenrobot/greendao/Property;

    .line 37
    invoke-virtual {v7}, Lorg/greenrobot/greendao/Property;->c()Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 40
    move-result-object v9

    .line 41
    sget-object v10, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->StickyTime:Lorg/greenrobot/greendao/Property;

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v11

    .line 47
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v12, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 52
    const-string v13, ">?"

    .line 54
    invoke-direct {v12, v10, v13, v11}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    new-array v11, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 59
    aput-object v12, v11, v3

    .line 61
    invoke-virtual {v8, v9, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 64
    if-eqz v0, :cond_43

    .line 66
    iput-object v0, v8, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 68
    :cond_43
    sget-object v9, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 70
    const-string v11, " IS NULL"

    .line 72
    if-ne v1, v9, :cond_59

    .line 74
    sget-object v12, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->TabType:Lorg/greenrobot/greendao/Property;

    .line 76
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    new-instance v13, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 81
    invoke-direct {v13, v12, v11}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 84
    new-array v12, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 86
    invoke-virtual {v8, v13, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 89
    goto :goto_74

    .line 90
    :cond_59
    sget-object v12, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->d:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 92
    if-eq v1, v12, :cond_61

    .line 94
    sget-object v12, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->e:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 96
    if-ne v1, v12, :cond_74

    .line 98
    :cond_61
    sget-object v12, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->TabType:Lorg/greenrobot/greendao/Property;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 103
    move-result v13

    .line 104
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v13

    .line 108
    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 111
    move-result-object v12

    .line 112
    new-array v13, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 114
    invoke-virtual {v8, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 117
    :cond_74
    :goto_74
    new-array v12, v2, [Lorg/greenrobot/greendao/Property;

    .line 119
    aput-object v10, v12, v3

    .line 121
    const-string v13, " DESC"

    .line 123
    invoke-virtual {v8, v13, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 126
    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    const-string v12, "finish query sticky, cost: "

    .line 137
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    move-result-wide v14

    .line 144
    sub-long/2addr v14, v5

    .line 145
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const-string v5, " milliseconds"

    .line 150
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v6

    .line 157
    new-array v8, v3, [Ljava/lang/Object;

    .line 159
    const-string v12, "ClipboardDataManagerImpl"

    .line 161
    invoke-static {v12, v6, v8}, Lcom/baidu/input/devtool/log/BDLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    move-result-wide v14

    .line 168
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 171
    move-result-object v6

    .line 172
    iget-object v6, v6, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 174
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    new-instance v8, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 179
    invoke-direct {v8, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 182
    invoke-virtual {v7}, Lorg/greenrobot/greendao/Property;->c()Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 185
    move-result-object v6

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v7

    .line 190
    new-instance v3, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 192
    const-string v2, "<=?"

    .line 194
    invoke-direct {v3, v10, v2, v7}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const/4 v2, 0x1

    .line 198
    new-array v7, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 200
    const/4 v2, 0x0

    .line 201
    aput-object v3, v7, v2

    .line 203
    invoke-virtual {v8, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 206
    if-ne v1, v9, :cond_df

    .line 208
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->TabType:Lorg/greenrobot/greendao/Property;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    new-instance v3, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 215
    invoke-direct {v3, v1, v11}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 218
    new-array v1, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 220
    invoke-virtual {v8, v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 223
    goto :goto_fb

    .line 224
    :cond_df
    sget-object v2, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->d:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 226
    if-eq v1, v2, :cond_e7

    .line 228
    sget-object v2, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->e:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 230
    if-ne v1, v2, :cond_fb

    .line 232
    :cond_e7
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->TabType:Lorg/greenrobot/greendao/Property;

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 237
    move-result v1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 245
    move-result-object v1

    .line 246
    const/4 v2, 0x0

    .line 247
    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 249
    invoke-virtual {v8, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 252
    :cond_fb
    :goto_fb
    if-eqz v0, :cond_108

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 257
    move-result v1

    .line 258
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    .line 261
    move-result v2

    .line 262
    if-ne v1, v2, :cond_108

    .line 264
    return-object v4

    .line 265
    :cond_108
    const/4 v1, 0x1

    .line 266
    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    .line 268
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->UpdatedTime:Lorg/greenrobot/greendao/Property;

    .line 270
    const/4 v3, 0x0

    .line 271
    aput-object v2, v1, v3

    .line 273
    invoke-virtual {v8, v13, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 276
    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    const-string v2, "finish query non sticky, cost: "

    .line 287
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 293
    move-result-wide v2

    .line 294
    sub-long/2addr v2, v14

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 305
    const/4 v2, 0x0

    .line 306
    new-array v3, v2, [Ljava/lang/Object;

    .line 308
    invoke-static {v12, v1, v3}, Lcom/baidu/input/devtool/log/BDLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    if-eqz v0, :cond_150

    .line 313
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 316
    move-result v1

    .line 317
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    .line 320
    move-result v3

    .line 321
    if-le v1, v3, :cond_150

    .line 323
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    .line 326
    move-result v0

    .line 327
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 330
    move-result-object v0

    .line 331
    const-string v1, "list.subList(0, count)"

    .line 333
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    return-object v0

    .line 337
    :cond_150
    return-object v4
.end method

.method public static synthetic qk(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;)Ljava/util/List;
    .registers 2

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->pk(Ljava/lang/Integer;Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static rk(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    sget-object v4, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 17
    move-result-object v4

    .line 18
    iget-object v4, v4, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v5, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 25
    invoke-direct {v5, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 28
    sget-object v4, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Deleted:Lorg/greenrobot/greendao/Property;

    .line 30
    invoke-virtual {v4}, Lorg/greenrobot/greendao/Property;->c()Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 33
    move-result-object v6

    .line 34
    sget-object v7, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->StickyTime:Lorg/greenrobot/greendao/Property;

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v9, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 45
    const-string v10, ">?"

    .line 47
    invoke-direct {v9, v7, v10, v8}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    sget-object v8, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Md5:Lorg/greenrobot/greendao/Property;

    .line 52
    check-cast p0, Ljava/util/Collection;

    .line 54
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->b([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 64
    move-result-object v10

    .line 65
    new-array v11, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 67
    aput-object v9, v11, v2

    .line 69
    aput-object v10, v11, v1

    .line 71
    invoke-virtual {v5, v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 74
    const v6, 0x5f5e100

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v9

    .line 80
    iput-object v9, v5, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 82
    new-array v9, v1, [Lorg/greenrobot/greendao/Property;

    .line 84
    aput-object v7, v9, v2

    .line 86
    const-string v10, " DESC"

    .line 88
    invoke-virtual {v5, v10, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 91
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 101
    move-result-object v5

    .line 102
    iget-object v5, v5, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    new-instance v9, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 109
    invoke-direct {v9, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 112
    invoke-virtual {v4}, Lorg/greenrobot/greendao/Property;->c()Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 115
    move-result-object v4

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v5

    .line 120
    new-instance v11, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 122
    const-string v12, "<=?"

    .line 124
    invoke-direct {v11, v7, v12, v5}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v8, p0}, Lorg/greenrobot/greendao/Property;->b([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 134
    move-result-object p0

    .line 135
    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 137
    aput-object v11, v0, v2

    .line 139
    aput-object p0, v0, v1

    .line 141
    invoke-virtual {v9, v4, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result p0

    .line 148
    sub-int/2addr v6, p0

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p0

    .line 153
    iput-object p0, v9, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 155
    new-array p0, v1, [Lorg/greenrobot/greendao/Property;

    .line 157
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->UpdatedTime:Lorg/greenrobot/greendao/Property;

    .line 159
    aput-object v0, p0, v2

    .line 161
    invoke-virtual {v9, v10, p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 164
    invoke-virtual {v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-object v3
.end method

.method public static sk(Ljava/lang/Long;)Ljava/util/ArrayList;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v2, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 18
    invoke-direct {v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 21
    if-eqz p0, :cond_27

    .line 23
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->CreatedTime:Lorg/greenrobot/greendao/Property;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v3, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 30
    const-string v4, "<?"

    .line 32
    invoke-direct {v3, v1, v4, p0}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    new-array p0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 37
    invoke-virtual {v2, v3, p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 40
    :cond_27
    const/4 p0, 0x1

    .line 41
    new-array p0, p0, [Lorg/greenrobot/greendao/Property;

    .line 43
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->CreatedTime:Lorg/greenrobot/greendao/Property;

    .line 45
    aput-object v1, p0, v0

    .line 47
    const-string v0, " DESC"

    .line 49
    invoke-virtual {v2, v0, p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 52
    const/16 p0, 0x64

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p0

    .line 58
    iput-object p0, v2, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 60
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public static tk(J)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;
    .registers 4

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 17
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 20
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 33
    invoke-virtual {v1, p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 36
    const/4 p0, 0x1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    iput-object p0, v1, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 43
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/List;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 53
    return-object p0
.end method

.method public static uk(Ljava/lang/String;)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;
    .registers 3

    .line 1
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 17
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 20
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Md5:Lorg/greenrobot/greendao/Property;

    .line 22
    invoke-static {p0}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 29
    move-result-object p0

    .line 30
    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 33
    invoke-virtual {v1, p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 36
    const/4 p0, 0x1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    iput-object p0, v1, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 43
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/List;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 53
    return-object p0
.end method


# virtual methods
.method public final B0(Ljava/util/List;Z)Ljava/util/List;
    .registers 15

    .line 1
    const-string v0, "clipboardItemDTOList"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    const-string v4, ""

    .line 31
    if-eqz v3, :cond_cf

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 39
    iget-wide v5, v3, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->a:J

    .line 41
    invoke-static {v5, v6}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->tk(J)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 44
    move-result-object v5

    .line 45
    iget-object v6, v3, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->b:Ljava/lang/String;

    .line 47
    if-nez v5, :cond_34

    .line 49
    invoke-static {v6}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->uk(Ljava/lang/String;)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 52
    move-result-object v5

    .line 53
    :cond_34
    const/4 v7, 0x1

    .line 54
    const/4 v8, 0x0

    .line 55
    iget-object v9, v3, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->f:Ljava/lang/Long;

    .line 57
    iget-wide v10, v3, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->d:J

    .line 59
    if-nez v5, :cond_91

    .line 61
    new-instance v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 63
    invoke-direct {v3}, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;-><init>()V

    .line 66
    sget-object v5, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->a:Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;

    .line 68
    invoke-virtual {v5, v6}, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->b:Ljava/lang/String;

    .line 74
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    move-result-object v5

    .line 78
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->d:Ljava/lang/Long;

    .line 80
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    move-result-object v5

    .line 84
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->e:Ljava/lang/Long;

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->g:Ljava/lang/Integer;

    .line 92
    if-eqz p2, :cond_62

    .line 94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v5

    .line 98
    goto :goto_66

    .line 99
    :cond_62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v5

    .line 103
    :goto_66
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->i:Ljava/lang/Integer;

    .line 105
    sget-object v5, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->c:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 107
    invoke-virtual {v5}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 110
    move-result v5

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v5

    .line 115
    iput-object v5, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 117
    invoke-static {v6}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v5

    .line 121
    if-nez v5, :cond_7b

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-object v4, v5

    .line 125
    :goto_7c
    iput-object v4, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->c:Ljava/lang/String;

    .line 127
    const/4 v4, -0x1

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v4

    .line 132
    iput-object v4, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->h:Ljava/lang/Integer;

    .line 134
    iput-object v9, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->k:Ljava/lang/Long;

    .line 136
    invoke-static {v6}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->ik(Ljava/lang/String;)Ljava/lang/Integer;

    .line 139
    move-result-object v4

    .line 140
    iput-object v4, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 142
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_18

    .line 146
    :cond_91
    sget-object v3, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->d:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 148
    invoke-virtual {v3}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 151
    move-result v3

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v3

    .line 156
    iput-object v3, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 158
    if-eqz p2, :cond_a4

    .line 160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v3

    .line 164
    goto :goto_a8

    .line 165
    :cond_a4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v3

    .line 169
    :goto_a8
    iput-object v3, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->i:Ljava/lang/Integer;

    .line 171
    sget-object v3, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->a:Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;

    .line 173
    invoke-virtual {v3, v6}, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->b:Ljava/lang/String;

    .line 179
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    move-result-object v3

    .line 183
    iput-object v3, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->e:Ljava/lang/Long;

    .line 185
    invoke-static {v6}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    if-nez v3, :cond_bf

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move-object v4, v3

    .line 193
    :goto_c0
    iput-object v4, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->c:Ljava/lang/String;

    .line 195
    iput-object v9, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->k:Ljava/lang/Long;

    .line 197
    invoke-static {v6}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->ik(Ljava/lang/String;)Ljava/lang/Integer;

    .line 200
    move-result-object v3

    .line 201
    iput-object v3, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 203
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    goto/16 :goto_18

    .line 208
    :cond_cf
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 216
    move-result-object v2

    .line 217
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 219
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->q(Ljava/lang/Iterable;)V

    .line 222
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 225
    move-result-object v2

    .line 226
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 228
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->q(Ljava/lang/Iterable;)V

    .line 231
    new-instance v2, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 233
    invoke-direct {v2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 239
    move-result v2

    .line 240
    const/16 v3, 0xa

    .line 242
    if-lez v2, :cond_142

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    .line 246
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 249
    move-result v5

    .line 250
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 256
    move-result-object v0

    .line 257
    :goto_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_112

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 269
    iget-object v5, v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->c:Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    goto :goto_100

    .line 275
    :cond_112
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->rk(Ljava/util/List;)Ljava/util/ArrayList;

    .line 282
    move-result-object v0

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    .line 285
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 288
    move-result v5

    .line 289
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    move-result-object v0

    .line 296
    :goto_127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_13b

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    move-result-object v5

    .line 306
    check-cast v5, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 308
    invoke-static {v5}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    goto :goto_127

    .line 316
    :cond_13b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->mk(Ljava/util/List;Z)V

    .line 323
    :cond_142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 326
    move-result v0

    .line 327
    if-lez v0, :cond_16c

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    .line 331
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 334
    move-result v2

    .line 335
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 341
    move-result-object v1

    .line 342
    :goto_155
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_169

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 354
    invoke-static {v2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    goto :goto_155

    .line 362
    :cond_169
    invoke-static {v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->nk(Ljava/util/List;Z)V

    .line 365
    :cond_16c
    new-instance p2, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 367
    invoke-direct {p2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 370
    new-instance p2, Ljava/util/ArrayList;

    .line 372
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 375
    move-result v0

    .line 376
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 382
    move-result-object p1

    .line 383
    :goto_17e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_197

    .line 389
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 395
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;->b:Ljava/lang/String;

    .line 397
    invoke-static {v0}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    move-result-object v0

    .line 401
    if-nez v0, :cond_193

    .line 403
    move-object v0, v4

    .line 404
    :cond_193
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    goto :goto_17e

    .line 408
    :cond_197
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 411
    move-result-object p1

    .line 412
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->rk(Ljava/util/List;)Ljava/util/ArrayList;

    .line 415
    move-result-object p1

    .line 416
    new-instance p2, Ljava/util/ArrayList;

    .line 418
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 421
    move-result v0

    .line 422
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 428
    move-result-object p1

    .line 429
    :goto_1ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_1c0

    .line 435
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 441
    invoke-static {v0}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    goto :goto_1ac

    .line 449
    :cond_1c0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 452
    move-result-object p1

    .line 453
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 455
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 458
    move-result-object p2

    .line 459
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;

    .line 461
    const/4 v1, 0x0

    .line 462
    invoke-direct {v0, p0, v1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;-><init>(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;Lkotlin/coroutines/Continuation;)V

    .line 465
    const/4 v2, 0x3

    .line 466
    invoke-static {p2, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/AbstractCoroutineContextElement;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 469
    return-object p1
.end method

.method public final Ce(Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;)V
    .registers 3

    .line 1
    const-string v0, "observer"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImplKt;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public final D2(Lcom/baidu/input/clipboard/datamanager/observer/IDataObserver;)V
    .registers 4

    .line 1
    const-string v0, "observer"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImplKt;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    return-void
.end method

.method public final S2()Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 5
    new-instance v1, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 7
    invoke-direct {v1}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 10
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v2, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 26
    invoke-direct {v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 29
    new-array v1, v0, [Lorg/greenrobot/greendao/Property;

    .line 31
    sget-object v3, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->UpdatedTime:Lorg/greenrobot/greendao/Property;

    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v3, v1, v4

    .line 36
    const-string v3, " DESC"

    .line 38
    invoke-virtual {v2, v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, v2, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 47
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    const/16 v2, 0xa

    .line 55
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 58
    move-result v2

    .line 59
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_5a

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 78
    const-string v3, "it"

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {v2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_41

    .line 91
    :cond_5a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/List;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 97
    return-object v0
.end method

.method public final Ua(Ljava/util/ArrayList;Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 5
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->jk(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 11
    invoke-direct {v1}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_48

    .line 20
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/AbstractDao;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    const/16 v2, 0xa

    .line 39
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 42
    move-result v2

    .line 43
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_45

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 62
    invoke-static {v2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_31

    .line 70
    :cond_45
    invoke-static {v1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->lk(Ljava/util/List;Z)V

    .line 73
    :cond_48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    :try_start_4a
    invoke-virtual {p0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->gk()J

    .line 78
    move-result-wide p1

    .line 79
    const-class v1, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 81
    invoke-static {v1}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 87
    invoke-interface {v1}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->L4()Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 90
    move-result-object v1

    .line 91
    long-to-int p1, p1

    .line 92
    invoke-virtual {v1, p1, v0}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->e(IZ)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_5f

    .line 95
    goto :goto_6c

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    const/4 p2, 0x1

    .line 98
    new-array p2, p2, [Ljava/lang/Object;

    .line 100
    aput-object p1, p2, v0

    .line 102
    const-string p1, "ClipboardDataManagerImpl"

    .line 104
    const-string v0, "safeDelete exception"

    .line 106
    invoke-static {p1, v0, p2}, Lcom/baidu/input/devtool/log/BDLog;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_6c
    return-void
.end method

.method public final X0(Ljava/util/List;Z)Ljava/util/List;
    .registers 4

    .line 1
    const-string v0, "clipboardItemDTOList"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->B0(Ljava/util/List;Z)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final b8(Ljava/lang/String;Z)V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "text"

    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 11
    new-instance v2, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;

    .line 13
    invoke-direct {v2}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v4, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 36
    invoke-direct {v4, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 39
    sget-object v3, Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao$Properties;->Md5:Lorg/greenrobot/greendao/Property;

    .line 41
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/Property;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 44
    move-result-object v3

    .line 45
    new-array v5, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 47
    invoke-virtual {v4, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 50
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/List;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 60
    if-nez v3, :cond_86

    .line 62
    new-instance v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 64
    invoke-direct {v3}, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;-><init>()V

    .line 67
    sget-object v4, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->a:Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;

    .line 69
    invoke-virtual {v4, p1}, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;->b:Ljava/lang/String;

    .line 75
    iput-object v2, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;->c:Ljava/lang/String;

    .line 77
    sget-object p1, Lcom/baidu/input/time/TimestampProvider;->d:Lcom/baidu/input/time/TimestampProvider$Companion;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 89
    move-result-wide v4

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    move-result-object p1

    .line 94
    iput-object p1, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;->d:Ljava/lang/Long;

    .line 96
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 103
    move-result-wide v4

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;->e:Ljava/lang/Long;

    .line 110
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 113
    move-result-object p1

    .line 114
    iget-object p1, p1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 116
    new-array v0, v0, [Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 118
    aput-object v3, v0, v1

    .line 120
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->r([Ljava/lang/Object;)V

    .line 123
    invoke-static {v3}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->mk(Ljava/util/List;Z)V

    .line 134
    goto :goto_b1

    .line 135
    :cond_86
    sget-object p1, Lcom/baidu/input/time/TimestampProvider;->d:Lcom/baidu/input/time/TimestampProvider$Companion;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 147
    move-result-wide v4

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    move-result-object p1

    .line 152
    iput-object p1, v3, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;->e:Ljava/lang/Long;

    .line 154
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 157
    move-result-object p1

    .line 158
    iget-object p1, p1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 160
    new-array v0, v0, [Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 162
    aput-object v3, v0, v1

    .line 164
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->r([Ljava/lang/Object;)V

    .line 167
    invoke-static {v3}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->nk(Ljava/util/List;Z)V

    .line 178
    :goto_b1
    return-void
.end method

.method public final gk()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 4
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 20
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 23
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao$Properties;->Deleted:Lorg/greenrobot/greendao/Property;

    .line 25
    invoke-virtual {v0}, Lorg/greenrobot/greendao/Property;->c()Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 32
    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 35
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->e()J

    .line 38
    move-result-wide v0

    .line 39
    return-wide v0
.end method

.method public final h4(Ljava/util/ArrayList;Z)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 4
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 20
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 23
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/Property;->b([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 39
    invoke-virtual {v1, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->i(Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 42
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;

    .line 48
    invoke-direct {v0}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6d

    .line 57
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    const/16 v1, 0xa

    .line 71
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 74
    move-result v1

    .line 75
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object p1

    .line 82
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6a

    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 94
    const-string v2, "it"

    .line 96
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_51

    .line 107
    :cond_6a
    invoke-static {v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->lk(Ljava/util/List;Z)V

    .line 110
    :cond_6d
    return-void
.end method

.method public final hk()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 5
    invoke-static {p0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->qk(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;)Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 11
    invoke-direct {v2}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4e

    .line 23
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 34
    move-object v3, v1

    .line 35
    check-cast v3, Ljava/lang/Iterable;

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    const/16 v4, 0xa

    .line 45
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 48
    move-result v4

    .line 49
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v3

    .line 56
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4b

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 68
    invoke-static {v4}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_37

    .line 76
    :cond_4b
    invoke-static {v2, v0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->lk(Ljava/util/List;Z)V

    .line 79
    :cond_4e
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 90
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->g()V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_67

    .line 99
    sget-object v1, Lkotlin/collections/EmptyList;->a:Lkotlin/collections/EmptyList;

    .line 101
    invoke-static {v1, v0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->lk(Ljava/util/List;Z)V

    .line 104
    :cond_67
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    :try_start_69
    invoke-virtual {p0}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->gk()J

    .line 109
    move-result-wide v1

    .line 110
    const-class v3, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 112
    invoke-static {v3}, Lcom/baidu/coco/Coco;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;

    .line 118
    invoke-interface {v3}, Lcom/baidu/input/inspiration_corpus/api/IInspirationCorpusModule;->L4()Lcom/baidu/input/clipboard/config/ClipboardConfig;

    .line 121
    move-result-object v3

    .line 122
    long-to-int v1, v1

    .line 123
    invoke-virtual {v3, v1, v0}, Lcom/baidu/input/clipboard/config/ClipboardConfig;->e(IZ)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7d} :catch_7e

    .line 126
    goto :goto_8b

    .line 127
    :catch_7e
    move-exception v1

    .line 128
    const/4 v2, 0x1

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    aput-object v1, v2, v0

    .line 133
    const-string v0, "ClipboardDataManagerImpl"

    .line 135
    const-string v1, "safeDelete exception"

    .line 137
    invoke-static {v0, v1, v2}, Lcom/baidu/input/devtool/log/BDLog;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_8b
    return-void
.end method

.method public final kk(Ljava/lang/String;Z)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;
    .registers 9

    .line 1
    const-string v0, "text"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 9
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->uk(Ljava/lang/String;)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v0, :cond_77

    .line 21
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 23
    invoke-direct {v0}, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;-><init>()V

    .line 26
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->a:Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;

    .line 28
    invoke-virtual {v1, p1}, Lcom/baidu/input/clipboard/datamanager/util/RemoteDataCodec;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->b:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/baidu/input/time/TimestampProvider;->d:Lcom/baidu/input/time/TimestampProvider$Companion;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 46
    move-result-wide v4

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->d:Ljava/lang/Long;

    .line 53
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 60
    move-result-wide v4

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->e:Ljava/lang/Long;

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->g:Ljava/lang/Integer;

    .line 74
    iput-object v2, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->i:Ljava/lang/Integer;

    .line 76
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->c:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 78
    invoke-virtual {v1}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 88
    invoke-static {p1}, Lcom/baidu/input/common/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_5f

    .line 94
    const-string v1, ""

    .line 96
    :cond_5f
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->c:Ljava/lang/String;

    .line 98
    const/4 v1, -0x1

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v1

    .line 103
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->h:Ljava/lang/Integer;

    .line 105
    const-wide/16 v1, 0x0

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v1

    .line 111
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->k:Ljava/lang/Long;

    .line 113
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->ik(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 119
    goto :goto_d7

    .line 120
    :cond_77
    iget-object v4, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->g:Ljava/lang/Integer;

    .line 122
    if-nez v4, :cond_7c

    .line 124
    goto :goto_b0

    .line 125
    :cond_7c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v4

    .line 129
    if-ne v4, v1, :cond_b0

    .line 131
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->c:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 133
    invoke-virtual {v1}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 136
    move-result v4

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v4

    .line 141
    iput-object v4, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 143
    sget-object v4, Lcom/baidu/input/time/TimestampProvider;->d:Lcom/baidu/input/time/TimestampProvider$Companion;

    .line 145
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 155
    move-result-wide v4

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    move-result-object v4

    .line 160
    iput-object v4, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->d:Ljava/lang/Long;

    .line 162
    iput-object v3, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->k:Ljava/lang/Long;

    .line 164
    iput-object v3, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->j:Ljava/lang/Long;

    .line 166
    invoke-virtual {v1}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v1

    .line 174
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 176
    goto :goto_bc

    .line 177
    :cond_b0
    :goto_b0
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->d:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 179
    invoke-virtual {v1}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 182
    move-result v1

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v1

    .line 187
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 189
    :goto_bc
    iput-object v2, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->i:Ljava/lang/Integer;

    .line 191
    sget-object v1, Lcom/baidu/input/time/TimestampProvider;->d:Lcom/baidu/input/time/TimestampProvider$Companion;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {}, Lcom/baidu/input/time/TimestampProvider$Companion;->a()Lcom/baidu/input/time/TimestampProvider;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/baidu/input/time/TimestampProvider;->a()J

    .line 203
    move-result-wide v1

    .line 204
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    move-result-object v1

    .line 208
    iput-object v1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->e:Ljava/lang/Long;

    .line 210
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->ik(Ljava/lang/String;)Ljava/lang/Integer;

    .line 213
    move-result-object p1

    .line 214
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 216
    :goto_d7
    sget-object p1, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 224
    move-result-object p1

    .line 225
    iget-object p1, p1, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 227
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->p(Ljava/lang/Object;)J

    .line 230
    move-result-wide v1

    .line 231
    iget-object p1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->a:Ljava/lang/Long;

    .line 233
    if-nez p1, :cond_f0

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    move-result-object p1

    .line 239
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->a:Ljava/lang/Long;

    .line 241
    :cond_f0
    new-instance p1, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 243
    invoke-direct {p1}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 246
    invoke-static {v0}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 249
    move-result-object p1

    .line 250
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->f:Ljava/lang/Integer;

    .line 252
    sget-object v1, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->c:Lcom/baidu/input/clipboard/datamanager/note/model/OptType;

    .line 254
    invoke-virtual {v1}, Lcom/baidu/input/clipboard/datamanager/note/model/OptType;->a()I

    .line 257
    move-result v1

    .line 258
    if-nez v0, :cond_104

    .line 260
    goto :goto_112

    .line 261
    :cond_104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 264
    move-result v0

    .line 265
    if-ne v0, v1, :cond_112

    .line 267
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->mk(Ljava/util/List;Z)V

    .line 274
    goto :goto_119

    .line 275
    :cond_112
    :goto_112
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->nk(Ljava/util/List;Z)V

    .line 282
    :goto_119
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 284
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 287
    move-result-object p2

    .line 288
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;

    .line 290
    invoke-direct {v0, p0, v3}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$safeInsert$1$1;-><init>(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;Lkotlin/coroutines/Continuation;)V

    .line 293
    const/4 v1, 0x3

    .line 294
    invoke-static {p2, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/AbstractCoroutineContextElement;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 297
    return-object p1
.end method

.method public final ok(Ljava/lang/String;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;
    .registers 3

    .line 1
    const-string v0, "text"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 9
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->uk(Ljava/lang/String;)Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 19
    invoke-direct {v0}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 25
    move-result-object p1

    .line 26
    :goto_19
    return-object p1
.end method

.method public final rj(Ljava/lang/Integer;Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;)Ljava/util/ArrayList;
    .registers 4

    .line 1
    const-string v0, "tabType"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 9
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;

    .line 11
    invoke-direct {v0}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->pk(Ljava/lang/Integer;Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    const/16 v0, 0xa

    .line 24
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 27
    move-result v0

    .line 28
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_36

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 47
    invoke-static {v0}, Lcom/baidu/input/clipboard/datamanager/converter/ClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_22

    .line 55
    :cond_36
    return-object p2
.end method

.method public final vk(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p2, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;

    .line 8
    iget v1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->label:I

    .line 10
    const/high16 v2, -0x80000000

    .line 12
    and-int v3, v1, v2

    .line 14
    if-eqz v3, :cond_13

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->label:I

    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;

    .line 22
    invoke-direct {v0, p0, p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;-><init>(Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    :goto_18
    iget-object p2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->result:Ljava/lang/Object;

    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->a:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    iget v2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->label:I

    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_5c

    .line 36
    if-eq v2, v4, :cond_48

    .line 38
    if-ne v2, v3, :cond_40

    .line 40
    iget-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$4:Ljava/lang/Object;

    .line 42
    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    .line 44
    iget-object v2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$3:Ljava/lang/Object;

    .line 46
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 48
    iget-object v4, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$2:Ljava/lang/Object;

    .line 50
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 52
    iget-object v6, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$1:Ljava/lang/Object;

    .line 54
    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    .line 56
    iget-object v7, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$0:Ljava/lang/Object;

    .line 58
    check-cast v7, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 60
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    goto/16 :goto_115

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    :cond_48
    iget-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$3:Ljava/lang/Object;

    .line 75
    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    .line 77
    iget-object v2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$2:Ljava/lang/Object;

    .line 79
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    iget-object v4, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$1:Ljava/lang/Object;

    .line 83
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 85
    iget-object v6, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$0:Ljava/lang/Object;

    .line 87
    check-cast v6, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;

    .line 89
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 92
    goto :goto_73

    .line 93
    :cond_5c
    invoke-static {p2}, Lcom/baidu/s10;->s(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    move-result-object v2

    .line 97
    iput-object p0, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$0:Ljava/lang/Object;

    .line 99
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$1:Ljava/lang/Object;

    .line 101
    iput-object v2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$2:Ljava/lang/Object;

    .line 103
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$3:Ljava/lang/Object;

    .line 105
    iput v4, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->label:I

    .line 107
    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    if-ne p2, v1, :cond_71

    .line 113
    return-object v1

    .line 114
    :cond_71
    move-object v6, p0

    .line 115
    move-object v4, p1

    .line 116
    :goto_73
    :try_start_73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {v5}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->sk(Ljava/lang/Long;)Ljava/util/ArrayList;

    .line 122
    move-result-object p2

    .line 123
    iput-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 125
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_130

    .line 127
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->b(Ljava/lang/Object;)V

    .line 130
    move-object p1, v4

    .line 131
    move-object v7, v6

    .line 132
    move-object v4, v2

    .line 133
    :goto_84
    iget-object p2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 135
    check-cast p2, Ljava/util/Collection;

    .line 137
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_12d

    .line 143
    iget-object p2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    check-cast p2, Ljava/lang/Iterable;

    .line 147
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object p2

    .line 151
    :cond_96
    :goto_96
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_e2

    .line 157
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 163
    invoke-static {v2}, Lcom/baidu/input/clipboard/datamanager/extension/ClipboardEntityExtensionKt;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;)Ljava/lang/String;

    .line 166
    move-result-object v6

    .line 167
    sget-object v8, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->d:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 169
    invoke-virtual {v8}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a()Lkotlin/jvm/functions/Function1;

    .line 172
    move-result-object v9

    .line 173
    invoke-interface {v9, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_c4

    .line 185
    invoke-virtual {v8}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 188
    move-result v6

    .line 189
    new-instance v8, Ljava/lang/Integer;

    .line 191
    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    iput-object v8, v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 196
    goto :goto_96

    .line 197
    :cond_c4
    sget-object v8, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->e:Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;

    .line 199
    invoke-virtual {v8}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->a()Lkotlin/jvm/functions/Function1;

    .line 202
    move-result-object v9

    .line 203
    invoke-interface {v9, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_96

    .line 215
    invoke-virtual {v8}, Lcom/baidu/input/clipboard/tab/ClipboardSubTabType;->c()I

    .line 218
    move-result v6

    .line 219
    new-instance v8, Ljava/lang/Integer;

    .line 221
    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 224
    iput-object v8, v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->l:Ljava/lang/Integer;

    .line 226
    goto :goto_96

    .line 227
    :cond_e2
    iget-object p2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 229
    check-cast p2, Ljava/util/List;

    .line 231
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 233
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 239
    move-result-object v2

    .line 240
    iget-object v2, v2, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->c:Lcom/baidu/input/clipboard/datamanager/db/dao/ClipboardEntityDao;

    .line 242
    check-cast p2, Ljava/lang/Iterable;

    .line 244
    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/AbstractDao;->B(Ljava/lang/Iterable;)V

    .line 247
    iget-object p2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 249
    check-cast p2, Ljava/util/List;

    .line 251
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/List;)Ljava/lang/Object;

    .line 254
    move-result-object p2

    .line 255
    move-object v2, p2

    .line 256
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;

    .line 258
    iput-object v7, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$0:Ljava/lang/Object;

    .line 260
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$1:Ljava/lang/Object;

    .line 262
    iput-object v4, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$2:Ljava/lang/Object;

    .line 264
    iput-object v2, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$3:Ljava/lang/Object;

    .line 266
    iput-object p1, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->L$4:Ljava/lang/Object;

    .line 268
    iput v3, v0, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl$setClipboardSubTypes$1;->label:I

    .line 270
    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 273
    move-result-object p2

    .line 274
    if-ne p2, v1, :cond_114

    .line 276
    return-object v1

    .line 277
    :cond_114
    move-object v6, p1

    .line 278
    :goto_115
    :try_start_115
    iget-object p2, v2, Lcom/baidu/input/clipboard/datamanager/db/entity/ClipboardEntity;->d:Ljava/lang/Long;

    .line 280
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-static {p2}, Lcom/baidu/input/clipboard/datamanager/clipboard/ClipboardDataManagerImpl;->sk(Ljava/lang/Long;)Ljava/util/ArrayList;

    .line 286
    move-result-object p2

    .line 287
    iput-object p2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 289
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_128

    .line 291
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->b(Ljava/lang/Object;)V

    .line 294
    move-object p1, v6

    .line 295
    goto/16 :goto_84

    .line 297
    :catchall_128
    move-exception p2

    .line 298
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->b(Ljava/lang/Object;)V

    .line 301
    throw p2

    .line 302
    :cond_12d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 304
    return-object p1

    .line 305
    :catchall_130
    move-exception p2

    .line 306
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->b(Ljava/lang/Object;)V

    .line 309
    throw p2
.end method

.method public final y9()Ljava/util/List;
    .registers 5

    .line 1
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/db/ClipboardDBHelperKt;->a()V

    .line 4
    new-instance v0, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;

    .line 6
    invoke-direct {v0}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;-><init>()V

    .line 9
    sget-object v0, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a:Lcom/baidu/input/clipboard/datamanager/di/Injection;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/baidu/input/clipboard/datamanager/di/Injection;->a()Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;

    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/baidu/input/clipboard/datamanager/db/dao/DaoSession;->e:Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v1, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 25
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    .line 31
    sget-object v2, Lcom/baidu/input/clipboard/datamanager/db/dao/RecentClipboardEntityDao$Properties;->UpdatedTime:Lorg/greenrobot/greendao/Property;

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v0, v3

    .line 36
    const-string v2, " DESC"

    .line 38
    invoke-virtual {v1, v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->h(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 41
    const v0, 0x5f5e100

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, v1, Lorg/greenrobot/greendao/query/QueryBuilder;->f:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->f()Ljava/util/ArrayList;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    const/16 v2, 0xa

    .line 57
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 60
    move-result v2

    .line 61
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v0

    .line 68
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_5d

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;

    .line 80
    const-string v3, "it"

    .line 82
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {v2}, Lcom/baidu/input/clipboard/datamanager/converter/RecentClipboardEntity2DTOConverter;->a(Lcom/baidu/input/clipboard/datamanager/db/entity/RecentClipboardEntity;)Lcom/baidu/input/clipboard/datamanager/clipboard/dto/ClipboardItemDTO;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_44

    .line 93
    :cond_5d
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
