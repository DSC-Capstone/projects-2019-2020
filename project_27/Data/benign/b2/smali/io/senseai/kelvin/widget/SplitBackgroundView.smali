.class public Lio/senseai/kelvin/widget/SplitBackgroundView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lio/senseai/kelvin/widget/SplitBackgroundView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lio/senseai/kelvin/widget/SplitBackgroundView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lio/senseai/kelvin/widget/SplitBackgroundView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/SplitBackgroundView;->setWillNotDraw(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->a:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->b:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/SplitBackgroundView;->getHeight()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/SplitBackgroundView;->getWidth()I

    move-result v1

    .line 99
    iget-object v2, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v2, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0xa

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v2, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0xa

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v2, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    int-to-float v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v2, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v1, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 107
    iget-object v0, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lio/senseai/kelvin/widget/SplitBackgroundView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/16 v1, 0x64

    const/high16 v5, -0x80000000

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    if-ne v3, v6, :cond_0

    .line 77
    :goto_0
    if-ne v4, v6, :cond_2

    .line 89
    :goto_1
    invoke-virtual {p0, v2, v0}, Lio/senseai/kelvin/widget/SplitBackgroundView;->setMeasuredDimension(II)V

    .line 90
    return-void

    .line 68
    :cond_0
    if-ne v3, v5, :cond_1

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 73
    goto :goto_0

    .line 80
    :cond_2
    if-ne v4, v5, :cond_3

    .line 82
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 85
    goto :goto_1
.end method
