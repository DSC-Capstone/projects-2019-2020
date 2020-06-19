.class public Lboc;
.super Lboi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lboi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbku;Ljava/lang/String;Ljava/lang/String;IIZ)Lbda;
    .locals 7
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
    .line 24
    if-eqz p4, :cond_0

    const-string v0, "package:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_0
    return-object v5

    .line 27
    :cond_1
    new-instance v5, Lbdg;

    invoke-direct {v5}, Lbdg;-><init>()V

    .line 28
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lbod;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbod;-><init>(Lboc;Ljava/lang/String;Lbku;Ljava/lang/String;Lbdg;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
