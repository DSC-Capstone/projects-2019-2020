.class public Lcom/novioplan/pollennieuws/data/ObservationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ObservationAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private observationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/ObservationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/ObservationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "arrayList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/ObservationData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public forceReload()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/data/ObservationData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getObservationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/ObservationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->context:Landroid/content/Context;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/data/ObservationListItem;

    .line 52
    .local v0, "obsView":Lcom/novioplan/pollennieuws/data/ObservationListItem;
    :goto_0
    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->setObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)V

    .line 53
    return-object v0

    .end local v0    # "obsView":Lcom/novioplan/pollennieuws/data/ObservationListItem;
    :cond_0
    move-object v0, p2

    .line 50
    check-cast v0, Lcom/novioplan/pollennieuws/data/ObservationListItem;

    .restart local v0    # "obsView":Lcom/novioplan/pollennieuws/data/ObservationListItem;
    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public setObservationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/ObservationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "observationList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/ObservationData;>;"
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public statsForYear(I)[[I
    .locals 14
    .param p1, "year"    # I

    .prologue
    const/16 v13, 0xc

    const/4 v12, 0x5

    .line 79
    const/16 v2, 0xc

    .line 80
    .local v2, "m":I
    const/4 v6, 0x6

    .line 82
    .local v6, "n":I
    new-array v4, v13, [I

    .line 83
    .local v4, "monthCounts":[I
    filled-new-array {v2, v6}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 85
    .local v8, "result":[[I
    iget-object v9, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 86
    .local v7, "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->getYearValue()I

    move-result v9

    if-ne v9, p1, :cond_0

    .line 88
    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 89
    .local v5, "monthIndex":I
    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v1, v9, -0x1

    .line 90
    .local v1, "intensityIndex":I
    aget-object v9, v8, v5

    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    .line 91
    aget v9, v4, v5

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v5

    .line 92
    aget-object v9, v8, v5

    aget v10, v9, v12

    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v9, v12

    goto :goto_0

    .line 96
    .end local v1    # "intensityIndex":I
    .end local v5    # "monthIndex":I
    .end local v7    # "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    const/4 v3, 0x0

    .local v3, "month":I
    :goto_1
    if-ge v3, v13, :cond_3

    .line 97
    aget v9, v4, v3

    if-nez v9, :cond_2

    .line 98
    aget-object v9, v8, v3

    const/4 v10, 0x0

    aput v10, v9, v12

    .line 96
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_2
    aget-object v9, v8, v3

    aget-object v10, v8, v3

    aget v10, v10, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v4, v3

    mul-int/lit8 v11, v11, 0x2

    div-int/2addr v10, v11

    aput v10, v9, v12

    goto :goto_2

    .line 105
    :cond_3
    return-object v8
.end method

.method public symptomsForYear(I)[I
    .locals 10
    .param p1, "year"    # I

    .prologue
    const/4 v9, 0x0

    .line 109
    const/4 v2, 0x6

    .line 111
    .local v2, "n":I
    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    new-array v4, v2, [I

    .line 114
    .local v4, "result":[I
    iget-object v6, p0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->observationList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 115
    .local v3, "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getYearValue()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 117
    aget v6, v4, v9

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v9

    .line 118
    const/4 v6, 0x1

    aget v7, v4, v6

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 119
    const/4 v6, 0x2

    aget v7, v4, v6

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 120
    const/4 v6, 0x3

    aget v7, v4, v6

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 121
    const/4 v6, 0x4

    aget v7, v4, v6

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 122
    const/4 v6, 0x5

    aget v7, v4, v6

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    const/4 v5, 0x0

    .local v5, "sym":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 130
    if-nez v0, :cond_2

    .line 131
    aput v9, v4, v5

    .line 129
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 133
    :cond_2
    aget v6, v4, v5

    mul-int/lit16 v6, v6, 0xc8

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v0, 0x2

    div-int/2addr v6, v7

    aput v6, v4, v5

    goto :goto_2

    .line 138
    :cond_3
    return-object v4
.end method
