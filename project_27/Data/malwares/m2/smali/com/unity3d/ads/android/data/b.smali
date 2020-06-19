.class final Lcom/unity3d/ads/android/data/b;
.super Ljava/lang/Object;
.source "UnityAdsAdvertisingId.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:Z

.field final synthetic b:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

.field private final c:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/unity3d/ads/android/data/b;->b:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/b;->a:Z

    .line 176
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/data/b;->c:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;B)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/data/b;-><init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;)V

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/unity3d/ads/android/data/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 188
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/b;->a:Z

    .line 189
    iget-object v0, p0, Lcom/unity3d/ads/android/data/b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/data/b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method
