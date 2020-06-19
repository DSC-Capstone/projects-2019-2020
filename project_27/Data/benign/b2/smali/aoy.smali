.class final Laoy;
.super Ljava/lang/Object;

# interfaces
.implements Laaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laaa",
        "<",
        "Latw;",
        "Lapb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lacx;Lapb;Laai;Laaj;)Latw;
    .locals 8

    if-nez p4, :cond_0

    sget-object v4, Lapb;->a:Lapb;

    :goto_0
    new-instance v0, Latw;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Latw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lacx;Lapb;Laai;Laaj;Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lacx;Ljava/lang/Object;Laai;Laaj;)Lzz;
    .locals 7

    move-object v4, p4

    check-cast v4, Lapb;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Laoy;->a(Landroid/content/Context;Landroid/os/Looper;Lacx;Lapb;Laai;Laaj;)Latw;

    move-result-object v0

    return-object v0
.end method
