.class public Loq;
.super Log;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Log",
        "<",
        "Lbw;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbw;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Log;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Lor;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lor;

    iget-object v1, p0, Loq;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lor;-><init>(Loq;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Loq;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setExclusiveCheckable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Loq;->c:Ljava/lang/reflect/Method;

    .line 302
    :cond_0
    iget-object v0, p0, Loq;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Loq;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "MenuItemWrapper"

    const-string v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->a()Ldz;

    move-result-object v0

    .line 268
    instance-of v1, v0, Lor;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lor;

    iget-object v0, v0, Lor;->a:Landroid/view/ActionProvider;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 252
    instance-of v1, v0, Los;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Los;

    invoke-virtual {v0}, Los;->c()Landroid/view/View;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Loq;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Loq;->a(Landroid/view/ActionProvider;)Lor;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lbw;->a(Ldz;)Lbw;

    .line 262
    return-object p0

    .line 260
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setActionView(I)Landroid/view/MenuItem;

    .line 241
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0}, Lbw;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 242
    instance-of v0, v1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    new-instance v2, Los;

    invoke-direct {v2, v1}, Los;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v2}, Lbw;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 246
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 229
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Los;

    invoke-direct {v0, p1}, Los;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 232
    :cond_0
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 233
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 143
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setCheckable(Z)Landroid/view/MenuItem;

    .line 154
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setChecked(Z)Landroid/view/MenuItem;

    .line 165
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setEnabled(Z)Landroid/view/MenuItem;

    .line 186
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 115
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 132
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    if-eqz p1, :cond_0

    new-instance v1, Lot;

    invoke-direct {v1, p0, p1}, Lot;-><init>(Loq;Landroid/view/MenuItem$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v0, v1}, Lbw;->a(Lfo;)Lbw;

    .line 293
    return-object p0

    .line 291
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    if-eqz p1, :cond_0

    new-instance v1, Lou;

    invoke-direct {v1, p0, p1}, Lou;-><init>(Loq;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v0, v1}, Lbw;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 208
    return-object p0

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1, p2}, Lbw;->setShortcut(CC)Landroid/view/MenuItem;

    .line 126
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setShowAsAction(I)V

    .line 219
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 224
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setTitle(I)Landroid/view/MenuItem;

    .line 76
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 70
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 87
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Loq;->b:Ljava/lang/Object;

    check-cast v0, Lbw;

    invoke-interface {v0, p1}, Lbw;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
