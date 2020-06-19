.class public Lorg/appcelerator/kroll/KrollProxy;
.super Ljava/lang/Object;
.source "KrollProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/kroll/KrollProxySupport;


# static fields
.field private static final DBG:Z

.field private static final ERROR_CREATING_PROXY:Ljava/lang/String; = "Error creating proxy"

.field private static final INDEX_NAME:I = 0x0

.field private static final INDEX_OLD_VALUE:I = 0x1

.field private static final INDEX_VALUE:I = 0x2

.field protected static final MSG_FIRE_EVENT:I = 0xd0

.field protected static final MSG_FIRE_SYNC_EVENT:I = 0xd1

.field protected static final MSG_INIT_KROLL_OBJECT:I = 0xce

.field protected static final MSG_LAST_ID:I = 0xd1

.field protected static final MSG_LISTENER_ADDED:I = 0xca

.field protected static final MSG_LISTENER_REMOVED:I = 0xcb

.field protected static final MSG_MODEL_PROCESS_PROPERTIES:I = 0xcc

.field protected static final MSG_MODEL_PROPERTIES_CHANGED:I = 0xcd

.field protected static final MSG_MODEL_PROPERTY_CHANGE:I = 0xc9

.field protected static final MSG_SET_PROPERTY:I = 0xcf

.field protected static final PROPERTY_HAS_JAVA_LISTENER:Ljava/lang/String; = "_hasJavaListener"

.field protected static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROXY_ID_PREFIX:Ljava/lang/String; = "proxy$"

.field private static final TAG:Ljava/lang/String; = "KrollProxy"

.field protected static proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected coverageEnabled:Z

.field protected createdInModule:Lorg/appcelerator/kroll/KrollModule;

.field protected creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

.field protected defaultValues:Lorg/appcelerator/kroll/KrollDict;

.field protected eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/kroll/KrollEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected krollObject:Lorg/appcelerator/kroll/KrollObject;

.field protected listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mainHandler:Landroid/os/Handler;

.field protected modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

.field protected properties:Lorg/appcelerator/kroll/KrollDict;

.field protected proxyId:Ljava/lang/String;

.field protected runtimeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollProxy;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseCreationUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 71
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    .line 72
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 81
    return-void
.end method

