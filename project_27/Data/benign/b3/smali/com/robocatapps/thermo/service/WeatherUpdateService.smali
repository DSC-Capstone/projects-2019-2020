.class public Lcom/robocatapps/thermo/service/WeatherUpdateService;
.super Landroid/app/IntentService;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private j:Lcom/robocatapps/thermo/model/Temperature;

.field private k:Lcom/robocatapps/thermo/model/Location;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Z

.field private final o:Lcom/robocatapps/thermo/b/a;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WeatherUpdateService"

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "generalfailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yesterdaytemperature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feelstemperature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iscelsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".max_data_age"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temprequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TEMPERATURE_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    new-instance v0, Lcom/robocatapps/thermo/b/c;

    invoke-direct {v0}, Lcom/robocatapps/thermo/b/c;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->o:Lcom/robocatapps/thermo/b/a;

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    new-instance v0, Lcom/robocatapps/thermo/b/c;

    invoke-direct {v0}, Lcom/robocatapps/thermo/b/c;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->o:Lcom/robocatapps/thermo/b/a;

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/robocatapps/thermo/j;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/robocatapps/thermo/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/j;->a(Lcom/robocatapps/thermo/model/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->o:Lcom/robocatapps/thermo/b/a;

    instance-of v0, v0, Lcom/robocatapps/thermo/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->o:Lcom/robocatapps/thermo/b/a;

    check-cast v0, Lcom/robocatapps/thermo/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/b/d;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->o:Lcom/robocatapps/thermo/b/a;

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-interface {v0, v1}, Lcom/robocatapps/thermo/b/a;->a(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received temperature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->e()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    const-string v1, "Geocoder failed to update all Location fields. Lets ask web service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private a(J)V
    .locals 7

    const-wide/16 v5, 0x0

    invoke-static {}, Lcom/robocatapps/thermo/j;->b()Z

    move-result v0

    invoke-static {}, Lcom/robocatapps/thermo/j;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v1

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->f()V

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Autolocation is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCity()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/robocatapps/thermo/j;->a(Z)V

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    const-string v3, "Autolocation is set to true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocation.getLocationString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastLocationString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    const-string v2, "Location changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v5, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "todaymidnightmillis"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b(J)Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->c()V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lcom/robocatapps/thermo/j;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/robocatapps/thermo/j;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->g()Lcom/robocatapps/thermo/model/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robocatapps/thermo/j;->c(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-static {v0}, Lcom/robocatapps/thermo/j;->d(Lcom/robocatapps/thermo/model/Location;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b()V

    goto :goto_1
.end method

.method private a(Landroid/location/Location;)V
    .locals 4

    const-string v0, "location update"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/robocatapps/thermo/model/Location;

    invoke-direct {v0, p1}, Lcom/robocatapps/thermo/model/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(Lcom/robocatapps/thermo/model/Location;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b(J)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationUpdate. Storing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-static {v0}, Lcom/robocatapps/thermo/j;->d(Lcom/robocatapps/thermo/model/Location;)V

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->d()V

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->c()V

    return-void
.end method

.method private a(Lcom/robocatapps/thermo/model/Location;)V
    .locals 4

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastlocationlatitude"

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastlocationlongitude"

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/robocatapps/thermo/j;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/robocatapps/thermo/j;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/robocatapps/thermo/j;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method private b(J)Z
    .locals 6

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking last update time. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    const-string v1, "Updating weather data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a()V

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storing in database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->d()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 4

    new-instance v2, Landroid/content/Intent;

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->h:Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v0, v0, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    :goto_0
    iget-boolean v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v1, v1, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    :goto_1
    sget-object v3, Lcom/robocatapps/thermo/service/WeatherUpdateService;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->h()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/robocatapps/thermo/service/WeatherUpdateService;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v0, v0, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v1, v1, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    invoke-static {v1}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result v1

    goto :goto_1
.end method

.method private d()V
    .locals 5

    new-instance v0, Lcom/robocatapps/thermo/model/Observation;

    iget-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget-wide v3, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/robocatapps/thermo/model/Observation;-><init>(Lcom/robocatapps/thermo/model/Location;Lcom/robocatapps/thermo/model/Temperature;J)V

    new-instance v1, Lcom/robocatapps/thermo/a/b;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/robocatapps/thermo/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/robocatapps/thermo/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/robocatapps/thermo/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Observation;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lasttemperaturecelsius"

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v2, v2, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastfeelslikecelsius"

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    iget v2, v2, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastupdatemillis"

    iget-wide v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastupdatelocationstring"

    iget-object v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f()V
    .locals 5

    const v4, 0x7fffffff

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/robocatapps/thermo/model/Temperature;

    const-string v2, "lasttemperaturecelsius"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "lastfeelslikecelsius"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/robocatapps/thermo/model/Temperature;-><init>(II)V

    iput-object v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->j:Lcom/robocatapps/thermo/model/Temperature;

    const-string v1, "lastupdatemillis"

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->m:J

    const-string v1, "lastupdatelocationstring"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->l:Ljava/lang/String;

    return-void
.end method

.method private g()Lcom/robocatapps/thermo/model/Location;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/robocatapps/thermo/model/Location;

    const-string v2, "lastlocationlatitude"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "lastlocationlongitude"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/robocatapps/thermo/model/Location;-><init>(DD)V

    return-object v1
.end method

.method private h()I
    .locals 7

    const v1, 0x7fffffff

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "todaymidnightmillis"

    const-wide/16 v3, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const-string v0, "yesterdaytemperature"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/robocatapps/thermo/b/c;

    invoke-direct {v0}, Lcom/robocatapps/thermo/b/c;-><init>()V

    iget-object v3, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->k:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0, v3}, Lcom/robocatapps/thermo/b/c;->b(Lcom/robocatapps/thermo/model/Location;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/robocatapps/thermo/b/b; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "yesterdaytemperature"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "todaymidnightmillis"

    invoke-static {}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->i()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/robocatapps/thermo/b/b;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method private static i()J
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->f:Ljava/lang/String;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcom/robocatapps/thermo/service/WeatherUpdateService;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/robocatapps/thermo/service/WeatherUpdateService;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->n:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v0, v1}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/service/WeatherUpdateService;->p:Ljava/lang/String;

    const-string v1, "Received location update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/robocatapps/thermo/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/robocatapps/thermo/m; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/robocatapps/thermo/b/b; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const v0, 0x7f090010

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const v0, 0x7f09000e

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const v1, 0x7f090011

    invoke-direct {p0, v1}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(I)V

    invoke-virtual {v0}, Lcom/robocatapps/thermo/m;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    const v1, 0x7f09000f

    invoke-direct {p0, v1}, Lcom/robocatapps/thermo/service/WeatherUpdateService;->a(I)V

    invoke-virtual {v0}, Lcom/robocatapps/thermo/b/b;->printStackTrace()V

    goto :goto_0
.end method
