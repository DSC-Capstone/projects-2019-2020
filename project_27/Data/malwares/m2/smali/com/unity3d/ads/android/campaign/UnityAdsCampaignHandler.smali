.class public Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;
.super Ljava/lang/Object;
.source "UnityAdsCampaignHandler.java"

# interfaces
.implements Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

.field private c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 18
    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    .line 19
    iput-wide v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->d:J

    .line 20
    iput-wide v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->e:J

    .line 25
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 26
    return-void
.end method

.method private a()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->getSizeForLocalFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 145
    iget-object v4, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v4

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "localSize="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expectedSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 149
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    cmp-long v6, v4, v8

    if-nez v6, :cond_2

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 156
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->e:J

    .line 118
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->removeListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    .line 122
    const/4 v2, 0x1

    .line 125
    :cond_1
    return v2

    .line 118
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->d:J

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "eventValue"

    const-string v2, "start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoCaching(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addDownload(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    if-eqz v0, :cond_0

    .line 101
    iput-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->clearData()V

    .line 109
    iput-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 111
    :cond_2
    return-void
.end method

.method public downloadCampaign()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b()V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    .line 95
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b()V

    goto :goto_0
.end method

.method public getCachingDurationInMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 37
    iget-wide v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->d:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->e:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->e:J

    iget-wide v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->d:J

    sub-long/2addr v0, v2

    .line 41
    :cond_0
    return-wide v0
.end method

.method public getCampaign()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    return-object v0
.end method

.method public hasDownloads()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCampaign(Z)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->hasDownloads()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b()V

    .line 77
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;->onCampaignHandled(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 80
    :cond_3
    return-void

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->shouldCacheVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "The file was not okay, redownloading"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->addListener(Lcom/unity3d/ads/android/cache/IUnityAdsDownloadListener;)V

    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b()V

    goto :goto_0
.end method

.method public onFileDownloadCancelled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download cancelled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "eventValue"

    const-string v2, "failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoCaching(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onFileDownloadCompleted(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reporting campaign download completion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v1, "eventValue"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "cachingDuration"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->getCachingDurationInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->b:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoCaching(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->c:Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;

    .line 46
    return-void
.end method
