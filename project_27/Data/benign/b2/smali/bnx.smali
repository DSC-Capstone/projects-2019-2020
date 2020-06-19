.class public Lbnx;
.super Lboi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lboi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbku;Lbea;Lbdb;)Lbda;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku;",
            "Lbea;",
            "Lbdb",
            "<",
            "Lbmd;",
            ">;)",
            "Lbda",
            "<",
            "Lbbc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p2}, Lbea;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbku;->e()Lbdj;

    move-result-object v0

    new-instance v1, Lbny;

    invoke-direct {v1, p0, p3}, Lbny;-><init>(Lbnx;Lbdb;)V

    invoke-virtual {v0, p2, v1}, Lbdj;->a(Lbea;Lbgr;)Lbda;

    move-result-object v0

    goto :goto_0
.end method
