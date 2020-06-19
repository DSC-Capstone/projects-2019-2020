.class public final Lkw;
.super Ldm;
.source "SourceFile"


# virtual methods
.method public a(Landroid/view/View;Ljg;)V
    .locals 1

    .prologue
    .line 1948
    invoke-super {p0, p1, p2}, Ldm;->a(Landroid/view/View;Ljg;)V

    .line 1950
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljg;->a(Landroid/view/View;)V

    .line 1956
    :cond_0
    return-void
.end method
