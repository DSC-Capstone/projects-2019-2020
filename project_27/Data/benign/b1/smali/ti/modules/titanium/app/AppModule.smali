.class public Lti/modules/titanium/app/AppModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AppModule.java"


# instance fields
.field private appInfo:Lorg/appcelerator/titanium/ITiAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "App"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 20
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 25
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public appURLToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/app/AppModule;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getCopyright()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 30
    return-void
.end method
