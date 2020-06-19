.class Labx;
.super Law;

# interfaces
.implements Laai;
.implements Laaj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Law",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;",
        "Laai;",
        "Laaj;"
    }
.end annotation


# instance fields
.field public final i:Laag;

.field private j:Z

.field private k:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laag;)V
    .locals 0

    invoke-direct {p0, p1}, Law;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Labx;->i:Laag;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iput-object p1, p0, Labx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Labx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Labx;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Law;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0, p1, p2, p3, p4}, Laag;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-super {p0}, Law;->e()V

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0, p0}, Laag;->a(Laai;)V

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0, p0}, Laag;->a(Laaj;)V

    iget-object v0, p0, Labx;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Labx;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0}, Laag;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0}, Laag;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Labx;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0}, Laag;->b()V

    :cond_1
    return-void
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0}, Laag;->c()V

    return-void
.end method

.method protected k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Labx;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labx;->j:Z

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0, p0}, Laag;->b(Laai;)V

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0, p0}, Laag;->b(Laaj;)V

    iget-object v0, p0, Labx;->i:Laag;

    invoke-interface {v0}, Laag;->c()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Labx;->j:Z

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labx;->j:Z

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Labx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labx;->j:Z

    invoke-direct {p0, p1}, Labx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
