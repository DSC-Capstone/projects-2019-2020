.class public Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ʻ:Lbql;

.field private ʼ:Lio/senseai/kelvinsdk/Prediction$if;

.field private ʽ:Landroid/content/Context;

.field private ˊ:Lio/senseai/kelvinsdk/RawData;

.field private ˋ:Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;

.field private ˎ:[D

.field private ˏ:Lbrb;

.field private ᐝ:Lbrc;


# direct methods
.method public constructor <init>(Landroid/content/Context;DLio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/RawData;DLio/senseai/kelvinsdk/MeasurementService$TempResultListener;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v8, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˋ:Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;

    .line 38
    new-instance v2, Lbrb;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lbrb;-><init>(I)V

    iput-object v2, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˏ:Lbrb;

    .line 39
    new-instance v2, Lbrc;

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    invoke-direct {v2, v4, v5, v6, v7}, Lbrc;-><init>(DD)V

    iput-object v2, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ᐝ:Lbrc;

    .line 41
    iput-object v8, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ʻ:Lbql;

    .line 42
    new-instance v2, Lio/senseai/kelvinsdk/Prediction$if;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/senseai/kelvinsdk/Prediction$if;-><init>(B)V

    iput-object v2, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ʼ:Lio/senseai/kelvinsdk/Prediction$if;

    .line 46
    iput-object p1, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ʽ:Landroid/content/Context;

    .line 47
    iput-object p5, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    .line 48
    invoke-virtual {p4}, Lio/senseai/kelvinsdk/DeviceObject;->getAmbient()Lio/senseai/kelvinsdk/HeatTransferConstant;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/HeatTransferConstant;->getK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lio/senseai/kelvinsdk/Prediction;->ˊ(D)D

    .line 49
    invoke-virtual {p4}, Lio/senseai/kelvinsdk/DeviceObject;->getAmbient()Lio/senseai/kelvinsdk/HeatTransferConstant;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/HeatTransferConstant;->getR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lio/senseai/kelvinsdk/Prediction;->ˋ(D)D

    .line 51
    move-object/from16 v0, p8

    iput-object v0, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˋ:Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;

    .line 52
    iget-object v2, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ᐝ:Lbrc;

    iget-object v3, p0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˏ:Lbrb;

    invoke-virtual {v2, v3}, Lbrc;->a(Lbqz;)V

    .line 53
    move-wide/from16 v0, p6

    invoke-virtual {p0, v0, v1, p2, p3}, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->doCalc(DD)V

    .line 54
    return-void
.end method


# virtual methods
.method public doCalc(DD)V
    .locals 19

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˊ:Lio/senseai/kelvinsdk/RawData;

    invoke-static {v2}, Lio/senseai/kelvinsdk/if;->ˊ(Lio/senseai/kelvinsdk/RawData;)Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lio/senseai/kelvinsdk/Prediction;->ˊ:Ljava/util/HashMap;

    .line 58
    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˎ:[D

    .line 61
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ᐝ:Lbrc;

    const/16 v3, 0xc8

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ʼ:Lio/senseai/kelvinsdk/Prediction$if;

    const-string v5, "MINIMIZE"

    invoke-static {v5}, Lbqt;->valueOf(Ljava/lang/String;)Lbqt;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˎ:[D

    invoke-virtual {v2, v3, v4, v5, v6}, Lbrc;->a(ILbqb;Lbqt;[D)Lbqw;
    :try_end_0
    .catch Lbql; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ˋ:Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v8, 0x2

    aget-wide v8, v2, v8

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v10, 0x3

    aget-wide v10, v2, v10

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v12, 0x4

    aget-wide v12, v2, v12

    invoke-static {}, Lio/senseai/kelvinsdk/Prediction;->ˊ()[D

    move-result-object v2

    const/4 v14, 0x5

    aget-wide v14, v2, v14

    move-wide/from16 v16, p3

    invoke-interface/range {v3 .. v17}, Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;->onTempCalculated(DDDDDDD)V

    .line 67
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->ʻ:Lbql;

    goto :goto_0
.end method
