.class final Lcom/unity3d/ads/android/video/c;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iput p2, p0, Lcom/unity3d/ads/android/video/c;->a:I

    iput-boolean p3, p0, Lcom/unity3d/ads/android/video/c;->b:Z

    iput-boolean p4, p0, Lcom/unity3d/ads/android/video/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/video/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    :cond_0
    iget v0, p0, Lcom/unity3d/ads/android/video/c;->a:I

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 540
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/c;->b:Z

    if-eqz v0, :cond_4

    .line 531
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/c;->c:Z

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/video/c;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0
.end method
