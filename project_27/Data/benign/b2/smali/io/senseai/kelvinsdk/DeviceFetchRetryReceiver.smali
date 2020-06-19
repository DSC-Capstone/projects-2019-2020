.class public Lio/senseai/kelvinsdk/DeviceFetchRetryReceiver;
.super Lbc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbc;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 18
    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getPortalDevId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getPortalDevId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    .line 24
    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v1

    .line 25
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/RetryFetchSessionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-static {p1, v0}, Lio/senseai/kelvinsdk/DeviceFetchRetryReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    invoke-static {p1}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    goto :goto_0
.end method
