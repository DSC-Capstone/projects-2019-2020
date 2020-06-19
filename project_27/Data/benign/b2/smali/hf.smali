.class Lhf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Liz;)Liz;
    .locals 2

    .prologue
    .line 90
    instance-of v0, p1, Lja;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lja;

    invoke-virtual {v0}, Lja;->e()Landroid/view/WindowInsets;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 96
    if-eq v1, v0, :cond_0

    .line 98
    new-instance p1, Lja;

    invoke-direct {p1, v1}, Lja;-><init>(Landroid/view/WindowInsets;)V

    .line 101
    :cond_0
    return-object p1
.end method

.method public static a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 40
    return-void
.end method

.method public static a(Landroid/view/View;Lge;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lhg;

    invoke-direct {v0, p1}, Lhg;-><init>(Lge;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 67
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 133
    return-void
.end method
