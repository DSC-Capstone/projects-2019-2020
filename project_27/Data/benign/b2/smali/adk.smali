.class public final Ladk;
.super Ladd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ladc",
        "<TT;>.add;"
    }
.end annotation


# instance fields
.field final synthetic e:Ladc;


# direct methods
.method public constructor <init>(Ladc;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ladk;->e:Ladc;

    invoke-direct {p0, p1, p2, p3}, Ladd;-><init>(Ladc;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->b(Ladc;)Laam;

    move-result-object v0

    invoke-interface {v0, p1}, Laam;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->c(Ladc;)Ladl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ladl;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->b(Ladc;)Laam;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "PostValidationCallback should not happen when mReportProgress is false ormConnectionProgressReportCallbacks is null"

    invoke-static {v0, v2}, Laei;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ladk;->e:Ladc;

    invoke-static {v0}, Ladc;->b(Ladc;)Laam;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v2}, Laam;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
