.class public Lti/modules/titanium/geolocation/TiLocation;
.super Ljava/lang/Object;
.source "TiLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final BASE_GEO_URL:Ljava/lang/String; = "http://api.appcelerator.net/p/v1/geo?"

.field private static final DBG:Z

.field private static final DIRECTION_F:Ljava/lang/String; = "f"

.field private static final DIRECTION_R:Ljava/lang/String; = "r"

.field private static final LCAT:Ljava/lang/String; = "TiLocation"


# instance fields
.field private accuracy:Ljava/lang/Integer;

.field private frequency:Ljava/lang/Integer;

.field private geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

.field private lastEventTimestamp:J

.field private preferredProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/geolocation/TiLocation;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/geolocation/GeolocationModule;)V
    .locals 3
    .param p1, "geolocationModule"    # Lti/modules/titanium/geolocation/GeolocationModule;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lti/modules/titanium/geolocation/TiLocation;->lastEventTimestamp:J

    .line 57
    iput-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    .line 58
    iput-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->frequency:Ljava/lang/Integer;

    .line 63
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    .line 64
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lti/modules/titanium/geolocation/TiLocation;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/geolocation/TiLocation;)Lti/modules/titanium/geolocation/GeolocationModule;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/geolocation/TiLocation;

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    return-object v0
.end method

