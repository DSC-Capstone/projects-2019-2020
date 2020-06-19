.class final Lio/senseai/kelvinsdk/MeasurementService$3;
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
    .line 553
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTempCalculated(DDDDDDD)V
    .locals 7

    .prologue
    .line 556
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v2

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setTemp(Ljava/lang/Double;)V

    .line 557
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v2

    move-wide/from16 v0, p13

    double-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/Temperature;->setTimestamp(J)V

    .line 558
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v2

    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ(Lio/senseai/kelvinsdk/MeasurementService;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setTemperatureAccuracy(Ljava/lang/Double;)V

    .line 559
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v2

    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v3

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/ᐝ;->ˈ()Lio/senseai/kelvinsdk/KelvinLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/Temperature;->setLocation(Lio/senseai/kelvinsdk/KelvinLocation;)V

    .line 563
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Lio/senseai/kelvinsdk/Configuration;->isPost_diagnostic_data()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    move-wide/from16 v0, p13

    invoke-static {v2, v0, v1}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/MeasurementService;D)V

    .line 573
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v2}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v2

    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService$3;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v3}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Temperature;)V

    goto :goto_0
.end method
