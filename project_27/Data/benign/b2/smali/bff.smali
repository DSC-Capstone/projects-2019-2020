.class public Lbff;
.super Lbfs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lbfs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbdx;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p1, Lbdx;->c:Ljava/lang/String;

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)Lbfo;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    sget-object v1, Lbfo;->a:Lbfo;

    if-eq v0, v1, :cond_1

    sget-object v1, Lbfo;->b:Lbfo;

    if-eq v0, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p1, Lbdx;->f:Lbdz;

    invoke-interface {v0}, Lbdz;->e_()Lbbf;

    move-result-object v0

    instance-of v0, v0, Lbgw;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p1, Lbdx;->f:Lbdz;

    invoke-interface {v0}, Lbdz;->e_()Lbbf;

    move-result-object v0

    invoke-interface {v0}, Lbbf;->a()V

    goto :goto_0
.end method

.method public a(Lbdu;)Z
    .locals 4

    .prologue
    .line 20
    iget-object v0, p1, Lbdu;->c:Ljava/lang/String;

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)Lbfo;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    sget-object v1, Lbfo;->a:Lbfo;

    if-eq v0, v1, :cond_0

    sget-object v1, Lbfo;->b:Lbfo;

    if-eq v0, v1, :cond_0

    .line 22
    invoke-super {p0, p1}, Lbfs;->a(Lbdu;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 24
    :cond_0
    iget-object v0, p1, Lbdu;->j:Lbea;

    .line 25
    iget-object v1, p1, Lbdu;->j:Lbea;

    invoke-virtual {v1}, Lbea;->g()Lbft;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v1}, Lbft;->b()I

    move-result v2

    if-ltz v2, :cond_2

    .line 29
    invoke-virtual {v0}, Lbea;->e()Lbfb;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-interface {v1}, Lbft;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    .line 30
    iget-object v1, p1, Lbdu;->f:Lbdz;

    iget-object v2, p1, Lbdu;->e:Lbaw;

    invoke-interface {v1, v2}, Lbdz;->a(Lbbf;)Lbdz;

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lbea;->a()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lbea;->e()Lbfb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbfb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbea;->b(Ljava/lang/String;)V

    .line 41
    iget-object v0, p1, Lbdu;->e:Lbaw;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p1, Lbdu;->g:Lbcn;

    invoke-static {v0, v1, v2}, Lbch;->a(Lbbf;[BLbcn;)V

    .line 43
    new-instance v0, Lbfg;

    invoke-direct {v0, p0, p1}, Lbfg;-><init>(Lbff;Lbdu;)V

    .line 91
    new-instance v1, Lbbp;

    invoke-direct {v1}, Lbbp;-><init>()V

    .line 92
    iget-object v2, p1, Lbdu;->e:Lbaw;

    invoke-interface {v2, v1}, Lbaw;->a(Lbcr;)V

    .line 93
    invoke-virtual {v1, v0}, Lbbp;->a(Lbbq;)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Lbea;->e()Lbfb;

    move-result-object v1

    const-string v2, "Transfer-Encoding"

    const-string v3, "Chunked"

    invoke-virtual {v1, v2, v3}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    .line 33
    iget-object v1, p1, Lbdu;->f:Lbdz;

    new-instance v2, Lbgw;

    iget-object v3, p1, Lbdu;->e:Lbaw;

    invoke-direct {v2, v3}, Lbgw;-><init>(Lbbf;)V

    invoke-interface {v1, v2}, Lbdz;->a(Lbbf;)Lbdz;

    goto :goto_1
.end method
