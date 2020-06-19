.class final Lorg/appcelerator/kroll/common/TiMessenger$1;
.super Ljava/lang/ThreadLocal;
.source "TiMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/common/TiMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/appcelerator/kroll/common/TiMessenger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiMessenger$1;->initialValue()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/appcelerator/kroll/common/TiMessenger;
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 57
    sget-object v4, Lorg/appcelerator/kroll/common/TiMessenger;->threadLocalMessenger:Ljava/lang/ThreadLocal;

    monitor-enter v4

    .line 58
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 59
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 61
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/common/TiMessenger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/appcelerator/kroll/common/TiMessenger;-><init>(Lorg/appcelerator/kroll/common/TiMessenger$1;)V

    .line 66
    .local v2, "messenger":Lorg/appcelerator/kroll/common/TiMessenger;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 67
    .local v0, "currentThreadId":J
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 68
    sput-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->mainMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    .line 74
    :cond_2
    :goto_0
    return-object v2

    .line 61
    .end local v0    # "currentThreadId":J
    .end local v2    # "messenger":Lorg/appcelerator/kroll/common/TiMessenger;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 70
    .restart local v0    # "currentThreadId":J
    .restart local v2    # "messenger":Lorg/appcelerator/kroll/common/TiMessenger;
    :cond_3
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollRuntime;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 71
    sput-object v2, Lorg/appcelerator/kroll/common/TiMessenger;->runtimeMessenger:Lorg/appcelerator/kroll/common/TiMessenger;

    goto :goto_0
.end method
