.class public Lbkx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbnq;

.field final synthetic b:Lbku;


# direct methods
.method public constructor <init>(Lbku;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lbkx;->b:Lbku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Lbky;

    invoke-direct {v0, p0}, Lbky;-><init>(Lbkx;)V

    iput-object v0, p0, Lbkx;->a:Lbnq;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lauj;
    .locals 2

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkx;->b:Lbku;

    iget-object v0, v0, Lbku;->t:Lauj;

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lbkx;->b:Lbku;

    new-instance v1, Lauj;

    invoke-direct {v1}, Lauj;-><init>()V

    iput-object v1, v0, Lbku;->t:Lauj;

    .line 497
    :cond_0
    iget-object v0, p0, Lbkx;->b:Lbku;

    iget-object v0, v0, Lbku;->t:Lauj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lbmc;)Lbkx;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lbkx;->b:Lbku;

    iget-object v0, v0, Lbku;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-object p0
.end method

.method public b()Lbnq;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lbkx;->a:Lbnq;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbmc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lbkx;->b:Lbku;

    iget-object v0, v0, Lbku;->v:Ljava/util/ArrayList;

    return-object v0
.end method
