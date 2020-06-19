.class Labh;
.super Labn;


# instance fields
.field final synthetic a:Labf;


# direct methods
.method constructor <init>(Labf;)V
    .locals 0

    iput-object p1, p0, Labh;->a:Labf;

    invoke-direct {p0, p1}, Labn;-><init>(Labf;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Labh;->a:Labf;

    invoke-static {v0}, Labf;->a(Labf;)Labp;

    move-result-object v0

    invoke-interface {v0, p1}, Labp;->a(Landroid/os/Bundle;)V

    return-void
.end method
