.class Lbp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lbu;

    invoke-direct {v0, p0}, Lbu;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 77
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 31
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 39
    instance-of v0, p0, Lbu;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lbm;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 36
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 50
    instance-of v0, p0, Lbu;

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Lbm;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 61
    instance-of v0, p0, Lbu;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0, p1}, Lbm;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
