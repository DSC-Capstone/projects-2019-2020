.class public Lti/modules/titanium/TitaniumModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "TitaniumModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/TitaniumModule$Timer;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TitaniumModule"


# instance fields
.field private basePath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentTimerId:I

.field private numberFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private timers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lti/modules/titanium/TitaniumModule$Timer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/TitaniumModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lti/modules/titanium/TitaniumModule;->DBG:Z

    return v0
.end method

.method private createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I
    .locals 11
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p2, "timeout"    # J
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "interval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 171
    iget v2, p0, Lti/modules/titanium/TitaniumModule;->currentTimerId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lti/modules/titanium/TitaniumModule;->currentTimerId:I

    .line 172
    .local v2, "timerId":I
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v3

    .line 174
    .local v3, "handler":Landroid/os/Handler;
    new-instance v0, Lti/modules/titanium/TitaniumModule$Timer;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lti/modules/titanium/TitaniumModule$Timer;-><init>(Lti/modules/titanium/TitaniumModule;ILandroid/os/Handler;Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)V

    .line 175
    .local v0, "timer":Lti/modules/titanium/TitaniumModule$Timer;
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v9

    .line 176
    .local v9, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 177
    .local v10, "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    if-nez v10, :cond_0

    .line 178
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 179
    .restart local v10    # "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    iget-object v1, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Lti/modules/titanium/TitaniumModule$Timer;->schedule()V

    .line 184
    return v2
.end method


# virtual methods
.method public alert(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 224
    if-nez p1, :cond_0

    move-object v0, v1

    .line 225
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const-string v2, "ALERT"

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, "Alert"

    invoke-static {v2, v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    return-void

    .line 224
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelTimers(Ljava/lang/Thread;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 263
    iget-object v3, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 264
    .local v0, "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 269
    .local v2, "timerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lti/modules/titanium/TitaniumModule$Timer;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/TitaniumModule$Timer;

    .line 271
    .local v1, "timer":Lti/modules/titanium/TitaniumModule$Timer;
    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 277
    .end local v1    # "timer":Lti/modules/titanium/TitaniumModule$Timer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public cancelTimers(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 5
    .param p1, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;

    .prologue
    .line 239
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v1

    .line 240
    .local v1, "window":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    const/4 v0, 0x0

    .line 243
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 253
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0, v0}, Lti/modules/titanium/TitaniumModule;->cancelTimers(Ljava/lang/Thread;)V

    .line 259
    :goto_1
    return-void

    .line 247
    :cond_1
    instance-of v2, p1, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_2
    const-string v2, "TitaniumModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried cancelling timers for an activity with no associated JS thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearInterval(I)V
    .locals 0
    .param p1, "timerId"    # I

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lti/modules/titanium/TitaniumModule;->clearTimeout(I)V

    .line 219
    return-void
.end method

.method public clearTimeout(I)V
    .locals 5
    .param p1, "timerId"    # I

    .prologue
    .line 197
    iget-object v4, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 198
    .local v1, "thread":Ljava/lang/Thread;
    iget-object v4, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 199
    .local v2, "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/TitaniumModule$Timer;

    .line 201
    .local v3, "timer":Lti/modules/titanium/TitaniumModule$Timer;
    invoke-virtual {v3}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 206
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v2    # "threadTimers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lti/modules/titanium/TitaniumModule$Timer;>;"
    .end local v3    # "timer":Lti/modules/titanium/TitaniumModule$Timer;
    :cond_1
    return-void
.end method

.method public dumpCoverage()V
    .locals 7

    .prologue
    .line 415
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 416
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isCoverageEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 417
    :cond_0
    const-string v5, "TitaniumModule"

    const-string v6, "Coverage is not enabled, no coverage data will be generated"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 424
    .local v2, "extStorage":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "coverage.json"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 425
    .local v3, "reportFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 427
    .local v4, "reportOut":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v2    # "extStorage":Ljava/io/File;
    .end local v3    # "reportFile":Ljava/io/File;
    .end local v4    # "reportOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TitaniumModule"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBuildDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "httpAgent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    const-string v2, " Titanium/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->initActivity(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public localize([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 386
    const/4 v4, 0x0

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/String;

    .line 387
    .local v2, "key":Ljava/lang/String;
    array-length v4, p1

    if-le v4, v5, :cond_1

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 390
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "string."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    .line 391
    .local v3, "resid":I
    if-eqz v3, :cond_0

    .line 392
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/appcelerator/titanium/TiApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 408
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v3    # "resid":I
    :cond_0
    :goto_1
    return-object v0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    .restart local v0    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    sget-boolean v4, Lti/modules/titanium/TitaniumModule;->DBG:Z

    if-eqz v4, :cond_0

    .line 400
    const-string v4, "TitaniumModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource string with key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not found.  Returning default value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    .end local v1    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TitaniumModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception trying to localize string \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 436
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 437
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {p0, v0}, Lti/modules/titanium/TitaniumModule;->cancelTimers(Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 441
    return-void
.end method

.method public setInterval(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;)I
    .locals 6
    .param p1, "krollFunction"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p2, "timeout"    # J
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public setTimeout(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;)I
    .locals 6
    .param p1, "krollFunction"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p2, "timeout"    # J
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 285
    :try_start_0
    const-string v1, "%d"

    const-string v2, "%1.0f"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    array-length v1, p2

    if-nez v1, :cond_0

    .line 291
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    .line 294
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "TitaniumModule"

    const-string v2, "Error in string format"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringFormatCurrency(D)Ljava/lang/String;
    .locals 1
    .param p1, "currency"    # D

    .prologue
    .line 332
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringFormatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "format"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 307
    const/4 v0, 0x3

    .line 309
    .local v0, "style":I
    if-eqz p2, :cond_0

    .line 310
    const-string v1, "medium"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    const/4 v0, 0x2

    .line 318
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 313
    :cond_1
    const-string v1, "long"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stringFormatDecimal([Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 338
    const/4 v3, 0x0

    .line 339
    .local v3, "pattern":Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, "locale":Ljava/lang/String;
    array-length v5, p1

    if-ne v5, v8, :cond_3

    .line 343
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "test":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 345
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 346
    :cond_0
    move-object v3, v4

    .line 359
    .end local v4    # "test":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_4

    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keysep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_5

    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 363
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 380
    .local v0, "format":Ljava/text/NumberFormat;
    :goto_3
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v0, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 349
    .end local v0    # "format":Ljava/text/NumberFormat;
    .end local v1    # "key":Ljava/lang/String;
    .restart local v4    # "test":Ljava/lang/String;
    :cond_2
    move-object v2, v4

    goto :goto_0

    .line 353
    .end local v4    # "test":Ljava/lang/String;
    :cond_3
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    .line 355
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    aget-object v5, p1, v8

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v5, v2

    .line 359
    goto :goto_1

    :cond_5
    move-object v5, v3

    goto :goto_2

    .line 366
    .restart local v1    # "key":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_8

    .line 367
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 373
    .restart local v0    # "format":Ljava/text/NumberFormat;
    :goto_4
    if-eqz v3, :cond_7

    instance-of v5, v0, Ljava/text/DecimalFormat;

    if-eqz v5, :cond_7

    move-object v5, v0

    .line 374
    check-cast v5, Ljava/text/DecimalFormat;

    invoke-virtual {v5, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 377
    :cond_7
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 370
    .end local v0    # "format":Ljava/text/NumberFormat;
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/NumberFormat;
    goto :goto_4
.end method

.method public stringFormatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 324
    const/4 v0, 0x3

    .line 326
    .local v0, "style":I
    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public testThrow()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Testing throwing throwables"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
