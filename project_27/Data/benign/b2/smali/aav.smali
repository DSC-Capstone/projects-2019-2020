.class public Laav;
.super Ljava/lang/Object;

# interfaces
.implements Labp;


# instance fields
.field private final a:Labf;


# direct methods
.method public constructor <init>(Labf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laav;->a:Labf;

    return-void
.end method

.method private a(Labo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lzz;",
            ">(",
            "Labo",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Laav;->a:Labf;

    invoke-virtual {v0, p1}, Labf;->a(Labo;)V

    iget-object v0, p0, Laav;->a:Labf;

    invoke-interface {p1}, Labo;->d()Laab;

    move-result-object v1

    invoke-virtual {v0, v1}, Labf;->a(Laab;)Lzz;

    move-result-object v0

    invoke-interface {v0}, Lzz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laav;->a:Labf;

    iget-object v1, v1, Labf;->f:Ljava/util/Map;

    invoke-interface {p1}, Labo;->d()Laab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Labo;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Labo;->a(Lzz;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Laau;)Laau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lzz;",
            "T:",
            "Laau",
            "<+",
            "Laaq;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Laav;->a(Labo;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laav;->a(I)V

    goto :goto_0
.end method

.method public a()V
    .locals 3

    :goto_0
    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    invoke-direct {p0, v0}, Laav;->a(Labo;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GoogleApiClientConnected"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Laav;->a:Labf;

    invoke-virtual {v0}, Labf;->f()V

    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Laav;->a:Labf;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labf;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    if-nez v1, :cond_1

    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->a:Ladl;

    invoke-virtual {v0, p1}, Ladl;->a(I)V

    :cond_1
    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->a:Ladl;

    invoke-virtual {v0}, Ladl;->a()V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laav;->a:Labf;

    iget-object v0, v0, Labf;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x8

    const-string v5, "The connection to Google Play services was lost"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Labo;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lzt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lzt",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTED"

    return-object v0
.end method
