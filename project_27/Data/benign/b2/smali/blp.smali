.class Lblp;
.super Lbdi;
.source "SourceFile"

# interfaces
.implements Lbnh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbdi",
        "<TT;",
        "Lbmd;",
        ">;",
        "Lbnh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field o:Lbea;

.field p:Lbea;

.field q:Lbmi;

.field r:Ljava/lang/Runnable;

.field s:Lbkt;

.field t:Lbbc;

.field final synthetic u:Lble;


# direct methods
.method public constructor <init>(Lble;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 438
    iput-object p1, p0, Lblp;->u:Lble;

    invoke-direct {p0}, Lbdi;-><init>()V

    .line 439
    iput-object p2, p0, Lblp;->r:Ljava/lang/Runnable;

    .line 440
    iget-object v0, p1, Lble;->a:Lbku;

    iget-object v1, p1, Lble;->b:Lbkm;

    invoke-virtual {v1}, Lbkm;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lbku;->a(Lbda;Ljava/lang/Object;)V

    .line 441
    iget-object v0, p1, Lble;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p1, Lble;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 444
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_2

    .line 446
    iget-object v2, p1, Lble;->a:Lbku;

    invoke-virtual {v2, p0, v0}, Lbku;->a(Lbda;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Lbdi;->a()V

    .line 453
    iget-object v0, p0, Lblp;->t:Lbbc;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lblp;->t:Lbbc;

    invoke-interface {v0}, Lbbc;->d()V

    .line 455
    :cond_0
    iget-object v0, p0, Lblp;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lblp;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 457
    :cond_1
    return-void
.end method

.method protected a(Lbmd;)V
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p1}, Lbmd;->a()Lbbc;

    move-result-object v0

    iput-object v0, p0, Lblp;->t:Lbbc;

    .line 468
    invoke-virtual {p1}, Lbmd;->c()Lbmi;

    move-result-object v0

    iput-object v0, p0, Lblp;->q:Lbmi;

    .line 469
    invoke-virtual {p1}, Lbmd;->d()Lbkt;

    move-result-object v0

    iput-object v0, p0, Lblp;->s:Lbkt;

    .line 470
    invoke-virtual {p1}, Lbmd;->e()Lbea;

    move-result-object v0

    iput-object v0, p0, Lblp;->p:Lbea;

    .line 472
    iget-object v0, p0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->A:Lbks;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p1}, Lbmd;->d()Lbkt;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lblp;->u:Lble;

    iget-object v1, v1, Lble;->c:Landroid/os/Handler;

    new-instance v2, Lblr;

    invoke-direct {v2, p0, v0}, Lblr;-><init>(Lblp;Lbkt;)V

    invoke-static {v1, v2}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 484
    :cond_0
    invoke-virtual {p1}, Lbmd;->b()J

    move-result-wide v2

    .line 486
    iget-object v0, p0, Lblp;->t:Lbbc;

    instance-of v0, v0, Lbbg;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Lbbl;

    invoke-direct {v0}, Lbbl;-><init>()V

    .line 488
    iget-object v1, p0, Lblp;->t:Lbbc;

    invoke-interface {v0, v1}, Lbbg;->a(Lbbc;)V

    .line 493
    :goto_0
    iput-object v0, p0, Lblp;->t:Lbbc;

    .line 494
    new-instance v1, Lbls;

    invoke-direct {v1, p0, v2, v3}, Lbls;-><init>(Lblp;J)V

    invoke-interface {v0, v1}, Lbbg;->a(Lbbh;)V

    .line 543
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lblp;->t:Lbbc;

    check-cast v0, Lbbg;

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 409
    check-cast p1, Lbmd;

    invoke-virtual {p0, p1}, Lblp;->a(Lbmd;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;Ljava/lang/Object;)Lbmh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lbmh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lbmh;

    iget-object v1, p0, Lblp;->p:Lbea;

    iget-object v2, p0, Lblp;->q:Lbmi;

    iget-object v3, p0, Lblp;->s:Lbkt;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbmh;-><init>(Lbea;Lbmi;Lbkt;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lblp;->u:Lble;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lble;->a(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public l()Lbda;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbda",
            "<",
            "Lbmh",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    .line 424
    new-instance v1, Lblq;

    invoke-direct {v1, p0, v0}, Lblq;-><init>(Lblp;Lbdg;)V

    invoke-virtual {p0, v1}, Lblp;->d(Lbdb;)Lbdg;

    .line 434
    invoke-virtual {v0, p0}, Lbdg;->c(Lbcv;)Lbdg;

    .line 435
    return-object v0
.end method
