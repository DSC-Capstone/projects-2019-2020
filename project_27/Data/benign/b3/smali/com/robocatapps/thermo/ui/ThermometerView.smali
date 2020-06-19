.class public Lcom/robocatapps/thermo/ui/ThermometerView;
.super Landroid/view/View;


# instance fields
.field private A:Landroid/graphics/drawable/LevelListDrawable;

.field private B:Landroid/graphics/drawable/LevelListDrawable;

.field private C:Landroid/graphics/drawable/TransitionDrawable;

.field private D:Landroid/graphics/drawable/TransitionDrawable;

.field private E:Lcom/a/a/x;

.field private F:Lcom/a/a/x;

.field private G:Lcom/a/a/x;

.field private final H:Ljava/lang/String;

.field private final I:I

.field private J:Z

.field private K:Z

.field private L:F

.field private M:Landroid/graphics/Bitmap;

.field private N:I

.field private O:I

.field private final P:Landroid/graphics/Matrix;

.field private final Q:Landroid/graphics/Paint;

.field private R:Lcom/robocatapps/thermo/ui/f;

.field private S:Lcom/a/a/ae;

.field private T:Lcom/a/a/ae;

.field private U:Lcom/a/a/ae;

.field private V:Lcom/a/a/ae;

.field private final W:Ljava/lang/Runnable;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Landroid/text/TextPaint;

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Rect;

.field private final n:Ljava/lang/String;

.field private o:Lcom/robocatapps/thermo/ui/g;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v2, -0x1

    const-wide/16 v4, 0x1f4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->m:Landroid/graphics/Rect;

    sget-object v0, Lcom/robocatapps/thermo/ui/g;->a:Lcom/robocatapps/thermo/ui/g;

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->o:Lcom/robocatapps/thermo/ui/g;

    iput-boolean v3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->p:Z

    iput-boolean v3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->q:Z

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    iput v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    iput v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->v:I

    iput-boolean v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->J:Z

    iput-boolean v3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->K:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->P:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->Q:Landroid/graphics/Paint;

    new-instance v0, Lcom/robocatapps/thermo/ui/a;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ui/a;-><init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->S:Lcom/a/a/ae;

    new-instance v0, Lcom/robocatapps/thermo/ui/b;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ui/b;-><init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->T:Lcom/a/a/ae;

    new-instance v0, Lcom/robocatapps/thermo/ui/c;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ui/c;-><init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->U:Lcom/a/a/ae;

    new-instance v0, Lcom/robocatapps/thermo/ui/d;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ui/d;-><init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->V:Lcom/a/a/ae;

    new-instance v0, Lcom/robocatapps/thermo/ui/e;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/ui/e;-><init>(Lcom/robocatapps/thermo/ui/ThermometerView;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->W:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f020046

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->y:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020057

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->z:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020054

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->w:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->x:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02001d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    const v0, 0x7f020015

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->j:I

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->c:I

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->d:I

    const v0, 0x7f0a0005

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->b:I

    const v0, 0x7f0a0006

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->a:I

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->a:I

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->b:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->i:I

    new-instance v0, Lcom/a/a/x;

    invoke-direct {v0}, Lcom/a/a/x;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    invoke-virtual {v0, v4, v5}, Lcom/a/a/x;->a(J)Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->T:Lcom/a/a/ae;

    invoke-virtual {v0, v2}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    new-instance v0, Lcom/a/a/x;

    invoke-direct {v0}, Lcom/a/a/x;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->F:Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->F:Lcom/a/a/x;

    invoke-virtual {v0, v4, v5}, Lcom/a/a/x;->a(J)Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->F:Lcom/a/a/x;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->S:Lcom/a/a/ae;

    invoke-virtual {v0, v2}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    new-instance v0, Lcom/a/a/x;

    invoke-direct {v0}, Lcom/a/a/x;-><init>()V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    invoke-virtual {v0, v4, v5}, Lcom/a/a/x;->a(J)Lcom/a/a/x;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->U:Lcom/a/a/ae;

    invoke-virtual {v0, v2}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/high16 v0, 0x7f0a0000

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->e:I

    const v0, 0x7f0a0001

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->f:I

    const v0, 0x7f0a0002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->g:I

    const v0, 0x7f0a0003

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->h:I

    const v0, 0x7f09000d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->n:Ljava/lang/String;

    const v0, 0x7f090039

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->H:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-direct {p0, v3, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(II)I

    move-result v0

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->I:I

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/ui/ThermometerView;F)F
    .locals 1

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->L:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->L:F

    return v0
.end method

.method private a(I)I
    .locals 3

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->a:I

    const/16 v1, -0x14

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->i:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/robocatapps/thermo/ui/ThermometerView;I)I
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    return p1
.end method

