.class Labd;
.super Ljava/lang/Object;

# interfaces
.implements Laai;
.implements Laaj;


# instance fields
.field final synthetic a:Laaw;


# direct methods
.method private constructor <init>(Laaw;)V
    .locals 0

    iput-object p1, p0, Labd;->a:Laaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laaw;Laax;)V
    .locals 0

    invoke-direct {p0, p1}, Labd;-><init>(Laaw;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0}, Laaw;->b(Laaw;)Lapa;

    move-result-object v0

    new-instance v1, Laba;

    iget-object v2, p0, Labd;->a:Laaw;

    invoke-direct {v1, v2}, Laba;-><init>(Laaw;)V

    invoke-interface {v0, v1}, Lapa;->a(Laec;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0}, Laaw;->c(Laaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0, p1}, Laaw;->a(Laaw;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0}, Laaw;->d(Laaw;)V

    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0}, Laaw;->e(Laaw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0}, Laaw;->c(Laaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Labd;->a:Laaw;

    invoke-static {v0, p1}, Laaw;->b(Laaw;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labd;->a:Laaw;

    invoke-static {v1}, Laaw;->c(Laaw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
