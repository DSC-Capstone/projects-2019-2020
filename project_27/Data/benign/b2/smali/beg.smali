.class Lbeg;
.super Lbcs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lbeg;->a:Lbed;

    invoke-direct {p0}, Lbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lbcs;->a(Lbbc;Lbaz;)V

    .line 88
    iget-object v0, p0, Lbeg;->a:Lbed;

    invoke-static {v0}, Lbed;->a(Lbed;)Lbaw;

    move-result-object v0

    invoke-interface {v0}, Lbaw;->d()V

    .line 89
    return-void
.end method
