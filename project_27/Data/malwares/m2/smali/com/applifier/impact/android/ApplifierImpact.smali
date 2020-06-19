.class public Lcom/applifier/impact/android/ApplifierImpact;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# static fields
.field public static final APPLIFIER_IMPACT_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final APPLIFIER_IMPACT_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final APPLIFIER_IMPACT_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final APPLIFIER_IMPACT_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final APPLIFIER_IMPACT_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final APPLIFIER_IMPACT_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final APPLIFIER_IMPACT_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field public static instance:Lcom/applifier/impact/android/ApplifierImpact;


# instance fields
.field private a:Lcom/applifier/impact/android/IApplifierImpactListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/applifier/impact/android/ApplifierImpact;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/applifier/impact/android/ApplifierImpact;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 38
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    .line 42
    invoke-virtual {p0, p3}, Lcom/applifier/impact/android/ApplifierImpact;->setImpactListener(Lcom/applifier/impact/android/IApplifierImpactListener;)V

    .line 43
    invoke-static {p1, p2, p0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 44
    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 59
    return-void
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setTestDeveloperId(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setTestMode(Z)V

    .line 63
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->setTestOptionsId(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public canShowCampaigns()Z
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v0

    return v0
.end method

.method public canShowImpact()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method public changeActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public getCurrentRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getDefaultRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRewardItemKeys()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getRewardItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasMultipleRewardItems()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hasMultipleRewardItems()Z

    move-result v0

    return v0
.end method

.method public hideImpact()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hide()Z

    move-result v0

    return v0
.end method

.method public onFetchCompleted()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onCampaignsAvailable()V

    .line 181
    :cond_0
    return-void
.end method

.method public onFetchFailed()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onCampaignsFetchFailed()V

    .line 188
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onImpactClose()V

    .line 154
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onImpactOpen()V

    .line 160
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0, p1, p2}, Lcom/applifier/impact/android/IApplifierImpactListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/IApplifierImpactListener;->onVideoStarted()V

    .line 167
    :cond_0
    return-void
.end method

.method public setDefaultRewardItemAsRewardItem()V
    .locals 0

    .prologue
    .line 143
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setDefaultRewardItemAsRewardItem()V

    .line 144
    return-void
.end method

.method public setImpactListener(Lcom/applifier/impact/android/IApplifierImpactListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/applifier/impact/android/ApplifierImpact;->a:Lcom/applifier/impact/android/IApplifierImpactListener;

    .line 82
    return-void
.end method

.method public setRewardItemKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setRewardItemKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setZone(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setZone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    invoke-static {p1, p2}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showImpact()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->show()Z

    move-result v0

    return v0
.end method

.method public showImpact(Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public stopAll()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
