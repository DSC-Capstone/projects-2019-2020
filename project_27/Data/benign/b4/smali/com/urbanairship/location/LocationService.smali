.class public Lcom/urbanairship/location/LocationService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationService$ProviderListener;
    }
.end annotation


# static fields
.field public static final ACTION_RECORD_CURRENT_LOCATION:Ljava/lang/String; = "com.urbanairship.location.RECORD_CURRENT_LOCATION"

.field public static final ACTION_START:Ljava/lang/String; = "com.urbanairship.location.START"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.urbanairship.location.STOP"

.field public static final ACTION_SUFFIX_LOCATION_CHANGED:Ljava/lang/String; = ".urbanairship.location.LOCATION_CHANGED"

.field public static final ACTION_SUFFIX_SINGLE_LOCATION_CHANGED:Ljava/lang/String; = ".urbanairship.location.SINGLE_LOCATION_CHANGED"

.field public static final REQUESTED_ACCURACY_KEY:Ljava/lang/String; = "com.urbanairship.location.REQUESTED_ACCURACY"

.field public static final REQUESTED_CRITERIA:Ljava/lang/String; = "com.urbanairship.location.REQUESTED_CRITERIA"

.field private static bound:Z

.field private static started:Z


# instance fields
.field private bestProvider:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private criteria:Landroid/location/Criteria;

.field private currentProvider:Ljava/lang/String;

.field private gpsListener:Lcom/urbanairship/location/LocationService$ProviderListener;

.field private lastLocationFinder:Lcom/urbanairship/location/LastLocationFinder;

.field private location:Landroid/location/Location;

.field private final locationBinder:Lcom/urbanairship/location/ILocationService$Stub;

.field private locationChangedPendingIntent:Landroid/app/PendingIntent;

.field private final locationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private locationManager:Landroid/location/LocationManager;

.field private networkListener:Lcom/urbanairship/location/LocationService$ProviderListener;

