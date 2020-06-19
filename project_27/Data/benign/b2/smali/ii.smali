.class Lii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lip;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    .line 292
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 311
    .line 312
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method

.method static synthetic a(Lii;Lig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lii;->c(Lig;Landroid/view/View;)V

    return-void
.end method

.method private c(Lig;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 270
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    const/4 v1, 0x0

    .line 272
    instance-of v2, v0, Liw;

    if-eqz v2, :cond_4

    .line 273
    check-cast v0, Liw;

    .line 275
    :goto_0
    invoke-static {p1}, Lig;->a(Lig;)Ljava/lang/Runnable;

    move-result-object v1

    .line 276
    invoke-static {p1}, Lig;->b(Lig;)Ljava/lang/Runnable;

    move-result-object v2

    .line 277
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 280
    :cond_0
    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0, p2}, Liw;->a(Landroid/view/View;)V

    .line 282
    invoke-interface {v0, p2}, Liw;->b(Landroid/view/View;)V

    .line 284
    :cond_1
    if-eqz v2, :cond_2

    .line 285
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 287
    :cond_2
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private d(Lig;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    .line 322
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lii;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 325
    :goto_0
    if-nez v0, :cond_1

    .line 326
    new-instance v0, Lij;

    invoke-direct {v0, p0, p1, p2, v1}, Lij;-><init>(Lii;Lig;Landroid/view/View;Lih;)V

    .line 327
    iget-object v1, p0, Lii;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lii;->a:Ljava/util/WeakHashMap;

    .line 330
    :cond_0
    iget-object v1, p0, Lii;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lii;->d(Lig;Landroid/view/View;)V

    .line 204
    return-void
.end method

.method public a(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lii;->d(Lig;Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public a(Lig;Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public a(Lig;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public a(Lig;Landroid/view/View;Liw;)V
    .locals 1

    .prologue
    .line 261
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public a(Lig;Landroid/view/View;Liy;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public b(Lig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p2}, Lii;->a(Landroid/view/View;)V

    .line 245
    invoke-direct {p0, p1, p2}, Lii;->c(Lig;Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public b(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lii;->d(Lig;Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public c(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lii;->d(Lig;Landroid/view/View;)V

    .line 192
    return-void
.end method