.method private buildGeoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "aguid"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "http://api.appcelerator.net/p/v1/geo?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d=r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&aguid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {p5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to encode query to utf-8 ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doAnalytics(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lti/modules/titanium/geolocation/TiLocation;->lastEventTimestamp:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 178
    invoke-static {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppGeoEvent(Landroid/location/Location;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v0

    .line 179
    .local v0, "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 181
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lti/modules/titanium/geolocation/TiLocation;->lastEventTimestamp:J

    .line 184
    .end local v0    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :cond_0
    return-void
.end method

.method private locationToKrollDict(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "locationProvider"    # Landroid/location/LocationProvider;

    .prologue
    .line 148
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 149
    .local v0, "coordinates":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v3, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v3, "altitudeAccuracy"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v3, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v3, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 159
    .local v1, "position":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v3, "coords"

    invoke-virtual {v1, v3, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    if-eqz p2, :cond_0

    .line 163
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 165
    .local v2, "provider":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "name"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "accuracy"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v3, "power"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v3, "provider"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v2    # "provider":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-object v1
.end method

.method private placeToAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .param p1, "place"    # Lorg/json/JSONObject;

    .prologue
    .line 358
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 359
    .local v0, "address":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "street1"

    const-string v2, "street"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "street"

    const-string v2, "street"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "city"

    const-string v2, "city"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "region1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "region2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "postalCode"

    const-string v2, "zipcode"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "country"

    const-string v2, "country"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "countryCode"

    const-string v2, "country_code"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v1, "country_code"

    const-string v2, "country_code"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "longitude"

    const-string v2, "longitude"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "latitude"

    const-string v2, "latitude"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "displayAddress"

    const-string v2, "address"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-object v0
.end method

.method private refreshProperties()V
    .locals 5

    .prologue
    .line 68
    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v3, "frequency"

    invoke-virtual {v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "frequencyProp":Ljava/lang/Object;
    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v3, "accuracy"

    invoke-virtual {v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "accuracyProp":Ljava/lang/Object;
    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v3, "preferredProvider"

    invoke-virtual {v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->preferredProvider:Ljava/lang/String;

    .line 72
    const-string v2, "TiLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferredProvider property found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->preferredProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v1, :cond_0

    .line 76
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->frequency:Ljava/lang/Integer;

    .line 77
    const-string v2, "TiLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency property found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->frequency:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    .line 81
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    .line 82
    const-string v2, "TiLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accuracy property found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    return-void
.end method

.method private updateProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiLocation;->refreshProperties()V

    .line 100
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->preferredProvider:Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->frequency:Ljava/lang/Integer;

    invoke-static {v0, v1, p1, v2, p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->updateProvider(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Landroid/location/LocationListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public buildForwardResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 397
    .local v1, "response":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "places"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 398
    .local v0, "places":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lti/modules/titanium/geolocation/TiLocation;->placeToAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 402
    :cond_0
    return-object v1
.end method

.method public buildReverseResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 380
    .local v4, "response":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "success"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v5, "places"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 383
    .local v3, "places":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 384
    .local v0, "count":I
    new-array v2, v0, [Lorg/appcelerator/kroll/KrollDict;

    .line 385
    .local v2, "newPlaces":[Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 386
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/geolocation/TiLocation;->placeToAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    aput-object v5, v2, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    const-string v5, "places"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-object v4
.end method

.method public forwardGeocoder(Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 318
    if-eqz p1, :cond_1

    .line 319
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "mid":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "aguid":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "sid":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "countryCode":Ljava/lang/String;
    const-string v1, "f"

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/TiLocation;->buildGeoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 326
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/GeolocationModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 328
    .local v7, "message":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    const-string v5, "f"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iput-object p2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 336
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "aguid":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v6    # "countryCode":Ljava/lang/String;
    .end local v7    # "message":Landroid/os/Message;
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const-string v0, "TiLocation"

    const-string v1, "address should not be null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentPosition(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 8
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->preferredProvider:Ljava/lang/String;

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiLocationHelper;->fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 197
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    .line 198
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 200
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 201
    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lti/modules/titanium/geolocation/TiLocation;->locationToKrollDict(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/TiLocation;->doAnalytics(Landroid/location/Location;)V

    .line 220
    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "provider":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v0    # "location":Landroid/location/Location;
    .restart local v1    # "locationManager":Landroid/location/LocationManager;
    .restart local v2    # "provider":Ljava/lang/String;
    :cond_1
    const-string v3, "TiLocation"

    const-string v4, "unable to get current position, location is null"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "location is currently unavailable."

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    :cond_2
    const-string v3, "TiLocation"

    const-string v4, "unable to get current position, no providers are available"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v3}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "no providers are available."

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getLocationServicesEnabled()Z
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public getLookUpTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lti/modules/titanium/geolocation/TiLocation$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/geolocation/TiLocation$1;-><init>(Lti/modules/titanium/geolocation/TiLocation;)V

    .line 313
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 105
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    .line 106
    .local v0, "provider":Landroid/location/LocationProvider;
    iget-object v1, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v2, "location"

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/geolocation/TiLocation;->locationToKrollDict(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->doAnalytics(Landroid/location/Location;)V

    .line 108
    invoke-virtual {v0}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/geolocation/TiLocation;->updateProvider(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "TiLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider disabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v1, "location"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->updateProvider(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "TiLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 125
    const-string v0, "TiLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status changed, provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 141
    const-string v0, "TiLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status update from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], passed code ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v1, "location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of service."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->updateProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v1, "location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is currently unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toErrorObject(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->updateProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_2
    sget-boolean v0, Lti/modules/titanium/geolocation/TiLocation;->DBG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "TiLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiLocation;->refreshProperties()V

    .line 89
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->preferredProvider:Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/geolocation/TiLocation;->accuracy:Ljava/lang/Integer;

    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->frequency:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->registerListener(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/location/LocationListener;)V

    .line 90
    return-void
.end method

.method public reverseGeocoder(DDLorg/appcelerator/kroll/KrollFunction;)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 340
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "mid":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "aguid":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "sid":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "countryCode":Ljava/lang/String;
    const-string v1, "r"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/TiLocation;->buildGeoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 347
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/GeolocationModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 349
    .local v7, "message":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    const-string v5, "r"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iput-object p5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 354
    .end local v7    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public unregisterListener()V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->unregisterListener(Landroid/location/LocationListener;)V

    .line 95
    return-void
.end method
