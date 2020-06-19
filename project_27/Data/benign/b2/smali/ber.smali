.class Lber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcq;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/net/InetAddress;

.field final synthetic c:Lbep;


# direct methods
.method constructor <init>(Lbep;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lber;->c:Lbep;

    iput-object p2, p0, Lber;->a:Ljava/lang/String;

    iput-object p3, p0, Lber;->b:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbcw;Lbcn;)V
    .locals 8

    .prologue
    .line 223
    iget-object v0, p0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->b:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempting connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lber;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->n:Lbeo;

    iget-object v0, v0, Lbeo;->h:Lbdj;

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v6

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lber;->b:Ljava/net/InetAddress;

    iget-object v1, p0, Lber;->c:Lbep;

    iget v1, v1, Lbep;->m:I

    invoke-direct {v7, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v0, p0, Lber;->c:Lbep;

    iget-object v0, v0, Lbep;->n:Lbeo;

    iget-object v1, p0, Lber;->c:Lbep;

    iget-object v1, v1, Lbep;->b:Lbds;

    iget-object v2, p0, Lber;->c:Lbep;

    iget-object v2, v2, Lbep;->c:Landroid/net/Uri;

    iget-object v3, p0, Lber;->c:Lbep;

    iget v3, v3, Lbep;->m:I

    const/4 v4, 0x0

    new-instance v5, Lbes;

    invoke-direct {v5, p0, p2}, Lbes;-><init>(Lber;Lbcn;)V

    invoke-virtual/range {v0 .. v5}, Lbeo;->a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lbag;->a(Ljava/net/InetSocketAddress;Lbcp;)Lbcv;

    .line 254
    return-void
.end method
