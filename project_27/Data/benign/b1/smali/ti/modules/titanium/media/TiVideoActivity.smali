.class public Lti/modules/titanium/media/TiVideoActivity;
.super Landroid/app/Activity;
.source "TiVideoActivity.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiVideoActivity"


# instance fields
.field protected layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

.field private proxyMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/TiVideoActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 33
    iput-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    .line 34
    iput-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .line 36
    return-void
.end method

.method private sendProxyMessage(I)V
    .locals 5
    .param p1, "messageId"    # I

    .prologue
    .line 121
    iget-object v2, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 125
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TiVideoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoPlayerProxy no longer available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiVideoActivity;->sendProxyMessage(I)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-boolean v4, Lti/modules/titanium/media/TiVideoActivity;->DBG:Z

    if-eqz v4, :cond_0

    .line 44
    const-string v4, "TiVideoActivity"

    const-string v5, "TiVideoActivity onCreate"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 49
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "messenger"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    iput-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    .line 51
    const-string v4, "backgroundColor"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "backgroundColor"

    const/high16 v5, -0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 53
    .local v0, "d":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .end local v0    # "d":Landroid/graphics/drawable/ColorDrawable;
    :cond_1
    new-instance v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v4, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 57
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    new-instance v5, Landroid/widget/TiVideoView8;

    invoke-direct {v5, p0}, Landroid/widget/TiVideoView8;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/TiVideoActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 63
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x65

    iput v4, v3, Landroid/os/Message;->what:I

    .line 64
    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    const-string v4, "TiVideoActivity"

    const-string v5, "exiting onCreate"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 67
    .restart local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "TiVideoActivity"

    const-string v5, "Cannot send activity available message to proxy"

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 105
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 95
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 85
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .prologue
    .line 134
    iput-object p1, p0, Lti/modules/titanium/media/TiVideoActivity;->lifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .line 135
    return-void
.end method
