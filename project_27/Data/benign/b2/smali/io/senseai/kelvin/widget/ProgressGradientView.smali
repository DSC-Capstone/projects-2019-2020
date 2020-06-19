.class public Lio/senseai/kelvin/widget/ProgressGradientView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:D

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->a:Z

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    .line 24
    invoke-direct {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->a:Z

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    .line 29
    invoke-direct {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->a:Z

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    .line 34
    invoke-direct {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f0c0028

    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    .line 46
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    .line 51
    iget-object v1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    const/high16 v0, -0x1000000

    iput v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->c:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->d:I

    .line 56
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->c:I

    .line 124
    iput p2, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->d:I

    .line 125
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->invalidate()V

    .line 126
    return-void
.end method

.method public getProgress()D
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget-object v3, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    iget-wide v2, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v7, v2

    .line 68
    iget-object v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v8, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->c:I

    aput v8, v5, v6

    const/4 v6, 0x1

    iget v8, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->d:I

    aput v8, v5, v6

    const/4 v6, 0x2

    iget v8, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->c:I

    aput v8, v5, v6

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    const/16 v8, 0x1c

    .line 74
    iget-boolean v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->a:Z

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 78
    mul-int/lit8 v0, v6, 0x1e

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    int-to-float v3, v8

    const/4 v4, 0x0

    iget-object v5, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 82
    :cond_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_2

    .line 83
    const/16 v0, 0x7d0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    rem-long v4, v2, v4

    .line 87
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    .line 88
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 91
    const/16 v6, 0x2ee

    .line 92
    const/16 v9, 0x4e2

    .line 96
    int-to-long v12, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_3

    .line 98
    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v12

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v10

    .line 106
    :cond_1
    :goto_1
    iget-object v0, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    mul-int/lit8 v0, v7, 0x1e

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    int-to-float v3, v8

    const/4 v4, 0x0

    iget-object v5, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v6, v0

    :goto_2
    const/16 v0, 0xc

    if-ge v6, v0, :cond_5

    .line 111
    mul-int/lit8 v0, v6, 0x1e

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    int-to-float v3, v8

    const/4 v4, 0x0

    iget-object v5, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 99
    :cond_3
    int-to-long v12, v9

    cmp-long v6, v4, v12

    if-ltz v6, :cond_1

    .line 104
    neg-double v2, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v12

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v10

    int-to-double v4, v0

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    goto :goto_1

    .line 114
    :cond_4
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 116
    :cond_5
    return-void
.end method

.method public setProgress(D)V
    .locals 1

    .prologue
    .line 129
    iput-wide p1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->b:D

    .line 130
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->invalidate()V

    .line 131
    return-void
.end method

.method public setSegmented(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lio/senseai/kelvin/widget/ProgressGradientView;->a:Z

    .line 135
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/ProgressGradientView;->invalidate()V

    .line 136
    return-void
.end method
