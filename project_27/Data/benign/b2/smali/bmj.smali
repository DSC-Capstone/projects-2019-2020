.class Lbmj;
.super Lbkf;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkf;",
        "Lbdb",
        "<",
        "Lbmm;",
        ">;"
    }
.end annotation


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbmt;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbmr;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbku;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lbmt;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lbmr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lbkf;-><init>(Lbku;Ljava/lang/String;Z)V

    .line 36
    iput-object p4, p0, Lbmj;->d:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lbmj;->f:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lbmj;->e:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Exception;Lbmm;)V
    .locals 2

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbmj;->a(Ljava/lang/Exception;Lbmm;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lbmj;->b:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v1, p0, Lbmj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 53
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lbmk;

    invoke-direct {v1, p0, p2}, Lbmk;-><init>(Lbmj;Lbmm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p2, Lbmm;

    invoke-virtual {p0, p1, p2}, Lbmj;->b(Ljava/lang/Exception;Lbmm;)V

    return-void
.end method