.field private singleLocationChangedPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->bound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/urbanairship/location/LocationService$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/LocationService$2;-><init>(Lcom/urbanairship/location/LocationService;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->locationBinder:Lcom/urbanairship/location/ILocationService$Stub;

    new-instance v0, Lcom/urbanairship/location/LocationService$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/LocationService$3;-><init>(Lcom/urbanairship/location/LocationService;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->locationChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/LocationService;)Lcom/urbanairship/location/LastLocationFinder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->lastLocationFinder:Lcom/urbanairship/location/LastLocationFinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/LocationService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->initializeCriteria()V

    return-void
.end method

.method static synthetic access$1200(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/urbanairship/location/LocationService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->createSingleLocationChangedPendingIntent(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/urbanairship/location/LocationService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->singleLocationChangedPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->invokeLastLocationFinder()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/location/LocationService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->setProviders()V

    return-void
.end method

.method static synthetic access$500(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->initializeLocationUpdates()V

    return-void
.end method

.method static synthetic access$600(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$702(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/urbanairship/location/LocationService;)Landroid/location/Criteria;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic access$802(Lcom/urbanairship/location/LocationService;Landroid/location/Criteria;)Landroid/location/Criteria;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    return-object p1
.end method

.method static synthetic access$900(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->createLocationChangedPendingIntent()V

    return-void
.end method

.method private createLocationChangedPendingIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, ".urbanairship.location.LOCATION_CHANGED"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.location.REQUESTED_ACCURACY"

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    invoke-virtual {v2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->locationChangedPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private declared-synchronized createService()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/urbanairship/location/LocationService;->bound:Z

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->registerReceivers()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->initializeCriteria()V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->createSingleLocationChangedPendingIntent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSingleLocationChangedPendingIntent(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, ".urbanairship.location.SINGLE_LOCATION_CHANGED"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.location.REQUESTED_ACCURACY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->singleLocationChangedPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private initializeCriteria()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    invoke-virtual {v0}, Lcom/urbanairship/LocationOptions;->isValid()Z

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget v1, v0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->accuracy:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    :goto_0
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->costAllowed:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->altitudeRequired:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget-boolean v2, v0, Lcom/urbanairship/LocationOptions;->speedRequired:Z

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget-boolean v0, v0, Lcom/urbanairship/LocationOptions;->bearingRequired:Z

    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    iget v2, v0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    goto :goto_0
.end method

.method private initializeLocationUpdates()V
    .locals 8

    const-string v0, "Removing location update requests with the old provider"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->locationChangedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v4, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting location updates with the new provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    iget-wide v2, v4, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    iget v4, v4, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/urbanairship/location/LocationService;->locationChangedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "There are no available providers, waiting to request updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeProviderListeners()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v6, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    iget-boolean v0, v0, Lcom/urbanairship/LocationOptions;->allowGPSForLocationTracking:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-direct {v0, p0, v7}, Lcom/urbanairship/location/LocationService$ProviderListener;-><init>(Lcom/urbanairship/location/LocationService;Lcom/urbanairship/location/LocationService$1;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->gpsListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    iget-wide v2, v6, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    mul-long/2addr v2, v8

    iget v4, v6, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/urbanairship/location/LocationService;->gpsListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    new-instance v0, Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-direct {v0, p0, v7}, Lcom/urbanairship/location/LocationService$ProviderListener;-><init>(Lcom/urbanairship/location/LocationService;Lcom/urbanairship/location/LocationService$1;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->networkListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->NETWORK:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v6, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    mul-long/2addr v2, v8

    iget v4, v6, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/urbanairship/location/LocationService;->networkListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method private invokeLastLocationFinder()V
    .locals 2

    const-string v0, "Invoking last location finder."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/location/LastLocationFinder;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/urbanairship/location/LastLocationFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->lastLocationFinder:Lcom/urbanairship/location/LastLocationFinder;

    new-instance v0, Lcom/urbanairship/location/LocationService$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/LocationService$1;-><init>(Lcom/urbanairship/location/LocationService;)V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to execute findLastLocationTask."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 3

    const-string v0, "Registering location change receivers."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, ".urbanairship.location.LOCATION_CHANGED"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, ".urbanairship.location.SINGLE_LOCATION_CHANGED"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->locationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setProviders()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    iget-boolean v0, v0, Lcom/urbanairship/LocationOptions;->allowGPSForLocationTracking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    :goto_0
    const-string v0, "Current location provider: %s, best location provider: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->NETWORK:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->bestProvider:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->currentProvider:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized setupService()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    if-eqz v0, :cond_0

    const-string v0, "Location service already started."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->setProviders()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->invokeLastLocationFinder()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->createLocationChangedPendingIntent()V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->initializeProviderListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized teardownService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->networkListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->networkListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->gpsListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->gpsListener:Lcom/urbanairship/location/LocationService$ProviderListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->locationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->locationChangedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->bound:Z

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationBinder:Lcom/urbanairship/location/ILocationService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocationService started prior to a UAirship.takeOff() call."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UAirship.takeOff() must be called every time Application.onCreate() is invoked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->bound:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->createService()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "Location service destroyed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->teardownService()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location Service started with intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "Attempted to start service with null intent or action."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.location.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->teardownService()V

    goto :goto_0

    :cond_3
    const-string v1, "com.urbanairship.location.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->setupService()V

    :cond_4
    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->shared()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->getPreferences()Lcom/urbanairship/location/LocationPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isForegroundLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->initializeLocationUpdates()V

    goto :goto_0

    :cond_5
    const-string v1, "com.urbanairship.location.RECORD_CURRENT_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->started:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->setupService()V

    :cond_6
    :try_start_0
    const-string v0, "com.urbanairship.location.REQUESTED_CRITERIA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "com.urbanairship.location.REQUESTED_CRITERIA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->locationBinder:Lcom/urbanairship/location/ILocationService$Stub;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/ILocationService$Stub;->requestSingleLocationUpdate(Landroid/location/Criteria;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationBinder:Lcom/urbanairship/location/ILocationService$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/ILocationService$Stub;->requestSingleLocationUpdate(Landroid/location/Criteria;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
