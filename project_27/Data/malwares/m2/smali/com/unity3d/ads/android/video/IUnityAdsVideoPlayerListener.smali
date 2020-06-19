.class public interface abstract Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
.super Ljava/lang/Object;
.source "IUnityAdsVideoPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/unity3d/ads/android/view/IUnityAdsViewListener;


# virtual methods
.method public abstract onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
.end method

.method public abstract onVideoHidden()V
.end method

.method public abstract onVideoPlaybackError()V
.end method

.method public abstract onVideoPlaybackStarted()V
.end method

.method public abstract onVideoSkip()V
.end method
