.class Lhc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 43
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 51
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 83
    return-void
.end method

.method public static e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method
