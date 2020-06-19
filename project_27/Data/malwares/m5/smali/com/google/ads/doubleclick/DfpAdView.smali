.class public Lcom/google/ads/doubleclick/DfpAdView;
.super Lcom/google/ads/AdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSize"    # Lcom/google/ads/AdSize;
    .param p3, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSizes"    # [Lcom/google/ads/AdSize;
    .param p3, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;[Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public enableManualImpressions(Z)V
    .locals 2
    .param p1, "useManualImpressions"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->t:Lcom/google/ads/util/i$c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public recordImpression()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->z()V

    .line 93
    return-void
.end method

.method public resize(Lcom/google/ads/AdSize;)V
    .locals 1
    .param p1, "adSize"    # Lcom/google/ads/AdSize;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    .line 102
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    .line 103
    return-void
.end method

.method public setAppEventListener(Lcom/google/ads/AppEventListener;)V
    .locals 0
    .param p1, "appEventListener"    # Lcom/google/ads/AppEventListener;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setAppEventListener(Lcom/google/ads/AppEventListener;)V

    .line 68
    return-void
.end method

.method public varargs setSupportedAdSizes([Lcom/google/ads/AdSize;)V
    .locals 0
    .param p1, "adSizes"    # [Lcom/google/ads/AdSize;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setSupportedAdSizes([Lcom/google/ads/AdSize;)V

    .line 77
    return-void
.end method
