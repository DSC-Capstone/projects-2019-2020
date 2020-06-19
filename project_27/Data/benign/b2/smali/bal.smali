.class Lbal;
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
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbcp;

.field final synthetic b:Lbdg;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lbag;


# direct methods
.method constructor <init>(Lbag;Lbcp;Lbdg;Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lbal;->d:Lbag;

    iput-object p2, p0, Lbal;->a:Lbcp;

    iput-object p3, p0, Lbal;->b:Lbdg;

    iput-object p4, p0, Lbal;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/net/InetAddress;)V
    .locals 4

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lbal;->a:Lbcp;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 390
    iget-object v0, p0, Lbal;->b:Lbdg;

    invoke-virtual {v0, p1}, Lbdg;->a(Ljava/lang/Exception;)Z

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lbal;->b:Lbdg;

    iget-object v1, p0, Lbal;->d:Lbag;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lbal;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v2, p2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Lbal;->a:Lbcp;

    invoke-static {v1, v2, v3}, Lbag;->a(Lbag;Ljava/net/InetSocketAddress;Lbcp;)Lbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbdg;->a(Lbda;)Lbdg;

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 385
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lbal;->a(Ljava/lang/Exception;Ljava/net/InetAddress;)V

    return-void
.end method
