.class Lpe;
.super Log;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Log",
        "<",
        "Lbv;",
        ">;",
        "Landroid/view/Menu;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lbv;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Log;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3, p4}, Lbv;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3, p4}, Lbv;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 10

    .prologue
    .line 83
    const/4 v9, 0x0

    .line 84
    if-eqz p8, :cond_0

    .line 85
    move-object/from16 v0, p8

    array-length v1, v0

    new-array v9, v1, [Landroid/view/MenuItem;

    .line 88
    :cond_0
    iget-object v1, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v1, Lbv;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lbv;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v2

    .line 91
    if-eqz v9, :cond_1

    .line 92
    const/4 v1, 0x0

    array-length v3, v9

    :goto_0
    if-ge v1, v3, :cond_1

    .line 93
    aget-object v4, v9, v1

    invoke-virtual {p0, v4}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, p8, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3, p4}, Lbv;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3, p4}, Lbv;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lpe;->a()V

    .line 115
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0}, Lbv;->clear()V

    .line 116
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0}, Lbv;->close()V

    .line 156
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpe;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0}, Lbv;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2}, Lbv;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2}, Lbv;->performIdentifierAction(II)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3}, Lbv;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public removeGroup(I)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lpe;->a(I)V

    .line 109
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->removeGroup(I)V

    .line 110
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lpe;->b(I)V

    .line 103
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->removeItem(I)V

    .line 104
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2, p3}, Lbv;->setGroupCheckable(IZZ)V

    .line 121
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2}, Lbv;->setGroupEnabled(IZ)V

    .line 131
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1, p2}, Lbv;->setGroupVisible(IZ)V

    .line 126
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0, p1}, Lbv;->setQwertyMode(Z)V

    .line 176
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lpe;->b:Ljava/lang/Object;

    check-cast v0, Lbv;

    invoke-interface {v0}, Lbv;->size()I

    move-result v0

    return v0
.end method
