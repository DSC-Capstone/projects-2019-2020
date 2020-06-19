.class public Lcom/urbanairship/push/embedded/EmbeddedPushManager;
.super Ljava/lang/Object;


# static fields
.field private static connectivityChanged:Landroid/content/BroadcastReceiver; = null

.field static final holdingPatternWarning:Ljava/lang/String; = "This application is in a holding pattern. Urban Airship may be performing maintenance; please check http://status.urbanairship.com/ If systems are operating normally, the holding pattern indicates that your account does not have Helium access. To sign up for a free trial, visit https://go.urbanairship.com/apps/free-trial/.  Once granted permission, you should fully uninstall the app before testing again in order to clear this flag."

.field public static final instance:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

.field public static final version:Ljava/lang/String; = "4.1.3"


# instance fields
.field private final boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

.field private connection:Lcom/urbanairship/push/embedded/HeliumConnection;

.field private volatile extraApidRegistrationsDisabled:Z

.field private ipAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-direct {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;-><init>()V

    sput-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->instance:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->extraApidRegistrationsDisabled:Z

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)Lcom/urbanairship/push/embedded/HeliumConnection;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->reconnect()V

    return-void
.end method

.method public static deliverPush(Lcom/urbanairship/push/proto/Messages$PushNotification;)V
    .locals 5

    const-string v0, "Received Helium Push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$KeyValue;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "com.urbanairship.push.STRING_EXTRA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/urbanairship/push/PushManager;->deliverPush(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-wide/32 v4, 0xdbba0

    const/4 v7, 0x0

    const-string v0, "Embedded Push Initializing..."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.HEARTBEAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getRetryAfter()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In holding pattern. Will retry after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const-string v0, "This application is in a holding pattern. Urban Airship may be performing maintenance; please check http://status.urbanairship.com/ If systems are operating normally, the holding pattern indicates that your account does not have Helium access. To sign up for a free trial, visit https://go.urbanairship.com/apps/free-trial/.  Once granted permission, you should fully uninstall the app before testing again in order to clear this flag."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->clearConnection()V

    sget-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager$1;

    invoke-direct {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const-string v0, "Embedded Push initialization complete."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ipChanged()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->getActiveIPAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Previous IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reconnect()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    if-eqz v0, :cond_0

    const-string v0, "Reconnecting to Helium"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->getRetryInterval()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    invoke-virtual {v2}, Lcom/urbanairship/push/embedded/HeliumConnection;->abort()V

    new-instance v2, Lcom/urbanairship/push/embedded/HeliumConnection;

    iget-object v3, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v2, p0, v3}, Lcom/urbanairship/push/embedded/HeliumConnection;-><init>(Lcom/urbanairship/push/embedded/EmbeddedPushManager;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V

    iput-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    iget-object v2, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/push/embedded/HeliumConnection;->setRetryInterval(J)V

    :goto_0
    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->getActiveIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->setIPAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->start()V

    return-void

    :cond_0
    const-string v0, "Starting new Helium connection"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/push/embedded/HeliumConnection;

    iget-object v1, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/embedded/HeliumConnection;-><init>(Lcom/urbanairship/push/embedded/EmbeddedPushManager;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    goto :goto_0
.end method

.method protected static sendRegistrationResponse(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/PushManager;->heliumRegistrationResponseReceived(Z)V

    return-void
.end method

.method public static shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->instance:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    return-object v0
.end method

.method public static stop()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    return-void
.end method


# virtual methods
.method public clearConnection()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->setIPAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->abort()V

    iput-object v1, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    :cond_0
    return-void
.end method

.method public declared-synchronized getExtraApidRegistrationsDisabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->extraApidRegistrationsDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInHoldingPattern()Z
    .locals 10

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getRetryAfter()J

    move-result-wide v0

    sub-long v6, v0, v4

    const-wide/32 v8, 0x93a80

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/push/PushPreferences;->setRetryAfter(J)V

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetStuckConnection()V
    .locals 2

    const-string v0, "EmbeddedPushManager - resetStuckConnection()"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connection:Lcom/urbanairship/push/embedded/HeliumConnection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "EmbeddedPushManager - reconnecting a closed connection."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->reconnect()V

    goto :goto_0

    :cond_2
    const-string v1, "EmbeddedPushManager - checking the state of the Helium connection to see if it needs a reset."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->resetStaleConnection()V

    goto :goto_0
.end method

.method public declared-synchronized setExtraApidRegistrationsDisabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "** EmbeddedPushManager.setExtraApidRegistrationsDisabled should be called prior to takeOff! **"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->extraApidRegistrationsDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHoldingPattern(J)Z
    .locals 7

    const-wide/32 v4, 0x93a80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-string v0, "BoxOffice retry_after response is in the past. Ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v2, p1, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxOffice retry_after response of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds our maximum retry delay. Setting to max delay."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    add-long p1, v0, v4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received BoxOffice response to reconnect after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Currently: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Shutting down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v0, p1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/push/PushPreferences;->setRetryAfter(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setIPAddress(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->ipAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopHeartBeat()V
    .locals 4

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "stopping heart beat"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.push.HEARTBEAT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x20000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public teardown()V
    .locals 2

    const-string v0, "Embedded Push teardown!"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->connectivityChanged:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->clearConnection()V

    return-void
.end method
