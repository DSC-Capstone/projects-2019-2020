.class public Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
.super Ljava/lang/Object;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/Ti2DMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Operation"
.end annotation


# static fields
.field protected static final TYPE_INVERT:I = 0x4

.field protected static final TYPE_MULTIPLY:I = 0x3

.field protected static final TYPE_ROTATE:I = 0x2

.field protected static final TYPE_SCALE:I = 0x0

.field protected static final TYPE_TRANSLATE:I = 0x1


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected rotateFrom:F

.field protected rotateTo:F

.field protected scaleFromX:F

.field protected scaleFromY:F

.field protected scaleToX:F

.field protected scaleToY:F

.field protected translateX:F

.field protected translateY:F

.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    iput v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 42
    iput p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    .line 43
    return-void
.end method


# virtual methods
.method public apply(FLandroid/graphics/Matrix;IIFF)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I
    .param p5, "anchorX"    # F
    .param p6, "anchorY"    # F

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    cmpl-float v0, p5, v1

    if-nez v0, :cond_0

    iget p5, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 49
    :cond_0
    cmpl-float v0, p6, v1

    if-nez v0, :cond_1

    iget p6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 50
    :cond_1
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iget v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 54
    :pswitch_1
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    mul-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 56
    :pswitch_2
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    add-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v1, p5

    int-to-float v2, p4

    mul-float/2addr v2, p6

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 60
    :pswitch_4
    invoke-virtual {p2, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
