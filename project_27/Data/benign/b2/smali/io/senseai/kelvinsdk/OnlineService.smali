.class public final Lio/senseai/kelvinsdk/OnlineService;
.super Lio/senseai/kelvinsdk/MeasurementService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lio/senseai/kelvinsdk/MeasurementService;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public final bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/senseai/kelvinsdk/MeasurementService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lio/senseai/kelvinsdk/MeasurementService;->onCreate()V

    return-void
.end method

.method public final bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lio/senseai/kelvinsdk/MeasurementService;->onDestroy()V

    return-void
.end method

.method public final bridge synthetic onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/senseai/kelvinsdk/MeasurementService;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public final bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1, p2, p3}, Lio/senseai/kelvinsdk/MeasurementService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected final resetAlarm()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lio/senseai/kelvinsdk/OnlineAlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    iget-object v2, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 50
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lio/senseai/kelvinsdk/OnlineService;->mTimerPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Lio/senseai/kelvinsdk/OnlineService;->mTimerPeriod:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lio/senseai/kelvinsdk/OnlineService;->mTimerPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method final ˊ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lio/senseai/kelvinsdk/OnlineAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    iget-object v1, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 63
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 66
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 67
    return-void
.end method

.method final ˊ(Lio/senseai/kelvinsdk/Temperature;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    const-string v0, "KelvinInit.ACTION_PREDICTION_AVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v0

    new-instance v1, Lio/senseai/kelvinsdk/OnlineService$1;

    invoke-direct {v1, p0}, Lio/senseai/kelvinsdk/OnlineService$1;-><init>(Lio/senseai/kelvinsdk/OnlineService;)V

    invoke-virtual {v0, v1}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/OnlineService$1;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "KelvinInit.KEY_TEMPERATURE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 44
    :cond_0
    return-void
.end method

.method final ˋ()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineService;->mStartingIntent:Landroid/content/Intent;

    invoke-static {v0}, Lio/senseai/kelvinsdk/Aux;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 72
    return-void
.end method

.method final ˎ()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineService;->mStartingIntent:Landroid/content/Intent;

    invoke-static {v0}, Lio/senseai/kelvinsdk/OnlineAlarmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 77
    return-void
.end method

.method final ˏ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lio/senseai/kelvinsdk/OnlineAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v2, p0, Lio/senseai/kelvinsdk/OnlineService;->mApplicationContext:Landroid/content/Context;

    const/high16 v3, 0x20000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
