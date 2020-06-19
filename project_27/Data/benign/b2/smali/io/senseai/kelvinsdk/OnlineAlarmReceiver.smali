.class public Lio/senseai/kelvinsdk/OnlineAlarmReceiver;
.super Lio/senseai/kelvinsdk/ˊ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lio/senseai/kelvinsdk/ˊ;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public startServices(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/senseai/kelvinsdk/OnlineAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 21
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 23
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v3, Lio/senseai/kelvinsdk/OnlineService;->mTimerPeriod:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 27
    :cond_0
    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    .line 29
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "A0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/senseai/kelvinsdk/SysFsCrawler;

    new-instance v4, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;

    invoke-direct {v4, p0, p1, v0}, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;-><init>(Lio/senseai/kelvinsdk/OnlineAlarmReceiver;Landroid/content/Context;Lio/senseai/kelvinsdk/ᐝ;)V

    invoke-direct {v3, p1, v1, v4}, Lio/senseai/kelvinsdk/SysFsCrawler;-><init>(Landroid/content/Context;Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/SysFsCrawler$Listener;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "MeasurementService.ACTION_SETTING_MODE"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
