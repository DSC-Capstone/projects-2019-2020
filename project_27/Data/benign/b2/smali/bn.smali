.class Lbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 30
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 33
    instance-of v0, p0, Lbs;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lbs;

    invoke-direct {v0, p0}, Lbs;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 36
    :cond_0
    return-object p0
.end method
