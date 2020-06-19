.class public Lorg/appcelerator/titanium/proxy/ServiceProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ServiceProxy.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiServiceProxy"


# instance fields
.field private forBoundServices:Z

.field private intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private service:Landroid/app/Service;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceInstanceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "serviceInstanceId"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 53
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 54
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Landroid/content/Intent;)V

    .line 55
    iput p3, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 1
    .param p1, "intentProxy"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 44
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    .line 46
    return-void
.end method

.method static synthetic access$002(Lorg/appcelerator/titanium/proxy/ServiceProxy;I)I
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    return v0
.end method

.method private bindAndInvokeService()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 128
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/TiApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void
.end method

.method private unbindService()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 135
    const-string v1, "TiServiceProxy"

    const-string v2, "Cannot unbind service.  tiContext.getTiApp() returned null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    instance-of v1, v1, Lorg/appcelerator/titanium/TiBaseService;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    check-cast v1, Lorg/appcelerator/titanium/TiBaseService;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseService;->unbindProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 143
    :cond_1
    sget-boolean v1, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v1, :cond_2

    .line 144
    const-string v1, "TiServiceProxy"

    const-string v2, "Unbinding service"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getServiceInstanceId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return v0
.end method

.method protected invokeBoundService(Landroid/app/Service;)V
    .locals 4
    .param p1, "boundService"    # Landroid/app/Service;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 153
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBaseService;

    if-nez v1, :cond_0

    .line 154
    const-string v1, "TiServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Ti Service.  Cannot start directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 158
    check-cast v0, Lorg/appcelerator/titanium/TiBaseService;

    .line 159
    .local v0, "tiService":Lorg/appcelerator/titanium/TiBaseService;
    sget-boolean v1, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "TiServiceProxy"

    const-string v2, "Calling tiService.start for this proxy instance"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->release()V

    .line 170
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "TiServiceProxy"

    const-string v1, "Nullifying wrapped service"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 174
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    new-instance v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 73
    return-void
.end method

.method public setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 0
    .param p1, "intentProxy"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 78
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_0

    .line 84
    const-string v0, "TiServiceProxy"

    const-string v1, "Only services created via Ti.Android.createService can be started via the start() command. Ignoring start() request."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->bindAndInvokeService()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "TiServiceProxy"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_2

    .line 97
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "TiServiceProxy"

    const-string v1, "stop via stopService"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_2
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->unbindService()V

    goto :goto_0
.end method
