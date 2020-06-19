.class Lblm;
.super Lblp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lblp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblp",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lbjd;

.field final synthetic c:Lble;


# direct methods
.method constructor <init>(Lble;Ljava/lang/Runnable;Lbjd;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lblm;->c:Lble;

    iput-object p3, p0, Lblm;->b:Lbjd;

    invoke-direct {p0, p1, p2}, Lblp;-><init>(Lble;Ljava/lang/Runnable;)V

    .line 626
    iput-object p0, p0, Lblm;->a:Lblp;

    return-void
.end method


# virtual methods
.method protected a(Lbmd;)V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0, p1}, Lblp;->a(Lbmd;)V

    .line 630
    iget-object v0, p0, Lblm;->b:Lbjd;

    iget-object v1, p0, Lblm;->t:Lbbc;

    invoke-interface {v0, v1}, Lbjd;->a(Lbbc;)Lbda;

    move-result-object v0

    new-instance v1, Lbln;

    invoke-direct {v1, p0}, Lbln;-><init>(Lblm;)V

    invoke-interface {v0, v1}, Lbda;->a(Lbdb;)Lbda;

    .line 636
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, Lbmd;

    invoke-virtual {p0, p1}, Lblm;->a(Lbmd;)V

    return-void
.end method
