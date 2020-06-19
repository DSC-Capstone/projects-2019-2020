.class Lbiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbdb",
        "<",
        "Lbfb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbdu;

.field final synthetic b:Lbhi;

.field final synthetic c:Lbiq;


# direct methods
.method constructor <init>(Lbiq;Lbdu;Lbhi;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lbiw;->c:Lbiq;

    iput-object p2, p0, Lbiw;->a:Lbdu;

    iput-object p3, p0, Lbiw;->b:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbfb;)V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lbiw;->a:Lbdu;

    iget-object v0, v0, Lbdu;->h:Lbcn;

    invoke-interface {v0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 427
    iget-object v0, p0, Lbiw;->b:Lbhi;

    iget-object v1, p0, Lbiw;->b:Lbhi;

    invoke-virtual {v1}, Lbhi;->b()Lbhh;

    move-result-object v1

    iget-object v1, v1, Lbhh;->g:Lbfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lbfh;->a(Lbbc;Lbfo;Lbfb;Z)Lbbc;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lbiw;->a:Lbdu;

    iget-object v1, v1, Lbdu;->f:Lbdz;

    invoke-interface {v1, v0}, Lbdz;->b(Lbbc;)Lbdz;

    .line 429
    return-void
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p2, Lbfb;

    invoke-virtual {p0, p1, p2}, Lbiw;->a(Ljava/lang/Exception;Lbfb;)V

    return-void
.end method
