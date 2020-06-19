.class Lcom/google/ads/internal/ActivationOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/internal/ActivationOverlay;->setOverlayEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/internal/ActivationOverlay;

.field final synthetic b:Lcom/google/ads/internal/ActivationOverlay;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/ActivationOverlay;Lcom/google/ads/internal/ActivationOverlay;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/ads/internal/ActivationOverlay$1;->b:Lcom/google/ads/internal/ActivationOverlay;

    iput-object p2, p0, Lcom/google/ads/internal/ActivationOverlay$1;->a:Lcom/google/ads/internal/ActivationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/internal/ActivationOverlay$1;->b:Lcom/google/ads/internal/ActivationOverlay;

    iget-object v0, v0, Lcom/google/ads/internal/ActivationOverlay;->a:Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/google/ads/internal/ActivationOverlay$1;->a:Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->removeView(Landroid/view/View;)V

    .line 64
    return-void
.end method
