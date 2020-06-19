.class final Lio/senseai/kelvinsdk/MeasurementService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/MeasurementService;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService$2;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiagnosticDataProcessed(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$2;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService$2;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v1}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Temperature;Landroid/content/ContentValues;)V

    .line 546
    return-void
.end method
