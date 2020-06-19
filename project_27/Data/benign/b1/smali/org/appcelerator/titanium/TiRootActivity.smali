.class public Lorg/appcelerator/titanium/TiRootActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiRootActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiRootActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiRootActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "app.js"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    :try_start_0
    const-string v4, "drawable.background"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "backgroundId":I
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 84
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "backgroundId":I
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TiRootActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource not found \'drawable.background\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 36
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiRootActivity;->checkMissingLauncher(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 48
    const-string v1, "TiRootActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkpoint, on root activity create, savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V

    .line 52
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onDestroy()V

    .line 99
    sget-boolean v0, Lorg/appcelerator/titanium/TiRootActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "TiRootActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root activity onDestroy, activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "TiRootActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkpoint, on root activity resume. activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onResume()V

    .line 74
    return-void
.end method

.method protected windowCreated()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    .line 62
    .local v0, "appInfo":Lorg/appcelerator/titanium/ITiAppInfo;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fullscreen"

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "navBarHidden"

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isNavBarHidden()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->windowCreated()V

    .line 65
    return-void
.end method
