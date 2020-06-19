.class Lpg;
.super Lpe;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbx;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lpe;-><init>(Landroid/content/Context;Lbv;)V

    .line 34
    return-void
.end method


# virtual methods
.method public b()Lbx;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpg;->b:Ljava/lang/Object;

    check-cast v0, Lbx;

    return-object v0
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0}, Lbx;->clearHeader()V

    .line 74
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0}, Lbx;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpg;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 68
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setIcon(I)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lpg;->b()Lbx;

    move-result-object v0

    invoke-interface {v0, p1}, Lbx;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 85
    return-object p0
.end method
