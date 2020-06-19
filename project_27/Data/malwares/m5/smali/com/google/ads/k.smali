.class Lcom/google/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# instance fields
.field private final a:Lcom/google/ads/h;


# direct methods
.method constructor <init>(Lcom/google/ads/h;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    .line 24
    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->b(Lcom/google/ads/h;)V

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 4
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation adapter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed to receive ad with error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 60
    :goto_0
    monitor-exit v1

    .line 61
    return-void

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 55
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->c(Lcom/google/ads/h;)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/h;)V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "adapter":Lcom/google/ads/mediation/MediationInterstitialAdapter;, "Lcom/google/ads/mediation/MediationInterstitialAdapter<**>;"
    iget-object v1, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 39
    :goto_0
    monitor-exit v1

    .line 40
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/ads/k;->a:Lcom/google/ads/h;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
