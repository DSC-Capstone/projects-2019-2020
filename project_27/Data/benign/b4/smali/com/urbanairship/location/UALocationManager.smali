.class public Lcom/urbanairship/location/UALocationManager;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_SUFFIX_LOCATION_SERVICE_BOUND:Ljava/lang/String; = ".urbanairship.location.LOCATION_SERVICE_BOUND"

.field public static final ACTION_SUFFIX_LOCATION_SERVICE_UNBOUND:Ljava/lang/String; = ".urbanairship.location.LOCATION_SERVICE_UNBOUND"

.field public static final ACTION_SUFFIX_LOCATION_UPDATE:Ljava/lang/String; = ".urbanairship.location.LOCATION_UPDATE"

.field public static final LOCATION_KEY:Ljava/lang/String; = "com.urbanairship.location.LOCATION"

.field private static bound:Z

.field private static context:Landroid/content/Context;

.field private static final instance:Lcom/urbanairship/location/UALocationManager;

.field private static locationService:Lcom/urbanairship/location/ILocationService;


# instance fields
.field private appStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private locationConnection:Landroid/content/ServiceConnection;

.field private preferences:Lcom/urbanairship/location/LocationPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/location/UALocationManager;

    invoke-direct {v0}, Lcom/urbanairship/location/UALocationManager;-><init>()V

    sput-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->stopAndUnbindService()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startAndBindService()V

    return-void
.end method

.method static synthetic access$402(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;
    .locals 0

    sput-object p0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    return p0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static bindService()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/urbanairship/location/UALocationManager;->bound:Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v2, v2, Lcom/urbanairship/location/UALocationManager;->locationConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public static disableBackgroundLocation()V
    .locals 2

    const-string v0, "Set background location preference to False."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setBackgroundLocationEnabled(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->stopAndUnbindService()V

    const-string v0, "Disabling background location"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static disableForegroundLocation()V
    .locals 2

    const-string v0, "Set foreground location preference to False."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setForegroundLocationEnabled(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isForegroundLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Disabling foreground location"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->stopAndUnbindService()V

    :cond_0
    return-void
.end method

.method public static disableLocation()V
    .locals 2

    const-string v0, "Set location preference to False."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setLocationEnabled(Z)V

    const-string v0, "Disable location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->stopAndUnbindService()V

    return-void
.end method

.method public static enableBackgroundLocation()V
    .locals 2

    const-string v0, "Set background location preference to True."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setBackgroundLocationEnabled(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Enabling background location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startAndBindService()V

    :cond_0
    return-void
.end method

.method public static enableForegroundLocation()V
    .locals 2

    const-string v0, "Set foreground location preference to True."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setForegroundLocationEnabled(Z)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Enabling foreground location"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startAndBindService()V

    :cond_0
    return-void
.end method

.method public static enableLocation()V
    .locals 2

    const-string v0, "Set location preference to True."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setLocationEnabled(Z)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Enable location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startAndBindService()V

    :cond_1
    return-void
.end method

.method private exceptIfNotBound()V
    .locals 2

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/util/ServiceNotBoundException;

    const-string v1, "You must call bindService or enableLocation and wait for the LOCATION_SERVICE_BOUND broadcast before using this method."

    invoke-direct {v0, v1}, Lcom/urbanairship/util/ServiceNotBoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/LocationPreferences;

    invoke-direct {v1}, Lcom/urbanairship/location/LocationPreferences;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startService()V

    :goto_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$1;

    invoke-direct {v1}, Lcom/urbanairship/location/UALocationManager$1;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->appStateChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$2;

    invoke-direct {v1}, Lcom/urbanairship/location/UALocationManager$2;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/location/UALocationManager;->locationConnection:Landroid/content/ServiceConnection;

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

    sget-object v2, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v2, v2, Lcom/urbanairship/location/UALocationManager;->appStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string v0, "Location or background location are not enabled - deferring service start until foreground event."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff must be called before UALocationManager.init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isServiceBound()Z
    .locals 1

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    return v0
.end method

.method public static shared()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method private static startAndBindService()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->startService()V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    return-void
.end method

.method private static startService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static stopAndUnbindService()V
    .locals 0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->unbindService()V

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->stopService()V

    return-void
.end method

.method private static stopService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static unbindService()V
    .locals 3

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->instance:Lcom/urbanairship/location/UALocationManager;

    iget-object v1, v1, Lcom/urbanairship/location/UALocationManager;->locationConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, ".urbanairship.location.LOCATION_SERVICE_UNBOUND"

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    return-void
.end method


# virtual methods
.method public getBestProvider()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0}, Lcom/urbanairship/location/ILocationService;->getBestProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCriteria()Landroid/location/Criteria;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0}, Lcom/urbanairship/location/ILocationService;->getCriteria()Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProvider()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0}, Lcom/urbanairship/location/ILocationService;->getCurrentProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0}, Lcom/urbanairship/location/ILocationService;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences()Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method public recordCurrentLocation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.RECORD_CURRENT_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/urbanairship/location/ILocationService;->requestSingleLocationUpdate(Landroid/location/Criteria;)V

    goto :goto_0
.end method

.method public recordCurrentLocation(Landroid/location/Criteria;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    sget-boolean v0, Lcom/urbanairship/location/UALocationManager;->bound:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.RECORD_CURRENT_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.location.REQUESTED_CRITERIA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0, p1}, Lcom/urbanairship/location/ILocationService;->requestSingleLocationUpdate(Landroid/location/Criteria;)V

    goto :goto_0
.end method

.method public recordLocation(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    invoke-virtual {p0, p1, v0, v0}, Lcom/urbanairship/location/UALocationManager;->recordLocation(Landroid/location/Location;II)V

    return-void
.end method

.method public recordLocation(Landroid/location/Location;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0, p1, p2, p3}, Lcom/urbanairship/location/ILocationService;->createLocationEvent(Landroid/location/Location;II)V

    return-void
.end method

.method public resetProviders(Landroid/location/Criteria;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/urbanairship/util/ServiceNotBoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->exceptIfNotBound()V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0, p1}, Lcom/urbanairship/location/ILocationService;->setCriteria(Landroid/location/Criteria;)V

    sget-object v0, Lcom/urbanairship/location/UALocationManager;->locationService:Lcom/urbanairship/location/ILocationService;

    invoke-interface {v0}, Lcom/urbanairship/location/ILocationService;->resetProviders()V

    return-void
.end method
