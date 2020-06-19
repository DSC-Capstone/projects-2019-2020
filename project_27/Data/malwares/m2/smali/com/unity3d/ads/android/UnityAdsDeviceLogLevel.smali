.class public Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLogLevel.java"


# instance fields
.field private a:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    .line 6
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->b:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->c:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->c:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->b:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivingMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->b:Ljava/lang/String;

    return-object v0
.end method
