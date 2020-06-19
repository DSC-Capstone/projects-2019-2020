.class final Lio/senseai/kelvinsdk/MeasurementService$if;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private ˊ:Landroid/content/IntentFilter;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/MeasurementService;


# direct methods
.method public constructor <init>(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 2

    .prologue
    .line 713
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˋ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 714
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ:Landroid/content/IntentFilter;

    .line 715
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "MeasurementService.ACTION_CHANGE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "MeasurementService.ACTION_PARENT_BG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "MeasurementService.ACTION_MAKE_PREDICTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 722
    if-nez p2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v1, "MeasurementService.ACTION_MAKE_PREDICTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_2

    .line 728
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˋ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/MeasurementService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˋ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ʻ(Lio/senseai/kelvinsdk/MeasurementService;)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˋ:Lio/senseai/kelvinsdk/MeasurementService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ʼ(Lio/senseai/kelvinsdk/MeasurementService;)V

    goto :goto_0
.end method

.method public final ˊ()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ:Landroid/content/IntentFilter;

    return-object v0
.end method
