.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiMatrixAnimation"
.end annotation


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected childHeight:I

.field protected childWidth:I

.field public interpolate:Z

.field protected matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V
    .locals 1
    .param p1, "matrix"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 397
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 391
    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorX:F

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorY:F

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->interpolate:Z

    .line 398
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 399
    iput p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorX:F

    .line 400
    iput p3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorY:F

    .line 401
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 415
    iget-boolean v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->interpolate:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childWidth:I

    iget v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childHeight:I

    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorX:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorY:F

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 417
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 422
    .end local v6    # "m":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childWidth:I

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childHeight:I

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->getFinalMatrix(II)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public getFinalMatrix(II)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "childWidth"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorX:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->anchorY:F

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 406
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 407
    iput p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childWidth:I

    .line 408
    iput p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->childHeight:I

    .line 409
    return-void
.end method

.method public invalidateWithMatrix(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 432
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 433
    .local v0, "height":I
    invoke-virtual {p0, v6, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->getFinalMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    .line 434
    .local v2, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v0

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 435
    .local v4, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 436
    invoke-virtual {v4, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 437
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 438
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 442
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 444
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 446
    .end local v1    # "left":I
    .end local v5    # "top":I
    :cond_0
    return-void
.end method
