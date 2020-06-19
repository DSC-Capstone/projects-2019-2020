.class public abstract Lnet/simonvt/menudrawer/DraggableDrawer;
.super Lnet/simonvt/menudrawer/k;


# static fields
.field private static final K:Landroid/view/animation/Interpolator;

.field private static final L:Landroid/view/animation/Interpolator;

.field protected static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final M:Ljava/lang/Runnable;

.field private N:Ljava/lang/Runnable;

.field private O:Lnet/simonvt/menudrawer/u;

.field private P:Z

.field protected b:I

.field protected final c:Ljava/lang/Runnable;

.field protected d:F

.field protected e:Z

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:J

.field protected k:Lnet/simonvt/menudrawer/u;

.field protected l:Landroid/view/VelocityTracker;

.field protected m:I

.field protected n:Z

.field protected o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Lnet/simonvt/menudrawer/o;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/o;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->K:Landroid/view/animation/Interpolator;

    new-instance v0, Lnet/simonvt/menudrawer/w;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/w;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->L:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lnet/simonvt/menudrawer/g;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/g;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    new-instance v0, Lnet/simonvt/menudrawer/h;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/h;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h:F

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/simonvt/menudrawer/g;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/g;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    new-instance v0, Lnet/simonvt/menudrawer/h;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/h;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h:F

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lnet/simonvt/menudrawer/g;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/g;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    new-instance v0, Lnet/simonvt/menudrawer/h;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/h;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h:F

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lnet/simonvt/menudrawer/g;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/g;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    new-instance v0, Lnet/simonvt/menudrawer/h;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/h;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h:F

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    return-void
.end method

.method static synthetic a(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->o()V

    return-void
.end method

.method static synthetic b(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->n()V

    return-void
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->P:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->P:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->e()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->c()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    float-to-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/u;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->c()I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->m()V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    float-to-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/u;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lnet/simonvt/menudrawer/i;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/i;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->N:Ljava/lang/Runnable;

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->N:Ljava/lang/Runnable;

    iget-wide v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j:J

    invoke-virtual {p0, v0, v1, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->p()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    sget-boolean v0, Lnet/simonvt/menudrawer/DraggableDrawer;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->P:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(I)V
.end method

.method protected a(IIZ)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->l()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->f()V

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    float-to-int v1, v0

    sub-int v3, p1, v1

    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    :goto_1
    return-void

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3

    const/high16 v4, 0x447a0000    # 1000.0f

    int-to-float v5, v3

    int-to-float v0, v0

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v4, 0x258

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v3, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/u;->a(IIIII)V

    :goto_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->a()V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->n()V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x44160000    # 600.0f

    int-to-float v4, v3

    iget v5, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->C:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/u;->a(IIIII)V

    goto :goto_3
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->b:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m:I

    new-instance v0, Lnet/simonvt/menudrawer/u;

    sget-object v1, Lnet/simonvt/menudrawer/DraggableDrawer;->L:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lnet/simonvt/menudrawer/u;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    new-instance v0, Lnet/simonvt/menudrawer/u;

    sget-object v1, Lnet/simonvt/menudrawer/DraggableDrawer;->K:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lnet/simonvt/menudrawer/u;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k:Lnet/simonvt/menudrawer/u;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->c(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o:I

    return-void
.end method

.method protected abstract a(Landroid/graphics/Canvas;I)V
.end method

.method public a(Z)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->c(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->b(Z)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract a(Landroid/view/MotionEvent;F)Z
.end method

.method protected b()V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->G:I

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->H:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->H:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->H:I

    goto :goto_0
.end method

.method protected abstract b(Landroid/graphics/Canvas;I)V
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Z
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->O:Lnet/simonvt/menudrawer/u;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/u;->e()V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    return-void
.end method

.method protected abstract c(Landroid/graphics/Canvas;I)V
.end method

.method protected abstract c(Landroid/view/MotionEvent;)V
.end method

.method protected d()V
    .locals 0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->e()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->a()V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->o()V

    return-void
.end method

.method protected abstract d(Landroid/graphics/Canvas;I)V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/k;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    float-to-int v0, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->b(Landroid/graphics/Canvas;I)V

    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->r:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->c(Landroid/graphics/Canvas;I)V

    :cond_1
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->t:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->w:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->d(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method protected abstract e()V
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->N:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    return-void
.end method

.method protected g()Z
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuSize()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->C:I

    return v0
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->G:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->I:I

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;

    invoke-virtual {p1}, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/simonvt/menudrawer/k;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->C:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    iget-boolean v0, p1, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lnet/simonvt/menudrawer/k;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;

    invoke-direct {v1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lnet/simonvt/menudrawer/DraggableDrawer$SavedState;->a:Z

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/k;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->J:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->J:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/a;->setHardwareLayersEnabled(Z)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/a;->setHardwareLayersEnabled(Z)V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->k()V

    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->C:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->D:Z

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->C:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setOffsetPixels(F)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    float-to-int v0, v0

    float-to-int v1, p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d:F

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->a(I)V

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->E:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchBezelSize(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->G:I

    return-void
.end method

.method public setTouchMode(I)V
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->I:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->I:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->b()V

    :cond_0
    return-void
.end method
