.class final Lio/senseai/kelvinsdk/MeasurementService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/MeasurementService$TempResultListener;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/MeasurementService;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTempCalculated(DDDDDDD)V
    .locals 7

    .prologue
    .line 579
    new-instance v2, Lio/senseai/kelvinsdk/Temperature;

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/senseai/kelvinsdk/Temperature;-><init>(Ljava/lang/Double;)V

    .line 580
    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setTemp(Ljava/lang/Double;)V

    .line 581
    move-wide/from16 v0, p13

    double-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/Temperature;->setTimestamp(J)V

    .line 582
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ(Lio/senseai/kelvinsdk/MeasurementService;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setTemperatureAccuracy(Ljava/lang/Double;)V

    .line 583
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v3

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/ᐝ;->ˈ()Lio/senseai/kelvinsdk/KelvinLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setLocation(Lio/senseai/kelvinsdk/KelvinLocation;)V

    .line 584
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Temperature;)V

    .line 585
    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/Temperature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    const-string v4, "KelvinInit.ACTION_PREDICTION_AVAILABLE"

    invoke-virtual {v3, v2, v4}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/Temperature;Ljava/lang/String;)V

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$4;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ʻ(Lio/senseai/kelvinsdk/MeasurementService;)V

    goto :goto_0
.end method
