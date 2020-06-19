.class final Lcom/unity3d/ads/android/video/q;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/l;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/l;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/unity3d/ads/android/video/q;->a:Lcom/unity3d/ads/android/video/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 712
    const-string v0, "Buffering taking too long.. cancelling video play"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/unity3d/ads/android/video/q;->a:Lcom/unity3d/ads/android/video/l;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/l;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 714
    return-void
.end method
