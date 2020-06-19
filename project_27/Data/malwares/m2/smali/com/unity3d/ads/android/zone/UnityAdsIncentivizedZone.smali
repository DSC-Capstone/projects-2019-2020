.class public Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;
.super Lcom/unity3d/ads/android/zone/UnityAdsZone;
.source "UnityAdsIncentivizedZone.java"


# instance fields
.field private a:Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;-><init>(Lorg/json/JSONObject;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->a:Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    .line 16
    new-instance v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    const-string v1, "defaultRewardItem"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 17
    new-instance v1, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    const-string v2, "rewardItems"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;-><init>(Lorg/json/JSONArray;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->a:Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    .line 18
    return-void
.end method


# virtual methods
.method public isIncentivized()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->a:Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    return-object v0
.end method
