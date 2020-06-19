.class Lblw;
.super Lblz;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblz;",
        "Lbdb",
        "<",
        "Lbmh",
        "<",
        "Lbaz;",
        ">;>;"
    }
.end annotation


# instance fields
.field d:I

.field e:I


# direct methods
.method public constructor <init>(Lbku;Ljava/lang/String;ZIIZ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p6}, Lblz;-><init>(Lbku;Ljava/lang/String;ZZ)V

    .line 23
    iput p4, p0, Lblw;->d:I

    .line 24
    iput p5, p0, Lblw;->e:I

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbmh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lbmh",
            "<",
            "Lbaz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p2}, Lbmh;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lblw;->a(Ljava/lang/Exception;Lbmm;)V

    .line 90
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Lbmh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaz;

    .line 37
    iget-object v1, p0, Lblw;->b:Lbku;

    iget-object v1, v1, Lbku;->x:Lbjy;

    iget-object v2, p0, Lblw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 38
    invoke-virtual {v0}, Lbaz;->m()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lblx;

    invoke-direct {v2, p0, v0, p2}, Lblx;-><init>(Lblw;Lbaz;Lbmh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Lbmh;

    invoke-virtual {p0, p1, p2}, Lblw;->a(Ljava/lang/Exception;Lbmh;)V

    return-void
.end method
