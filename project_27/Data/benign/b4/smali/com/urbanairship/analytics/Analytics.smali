.class public Lcom/urbanairship/analytics/Analytics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/Analytics$AddEventTask;,
        Lcom/urbanairship/analytics/Analytics$Session;
    }
.end annotation


# static fields
.field public static final ACTION_ANALYTICS_START:Ljava/lang/String; = "com.urbanairship.analytics.START"

.field public static final ACTION_APP_BACKGROUND:Ljava/lang/String;

.field public static final ACTION_APP_FOREGROUND:Ljava/lang/String;


# instance fields
.field private activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

.field private appStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private conversionPushId:Ljava/lang/String;

.field private dataManager:Lcom/urbanairship/analytics/EventDataManager;

.field private inBackground:Z

.field private final server:Ljava/lang/String;

.field private session:Lcom/urbanairship/analytics/Analytics$Session;

.field private stickyBroadcastAllowed:Z

.field private uploadManager:Lcom/urbanairship/analytics/EventUploadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_FOREGROUND:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_BACKGROUND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->stickyBroadcastAllowed:Z

    new-instance v0, Lcom/urbanairship/analytics/Analytics$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$3;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->appStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->server:Ljava/lang/String;

    new-instance v0, Lcom/urbanairship/analytics/Analytics$Session;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$Session;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    iput-boolean v3, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/Analytics$1;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/ActivityMonitor;-><init>(Lcom/urbanairship/analytics/ActivityMonitor$Delegate;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/urbanairship/analytics/Analytics;->stickyBroadcastAllowed:Z

    :cond_0
    new-instance v0, Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventDataManager;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    new-instance v0, Lcom/urbanairship/analytics/EventUploadManager;

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;-><init>(Lcom/urbanairship/analytics/EventDataManager;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_BACKGROUND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_FOREGROUND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->appStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Analytics$Session;)Lcom/urbanairship/analytics/Analytics$Session;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    return-object p1
.end method

.method static synthetic access$100(Lcom/urbanairship/analytics/Analytics;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    return v0
.end method

.method static synthetic access$102(Lcom/urbanairship/analytics/Analytics;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    return p1
.end method

.method static synthetic access$200(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/analytics/Analytics;->sendForegroundBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/analytics/Analytics;->sendBackgroundBroadcast()V

    return-void
.end method

.method static synthetic access$402(Lcom/urbanairship/analytics/Analytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventUploadManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    return-object v0
.end method

.method public static getHashedDeviceId()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const-string v0, "unavailable"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-byte v5, v2, v1

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Unable to hash the device ID: SHA1 digester not present"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBackgroundBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_BACKGROUND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/urbanairship/analytics/Analytics;->stickyBroadcastAllowed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendForegroundBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_FOREGROUND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/urbanairship/analytics/Analytics;->stickyBroadcastAllowed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public activityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->addActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/urbanairship/analytics/ActivityStartedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStartedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public activityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/ActivityStoppedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStoppedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public addEvent(Lcom/urbanairship/analytics/Event;)V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->log()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/analytics/Analytics$2;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/analytics/Analytics$2;-><init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getConversionPushId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-object v0
.end method

.method getServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->server:Ljava/lang/String;

    return-object v0
.end method

.method getSession()Lcom/urbanairship/analytics/Analytics$Session;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    return-object v0
.end method

.method public isAppInForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversionPushId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-void
.end method

.method public startUploadingIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventUploadManager;->upload()V

    return-void
.end method
