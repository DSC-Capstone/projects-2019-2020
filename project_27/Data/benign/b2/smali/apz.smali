.class Lapz;
.super Ljava/lang/Object;

# interfaces
.implements Laqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laqx",
        "<",
        "Laqk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapy;


# direct methods
.method constructor <init>(Lapy;)V
    .locals 0

    iput-object p1, p0, Lapz;->a:Lapy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lapz;->a:Lapy;

    invoke-static {v0}, Lapy;->a(Lapy;)V

    return-void
.end method

.method public b()Laqk;
    .locals 1

    iget-object v0, p0, Lapz;->a:Lapy;

    invoke-virtual {v0}, Lapy;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqk;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lapz;->b()Laqk;

    move-result-object v0

    return-object v0
.end method
