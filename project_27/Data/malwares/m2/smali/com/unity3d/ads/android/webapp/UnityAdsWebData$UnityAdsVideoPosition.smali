.class public final enum Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
.super Ljava/lang/Enum;
.source "UnityAdsWebData.java"


# static fields
.field public static final enum End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field public static final enum ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

.field private static final synthetic a:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "Start"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "FirstQuartile"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "MidPoint"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "ThirdQuartile"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const-string v1, "End"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->FirstQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->MidPoint:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ThirdQuartile:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->a:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->a:[Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/unity3d/ads/android/webapp/g;->a:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    const-string v0, "first_quartile"

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v0, "mid_point"

    goto :goto_0

    .line 83
    :pswitch_2
    const-string v0, "third_quartile"

    goto :goto_0

    .line 86
    :pswitch_3
    const-string v0, "video_end"

    goto :goto_0

    .line 89
    :pswitch_4
    const-string v0, "video_start"

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
