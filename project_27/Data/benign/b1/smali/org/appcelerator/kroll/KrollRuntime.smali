.class public abstract Lorg/appcelerator/kroll/KrollRuntime;
.super Ljava/lang/Object;
.source "KrollRuntime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;
    }
.end annotation


# static fields
.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DONT_INTERCEPT:I = -0x7fffffff

.field private static final MSG_DISPOSE:I = 0x65

.field private static final MSG_INIT:I = 0x64

.field public static final MSG_LAST_ID:I = 0xca

.field private static final MSG_RUN_MODULE:I = 0x66

.field private static final PROPERTY_FILENAME:Ljava/lang/String; = "filename"

.field private static final PROPERTY_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "KrollRuntime"

.field public static final UNDEFINED:Ljava/lang/Object;

.field private static activityRefCount:I

.field private static instance:Lorg/appcelerator/kroll/KrollRuntime;


# instance fields
.field private evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

.field protected handler:Landroid/os/Handler;

.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private krollApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/kroll/KrollApplication;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 58
    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$1;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollRuntime$1;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lorg/appcelerator/kroll/KrollRuntime;J)J
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/kroll/KrollRuntime;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide p1
.end method

.method public static decrementActivityRefCount()V
    .locals 1

    .prologue
    .line 245
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 246
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    if-gtz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->dispose()V

    goto :goto_0
.end method

.method public static getInstance()Lorg/appcelerator/kroll/KrollRuntime;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    return-object v0
.end method

.method public static incrementActivityRefCount()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 229
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 235
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 237
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 241
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runtime"    # Lorg/appcelerator/kroll/KrollRuntime;

    .prologue
    .line 108
    iget-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Lorg/appcelerator/kroll/KrollRuntime;->getThreadStackSize(Landroid/content/Context;)I

    move-result v0

    .line 110
    .local v0, "stackSize":I
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v1, p0

    check-cast v1, Lorg/appcelerator/kroll/KrollApplication;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    .line 111
    new-instance v1, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-direct {v1, p1, v0}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;-><init>(Lorg/appcelerator/kroll/KrollRuntime;I)V

    iput-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    .line 113
    sput-object p1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    .line 114
    iget-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->start()V

    .line 117
    .end local v0    # "stackSize":I
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private internalDispose()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doDispose()V

    .line 257
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 258
    .local v0, "app":Lorg/appcelerator/kroll/KrollApplication;
    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->dispose()V

    .line 262
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    return-void
.end method

.method private static waitForInit()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v1, v1, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "KrollRuntime"

    const-string v2, "Interrupted while waiting for runtime to initialize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public abstract doDispose()V
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->initRuntime()V

    .line 147
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 149
    return-void
.end method

.method public abstract doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public getEvaluator()Lorg/appcelerator/kroll/KrollEvaluator;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    return-object v0
.end method

.method public getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRuntimeName()Ljava/lang/String;
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide v0
.end method

.method public getThreadStackSize(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    instance-of v1, p1, Lorg/appcelerator/kroll/KrollApplication;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 186
    .local v0, "app":Lorg/appcelerator/kroll/KrollApplication;
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->getThreadStackSize()I

    move-result v1

    .line 188
    .end local v0    # "app":Lorg/appcelerator/kroll/KrollApplication;
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x4000

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 193
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 211
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doInit()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "filename":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollProxySupport;

    .line 207
    .local v0, "activityProxy":Lorg/appcelerator/kroll/KrollProxySupport;
    invoke-virtual {p0, v2, v1, v0}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public abstract initRuntime()V
.end method

.method public isRuntimeThread()Z
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "activityProxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 163
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollRuntime;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "KrollRuntime"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 180
    :goto_1
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 176
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public setEvaluator(Lorg/appcelerator/kroll/KrollEvaluator;)V
    .locals 0
    .param p1, "eval"    # Lorg/appcelerator/kroll/KrollEvaluator;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    .line 273
    return-void
.end method
