.class public final enum Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
.super Ljava/lang/Enum;
.source "UnityAdsDeviceLog.java"


# static fields
.field public static final enum DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

.field public static final enum WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

.field private static final synthetic a:[Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->a:[Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->a:[Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    return-object v0
.end method
