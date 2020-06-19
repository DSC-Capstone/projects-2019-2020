.class public Lti/modules/titanium/android/TiJSService;
.super Lorg/appcelerator/titanium/TiBaseService;
.source "TiJSService.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiJSService"


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/android/TiJSService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseService;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private finalizeUrl(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 41
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service url required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 87
    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 88
    .local v1, "lastSlash":I
    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :cond_0
    new-instance v2, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v2, p0, p1, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Landroid/app/Service;Landroid/content/Intent;I)V

    .line 93
    .local v2, "proxy":Lorg/appcelerator/titanium/proxy/ServiceProxy;
    return-object v2
.end method

.method protected executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 58
    .local v0, "fullUrl":Ljava/lang/String;
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    sget-boolean v1, Lti/modules/titanium/android/TiJSService;->DBG:Z

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-eq v1, v0, :cond_3

    .line 63
    const-string v1, "TiJSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    :goto_0
    const-string v1, "app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_2
    :goto_1
    const-string v1, "resume"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 78
    const-string v1, "pause"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 79
    const-string v1, "stop"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 81
    return-void

    .line 65
    :cond_3
    const-string v1, "TiJSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_4
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/TiBaseService;->onStart(Landroid/content/Intent;I)V

    .line 47
    sget-boolean v1, Lti/modules/titanium/android/TiJSService;->DBG:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "TiJSService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;

    move-result-object v0

    .line 52
    .local v0, "proxy":Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 53
    return-void
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 99
    const-string v0, "start"

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 101
    return-void
.end method
