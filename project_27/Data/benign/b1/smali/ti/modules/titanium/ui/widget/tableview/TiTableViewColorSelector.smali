.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TiTableViewColorSelector.java"


# instance fields
.field protected color:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 17
    iput p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;->color:I

    .line 18
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 23
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    return-void
.end method
