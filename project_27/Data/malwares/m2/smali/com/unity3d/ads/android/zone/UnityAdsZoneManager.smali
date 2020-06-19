.class public Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
.super Ljava/lang/Object;
.source "UnityAdsZoneManager.java"


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/unity3d/ads/android/zone/UnityAdsZone;

.field private c:Lcom/unity3d/ads/android/zone/UnityAdsZone;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->b:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 17
    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 24
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    const-string v1, "incentivised"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    new-instance v1, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;-><init>(Lorg/json/JSONObject;)V

    .line 32
    :goto_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    new-instance v3, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->b:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 40
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    new-instance v1, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v1, "Failed to parse zone"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_3
    :try_start_1
    new-instance v3, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->b:Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 49
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 90
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lcom/unity3d/ads/android/zone/UnityAdsZone;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZonesJson()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 77
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 79
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method

.method public getZonesMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method public setCurrentZone(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->c:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoneCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
