.class public Lcom/google/ads/e/aa;
.super Lcom/google/ads/e/r;


# direct methods
.method public constructor <init>(Lcom/google/ads/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/e/r;-><init>(Lcom/google/ads/ar;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
