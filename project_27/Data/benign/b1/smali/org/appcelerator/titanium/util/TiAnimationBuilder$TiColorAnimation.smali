.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiColorAnimation"
.end annotation


# instance fields
.field deltaAlpha:I

.field deltaBlue:I

.field deltaGreen:I

.field deltaRed:I

.field fromAlpha:I

.field fromBlue:I

.field fromGreen:I

.field fromRed:I

.field toAlpha:I

.field toBlue:I

.field toGreen:I

.field toRed:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromColor"    # I
    .param p3, "toColor"    # I

    .prologue
    .line 457
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 458
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->view:Landroid/view/View;

    .line 460
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromRed:I

    .line 461
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromGreen:I

    .line 462
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromBlue:I

    .line 463
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromAlpha:I

    .line 465
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toRed:I

    .line 466
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toGreen:I

    .line 467
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toBlue:I

    .line 468
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toAlpha:I

    .line 470
    iget v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toRed:I

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromRed:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaRed:I

    .line 471
    iget v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toGreen:I

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromGreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaGreen:I

    .line 472
    iget v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toBlue:I

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromBlue:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaBlue:I

    .line 473
    iget v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->toAlpha:I

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromAlpha:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaAlpha:I

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 476
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 483
    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromAlpha:I

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaAlpha:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromRed:I

    iget v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaRed:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromGreen:I

    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaGreen:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->fromBlue:I

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->deltaBlue:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 489
    .local v0, "c":I
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 490
    return-void
.end method
