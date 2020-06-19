.class final enum Lcom/unity3d/ads/android/cache/c;
.super Ljava/lang/Enum;
.source "UnityAdsDownloader.java"


# static fields
.field public static final enum DownloadCancelled:Lcom/unity3d/ads/android/cache/c;

.field public static final enum DownloadCompleted:Lcom/unity3d/ads/android/cache/c;

.field private static final synthetic a:[Lcom/unity3d/ads/android/cache/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/unity3d/ads/android/cache/c;

    const-string v1, "DownloadCompleted"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/cache/c;->DownloadCompleted:Lcom/unity3d/ads/android/cache/c;

    new-instance v0, Lcom/unity3d/ads/android/cache/c;

    const-string v1, "DownloadCancelled"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/cache/c;->DownloadCancelled:Lcom/unity3d/ads/android/cache/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/android/cache/c;

    sget-object v1, Lcom/unity3d/ads/android/cache/c;->DownloadCompleted:Lcom/unity3d/ads/android/cache/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/cache/c;->DownloadCancelled:Lcom/unity3d/ads/android/cache/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/android/cache/c;->a:[Lcom/unity3d/ads/android/cache/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/cache/c;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/unity3d/ads/android/cache/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/cache/c;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/cache/c;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/unity3d/ads/android/cache/c;->a:[Lcom/unity3d/ads/android/cache/c;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/cache/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/cache/c;

    return-object v0
.end method
