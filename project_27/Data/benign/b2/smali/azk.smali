.class final Lazk;
.super Lawg;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1598
    invoke-direct {p0}, Lawg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)V
    .locals 3

    .prologue
    .line 1600
    instance-of v0, p1, Laxi;

    if-eqz v0, :cond_0

    .line 1601
    check-cast p1, Laxi;

    invoke-virtual {p1}, Laxi;->o()V

    .line 1619
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-static {p1}, Lazj;->a(Lazj;)I

    move-result v0

    .line 1605
    if-nez v0, :cond_1

    .line 1606
    invoke-static {p1}, Lazj;->b(Lazj;)I

    move-result v0

    .line 1608
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1609
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lazj;->a(Lazj;I)I

    goto :goto_0

    .line 1610
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1611
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lazj;->a(Lazj;I)I

    goto :goto_0

    .line 1612
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1613
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lazj;->a(Lazj;I)I

    goto :goto_0

    .line 1615
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1616
    invoke-static {p1}, Lazj;->c(Lazj;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lazj;->d(Lazj;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1617
    invoke-virtual {p1}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
