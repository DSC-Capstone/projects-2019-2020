.class Lbev;
.super Lbcs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbaw;

.field final synthetic b:Lbeo;


# direct methods
.method constructor <init>(Lbeo;Lbaw;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lbev;->b:Lbeo;

    iput-object p2, p0, Lbev;->a:Lbaw;

    invoke-direct {p0}, Lbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Lbcs;->a(Lbbc;Lbaz;)V

    .line 330
    invoke-virtual {p2}, Lbaz;->m()V

    .line 331
    iget-object v0, p0, Lbev;->a:Lbaw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbaw;->a(Lbcn;)V

    .line 332
    iget-object v0, p0, Lbev;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V

    .line 333
    return-void
.end method
