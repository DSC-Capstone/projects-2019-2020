.class public Lcom/urbanairship/location/LocationPreferences;
.super Lcom/urbanairship/Preferences;


# static fields
.field private static final BACKGROUND_LOCATION_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.location.BACKGROUND_LOCATION_ENABLED"

.field private static final FOREGROUND_LOCATION_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.location.FOREGROUND_LOCATION_ENABLED"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.location"

.field private static final LOCATION_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.location.LOCATION_ENABLED"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.location"

    invoke-virtual {p0, v0}, Lcom/urbanairship/location/LocationPreferences;->migratePreferencesFromFileToDb(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isBackgroundLocationEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.location.BACKGROUND_LOCATION_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isForegroundLocationEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "com.urbanairship.location.FOREGROUND_LOCATION_ENABLED"

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/location/LocationPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isLocationEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.location.LOCATION_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setBackgroundLocationEnabled(Z)V
    .locals 2

    const-string v0, "com.urbanairship.location.BACKGROUND_LOCATION_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setForegroundLocationEnabled(Z)V
    .locals 2

    const-string v0, "com.urbanairship.location.FOREGROUND_LOCATION_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setLocationEnabled(Z)V
    .locals 2

    const-string v0, "com.urbanairship.location.LOCATION_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/location/LocationPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
