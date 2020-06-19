.class public Lorg/appcelerator/titanium/proxy/MenuItemProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuItemProxy.java"


# instance fields
.field private item:Landroid/view/MenuItem;


# direct methods
.method protected constructor <init>(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    .line 28
    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setCheckable(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 83
    return-object p0
.end method

.method public setChecked(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 89
    return-object p0
.end method

.method public setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public setIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 6
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 103
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "iconPath":Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v2, v1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "iconUrl":Lorg/appcelerator/titanium/util/TiUrl;
    if-eqz v1, :cond_0

    .line 106
    new-instance v3, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 109
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 119
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iconPath":Ljava/lang/String;
    .end local v2    # "iconUrl":Lorg/appcelerator/titanium/util/TiUrl;
    .end local v3    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    :goto_0
    return-object p0

    .line 112
    :cond_1
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 113
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 115
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 125
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 131
    return-object p0
.end method

.method public setVisible(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    return-object p0
.end method
