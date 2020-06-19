.class public Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;
.super Landroid/app/Activity;
.source "UnityAdsFullscreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 16
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->handleFullscreenDestroy()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 35
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->checkMainview()V

    .line 36
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 22
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 48
    return-void
.end method
