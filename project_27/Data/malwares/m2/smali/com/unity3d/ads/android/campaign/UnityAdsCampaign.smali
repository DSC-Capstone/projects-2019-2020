.class public Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
.super Ljava/lang/Object;
.source "UnityAdsCampaign.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:[Ljava/lang/String;

.field private c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->b:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->b:[Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 49
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 50
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 324
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 325
    iget-object v5, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    :cond_0
    :goto_1
    return v0

    .line 324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allowCacheVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "allowCache"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key not found for campaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public allowStreamingVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "allowStreaming"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 318
    return-void
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "clickUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndScreenUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "endScreen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "gameName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "storeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "storeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_STOREID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "iTunesId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "iTunesId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_ITUNESID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "tagLine"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoFileExpectedSize()J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 239
    .line 240
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v3, "trailerSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 245
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 260
    :cond_0
    :goto_0
    return-wide v0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v2

    const-string v2, "Not found, returning -1"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v2, "trailerDownloadable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoStreamUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "trailerStreaming"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "trailerDownloadable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    return v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    if-ne v0, v1, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 303
    return-void
.end method

.method public shouldBypassAppSheet()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "bypassAppSheet"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key not found for campaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldCacheVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "cacheVideo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key not found for campaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 61
    :try_start_0
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    const-string v0, "Error creating campaign JSON"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
