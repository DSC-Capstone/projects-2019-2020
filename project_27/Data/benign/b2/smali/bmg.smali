.class Lbmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbf;


# instance fields
.field a:I

.field final synthetic b:Lbbf;

.field final synthetic c:I

.field final synthetic d:Lbmf;


# direct methods
.method constructor <init>(Lbmf;Lbbf;I)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbmg;->d:Lbmf;

    iput-object p2, p0, Lbmg;->b:Lbbf;

    iput p3, p0, Lbmg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbmg;->b:Lbbf;

    invoke-interface {v0}, Lbbf;->a()V

    .line 58
    return-void
.end method

.method public a(Lbaz;)V
    .locals 6

    .prologue
    .line 33
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v0

    .line 34
    iget-object v1, p0, Lbmg;->b:Lbbf;

    invoke-interface {v1, p1}, Lbbf;->a(Lbaz;)V

    .line 35
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 36
    iget v1, p0, Lbmg;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lbmg;->a:I

    .line 37
    iget-object v0, p0, Lbmg;->d:Lbmf;

    iget-object v0, v0, Lbmf;->b:Lbme;

    iget v1, p0, Lbmg;->a:I

    int-to-long v2, v1

    iget v1, p0, Lbmg;->c:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lbme;->a(JJ)V

    .line 38
    return-void
.end method

.method public a(Lbcn;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbmg;->b:Lbbf;

    invoke-interface {v0, p1}, Lbbf;->a(Lbcn;)V

    .line 63
    return-void
.end method

.method public a(Lbcu;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbmg;->b:Lbbf;

    invoke-interface {v0, p1}, Lbbf;->a(Lbcu;)V

    .line 43
    return-void
.end method

.method public g()Lbcu;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbmg;->b:Lbbf;

    invoke-interface {v0}, Lbbf;->g()Lbcu;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbmg;->b:Lbbf;

    invoke-interface {v0}, Lbbf;->i()Z

    move-result v0

    return v0
.end method
