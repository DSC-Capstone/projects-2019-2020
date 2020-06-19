.class public Lti/modules/titanium/ui/widget/TiArrowView;
.super Landroid/view/View;
.source "TiArrowView.java"


# instance fields
.field private leftArrow:Z

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    .line 26
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiArrowView;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiArrowView;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->configureDrawable()V

    .line 29
    return-void
.end method

.method private configureDrawable()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    .line 39
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 51
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiArrowView;->setWillNotDraw(Z)V

    .line 52
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0xd8

    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 66
    .local v2, "w":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 67
    .local v0, "h":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    int-to-float v3, v2

    int-to-float v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 69
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    if-nez v3, :cond_0

    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    const/16 v3, 0xaf

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 75
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    const/16 v3, 0x4b

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 78
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 80
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiArrowView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    .end local v0    # "h":I
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "w":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiArrowView;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method

.method public setLeft(Z)V
    .locals 0
    .param p1, "leftArrow"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiArrowView;->leftArrow:Z

    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiArrowView;->configureDrawable()V

    .line 34
    return-void
.end method
