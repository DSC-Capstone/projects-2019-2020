.class public Lti/modules/titanium/app/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidModule"


# instance fields
.field protected r:Lorg/appcelerator/titanium/proxy/RProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 35
    invoke-direct {p0}, Lti/modules/titanium/app/AndroidModule;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getR()Lorg/appcelerator/titanium/proxy/RProxy;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/appcelerator/titanium/proxy/RProxy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    .line 44
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    return-object v0
.end method

.method public getTopActivity()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 5

    .prologue
    .line 51
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 52
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 53
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v3, :cond_1

    .line 55
    :cond_0
    :try_start_0
    iget-object v3, v2, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :cond_1
    :goto_0
    instance-of v3, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_2

    .line 63
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v3

    .line 65
    :goto_1
    return-object v3

    .line 57
    .restart local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "AndroidModule"

    const-string v4, "Interrupted awaiting rootActivityLatch"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
