.class public Lorg/appcelerator/titanium/TiContext;
.super Ljava/lang/Object;
.source "TiContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiContext"

.field public static final LIFECYCLE_ON_DESTROY:I = 0x4

.field public static final LIFECYCLE_ON_PAUSE:I = 0x2

.field public static final LIFECYCLE_ON_RESUME:I = 0x1

.field public static final LIFECYCLE_ON_START:I = 0x0

.field public static final LIFECYCLE_ON_STOP:I = 0x3

.field private static final TRACE:Z


# instance fields
.field private baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

.field private currentUrl:Ljava/lang/String;

.field protected krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private launchContext:Z

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadId:J

.field private tiApp:Lorg/appcelerator/titanium/TiApplication;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    .line 31
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGV:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiContext;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    .line 64
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 70
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 71
    if-nez p2, :cond_4

    .line 72
    const-string p2, "app://"

    .line 76
    :cond_0
    :goto_1
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 78
    instance-of v0, p1, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v0, :cond_1

    .line 82
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "TiContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseURL for context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    return-void

    .line 67
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    goto :goto_0

    .line 73
    :cond_4
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    return-object v0
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "loadFile"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 294
    .local v0, "tic":Lorg/appcelerator/titanium/TiContext;
    return-object v0
.end method

.method public static getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 229
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 264
    return-void
.end method

.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 166
    .local v3, "setUrlBackTo":Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 171
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 182
    if-eqz p2, :cond_1

    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->what:I

    .line 186
    invoke-virtual {p2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 187
    sget-boolean v4, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v4, :cond_1

    .line 188
    const-string v4, "TiContext"

    const-string v5, "Notifying caller that evalFile has completed"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iput-object v3, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 195
    :cond_2
    return-object v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "TiContext"

    const-string v5, "Failed to notify caller that eval completed"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public fireLifecycleEvent(Landroid/app/Activity;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "which"    # I

    .prologue
    .line 238
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 239
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v1, "listener":Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_start_1
    invoke-virtual {p0, p1, v1, p2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 246
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    return-void
.end method

.method protected fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    .param p3, "which"    # I

    .prologue
    .line 251
    packed-switch p3, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 256
    :pswitch_4
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 347
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isLaunchContext()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    return v0
.end method

.method public isUIThread()Z
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    .line 330
    :cond_0
    return-void
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public resolveUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "relativeTo"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, ""

    return-object v0
.end method

.method public runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 272
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    instance-of v0, p1, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v0, :cond_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iput-object p1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    const-string v1, "app://"

    iput-object v1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 356
    :cond_0
    return-void
.end method

.method public setKrollContext(Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 0
    .param p1, "krollContext"    # Lorg/appcelerator/titanium/kroll/KrollContext;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 305
    return-void
.end method

.method public setLaunchContext(Z)V
    .locals 0
    .param p1, "launchContext"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    .line 340
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceName"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "lineSource"    # Ljava/lang/String;
    .param p5, "lineOffset"    # I

    .prologue
    .line 278
    return-void
.end method
