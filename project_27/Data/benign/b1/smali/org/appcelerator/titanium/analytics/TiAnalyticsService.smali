.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsService;
.super Landroid/app/Service;
.source "TiAnalyticsService.java"


# static fields
.field private static final ANALYTICS_URL:Ljava/lang/String; = "https://api.appcelerator.net/p/v2/mobile-track"

.field private static final BUCKET_SIZE_FAST_NETWORK:I = 0xa

.field private static final BUCKET_SIZE_SLOW_NETWORK:I = 0x5

.field private static final LCAT:Ljava/lang/String; = "TiAnalyticsSvc"

.field private static sending:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->canSend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private canSend()Z
    .locals 6

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 179
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 181
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const/4 v2, 0x1

    .line 189
    :cond_0
    return v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "TiAnalyticsSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connectivity permissions have been removed from AndroidManifest.xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 65
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 71
    sget-object v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "TiAnalyticsSvc"

    const-string v3, "Send already in progress, skipping intent"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    move-object v0, p0

    .line 77
    .local v0, "self":Lorg/appcelerator/titanium/analytics/TiAnalyticsService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;

    invoke-direct {v2, p0, p2, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsService$1;-><init>(Lorg/appcelerator/titanium/analytics/TiAnalyticsService;ILorg/appcelerator/titanium/analytics/TiAnalyticsService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 169
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method
