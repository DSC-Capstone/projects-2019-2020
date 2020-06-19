.class public Lcom/google/ads/doubleclick/SwipeableDfpAdView;
.super Lcom/google/ads/doubleclick/DfpAdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSize"    # Lcom/google/ads/AdSize;
    .param p3, "adUnitID"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public resize(Lcom/google/ads/AdSize;)V
    .locals 4
    .param p1, "adSize"    # Lcom/google/ads/AdSize;

    .prologue
    const/4 v3, -0x1

    .line 56
    invoke-super {p0, p1}, Lcom/google/ads/doubleclick/DfpAdView;->resize(Lcom/google/ads/AdSize;)V

    .line 57
    iget-object v0, p0, Lcom/google/ads/doubleclick/SwipeableDfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0}, Lcom/google/ads/internal/ActivationOverlay;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/ads/doubleclick/SwipeableDfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/ads/internal/d;->a(IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method public setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V
    .locals 0
    .param p1, "swipeableAdListener"    # Lcom/google/ads/SwipeableAdListener;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/ads/doubleclick/DfpAdView;->setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V

    .line 47
    return-void
.end method
