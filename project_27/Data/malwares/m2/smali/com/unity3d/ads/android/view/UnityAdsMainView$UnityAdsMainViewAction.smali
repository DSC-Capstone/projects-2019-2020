.class public final enum Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;
.super Ljava/lang/Enum;
.source "UnityAdsMainView.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

.field public static final enum BackButtonPressed:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

.field public static final enum RequestRetryVideoPlay:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

.field public static final enum VideoEnd:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

.field public static final enum VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

.field public static final enum VideoStart:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const-string v1, "VideoStart"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoStart:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const-string v1, "VideoEnd"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoEnd:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const-string v1, "VideoSkipped"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const-string v1, "BackButtonPressed"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->BackButtonPressed:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const-string v1, "RequestRetryVideoPlay"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->RequestRetryVideoPlay:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoStart:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoEnd:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->VideoSkipped:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->BackButtonPressed:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->RequestRetryVideoPlay:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->$VALUES:[Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->$VALUES:[Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewAction;

    return-object v0
.end method