.method public static createDeprecatedProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 8
    .param p1, "object"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "creationArguments"    # [Ljava/lang/Object;
    .param p3, "creationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;",
            "Lorg/appcelerator/kroll/KrollObject;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollProxy;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/appcelerator/titanium/TiContext;

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 137
    .local v1, "oldConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/appcelerator/kroll/KrollProxy;>;"
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v4

    .line 138
    .local v4, "url":Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v3, Lorg/appcelerator/titanium/TiContext;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v4, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 139
    .local v3, "tiContext":Lorg/appcelerator/titanium/TiContext;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollProxy;

    .line 141
    .local v2, "proxyInstance":Lorg/appcelerator/kroll/KrollProxy;
    invoke-direct {v2, p1, p2, v4}, Lorg/appcelerator/kroll/KrollProxy;->setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "oldConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/appcelerator/kroll/KrollProxy;>;"
    .end local v2    # "proxyInstance":Lorg/appcelerator/kroll/KrollProxy;
    .end local v3    # "tiContext":Lorg/appcelerator/titanium/TiContext;
    .end local v4    # "url":Lorg/appcelerator/titanium/util/TiUrl;
    :goto_0
    return-object v2

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KrollProxy"

    const-string v6, "Error creating proxy"

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 4
    .param p1, "object"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "creationArguments"    # [Ljava/lang/Object;
    .param p3, "creationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;",
            "Lorg/appcelerator/kroll/KrollObject;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollProxy;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollProxy;

    .line 117
    .local v1, "proxyInstance":Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/appcelerator/kroll/KrollProxy;->setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "proxyInstance":Lorg/appcelerator/kroll/KrollProxy;
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KrollProxy"

    const-string v3, "Error creating proxy"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private firePropertiesChanged([[Ljava/lang/Object;)V
    .locals 7
    .param p1, "changes"    # [[Ljava/lang/Object;

    .prologue
    .line 317
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-nez v4, :cond_1

    .line 337
    :cond_0
    return-void

    .line 321
    :cond_1
    array-length v1, p1

    .line 322
    .local v1, "changesLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 323
    aget-object v0, p1, v2

    .line 324
    .local v0, "change":[Ljava/lang/Object;
    array-length v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 322
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_3
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 329
    .local v3, "name":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 333
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v4, :cond_2

    .line 334
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "name":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-interface {v4, v3, v5, v6, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method private setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    .locals 1
    .param p1, "object"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "creationArguments"    # [Ljava/lang/Object;
    .param p3, "creationUrl"    # Lorg/appcelerator/titanium/util/TiUrl;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 100
    invoke-virtual {p1, p0}, Lorg/appcelerator/kroll/KrollObject;->setProxySupport(Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 101
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/appcelerator/kroll/KrollEventCallback;)I
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollEventCallback;

    .prologue
    .line 650
    const/4 v0, -0x1

    .line 652
    .local v0, "listenerId":I
    if-nez p1, :cond_0

    .line 653
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "addEventListener expects a non-null eventName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_0
    if-nez p2, :cond_1

    .line 656
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "addEventListener expects a non-null listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    monitor-enter v3

    .line 660
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    const-string v2, "_hasJavaListener"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 665
    .local v1, "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-nez v1, :cond_3

    .line 666
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 667
    .restart local v1    # "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_3
    sget-boolean v2, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v2, :cond_4

    .line 671
    const-string v2, "KrollProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added for eventName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_4
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 674
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit v3

    .line 677
    return v0

    .line 675
    .end local v1    # "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 730
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 731
    .local v0, "error":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-object v0
.end method

.method public doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 424
    if-nez p2, :cond_0

    .line 425
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 428
    :cond_0
    instance-of v2, p2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 429
    check-cast v0, Ljava/util/HashMap;

    .line 431
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "source"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 432
    .local v1, "source":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 433
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v0    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "source":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onEventFired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/appcelerator/kroll/KrollObject;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 623
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v0, p1, p2, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 624
    return-void
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 628
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v0, p1, p2, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 629
    return-void
.end method

.method public extend(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 283
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v9, "propertyChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, "name":Ljava/lang/String;
    iget-object v11, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v11, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 286
    .local v6, "oldValue":Ljava/lang/Object;
    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 290
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p0, v5, v10}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0, v6, v10}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 293
    new-instance v7, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v7, v5, v6, v10}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .local v7, "pch":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "oldValue":Ljava/lang/Object;
    .end local v7    # "pch":Lorg/appcelerator/kroll/KrollPropertyChange;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, "changeSize":I
    new-array v0, v1, [[Ljava/lang/Object;

    .line 301
    .local v0, "changeArray":[[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 302
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 303
    .local v8, "propertyChange":Lorg/appcelerator/kroll/KrollPropertyChange;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->oldValue:Ljava/lang/Object;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->newValue:Ljava/lang/Object;

    aput-object v13, v11, v12

    aput-object v11, v0, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    .end local v8    # "propertyChange":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_2
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 307
    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged([[Ljava/lang/Object;)V

    .line 313
    :goto_2
    return-void

    .line 310
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xcd

    invoke-virtual {v11, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 311
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd0

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 446
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 447
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v1, p1, p2, p3, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .local v0, "pch":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 410
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 417
    :goto_0
    return v1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 533
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_0

    .line 534
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 537
    :goto_0
    return-object v1

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCreatedInModule()Lorg/appcelerator/kroll/KrollModule;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    return-object v0
.end method

.method public getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    return-object v0
.end method

.method public getIndexedProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getKrollObject()Lorg/appcelerator/kroll/KrollObject;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->initKrollObject()V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    return-object v0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProxyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntimeHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 177
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    .line 179
    array-length v1, p2

    if-eqz v1, :cond_0

    aget-object v1, p2, v2

    instance-of v1, v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->handleDefaultValues()V

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_1
    aget-object v1, p2, v2

    instance-of v1, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v1, :cond_2

    .line 186
    aget-object v0, p2, v2

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 190
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 188
    .end local v0    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    aget-object v1, p2, v2

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0    # "dict":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 214
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 219
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->handleDefaultValues()V

    .line 221
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {v0, v1}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method protected handleDefaultValues()V
    .locals 3

    .prologue
    .line 198
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 552
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    move v3, v6

    .line 615
    :cond_0
    :goto_0
    return v3

    .line 554
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/KrollPropertyChange;

    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v6, p0, v7}, Lorg/appcelerator/kroll/KrollPropertyChange;->fireEvent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxyListener;)V

    goto :goto_0

    .line 560
    :pswitch_1
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v7, :cond_0

    .line 564
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 566
    .local v2, "event":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xca

    if-ne v7, v8, :cond_1

    .line 567
    invoke-virtual {p0, v2, v3, p0}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0, v2, v6, p0}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 576
    .end local v2    # "event":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v6, :cond_0

    .line 577
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {v6, v7}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 582
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [[Ljava/lang/Object;

    check-cast v6, [[Ljava/lang/Object;

    invoke-direct {p0, v6}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged([[Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->initKrollObject()V

    .line 588
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "property":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lorg/appcelerator/kroll/KrollProxy;->doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    .end local v4    # "property":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    .local v1, "data":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .restart local v2    # "event":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v1    # "data":Ljava/lang/Object;
    .end local v2    # "event":Ljava/lang/String;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 608
    .local v0, "asyncResult":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    .line 609
    .local v3, "handled":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollObject;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public initKrollObject()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/KrollRuntime;->initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 266
    return-void
.end method

.method public onEventFired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 707
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 708
    .local v3, "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 710
    .local v2, "listenerId":Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollEventCallback;

    .line 711
    .local v0, "callback":Lorg/appcelerator/kroll/KrollEventCallback;
    if-eqz v0, :cond_0

    .line 712
    invoke-interface {v0, p2}, Lorg/appcelerator/kroll/KrollEventCallback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 716
    .end local v0    # "callback":Lorg/appcelerator/kroll/KrollEventCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenerId":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public onHasListenersChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "hasListeners"    # Z

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/16 v1, 0xca

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    .line 462
    return-void

    .line 459
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/16 v1, 0xcb

    goto :goto_0
.end method

.method public onPropertiesChanged([[Ljava/lang/Object;)V
    .locals 11
    .param p1, "changes"    # [[Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    .line 499
    array-length v1, p1

    .line 500
    .local v1, "changesLength":I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v3

    .line 502
    .local v3, "isUiThread":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 503
    aget-object v0, p1, v2

    .line 504
    .local v0, "change":[Ljava/lang/Object;
    array-length v8, v0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 502
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v8, 0x0

    aget-object v5, v0, v8

    .line 509
    .local v5, "name":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 513
    check-cast v6, Ljava/lang/String;

    .line 514
    .local v6, "nameString":Ljava/lang/String;
    aget-object v7, v0, v10

    .line 516
    .local v7, "value":Ljava/lang/Object;
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    aget-object v9, v0, v10

    invoke-virtual {v8, v6, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    if-eqz v3, :cond_0

    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v8, :cond_0

    .line 518
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-interface {v8, v6, v9, v7, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1

    .line 522
    .end local v0    # "change":[Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/Object;
    .end local v6    # "nameString":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    if-nez v3, :cond_3

    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-nez v8, :cond_4

    .line 528
    :cond_3
    :goto_2
    return-void

    .line 526
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xcd

    invoke-virtual {v8, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 527
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 492
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {p0, p1, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollObject;->release()V

    .line 742
    :cond_0
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "listenerId"    # I

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "removeEventListener expects a non-null eventName"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    monitor-enter v2

    .line 687
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 688
    .local v0, "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-eqz v0, :cond_3

    .line 689
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 690
    sget-boolean v1, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 691
    const-string v1, "KrollProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not for eventName \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    const-string v1, "_hasJavaListener"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    :cond_3
    monitor-exit v2

    .line 703
    return-void

    .line 702
    .end local v0    # "listeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendBlockingUiMessage(II)Ljava/lang/Object;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-direct {v1}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/AsyncResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "what"    # I
    .param p2, "asyncArg"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/AsyncResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBlockingUiMessage(ILjava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .param p1, "what"    # I
    .param p2, "asyncArg"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/AsyncResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/AsyncResult;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "asyncResult"    # Lorg/appcelerator/kroll/common/AsyncResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    .line 780
    invoke-virtual {p2}, Lorg/appcelerator/kroll/common/AsyncResult;->getResultUnsafe()Ljava/lang/Object;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method

.method public setCreationUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 277
    return-void
.end method

.method public setIndexedProperty(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    return-void
.end method

.method public setKrollObject(Lorg/appcelerator/kroll/KrollObject;)V
    .locals 0
    .param p1, "object"    # Lorg/appcelerator/kroll/KrollObject;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 247
    return-void
.end method

.method public setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V
    .locals 2
    .param p1, "modelListener"    # Lorg/appcelerator/kroll/KrollProxyListener;

    .prologue
    .line 634
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 639
    if-eqz p1, :cond_0

    .line 640
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {p1, v0}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 382
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "fireChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    if-nez p3, :cond_0

    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "current":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0, p1, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    :cond_0
    return-void
.end method

.method protected shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 471
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 472
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 473
    :cond_3
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
