.class Lxw;
.super Lyt;


# instance fields
.field final synthetic a:Lxv;


# direct methods
.method constructor <init>(Lxv;Lxr;)V
    .locals 0

    iput-object p1, p0, Lxw;->a:Lxv;

    invoke-direct {p0, p2}, Lyt;-><init>(Lxr;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lxw;->a:Lxv;

    invoke-static {v0}, Lxv;->b(Lxv;)V

    return-void
.end method
