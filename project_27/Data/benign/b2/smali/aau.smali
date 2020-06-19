.class public abstract Laau;
.super Lzr;

# interfaces
.implements Labo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Laaq;",
        "A::",
        "Lzz;",
        ">",
        "Lzr",
        "<TR;>;",
        "Labo",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final b:Laab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laab",
            "<TA;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Laab;Laag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laab",
            "<TA;>;",
            "Laag;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laag;

    invoke-interface {v0}, Laag;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lzr;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Laau;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laab;

    iput-object v0, p0, Laau;->b:Laab;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Laau;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public a(Labm;)V
    .locals 1

    iget-object v0, p0, Laau;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lzz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Laau;->b(Lzz;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Laau;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Laau;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected abstract b(Lzz;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Laau;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Labm;->a(Labo;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Laei;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Laau;->b(Lcom/google/android/gms/common/api/Status;)Laaq;

    move-result-object v0

    invoke-virtual {p0, v0}, Laau;->a(Laaq;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Laab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laab",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Laau;->b:Laab;

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
