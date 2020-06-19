.class public abstract Lnet/simonvt/menudrawer/x;
.super Lnet/simonvt/menudrawer/DraggableDrawer;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/x;->E:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/x;->setOffsetPixels(F)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->c()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->f()V

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/x;->setDrawerState(I)V

    :cond_0
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/x;->E:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/x;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v3, p0, Lnet/simonvt/menudrawer/x;->I:I

    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/x;->e:Z

    if-eqz v3, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/x;->e:Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/x;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/x;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/x;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/x;->i:F

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/x;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/x;->E:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/x;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->c()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->f()V

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/x;->e:Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/x;->h:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/x;->i:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lnet/simonvt/menudrawer/x;->b:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    invoke-virtual {p0, p1, v4}, Lnet/simonvt/menudrawer/x;->a(Landroid/view/MotionEvent;F)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/x;->setDrawerState(I)V

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/x;->e:Z

    iput v1, p0, Lnet/simonvt/menudrawer/x;->h:F

    iput v3, p0, Lnet/simonvt/menudrawer/x;->i:F

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/x;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/x;->C:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->i()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->j()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/x;->D:Z

    if-nez v2, :cond_2

    int-to-float v2, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lnet/simonvt/menudrawer/x;->C:I

    :cond_2
    iget v2, p0, Lnet/simonvt/menudrawer/x;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lnet/simonvt/menudrawer/x;->C:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/x;->setOffsetPixels(F)V

    :cond_3
    invoke-static {p1, v5, v0}, Lnet/simonvt/menudrawer/x;->getChildMeasureSpec(III)I

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/x;->C:I

    invoke-static {p1, v5, v3}, Lnet/simonvt/menudrawer/x;->getChildMeasureSpec(III)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/menudrawer/x;->A:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v2, v3}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-static {p1, v5, v0}, Lnet/simonvt/menudrawer/x;->getChildMeasureSpec(III)I

    move-result v2

    invoke-static {p1, v5, v1}, Lnet/simonvt/menudrawer/x;->getChildMeasureSpec(III)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/menudrawer/x;->B:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v2, v3}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/x;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->b()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/x;->E:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/x;->I:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/x;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/x;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/x;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/x;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/x;->i:F

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/x;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->c()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->a()V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/x;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lnet/simonvt/menudrawer/x;->h:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/x;->i:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/x;->b:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    invoke-virtual {p0, p1, v3}, Lnet/simonvt/menudrawer/x;->a(Landroid/view/MotionEvent;F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/x;->setDrawerState(I)V

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/x;->e:Z

    iget v0, p0, Lnet/simonvt/menudrawer/x;->g:F

    sub-float v0, v2, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lnet/simonvt/menudrawer/x;->g:F

    iget v2, p0, Lnet/simonvt/menudrawer/x;->b:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_2
    iput v0, p0, Lnet/simonvt/menudrawer/x;->i:F

    :cond_3
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/x;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/x;->a()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lnet/simonvt/menudrawer/x;->i:F

    sub-float v2, v0, v2

    iput v0, p0, Lnet/simonvt/menudrawer/x;->i:F

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/x;->a(F)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lnet/simonvt/menudrawer/x;->g:F

    iget v2, p0, Lnet/simonvt/menudrawer/x;->b:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/x;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
