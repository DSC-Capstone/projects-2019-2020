.class public abstract Lti/modules/titanium/android/TiJSActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiJSActivity.java"


# instance fields
.field protected activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 35
    iput-object p1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 26
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Landroid/app/Activity;)V

    .line 27
    iput-object p1, p0, Lti/modules/titanium/android/TiJSActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 28
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected contextCreated()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 57
    new-instance v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    invoke-direct {v0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;-><init>()V

    .line 58
    .local v0, "window":Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 60
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 61
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 62
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lti/modules/titanium/android/TiJSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 49
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    return-object v1

    .line 46
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity url required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected scriptLoaded()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 68
    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->open()V

    .line 69
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    const-string v1, "exitOnClose"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/android/TiJSActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->shouldFinishRootActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected windowCreated()V
    .locals 3

    .prologue
    .line 75
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    iget-object v2, p0, Lti/modules/titanium/android/TiJSActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v1, v0, p0, v2}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;-><init>(Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;Lti/modules/titanium/android/TiJSActivity;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    .line 76
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->windowCreated()V

    .line 77
    return-void
.end method
