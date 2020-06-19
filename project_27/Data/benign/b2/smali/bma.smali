.class public Lbma;
.super Lblz;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblz;",
        "Lbdb",
        "<",
        "Lbmh",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field d:Lbjs;


# direct methods
.method public constructor <init>(Lbku;Ljava/lang/String;ZLbjs;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lblz;-><init>(Lbku;Ljava/lang/String;ZZ)V

    .line 31
    iput-object p4, p0, Lbma;->d:Lbjs;

    .line 32
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
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p2}, Lbmh;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 39
    :cond_0
    if-eqz p1, :cond_2

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbma;->a(Ljava/lang/Exception;Lbmm;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Lbmh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 46
    iget-object v1, p0, Lbma;->b:Lbku;

    iget-object v1, v1, Lbku;->x:Lbjy;

    iget-object v2, p0, Lbma;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 51
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lbmb;

    invoke-direct {v2, p0, v0, p2}, Lbmb;-><init>(Lbma;Ljava/io/File;Lbmh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p2, Lbmh;

    invoke-virtual {p0, p1, p2}, Lbma;->a(Ljava/lang/Exception;Lbmh;)V

    return-void
.end method
