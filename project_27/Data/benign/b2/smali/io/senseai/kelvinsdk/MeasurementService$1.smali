.class final Lio/senseai/kelvinsdk/MeasurementService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/MeasurementService;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService$1;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$1;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/MeasurementService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$1;->ˊ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ˋ(Lio/senseai/kelvinsdk/MeasurementService;)V

    .line 114
    :cond_0
    return-void
.end method
