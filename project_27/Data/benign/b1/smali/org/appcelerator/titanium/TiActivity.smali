.class public Lorg/appcelerator/titanium/TiActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiActivity"


# instance fields
.field private isTab:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiActivity;->isTab:Z

    return-void
.end method


# virtual methods
.method public isTab()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiActivity;->isTab:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v1, "isTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiActivity;->isTab:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->fireOnDestroy()V

    .line 35
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    .line 36
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 56
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 42
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->addToActivityStack(Landroid/app/Activity;)V

    goto :goto_0
.end method
