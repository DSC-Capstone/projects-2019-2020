.class public final Lorg/appcelerator/kroll/runtime/v8/V8Runtime;
.super Lorg/appcelerator/kroll/KrollRuntime;
.source "V8Runtime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z

.field private static final MSG_PROCESS_DEBUG_MESSAGES:I = 0x12e

.field private static final NAME:Ljava/lang/String; = "v8"

.field private static final TAG:Ljava/lang/String; = "KrollV8Runtime"


# instance fields
.field private externalModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private libLoaded:Z

.field private loadedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeIdle()V

    return-void
.end method

.method private loadExternalModules()V
    .locals 8

    .prologue
    .line 82
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "libName":Ljava/lang/String;
    sget-boolean v5, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->DBG:Z

    if-eqz v5, :cond_0

    .line 84
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootstrapping module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 95
    .local v4, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/kroll/KrollExternalModule;

    .line 96
    .local v3, "module":Lorg/appcelerator/kroll/KrollExternalModule;
    invoke-interface {v3}, Lorg/appcelerator/kroll/KrollExternalModule;->bootstrap()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    .end local v3    # "module":Lorg/appcelerator/kroll/KrollExternalModule;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v2    # "libName":Ljava/lang/String;
    .end local v4    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :cond_2
    return-void
.end method

.method private native nativeDispose()V
.end method

.method private native nativeIdle()V
.end method

.method private native nativeInit(ZIZ)V
.end method

.method private native nativeProcessDebugMessages()V
.end method

.method private native nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method


# virtual methods
.method public addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method protected dispatchDebugMessages()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->handler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method

.method public doDispose()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeDispose()V

    .line 111
    return-void
.end method

.method public doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "activityProxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 117
    return-void
.end method

.method public getRuntimeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "v8"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeProcessDebugMessages()V

    .line 131
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method

.method public initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public initRuntime()V
    .locals 6

    .prologue
    .line 40
    const/4 v3, 0x1

    .line 41
    .local v3, "useGlobalRefs":Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v1

    .line 43
    .local v1, "deployData":Lorg/appcelerator/kroll/common/TiDeployData;
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "sdk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "google_sdk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    :cond_0
    sget-boolean v4, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->DBG:Z

    if-eqz v4, :cond_1

    .line 45
    const-string v4, "KrollV8Runtime"

    const-string v5, "Emulator detected, storing global references in a global Map"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 50
    :cond_2
    iget-boolean v4, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    if-nez v4, :cond_3

    .line 51
    const-string v4, "stlport_shared"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const-string v4, "kroll-v8"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 56
    :cond_3
    const/4 v0, 0x1

    .line 57
    .local v0, "DBG":Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/kroll/KrollApplication;->getDeployType()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "deployType":Ljava/lang/String;
    const-string v4, "production"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    const/4 v0, 0x0

    .line 62
    :cond_4
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiDeployData;->getDebuggerPort()I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeInit(ZIZ)V

    .line 64
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 68
    :cond_5
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadExternalModules()V

    .line 70
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;

    invoke-direct {v5, p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;-><init>(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 78
    return-void
.end method
