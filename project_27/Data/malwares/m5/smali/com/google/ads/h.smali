.class public Lcom/google/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/ads/internal/h;

.field private final b:Lcom/google/ads/f;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/g$a;

.field private final f:Lcom/google/ads/e;

.field private g:Lcom/google/ads/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/ads/AdRequest;

.field private final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/internal/h;Lcom/google/ads/f;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/e;",
            "Lcom/google/ads/internal/h;",
            "Lcom/google/ads/f;",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdRequest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Z)V

    .line 97
    iput-object p1, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    .line 98
    iput-object p2, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    .line 99
    iput-object p3, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    .line 100
    iput-object p4, p0, Lcom/google/ads/h;->k:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/google/ads/h;->l:Lcom/google/ads/AdRequest;

    .line 102
    iput-object p6, p0, Lcom/google/ads/h;->m:Ljava/util/HashMap;

    .line 103
    iput-boolean v1, p0, Lcom/google/ads/h;->c:Z

    .line 104
    iput-boolean v1, p0, Lcom/google/ads/h;->d:Z

    .line 105
    iput-object v2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    .line 106
    iput-object v2, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    .line 107
    iput-boolean v1, p0, Lcom/google/ads/h;->h:Z

    .line 108
    iput-boolean v1, p0, Lcom/google/ads/h;->i:Z

    .line 109
    iput-object v2, p0, Lcom/google/ads/h;->j:Landroid/view/View;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/f;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/h;->h:Z

    const-string v2, "startLoadAdTask has already been called."

    invoke-static {v1, v2}, Lcom/google/ads/util/a;->b(ZLjava/lang/String;)V

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/h;->h:Z

    .line 136
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Handler;

    move-object v7, v0

    new-instance v1, Lcom/google/ads/i;

    iget-object v4, p0, Lcom/google/ads/h;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/h;->l:Lcom/google/ads/AdRequest;

    iget-object v6, p0, Lcom/google/ads/h;->m:Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/i;-><init>(Lcom/google/ads/h;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/google/ads/mediation/MediationAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/google/ads/g$a;)V
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/h;->d:Z

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/h;->c:Z

    .line 255
    iput-object p2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/h$1;

    invoke-direct {v1, p0}, Lcom/google/ads/h$1;-><init>(Lcom/google/ads/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/google/ads/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/ads/g$a;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/google/ads/g$a;->d:Lcom/google/ads/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Landroid/view/View;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 3

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    .line 217
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/h$2;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/h$2;-><init>(Lcom/google/ads/h;Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_2
    const-string v1, "In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i()Lcom/google/ads/mediation/MediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()Lcom/google/ads/e;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    return-object v0
.end method

.method declared-synchronized k()V
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()Z
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
