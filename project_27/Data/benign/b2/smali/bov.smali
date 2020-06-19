.class public Lbov;
.super Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lio/senseai/kelvin/BaseApplication;


# direct methods
.method public constructor <init>(Lio/senseai/kelvin/BaseApplication;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-direct {p0}, Lio/senseai/kelvinsdk/KelvinWakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLimitReached()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v1, "actionOnError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "keyException"

    new-instance v2, Lio/senseai/kelvinsdk/DeviceLimitReachedException;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/DeviceLimitReachedException;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 102
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070039

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method

.method public onDeviceNotSupported()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/senseai/kelvin/BaseApplication;->a(Lio/senseai/kelvin/BaseApplication;Z)Z

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string v1, "actionOnError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "keyException"

    new-instance v2, Lio/senseai/kelvinsdk/DeviceNotSupportedException;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/DeviceNotSupportedException;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 94
    return-void
.end method

.method public onPinRetrievalFailed()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070046

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void
.end method

.method public onPinRetrieved(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    const-string v1, "actionOnPinSuccess"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "keyPin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 120
    return-void
.end method

.method public onPredictionAvailable(Lio/senseai/kelvinsdk/Temperature;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v1, "actionOnPredictionMade"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "keyTemperature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 75
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lboy;->a(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V

    .line 77
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/senseai/kelvin/BaseApplication;->a(Lio/senseai/kelvin/BaseApplication;Z)Z

    .line 78
    return-void
.end method

.method public onPredictionNotAvailable()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    const-string v1, "actionCantMakePrediction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 85
    return-void
.end method

.method public onSessionFailed()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    const-string v1, "actionOnError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "keyException"

    new-instance v2, Lio/senseai/kelvinsdk/SessionFailedException;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/SessionFailedException;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v1}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 111
    iget-object v0, p0, Lbov;->a:Lio/senseai/kelvin/BaseApplication;

    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07004c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method
