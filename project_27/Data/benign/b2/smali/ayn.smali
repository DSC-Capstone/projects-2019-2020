.class final Layn;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 484
    invoke-virtual {p1}, Lazj;->j()V

    .line 485
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 480
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Layn;->a(Lazm;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Lazm;Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 492
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lazm;->b(Ljava/lang/String;)Lazm;

    .line 493
    return-void

    .line 492
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Layn;->a(Lazj;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
