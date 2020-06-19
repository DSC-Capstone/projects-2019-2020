.class Lbiv;
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
        "Lbhh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbds;

.field final synthetic b:Lbde;

.field final synthetic c:Lbiq;


# direct methods
.method constructor <init>(Lbiq;Lbds;Lbde;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lbiv;->c:Lbiq;

    iput-object p2, p0, Lbiv;->a:Lbds;

    iput-object p3, p0, Lbiv;->b:Lbde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbhh;)V
    .locals 3

    .prologue
    .line 370
    instance-of v0, p1, Lbiy;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lbiv;->a:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    const-string v1, "spdy not available"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lbiv;->b:Lbde;

    iget-object v1, p0, Lbiv;->c:Lbiq;

    iget-object v2, p0, Lbiv;->a:Lbds;

    invoke-static {v1, v2}, Lbiq;->a(Lbiq;Lbds;)Lbcv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbde;->b(Lbcv;)Lbde;

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    if-eqz p1, :cond_2

    .line 376
    iget-object v0, p0, Lbiv;->b:Lbde;

    invoke-virtual {v0}, Lbde;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lbiv;->a:Lbds;

    iget-object v0, v0, Lbds;->a:Lbcp;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lbiv;->a:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using existing spdy connection for host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbiv;->a:Lbds;

    iget-object v2, v2, Lbds;->j:Lbea;

    invoke-virtual {v2}, Lbea;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lbiv;->b:Lbde;

    invoke-virtual {v0}, Lbde;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lbiv;->c:Lbiq;

    iget-object v1, p0, Lbiv;->a:Lbds;

    iget-object v2, p0, Lbiv;->a:Lbds;

    iget-object v2, v2, Lbds;->a:Lbcp;

    invoke-static {v0, v1, p2, v2}, Lbiq;->a(Lbiq;Lbds;Lbhh;Lbcp;)V

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 367
    check-cast p2, Lbhh;

    invoke-virtual {p0, p1, p2}, Lbiv;->a(Ljava/lang/Exception;Lbhh;)V

    return-void
.end method
