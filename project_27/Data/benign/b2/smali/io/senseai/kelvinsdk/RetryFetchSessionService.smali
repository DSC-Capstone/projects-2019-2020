.class public Lio/senseai/kelvinsdk/RetryFetchSessionService;
.super Lio/senseai/kelvinsdk/ˎ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ˎ;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lio/senseai/kelvinsdk/ˎ;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1, p2, p3}, Lio/senseai/kelvinsdk/ˎ;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public releaseWakelock()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/senseai/kelvinsdk/RetryFetchSessionService;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lio/senseai/kelvinsdk/DeviceFetchRetryReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 23
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RetryFetchSessionService;->stopSelf()V

    .line 24
    return-void
.end method

.method public startServices(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    const-string v0, "MeasurementService.ACTION_SETTING_MODE"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/RetryFetchSessionService;->releaseWakelock()V

    .line 17
    return-void
.end method
