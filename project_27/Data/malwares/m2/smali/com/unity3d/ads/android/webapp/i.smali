.class final enum Lcom/unity3d/ads/android/webapp/i;
.super Ljava/lang/Enum;
.source "UnityAdsWebData.java"


# static fields
.field public static final enum Analytics:Lcom/unity3d/ads/android/webapp/i;

.field public static final enum AppWhitelist:Lcom/unity3d/ads/android/webapp/i;

.field public static final enum InstalledApps:Lcom/unity3d/ads/android/webapp/i;

.field public static final enum Unsent:Lcom/unity3d/ads/android/webapp/i;

.field public static final enum VideoPlan:Lcom/unity3d/ads/android/webapp/i;

.field public static final enum VideoViewed:Lcom/unity3d/ads/android/webapp/i;

.field private static final synthetic a:[Lcom/unity3d/ads/android/webapp/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "Analytics"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->Analytics:Lcom/unity3d/ads/android/webapp/i;

    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "VideoPlan"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoPlan:Lcom/unity3d/ads/android/webapp/i;

    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "VideoViewed"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoViewed:Lcom/unity3d/ads/android/webapp/i;

    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "Unsent"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->Unsent:Lcom/unity3d/ads/android/webapp/i;

    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "AppWhitelist"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->AppWhitelist:Lcom/unity3d/ads/android/webapp/i;

    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    const-string v1, "InstalledApps"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/android/webapp/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->InstalledApps:Lcom/unity3d/ads/android/webapp/i;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unity3d/ads/android/webapp/i;

    sget-object v1, Lcom/unity3d/ads/android/webapp/i;->Analytics:Lcom/unity3d/ads/android/webapp/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/android/webapp/i;->VideoPlan:Lcom/unity3d/ads/android/webapp/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/android/webapp/i;->VideoViewed:Lcom/unity3d/ads/android/webapp/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/android/webapp/i;->Unsent:Lcom/unity3d/ads/android/webapp/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/android/webapp/i;->AppWhitelist:Lcom/unity3d/ads/android/webapp/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/android/webapp/i;->InstalledApps:Lcom/unity3d/ads/android/webapp/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/android/webapp/i;->a:[Lcom/unity3d/ads/android/webapp/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/i;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoPlan:Lcom/unity3d/ads/android/webapp/i;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoPlan:Lcom/unity3d/ads/android/webapp/i;

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoViewed:Lcom/unity3d/ads/android/webapp/i;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->VideoViewed:Lcom/unity3d/ads/android/webapp/i;

    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->Unsent:Lcom/unity3d/ads/android/webapp/i;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->Unsent:Lcom/unity3d/ads/android/webapp/i;

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/i;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/unity3d/ads/android/webapp/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/i;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/android/webapp/i;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/unity3d/ads/android/webapp/i;->a:[Lcom/unity3d/ads/android/webapp/i;

    invoke-virtual {v0}, [Lcom/unity3d/ads/android/webapp/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/android/webapp/i;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/i;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method
