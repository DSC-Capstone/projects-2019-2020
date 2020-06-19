.class public Labe;
.super Ljava/lang/Object;

# interfaces
.implements Labp;


# instance fields
.field private final a:Labf;


# direct methods
.method public constructor <init>(Labf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labe;->a:Labf;

    return-void
.end method


# virtual methods
.method public a(Laau;)Laau;
    .locals 2
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Labe;->a:Labf;

    invoke-virtual {v0}, Labf;->g()V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Labe;->a:Labf;

    iget-object v0, v0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labo;

    invoke-interface {v0}, Labo;->b()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labe;->a:Labf;

    iget-object v0, v0, Labf;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Labe;->a:Labf;

    invoke-virtual {v0}, Labf;->f()V

    iget-object v0, p0, Labe;->a:Labf;

    iget-object v0, v0, Labf;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
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
    .locals 1

    iget-object v0, p0, Labe;->a:Labf;

    invoke-virtual {v0}, Labf;->h()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method
