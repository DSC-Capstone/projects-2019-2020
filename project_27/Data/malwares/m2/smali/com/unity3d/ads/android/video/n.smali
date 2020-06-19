.class final Lcom/unity3d/ads/android/video/n;
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
    .line 657
    iput-object p1, p0, Lcom/unity3d/ads/android/video/n;->a:Lcom/unity3d/ads/android/video/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/unity3d/ads/android/video/n;->a:Lcom/unity3d/ads/android/video/l;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/l;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 661
    return-void
.end method
