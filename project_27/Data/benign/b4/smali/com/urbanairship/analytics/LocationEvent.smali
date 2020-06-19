.class public Lcom/urbanairship/analytics/LocationEvent;
.super Lcom/urbanairship/analytics/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;,
        Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    }
.end annotation


# static fields
.field static final FOREGROUND_KEY:Ljava/lang/String; = "foreground"

.field static final H_ACCURACY_KEY:Ljava/lang/String; = "accuracy"

.field static final LATITUDE_KEY:Ljava/lang/String; = "lat"

.field static final LONGITUDE_KEY:Ljava/lang/String; = "long"

.field static final PROVIDER_KEY:Ljava/lang/String; = "provider"

.field static final REQUESTED_ACCURACY_KEY:Ljava/lang/String; = "requested_accuracy"

.field private static final TYPE:Ljava/lang/String; = "location"

.field static final UPDATE_DISTANCE_KEY:Ljava/lang/String; = "update_dist"

.field static final UPDATE_TYPE_KEY:Ljava/lang/String; = "update_type"

.field static final V_ACCURACY_KEY:Ljava/lang/String; = "NONE"


# instance fields
.field private accuracy:Ljava/lang/String;

.field private foreground:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private requestedAccuracy:Ljava/lang/String;

.field private updateDistance:Ljava/lang/String;

.field private updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V
    .locals 6

    new-instance v1, Lcom/urbanairship/analytics/DefaultEnvironment;

    invoke-direct {v1}, Lcom/urbanairship/analytics/DefaultEnvironment;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Lcom/urbanairship/analytics/Environment;Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/analytics/Environment;Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/Event;-><init>(Lcom/urbanairship/analytics/Environment;)V

    move-object v0, v1

    check-cast v0, Ljava/util/Locale;

    const-string v2, "%.6f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    check-cast v1, Ljava/util/Locale;

    const-string v0, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/LocationEvent;->getValidProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    if-ltz p4, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    if-ltz p5, :cond_1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Environment;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v0, "New location at lat: %s, long: %s found with provider: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    :cond_2
    const-string v0, "false"

    goto :goto_2
.end method

.method private getValidProviderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->values()[Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->UNKNOWN:Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/LocationEvent$AllowableProvider;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method getData()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/LocationEvent;->getEnvironment()Lcom/urbanairship/analytics/Environment;

    move-result-object v1

    :try_start_0
    const-string v2, "session_id"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_enabled"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->isPushEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "notification_types"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->getNotificationTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "long"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requested_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "update_type"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "provider"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "NONE"

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "foreground"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "update_dist"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error constructing JSON data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/LocationEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method
