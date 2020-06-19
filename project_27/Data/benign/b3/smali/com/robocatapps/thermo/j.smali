.class public Lcom/robocatapps/thermo/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/a/d/a/g;

.field private static final c:Landroid/location/Criteria;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v0}, Lcom/google/a/d/a/i;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/a/d/a/g;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/j;->a:Lcom/google/a/d/a/g;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/robocatapps/thermo/j;->c:Landroid/location/Criteria;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/robocatapps/thermo/j;->c:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/robocatapps/thermo/model/Location;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_latitude"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "location_longitude"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "location_country"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "location_city"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "localion_countrycode"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/robocatapps/thermo/model/Location;

    invoke-direct/range {v0 .. v7}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autolocation_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b()Z
    .locals 3

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autolocation_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/robocatapps/thermo/model/Location;)V
    .locals 4

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_country"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location_city"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location_latitude"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location_longitude"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "localion_countrycode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_country"

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_city"

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "location_latitude"

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_longitude"

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v1, "localion_countrycode"

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/a/d/a/e;
    .locals 2

    sget-object v0, Lcom/robocatapps/thermo/j;->a:Lcom/google/a/d/a/g;

    new-instance v1, Lcom/robocatapps/thermo/l;

    invoke-direct {v1, p0, p1}, Lcom/robocatapps/thermo/l;-><init>(Lcom/robocatapps/thermo/j;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/a/d/a/g;->a(Ljava/util/concurrent/Callable;)Lcom/google/a/d/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    invoke-static {v1, v2, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    :try_start_0
    sget-object v2, Lcom/robocatapps/thermo/j;->c:Landroid/location/Criteria;

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    invoke-static {v1, v2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/robocatapps/thermo/n;

    invoke-direct {v0}, Lcom/robocatapps/thermo/n;-><init>()V

    throw v0
.end method

.method public a(Lcom/robocatapps/thermo/model/Location;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    new-instance v0, Lcom/robocatapps/thermo/m;

    invoke-direct {v0}, Lcom/robocatapps/thermo/m;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/a/a/a;->a(Ljava/lang/String;)Lcom/google/a/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/robocatapps/thermo/model/Location;->setCountryCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/robocatapps/thermo/model/Location;->set(DD)V

    :cond_7
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/robocatapps/thermo/model/Location;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_a
    move v5, v6

    goto/16 :goto_0

    :cond_b
    move v5, v6

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public b(Lcom/robocatapps/thermo/model/Location;)Lcom/google/a/d/a/e;
    .locals 2

    sget-object v0, Lcom/robocatapps/thermo/j;->a:Lcom/google/a/d/a/g;

    new-instance v1, Lcom/robocatapps/thermo/k;

    invoke-direct {v1, p0, p1}, Lcom/robocatapps/thermo/k;-><init>(Lcom/robocatapps/thermo/j;Lcom/robocatapps/thermo/model/Location;)V

    invoke-interface {v0, v1}, Lcom/google/a/d/a/g;->a(Ljava/util/concurrent/Callable;)Lcom/google/a/d/a/e;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Location;
    .locals 11

    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/robocatapps/thermo/j;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lcom/robocatapps/thermo/j;->c:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    if-nez v10, :cond_1

    move-object v0, v9

    goto :goto_0

    :cond_1
    new-array v8, v2, [F

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    move-object v0, v9

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/robocatapps/thermo/model/Location;

    invoke-direct {v0, v10}, Lcom/robocatapps/thermo/model/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method
