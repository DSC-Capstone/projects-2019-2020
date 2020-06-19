.class public Lnet/simonvt/menudrawer/TopDrawer;
.super Lnet/simonvt/menudrawer/x;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/x;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/x;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private d(I)V
    .locals 4

    const/high16 v3, 0x3e800000    # 0.25f

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    int-to-float v1, v0

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    sget-boolean v2, Lnet/simonvt/menudrawer/TopDrawer;->p:Z

    if-eqz v2, :cond_2

    if-lez p1, :cond_1

    neg-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/a;->getTop()I

    move-result v2

    neg-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr v0, v2

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    if-nez p1, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a(F)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/TopDrawer;->setOffsetPixels(F)V

    return-void
.end method

.method protected a(I)V
    .locals 2

    sget-boolean v0, Lnet/simonvt/menudrawer/TopDrawer;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->B:Lnet/simonvt/menudrawer/a;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->d(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->B:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->d(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;I)V
    .locals 4

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->u:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->v:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;F)Z
    .locals 2

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->E:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->g:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->H:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->E:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->g:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/Canvas;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getWidth()I

    move-result v0

    int-to-float v1, p2

    iget v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->q:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x43390000    # 185.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/TopDrawer;->a(IIZ)V

    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->E:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->g:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->H:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->E:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->g:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Landroid/graphics/Canvas;I)V
    .locals 5

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getHeight()I

    move-result v1

    int-to-float v2, p2

    iget v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->s:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->s:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x43390000    # 185.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected c(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    float-to-int v0, v0

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->e:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->m:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->i:F

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/simonvt/menudrawer/TopDrawer;->a(IIZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->E:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->j()V

    goto :goto_1
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->a(IIZ)V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->x:Landroid/view/View;

    sget v1, Lnet/simonvt/menudrawer/r;->mdActiveViewPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->x:Landroid/view/View;

    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->x:Landroid/view/View;

    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/menudrawer/TopDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lnet/simonvt/menudrawer/TopDrawer;->a:Landroid/view/animation/Interpolator;

    sub-float v0, v4, v0

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v4, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->z:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v2, v1

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->w:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected e()V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    div-int/lit8 v3, v0, 0x3

    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->k:Lnet/simonvt/menudrawer/u;

    const/16 v5, 0x1388

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/u;->a(IIIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->d:F

    float-to-int v2, v2

    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->A:Lnet/simonvt/menudrawer/a;

    iget v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->C:I

    invoke-virtual {v3, v5, v5, v0, v4}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    invoke-direct {p0, v2}, Lnet/simonvt/menudrawer/TopDrawer;->d(I)V

    sget-boolean v3, Lnet/simonvt/menudrawer/TopDrawer;->p:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v2, v5, v5, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->B:Lnet/simonvt/menudrawer/a;

    add-int/2addr v1, v2

    invoke-virtual {v3, v5, v2, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0
.end method

.method public setDropShadowColor(I)V
    .locals 5

    const v0, 0xffffff

    and-int/2addr v0, p1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    return-void
.end method
