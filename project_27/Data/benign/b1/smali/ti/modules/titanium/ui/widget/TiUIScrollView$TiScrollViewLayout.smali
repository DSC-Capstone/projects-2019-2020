.class Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiScrollViewLayout"
.end annotation


# static fields
.field private static final AUTO:I = 0x7fffffff


# instance fields
.field protected measuredHeight:I

.field protected measuredWidth:I

.field private parentHeight:I

.field private parentWidth:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 52
    invoke-direct {p0, p2, p3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 47
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 48
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    .line 53
    return-void
.end method

.method private calculateAbsoluteBottom(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 136
    .local v2, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const-string v3, "contentHeight"

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "contentHeight":I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_3

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 140
    .local v0, "childMeasuredHeight":I
    iget-boolean v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    if-nez v3, :cond_0

    .line 141
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v0

    .line 143
    :cond_0
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 146
    :cond_1
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 150
    :cond_2
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 152
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 156
    .end local v0    # "childMeasuredHeight":I
    :goto_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    return v3

    .line 154
    :cond_3
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    goto :goto_0
.end method

.method private calculateAbsoluteRight(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getParams(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    .line 110
    .local v2, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const-string v3, "contentWidth"

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "contentWidth":I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_3

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 113
    .local v0, "childMeasuredWidth":I
    iget-boolean v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    if-nez v3, :cond_0

    .line 114
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v0

    .line 116
    :cond_0
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 119
    :cond_1
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 123
    :cond_2
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    .line 125
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    .line 130
    .end local v0    # "childMeasuredWidth":I
    :goto_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    return v3

    .line 127
    :cond_3
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    goto :goto_0
.end method

.method private getContentProperty(Ljava/lang/String;)I
    .locals 6
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const v3, 0x7fffffff

    .line 86
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 88
    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 90
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 91
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_0

    .line 93
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 95
    .local v1, "type":I
    const-string v4, "contentHeight"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    const/4 v1, 0x7

    .line 100
    :cond_3
    :goto_1
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 101
    .local v0, "dimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->getUnits()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->getIntValue()I

    move-result v3

    goto :goto_0

    .line 97
    .end local v0    # "dimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_4
    const-string v4, "contentWidth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    const/4 v1, 0x6

    goto :goto_1
.end method

.method private getDimensionValue(Lorg/appcelerator/titanium/TiDimension;I)I
    .locals 4
    .param p1, "dimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p2, "parentValue"    # I

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getParams(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method


# virtual methods
.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "wMode"    # I
    .param p4, "height"    # I
    .param p5, "hMode"    # I

    .prologue
    .line 173
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 179
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->calculateAbsoluteRight(Landroid/view/View;)I

    move-result v1

    .line 181
    .local v1, "absWidth":I
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->calculateAbsoluteBottom(Landroid/view/View;)I

    move-result v0

    .line 182
    .local v0, "absHeight":I
    return-void
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 196
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "contentHeight":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeightMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected getMeasuredHeight(II)I
    .locals 2
    .param p1, "maxHeight"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 214
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "contentHeight":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 218
    .end local p1    # "maxHeight":I
    :goto_0
    return p1

    .restart local p1    # "maxHeight":I
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method protected getMeasuredWidth(II)I
    .locals 2
    .param p1, "maxWidth"    # I
    .param p2, "widthSpec"    # I

    .prologue
    .line 205
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 206
    .local v0, "contentWidth":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 208
    .end local p1    # "maxWidth":I
    :goto_0
    return p1

    .restart local p1    # "maxWidth":I
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 187
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "contentWidth":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidthMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onLayout(ZIIII)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onMeasure(II)V

    .line 81
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredWidth:I

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->measuredHeight:I

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setMeasuredDimension(II)V

    .line 82
    return-void
.end method

.method public setParentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 74
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    .line 75
    return-void
.end method

.method public setParentWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 69
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    .line 70
    return-void
.end method
