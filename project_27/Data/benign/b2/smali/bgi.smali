.class Lbgi;
.super Lbgf;
.source "SourceFile"

# interfaces
.implements Lbaw;


# instance fields
.field j:Z

.field k:Z

.field l:Lbcn;

.field final synthetic m:Lbgb;


# direct methods
.method public constructor <init>(Lbgb;Lbgk;J)V
    .locals 1

    .prologue
    .line 725
    iput-object p1, p0, Lbgi;->m:Lbgb;

    .line 726
    invoke-direct {p0, p2, p3, p4}, Lbgf;-><init>(Lbgk;J)V

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgi;->f:Z

    .line 728
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public a(Lbaz;)V
    .locals 0

    .prologue
    .line 747
    invoke-virtual {p1}, Lbaz;->m()V

    .line 748
    return-void
.end method

.method public a(Lbcn;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lbgi;->l:Lbcn;

    .line 777
    return-void
.end method

.method public a(Lbcu;)V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1}, Lbgf;->a(Ljava/lang/Exception;)V

    .line 737
    iget-boolean v0, p0, Lbgi;->j:Z

    if-eqz v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgi;->j:Z

    .line 740
    iget-object v0, p0, Lbgi;->l:Lbcn;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lbgi;->l:Lbcn;

    invoke-interface {v0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgi;->k:Z

    .line 767
    return-void
.end method

.method public g()Lbcu;
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lbgi;->k:Z

    return v0
.end method

.method public m()Lbag;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lbgi;->m:Lbgb;

    invoke-static {v0}, Lbgb;->a(Lbgb;)Lbag;

    move-result-object v0

    return-object v0
.end method
