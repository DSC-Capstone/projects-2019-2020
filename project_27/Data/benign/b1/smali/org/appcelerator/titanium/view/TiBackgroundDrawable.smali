.class public Lorg/appcelerator/titanium/view/TiBackgroundDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "TiBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    }
.end annotation


# static fields
.field private static final NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TiBackgroundDrawable"


# instance fields
.field private alpha:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

.field private innerRect:Landroid/graphics/RectF;

.field private outerRect:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 49
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$000(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_4

    .line 61
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 68
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 86
    iget v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 87
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 89
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    return-void

    .line 63
    :cond_4
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TiBackgroundDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipPath failed on canvas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_1
.end method

.method public getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 179
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 182
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 162
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 103
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "padding":I
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$200(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v2

    float-to-int v0, v2

    .line 108
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 114
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->path:Landroid/graphics/Path;

    .line 115
    const/16 v2, 0x8

    new-array v1, v2, [F

    .line 116
    .local v1, "radii":[F
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 117
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 118
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 120
    .end local v1    # "radii":[F
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onLevelChange(I)Z

    move-result v1

    .line 151
    .local v1, "changed":Z
    const/4 v0, 0x0

    .line 152
    .local v0, "backgroundChanged":Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->setLevel(I)Z

    move-result v0

    .line 155
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 125
    .local v0, "changed":Z
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setState([I)Z

    move-result v0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "drawableChanged":Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->invalidateSelf()V

    .line 138
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseDelegate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 190
    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 256
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 257
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 238
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 248
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->onStateChange([I)Z

    .line 250
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "backgroundImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 243
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 244
    return-void
.end method

.method public setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V
    .locals 0
    .param p1, "border"    # Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .line 229
    return-void
.end method