.method private a(Ljava/lang/String;IILandroid/graphics/Paint;)I
    .locals 2

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    if-le v0, p2, :cond_0

    add-int/lit8 v0, p3, -0x1

    int-to-float v1, p3

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move p3, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return p3
.end method

.method private a(II)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1e

    if-gez p1, :cond_0

    if-ltz p2, :cond_2

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_2

    :cond_1
    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    :cond_2
    iput-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 7

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v0, v3

    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->N:I

    sub-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->O:I

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->K:Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 6

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->y:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(II)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v4, v1, v2

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, v0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->e(Landroid/graphics/Canvas;IIII)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    :goto_0
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->B:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint;I)V
    .locals 4

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-static {}, Lcom/robocatapps/thermo/App;->a()Lcom/robocatapps/thermo/d;

    move-result-object v0

    iget-object v0, v0, Lcom/robocatapps/thermo/d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/ui/ThermometerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->J:Z

    return v0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/ui/ThermometerView;)F
    .locals 1

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->L:F

    return v0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/ui/ThermometerView;F)F
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->L:F

    return p1
.end method

.method private b(I)I
    .locals 2

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->o:Lcom/robocatapps/thermo/ui/g;

    sget-object v1, Lcom/robocatapps/thermo/ui/g;->a:Lcom/robocatapps/thermo/ui/g;

    if-ne v0, v1, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p1}, Lcom/robocatapps/thermo/model/Temperature;->celsiusToFahrenheit(I)I

    move-result p1

    goto :goto_0
.end method

.method private b(II)I
    .locals 2

    int-to-float v0, p2

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/ui/ThermometerView;I)I
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    return p1
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 12

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->z:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const/16 v2, 0xf

    invoke-direct {p0, v0, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(II)I

    move-result v0

    add-int v2, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v3, v2, v0

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    invoke-direct {p0, v0}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v0

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    invoke-virtual {v4}, Lcom/a/a/x;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->v:I

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int v8, v3, v1

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v9, v4, v2

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int v3, v1, v8

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->n:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    invoke-direct {p0, v6}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->g:I

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Ljava/lang/String;IILandroid/graphics/Paint;)I

    move-result v2

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->h:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v4, v10, v5, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->I:I

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v8

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v8

    add-int v1, v9, v11

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->I:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private declared-synchronized b(Landroid/graphics/Canvas;IIII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    :goto_0
    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    invoke-virtual {v1}, Lcom/a/a/x;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    invoke-direct {p0, v1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v1

    iput v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    invoke-virtual {p1, p4, p5, p2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->A:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/graphics/Paint;I)V
    .locals 4

    const v0, -0xaaaaab

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic c(Lcom/robocatapps/thermo/ui/ThermometerView;I)I
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->v:I

    return p1
.end method

.method private c(Landroid/graphics/Canvas;IIII)V
    .locals 4

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->x:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->j:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->u:I

    iget v3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->j:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, p4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;IIII)V
    .locals 4

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->K:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->N:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->O:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->P:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->L:F

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->M:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->P:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;IIII)V
    .locals 11

    sub-int v3, p4, p2

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->n:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    invoke-direct {p0, v4}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->J:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/robocatapps/thermo/ui/ThermometerView;->d(Landroid/graphics/Canvas;IIII)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->n:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    invoke-direct {p0, v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->e:I

    invoke-direct {p0, v0, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Landroid/graphics/Paint;I)V

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->e:I

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    invoke-direct {p0, v9, v3, v0, v2}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Ljava/lang/String;IILandroid/graphics/Paint;)I

    move-result v10

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v2, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->p:Z

    if-nez v0, :cond_2

    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, p2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v10}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Landroid/graphics/Paint;I)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->f:I

    invoke-direct {p0, v2, v4}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Landroid/graphics/Paint;I)V

    iget v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->f:I

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Ljava/lang/String;IILandroid/graphics/Paint;)I

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->I:I

    add-int/2addr v4, v0

    add-int/2addr v2, v4

    sub-int v4, p5, p3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v4, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, p2

    add-int/2addr v0, v8

    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->I:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->k:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v8

    goto :goto_2
