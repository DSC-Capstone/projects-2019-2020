.class public Lorg/appcelerator/titanium/TiBaseService;
.super Landroid/app/Service;
.source "TiBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    }
.end annotation


# static fields
.field public static final TI_SERVICE_INTENT_ID_KEY:Ljava/lang/String; = "$__TITANIUM_SERVICE_INTENT_ID__$"


# instance fields
.field protected proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    return-void
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Landroid/app/Service;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public nextServiceInstanceId()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    new-instance v0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;-><init>(Lorg/appcelerator/titanium/TiBaseService;)V

    return-object v0
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 45
    return-void
.end method

.method public unbindProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 50
    return-void
.end method
