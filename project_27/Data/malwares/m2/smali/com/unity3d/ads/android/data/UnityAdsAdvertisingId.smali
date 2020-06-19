.class public Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
.super Ljava/lang/Object;
.source "UnityAdsAdvertisingId.java"


# static fields
.field private static a:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->b:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->c:Z

    .line 174
    return-void
.end method

.method private static a()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    invoke-direct {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    .line 30
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-object v0
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitedAdTracking()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->c:Z

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 34
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->fetchAdvertisingId(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->a()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unity3d/ads/android/data/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/unity3d/ads/android/data/b;-><init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;B)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/unity3d/ads/android/data/b;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method


# virtual methods
.method public fetchAdvertisingId(Landroid/app/Activity;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    :try_start_0
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-string v3, "isGooglePlayServicesAvailable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 59
    const-string v0, "getId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->b:Ljava/lang/String;

    .line 62
    const-string v0, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->c:Z

    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_0
    const-string v0, "Google Play Services not integrated, using fallback"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to access Google Play Services "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v0, v2

    .line 72
    goto :goto_0
.end method
