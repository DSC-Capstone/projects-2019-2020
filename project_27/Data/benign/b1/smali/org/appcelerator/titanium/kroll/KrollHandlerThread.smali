.class public Lorg/appcelerator/titanium/kroll/KrollHandlerThread;
.super Ljava/lang/Thread;
.source "KrollHandlerThread.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KrollHandlerThread"


# instance fields
.field private krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private mLooper:Landroid/os/Looper;

.field private mPriority:I

.field private mTid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "stackSize"    # I
    .param p4, "krollContext"    # Lorg/appcelerator/titanium/kroll/KrollContext;

    .prologue
    const/4 v1, 0x0

    .line 65
    int-to-long v4, p3

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 66
    iput p2, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    .line 67
    iput-object p4, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "krollContext"    # Lorg/appcelerator/titanium/kroll/KrollContext;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 59
    iput p2, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    .line 60
    iput-object p3, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "krollContext"    # Lorg/appcelerator/titanium/kroll/KrollContext;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;-><init>(Ljava/lang/String;ILorg/appcelerator/titanium/kroll/KrollContext;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 107
    :cond_0
    monitor-enter p0

    .line 108
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 110
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    goto :goto_1

    .line 114
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->initContext()V

    .line 76
    return-void
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 126
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 80
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;

    .line 83
    iget v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->onLooperPrepared()V

    .line 87
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->threadEnded()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 90
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
