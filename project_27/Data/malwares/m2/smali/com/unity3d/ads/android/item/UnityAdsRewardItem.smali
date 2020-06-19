.class public Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
.super Ljava/lang/Object;
.source "UnityAdsRewardItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->c:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->e:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    const-string v0, "Problem parsing campaign values"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->a:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->b:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->c:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    .line 49
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->e:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public getDetails()Ljava/util/Map;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "picture"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasValidData()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->d:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
