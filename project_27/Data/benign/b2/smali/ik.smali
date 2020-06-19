.class Lik;
.super Lii;
.source "SourceFile"


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lii;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lik;->b:Ljava/util/WeakHashMap;

    .line 500
    return-void
.end method


# virtual methods
.method public a(Lig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 438
    invoke-static {p2}, Liq;->a(Landroid/view/View;)V

    .line 439
    return-void
.end method

.method public a(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 353
    invoke-static {p2, p3}, Liq;->a(Landroid/view/View;F)V

    .line 354
    return-void
.end method

.method public a(Lig;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 343
    invoke-static {p2, p3, p4}, Liq;->a(Landroid/view/View;J)V

    .line 344
    return-void
.end method

.method public a(Lig;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 368
    invoke-static {p2, p3}, Liq;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 369
    return-void
.end method

.method public a(Lig;Landroid/view/View;Liw;)V
    .locals 1

    .prologue
    .line 478
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 479
    new-instance v0, Lil;

    invoke-direct {v0, p1}, Lil;-><init>(Lig;)V

    invoke-static {p2, v0}, Liq;->a(Landroid/view/View;Liw;)V

    .line 480
    return-void
.end method

.method public b(Lig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 473
    invoke-static {p2}, Liq;->b(Landroid/view/View;)V

    .line 474
    return-void
.end method

.method public b(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 358
    invoke-static {p2, p3}, Liq;->b(Landroid/view/View;F)V

    .line 359
    return-void
.end method

.method public c(Lig;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 428
    invoke-static {p2, p3}, Liq;->c(Landroid/view/View;F)V

    .line 429
    return-void
.end method