.end method


# virtual methods
.method public a(III)V
    .locals 0

    iput p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    iput p2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    iput p3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->invalidate()V

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->J:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->q:Z

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->invalidate()V

    return-void
.end method

.method public b(III)V
    .locals 9

    const/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/a/b/ab;->a()Ljava/util/ArrayList;

    move-result-object v3

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    invoke-virtual {v0}, Lcom/a/a/x;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(II)V

    iput p2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    new-array v4, v7, [I

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    invoke-direct {p0, v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v5

    aput v5, v4, v2

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v5

    aput v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/a/a/x;->a([I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->F:Lcom/a/a/x;

    new-array v4, v7, [I

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->r:I

    aput v5, v4, v2

    aput p1, v4, v1

    invoke-virtual {v0, v4}, Lcom/a/a/x;->a([I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->F:Lcom/a/a/x;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->E:Lcom/a/a/x;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    if-eq p3, v4, :cond_0

    iget-boolean v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->q:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    new-array v5, v7, [I

    iget v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    invoke-direct {p0, v6}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {p0, p3}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(I)I

    move-result v2

    aput v2, v5, v1

    invoke-virtual {v4, v5}, Lcom/a/a/x;->a([I)V

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->G:Lcom/a/a/x;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->t:I

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v0, Lcom/a/a/x;

    invoke-direct {v0}, Lcom/a/a/x;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/a/a/x;->a(J)Lcom/a/a/x;

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->V:Lcom/a/a/ae;

    invoke-virtual {v0, v1}, Lcom/a/a/x;->a(Lcom/a/a/ae;)V

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/a/a/x;->b([F)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    invoke-virtual {v0, v3}, Lcom/a/a/d;->a(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/a/a/d;->a()V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->C:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->D:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    if-eq p2, v0, :cond_4

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->p:Z

    if-eqz v0, :cond_4

    iput p2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->s:I

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->invalidate()V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->J:Z

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->postInvalidate()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->p:Z

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    sub-int v1, v0, v6

    sub-int v0, v4, v3

    sub-int/2addr v0, v7

    sub-int v3, v0, v8

    add-int v0, v1, v6

    add-int/2addr v0, v5

    div-int/lit8 v9, v0, 0x2

    add-int v0, v3, v8

    add-int/2addr v0, v7

    div-int/lit8 v7, v0, 0x2

    iget v4, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->c:I

    iget v5, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->d:I

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v6, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v0

    if-lt v1, v6, :cond_0

    if-ge v3, v5, :cond_3

    :cond_0
    const/4 v0, 0x1

    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v3, v3

    int-to-float v6, v5

    div-float/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v9

    int-to-float v6, v7

    invoke-virtual {p1, v1, v1, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v6, v0

    :goto_0
    div-int/lit8 v0, v5, 0x2

    sub-int v8, v7, v0

    div-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v7

    div-int/lit8 v1, v4, 0x2

    sub-int v7, v9, v1

    div-int/lit8 v1, v4, 0x2

    add-int/2addr v9, v1

    iget-object v1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v8, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Landroid/graphics/Canvas;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Landroid/graphics/Canvas;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/robocatapps/thermo/ui/ThermometerView;->c(Landroid/graphics/Canvas;IIII)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v0, 0x0

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1, v9}, Lcom/robocatapps/thermo/ui/ThermometerView;->a(Landroid/graphics/Canvas;I)V

    iget-boolean v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->q:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v7}, Lcom/robocatapps/thermo/ui/ThermometerView;->b(Landroid/graphics/Canvas;I)V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    :cond_3
    move v6, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->m:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->R:Lcom/robocatapps/thermo/ui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->R:Lcom/robocatapps/thermo/ui/f;

    invoke-interface {v0}, Lcom/robocatapps/thermo/ui/f;->a()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTemperatureUnits(Lcom/robocatapps/thermo/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->o:Lcom/robocatapps/thermo/ui/g;

    invoke-virtual {p0}, Lcom/robocatapps/thermo/ui/ThermometerView;->invalidate()V

    return-void
.end method

.method public setThermometerTouchListener(Lcom/robocatapps/thermo/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/ui/ThermometerView;->R:Lcom/robocatapps/thermo/ui/f;

    return-void
.end method
