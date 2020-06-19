.class public Lgm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lgw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1488
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1489
    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    .line 1507
    :goto_0
    return-void

    .line 1490
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1491
    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1492
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 1493
    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1494
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1495
    new-instance v0, Lgs;

    invoke-direct {v0}, Lgs;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1496
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 1497
    new-instance v0, Lgr;

    invoke-direct {v0}, Lgr;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1498
    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1499
    new-instance v0, Lgq;

    invoke-direct {v0}, Lgq;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1500
    :cond_5
    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 1501
    new-instance v0, Lgp;

    invoke-direct {v0}, Lgp;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1502
    :cond_6
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 1503
    new-instance v0, Lgo;

    invoke-direct {v0}, Lgo;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0

    .line 1505
    :cond_7
    new-instance v0, Lgn;

    invoke-direct {v0}, Lgn;-><init>()V

    sput-object v0, Lgm;->a:Lgw;

    goto :goto_0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 2069
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1, p2}, Lgw;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1542
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Liz;)Liz;
    .locals 1

    .prologue
    .line 2636
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Liz;)Liz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2294
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;F)V

    .line 2295
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 1743
    sget-object v0, Lgm;->a:Lgw;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lgw;->a(Landroid/view/View;IIII)V

    .line 1744
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1915
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1, p2}, Lgw;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1916
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1992
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1993
    return-void
.end method

.method public static a(Landroid/view/View;Ldm;)V
    .locals 1

    .prologue
    .line 1679
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Ldm;)V

    .line 1680
    return-void
.end method

.method public static a(Landroid/view/View;Lge;)V
    .locals 1

    .prologue
    .line 2620
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Lge;)V

    .line 2621
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1757
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1774
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1, p2, p3}, Lgw;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1775
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2664
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;Z)V

    .line 2665
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1517
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1725
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->b(Landroid/view/View;)V

    .line 1726
    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2310
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->b(Landroid/view/View;F)V

    .line 2311
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2677
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->b(Landroid/view/View;Z)V

    .line 2678
    return-void
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1528
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1792
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2326
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->c(Landroid/view/View;F)V

    .line 2327
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1816
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->c(Landroid/view/View;I)V

    .line 1817
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1936
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2416
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->d(Landroid/view/View;F)V

    .line 2417
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2007
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2504
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0, p1}, Lgw;->e(Landroid/view/View;F)V

    .line 2505
    return-void
.end method

.method public static f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2052
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2108
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2246
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->h(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2268
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)Lig;
    .locals 1

    .prologue
    .line 2280
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->j(Landroid/view/View;)Lig;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2561
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2569
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->l(Landroid/view/View;)V

    .line 2570
    return-void
.end method

.method public static m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2590
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->m(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2611
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->n(Landroid/view/View;)V

    .line 2612
    return-void
.end method

.method public static o(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2819
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->o(Landroid/view/View;)V

    .line 2820
    return-void
.end method

.method public static p(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2949
    sget-object v0, Lgm;->a:Lgw;

    invoke-interface {v0, p0}, Lgw;->p(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
