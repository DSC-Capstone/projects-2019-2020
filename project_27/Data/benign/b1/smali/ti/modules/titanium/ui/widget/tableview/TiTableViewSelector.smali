.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
.super Landroid/graphics/drawable/Drawable;
.source "TiTableViewSelector.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiTableViewSelector"


# instance fields
.field private alpha:I

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private dither:Z

.field private listView:Landroid/widget/ListView;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    .line 39
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    .line 41
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 83
    .local v1, "currentPosition":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getRowDrawable(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 88
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    const-string v4, "opacity"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "opacity":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 93
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    .end local v2    # "opacity":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 102
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 103
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 104
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 105
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_1
    return-void

    .line 98
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRowDrawable(Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 60
    instance-of v1, p1, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 63
    .local v0, "rowView":Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 74
    .end local v0    # "rowView":Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->invalidateSelf()V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 136
    iput p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    .line 137
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 143
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->colorFilter:Landroid/graphics/ColorFilter;

    .line 144
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 151
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    .line 152
    return-void
.end method
