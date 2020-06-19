.class final Lio/senseai/kelvinsdk/Prediction$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lio/senseai/kelvinsdk/Prediction$if;-><init>()V

    return-void
.end method


# virtual methods
.method public final value([D)D
    .locals 30

    .prologue
    .line 75
    const-wide/16 v10, 0x0

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    const-wide/16 v8, 0x0

    .line 80
    const/4 v2, 0x0

    aget-wide v16, p1, v2

    .line 81
    const-wide/16 v14, 0x0

    .line 82
    const-wide/16 v12, 0x0

    .line 83
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˋ()D

    move-result-wide v18

    .line 84
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˎ()D

    move-result-wide v20

    .line 87
    sget-object v2, Lio/senseai/kelvinsdk/Prediction;->ˊ:Ljava/util/HashMap;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FilterFields;->temp:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 88
    const/4 v3, 0x0

    move-wide v6, v4

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 89
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    add-double v6, v6, v22

    .line 88
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    div-double v22, v6, v4

    .line 94
    sget-object v3, Lio/senseai/kelvinsdk/Prediction;->ˊ:Ljava/util/HashMap;

    sget-object v4, Lio/senseai/kelvinsdk/RawData$FilterFields;->time:Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/RawData$FilterFields;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 96
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 97
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v8, v6

    move-wide v6, v4

    .line 101
    :goto_1
    const/4 v4, 0x0

    move v5, v4

    move-wide v10, v12

    move-wide v12, v14

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 102
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 103
    sub-double/2addr v14, v8

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v24

    .line 104
    div-double v24, v18, v20

    add-double v24, v24, v16

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v26, v0

    mul-double v14, v14, v26

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    sub-double v26, v6, v16

    div-double v28, v18, v20

    sub-double v26, v26, v28

    mul-double v14, v14, v26

    add-double v14, v14, v24

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 106
    sub-double v26, v24, v22

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v12, v12, v26

    .line 108
    sub-double v14, v24, v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v24

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 101
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 111
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v10, v12

    sub-double/2addr v2, v4

    .line 113
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v4

    const/4 v5, 0x0

    aput-wide v10, v4, v5

    .line 114
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v4

    const/4 v5, 0x1

    aput-wide v12, v4, v5

    .line 115
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v4

    const/4 v5, 0x2

    aput-wide v2, v4, v5

    .line 116
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v3, 0x3

    aput-wide v18, v2, v3

    .line 117
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v3, 0x4

    aput-wide v20, v2, v3

    .line 118
    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v3, 0x5

    aput-wide v16, v2, v3

    .line 120
    return-wide v10

    :cond_2
    move-wide v6, v8

    move-wide v8, v10

    goto/16 :goto_1
.end method
