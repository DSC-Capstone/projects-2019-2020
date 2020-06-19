.class public Lbbl;
.super Lbbd;
.source "SourceFile"

# interfaces
.implements Lbbc;
.implements Lbbg;
.implements Lbcr;
.implements Lbke;


# instance fields
.field c:Z

.field private d:Lbbc;

.field private e:Lbbh;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lbbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lbbl;->d:Lbbc;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lbbl;->d:Lbbc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbbc;->a(Lbcr;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lbbl;->d:Lbbc;

    .line 20
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0, p0}, Lbbc;->a(Lbcr;)V

    .line 21
    iget-object v0, p0, Lbbl;->d:Lbbc;

    new-instance v1, Lbbm;

    invoke-direct {v1, p0}, Lbbm;-><init>(Lbbl;)V

    invoke-interface {v0, v1}, Lbbc;->b(Lbcn;)V

    .line 27
    return-void
.end method

.method public a(Lbbc;Lbaz;)V
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lbbl;->c:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p2}, Lbaz;->m()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    iget v0, p0, Lbbl;->f:I

    invoke-virtual {p2}, Lbaz;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lbbl;->f:I

    .line 56
    :cond_2
    invoke-static {p0, p2}, Lbch;->a(Lbbc;Lbaz;)V

    .line 57
    if-eqz p2, :cond_3

    .line 58
    iget v0, p0, Lbbl;->f:I

    invoke-virtual {p2}, Lbaz;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lbbl;->f:I

    .line 59
    :cond_3
    iget-object v0, p0, Lbbl;->e:Lbbh;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lbbl;->e:Lbbh;

    iget v1, p0, Lbbl;->f:I

    invoke-interface {v0, v1}, Lbbh;->a(I)V

    goto :goto_0
.end method

.method public a(Lbbh;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbbl;->e:Lbbh;

    .line 42
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbl;->c:Z

    .line 94
    iget-object v0, p0, Lbbl;->d:Lbbc;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->d()V

    .line 96
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->j()V

    .line 73
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->k()V

    .line 78
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->l()Z

    move-result v0

    return v0
.end method

.method public m()Lbag;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->m()Lbag;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbbl;->d:Lbbc;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbbl;->d:Lbbc;

    invoke-interface {v0}, Lbbc;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
