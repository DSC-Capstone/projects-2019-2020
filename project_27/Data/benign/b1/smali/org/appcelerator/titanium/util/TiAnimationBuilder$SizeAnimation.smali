.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SizeAnimation"
.end annotation


# static fields
.field protected static final LCAT:Ljava/lang/String; = "TiSizeAnimation"


# instance fields
.field protected fromHeight:F

.field protected fromWidth:F

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected toHeight:F

.field protected toWidth:F

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fromWidth"    # F
    .param p4, "fromHeight"    # F
    .param p5, "toWidth"    # F
    .param p6, "toHeight"    # F

    .prologue
    .line 340
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 341
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    .line 342
    iput p3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    .line 343
    iput p4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    .line 344
    iput p5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    .line 345
    iput p6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    .line 347
    invoke-static {}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "TiSizeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animate view from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "width":I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 359
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    float-to-int v3, v4

    .line 365
    :goto_0
    const/4 v0, 0x0

    .line 366
    .local v0, "height":I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 367
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    float-to-int v0, v4

    .line 373
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 374
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    instance-of v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 378
    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 379
    .local v2, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v5, v0

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 380
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v5, v3

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 383
    .end local v2    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    return-void

    .line 362
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0

    .line 370
    .restart local v0    # "height":I
    :cond_2
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_1
.end method
