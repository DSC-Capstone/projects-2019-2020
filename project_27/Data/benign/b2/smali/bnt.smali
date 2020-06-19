.class public Lbnt;
.super Lboj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lboj;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbku;Ljava/lang/String;Ljava/lang/String;IIZ)Lbda;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lbda",
            "<",
            "Lbmm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p4, :cond_0

    const-string v0, "file:/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 39
    :cond_1
    new-instance v2, Lbdg;

    invoke-direct {v2}, Lbdg;-><init>()V

    .line 42
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v0, Lbnu;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lbnu;-><init>(Lbnt;Lbdg;Ljava/lang/String;Lbku;IIZLjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lbku;Lbea;Lbdb;)Lbda;
    .locals 7
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
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p2}, Lbea;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v4, v0

    .line 98
    :goto_0
    return-object v4

    .line 88
    :cond_0
    new-instance v4, Lbnw;

    invoke-direct {v4, v0}, Lbnw;-><init>(Lbnu;)V

    .line 89
    invoke-virtual {p1}, Lbku;->e()Lbdj;

    move-result-object v0

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v6

    new-instance v0, Lbnv;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbnv;-><init>(Lbnt;Lbea;Lbku;Lbnw;Lbdb;)V

    invoke-virtual {v6, v0}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_0
.end method
