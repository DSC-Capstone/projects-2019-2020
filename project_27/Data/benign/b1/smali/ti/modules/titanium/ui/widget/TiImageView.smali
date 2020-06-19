.class public Lti/modules/titanium/ui/widget/TiImageView;
.super Landroid/view/ViewGroup;
.source "TiImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;,
        Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final CONTROL_TIMEOUT:I = 0xfa0

.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiImageView"

.field private static final MSG_HIDE_CONTROLS:I = 0x1f4


# instance fields
.field private baseMatrix:Landroid/graphics/Matrix;

.field private canScaleImage:Z

.field private changeMatrix:Landroid/graphics/Matrix;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private enableZoomControls:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private originalScaleFactor:F

.field private scaleFactor:F

.field private scaleIncrement:F

.field private scaleMax:F

.field private scaleMin:F

.field private zoomControls:Landroid/widget/ZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiImageView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 121
    move-object v0, p0

    .line 123
    .local v0, "me":Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    .line 125
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 127
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 128
    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->originalScaleFactor:F

    .line 129
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    .line 130
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    .line 131
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 134
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v1, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;-><init>(Lti/modules/titanium/ui/widget/TiImageView;Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    .line 140
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lti/modules/titanium/ui/widget/TiImageView$1;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/TiImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 175
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 177
    new-instance v1, Landroid/widget/ZoomControls;

    invoke-direct {v1, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    .line 178
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 181
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$2;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$3;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$3;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiImageView;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    return-void
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleUp()V

    return-void
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleDown()V

    return-void
.end method

.method private computeBaseMatrix()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    .line 323
    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 326
    if-eqz v0, :cond_0

    .line 332
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 333
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 334
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 335
    .local v2, "dwidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 337
    .local v1, "dheight":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v9, v11

    .line 338
    .local v9, "vwidth":F
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v8, v11

    .line 340
    .local v8, "vheight":F
    int-to-float v11, v2

    div-float v11, v9, v11

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 341
    .local v10, "widthScale":F
    int-to-float v11, v1

    div-float v11, v8, v11

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 342
    .local v5, "heightScale":F
    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 344
    .local v7, "scale":F
    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 346
    int-to-float v11, v2

    mul-float/2addr v11, v7

    sub-float v11, v9, v11

    mul-float v3, v11, v13

    .line 347
    .local v3, "dx":F
    int-to-float v11, v1

    mul-float/2addr v11, v7

    sub-float v11, v8, v11

    mul-float v4, v11, v13

    .line 349
    .local v4, "dy":F
    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 352
    .end local v1    # "dheight":I
    .end local v2    # "dwidth":I
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "heightScale":F
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v7    # "scale":F
    .end local v8    # "vheight":F
    .end local v9    # "vwidth":F
    .end local v10    # "widthScale":F
    :cond_0
    return-void
.end method

.method private getViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 365
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 366
    return-object v0
.end method

.method private handleHideControls()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 298
    return-void
.end method

.method private handleScaleDown()V
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 291
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    neg-float v0, v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 293
    :cond_0
    return-void
.end method

.method private handleScaleUp()V
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 284
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 286
    :cond_0
    return-void
.end method

.method private manageControls()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 307
    :goto_0
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 312
    :goto_1
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    goto :goto_1
.end method

.method private onViewChanged(F)V
    .locals 0
    .param p1, "dscale"    # F

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->updateChangeMatrix(F)V

    .line 316
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 317
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 318
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 319
    return-void
.end method

.method private scheduleControlTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 370
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    return-void
.end method

.method private updateChangeMatrix(F)V
    .locals 5
    .param p1, "dscale"    # F

    .prologue
    .line 356
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 357
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    add-float/2addr v0, p1

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 358
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 359
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 360
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 361
    return-void
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 258
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleHideControls()V

    .line 259
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "sendClick":Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 272
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 274
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 276
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 279
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 426
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->computeBaseMatrix()V

    .line 427
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    .line 431
    .local v2, "parentRight":I
    const/4 v3, 0x0

    .line 432
    .local v3, "parentTop":I
    sub-int v0, p5, p3

    .line 435
    .local v0, "parentBottom":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 436
    iget-boolean v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 437
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v5

    .line 438
    .local v5, "zoomWidth":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v4

    .line 439
    .local v4, "zoomHeight":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    sub-int v7, v2, v5

    sub-int v8, v0, v4

    invoke-virtual {v6, v7, v8, v2, v0}, Landroid/widget/ZoomControls;->layout(IIII)V

    .line 443
    .end local v4    # "zoomHeight":I
    .end local v5    # "zoomWidth":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 407
    .local v0, "maxHeight":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 409
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 410
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 413
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v2, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 415
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 416
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    :cond_0
    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setMeasuredDimension(II)V

    .line 421
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "handled":Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1, p1}, Landroid/widget/ZoomControls;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 381
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 383
    :cond_1
    if-nez v0, :cond_2

    .line 384
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 386
    :cond_2
    return v0
.end method

.method public setCanScaleImage(Z)V
    .locals 3
    .param p1, "canScaleImage"    # Z

    .prologue
    const/4 v2, 0x1

    .line 205
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 209
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;

    iput-boolean v2, v0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->allowLayoutRequest:Z

    .line 218
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 219
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 446
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 447
    return-void
.end method

.method public setEnableZoomControls(Z)V
    .locals 0
    .param p1, "enableZoomControls"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 223
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 248
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/ui/widget/TiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 227
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "recycle"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    .local v0, "od":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 233
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 234
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "od":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->originalScaleFactor:F

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 239
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->updateChangeMatrix(F)V

    .line 240
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->canScaleImage:Z

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    .line 241
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 252
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 253
    return-void
.end method

.method public setOnSizeChangeListener(Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;

    .prologue
    .line 198
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->setOnSizeChangeListener(Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;)V

    .line 201
    :cond_0
    return-void
.end method
