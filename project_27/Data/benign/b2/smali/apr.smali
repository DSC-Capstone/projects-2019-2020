.class final Lapr;
.super Ljava/lang/Object;

# interfaces
.implements Laaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laaa",
        "<",
        "Laqt;",
        "Lzw;",
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

.method public a(Landroid/content/Context;Landroid/os/Looper;Lacx;Lzw;Laai;Laaj;)Laqt;
    .locals 7

    new-instance v0, Laqt;

    const-string v5, "locationServices"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Laqt;-><init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;)V

    return-object v0
.end method

.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lacx;Ljava/lang/Object;Laai;Laaj;)Lzz;
    .locals 7

    move-object v4, p4

    check-cast v4, Lzw;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lapr;->a(Landroid/content/Context;Landroid/os/Looper;Lacx;Lzw;Laai;Laaj;)Laqt;

    move-result-object v0

    return-object v0
.end method
