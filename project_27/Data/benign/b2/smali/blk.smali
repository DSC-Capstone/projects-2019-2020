.class Lblk;
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

.field final synthetic b:Z

.field final synthetic c:Lbbf;

.field final synthetic m:Ljava/lang/Object;

.field final synthetic n:Lble;


# direct methods
.method constructor <init>(Lble;Ljava/lang/Runnable;ZLbbf;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lblk;->n:Lble;

    iput-boolean p3, p0, Lblk;->b:Z

    iput-object p4, p0, Lblk;->c:Lbbf;

    iput-object p5, p0, Lblk;->m:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lblp;-><init>(Lble;Ljava/lang/Runnable;)V

    .line 589
    iput-object p0, p0, Lblk;->a:Lblp;

    return-void
.end method


# virtual methods
.method protected a(Lbmd;)V
    .locals 3

    .prologue
    .line 592
    invoke-super {p0, p1}, Lblp;->a(Lbmd;)V

    .line 593
    iget-object v0, p0, Lblk;->t:Lbbc;

    iget-object v1, p0, Lblk;->c:Lbbf;

    new-instance v2, Lbll;

    invoke-direct {v2, p0}, Lbll;-><init>(Lblk;)V

    invoke-static {v0, v1, v2}, Lbch;->a(Lbbc;Lbbf;Lbcn;)V

    .line 599
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 581
    check-cast p1, Lbmd;

    invoke-virtual {p0, p1}, Lblk;->a(Lbmd;)V

    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Lblp;->d()V

    .line 585
    iget-boolean v0, p0, Lblk;->b:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lblk;->c:Lbbf;

    invoke-interface {v0}, Lbbf;->a()V

    .line 587
    :cond_0
    return-void
.end method
