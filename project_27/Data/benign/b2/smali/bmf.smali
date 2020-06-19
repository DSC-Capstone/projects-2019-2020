.class Lbmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbft;


# instance fields
.field a:Lbft;

.field b:Lbme;


# direct methods
.method public constructor <init>(Lbft;Lbme;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbmf;->a:Lbft;

    .line 22
    iput-object p2, p0, Lbmf;->b:Lbme;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbmf;->a:Lbft;

    invoke-interface {v0}, Lbft;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbea;Lbbf;Lbcn;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lbmf;->a:Lbft;

    invoke-interface {v0}, Lbft;->b()I

    move-result v0

    .line 28
    iget-object v1, p0, Lbmf;->a:Lbft;

    new-instance v2, Lbmg;

    invoke-direct {v2, p0, p2, v0}, Lbmg;-><init>(Lbmf;Lbbf;I)V

    invoke-interface {v1, p1, v2, p3}, Lbft;->a(Lbea;Lbbf;Lbcn;)V

    .line 75
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lbmf;->a:Lbft;

    invoke-interface {v0}, Lbft;->b()I

    move-result v0

    return v0
.end method
