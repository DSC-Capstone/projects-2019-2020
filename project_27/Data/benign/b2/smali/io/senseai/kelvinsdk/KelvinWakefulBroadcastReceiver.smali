.class public abstract Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;
.super Lbc;
.source "SourceFile"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private ˊ:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lbc;-><init>()V

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    .line 20
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_PREDICTION_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_SESSION_FAILED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_DEVICE_LIMIT_REACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVAL_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->ˊ:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public abstract onDeviceLimitReached()V
.end method

.method public abstract onDeviceNotSupported()V
.end method

.method public abstract onPinRetrievalFailed()V
.end method

.method public abstract onPinRetrieved(Ljava/lang/String;)V
.end method

.method public abstract onPredictionAvailable(Lio/senseai/kelvinsdk/Temperature;)V
.end method

.method public abstract onPredictionNotAvailable()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 31
    if-nez p2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iput-object p1, p0, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "KelvinInit.ACTION_PREDICTION_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const-string v0, "KelvinInit.KEY_TEMPERATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/Temperature;

    .line 40
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onPredictionAvailable(Lio/senseai/kelvinsdk/Temperature;)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v1, "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onPredictionNotAvailable()V

    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onDeviceNotSupported()V

    goto :goto_0

    .line 45
    :cond_4
    const-string v1, "KelvinInit.ACTION_SESSION_FAILED_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onSessionFailed()V

    goto :goto_0

    .line 47
    :cond_5
    const-string v1, "KelvinInit.ACTION_DEVICE_LIMIT_REACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onDeviceLimitReached()V

    goto :goto_0

    .line 49
    :cond_6
    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    const-string v0, "KelvinInit.KEY_PIN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onPinRetrieved(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_7
    const-string v1, "KelvinInit.ACTION_PIN_RETRIEVAL_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;->onPinRetrievalFailed()V

    goto :goto_0
.end method

.method public abstract onSessionFailed()V
.end method
