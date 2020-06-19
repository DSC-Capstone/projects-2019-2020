.class public Llv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field b:Llw;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 264
    new-instance v0, Llz;

    invoke-direct {v0}, Llz;-><init>()V

    iput-object v0, p0, Llv;->b:Llw;

    .line 270
    :goto_0
    iget-object v0, p0, Llv;->b:Llw;

    invoke-interface {v0, p2, p3}, Llw;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llv;->a:Ljava/lang/Object;

    .line 271
    return-void

    .line 265
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 266
    new-instance v0, Lly;

    invoke-direct {v0}, Lly;-><init>()V

    iput-object v0, p0, Llv;->b:Llw;

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Llx;

    invoke-direct {v0}, Llx;-><init>()V

    iput-object v0, p0, Llv;->b:Llw;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Llv;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 256
    return-void
.end method

.method public static a(Landroid/content/Context;)Llv;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llv;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Llv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Llv;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Llv;

    invoke-direct {v0, p0, p1}, Llv;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 6

    .prologue
    .line 352
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llw;->a(Ljava/lang/Object;IIII)V

    .line 353
    return-void
.end method

.method public a(IIIII)V
    .locals 7

    .prologue
    .line 369
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Llw;->a(Ljava/lang/Object;IIIII)V

    .line 370
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 10

    .prologue
    .line 393
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Llw;->a(Ljava/lang/Object;IIIIIIII)V

    .line 394
    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 12

    .prologue
    .line 421
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Llw;->a(Ljava/lang/Object;IIIIIIIIII)V

    .line 423
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()F
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Llv;->b:Llw;

    iget-object v1, p0, Llv;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llw;->f(Ljava/lang/Object;)V

    .line 431
    return-void
.end method
