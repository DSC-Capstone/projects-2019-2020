.class public Lorg/appcelerator/titanium/util/TiMenuSupport;
.super Ljava/lang/Object;
.source "TiMenuSupport.java"


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field protected menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .param p1, "activityProxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 28
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 87
    iput-object v1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    .line 89
    :cond_0
    iput-object v1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(ZLandroid/view/Menu;)Z
    .locals 6
    .param p1, "created"    # Z
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 32
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "onCreateOptionsMenu"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction;

    .line 33
    .local v1, "onCreate":Lorg/appcelerator/kroll/KrollFunction;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "onPrepareOptionsMenu"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 34
    .local v2, "onPrepare":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v1, :cond_1

    .line 35
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 36
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v3, :cond_4

    .line 37
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->setMenu(Landroid/view/Menu;)V

    .line 43
    :cond_0
    :goto_0
    const-string v3, "menu"

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 49
    :cond_2
    const/4 p1, 0x1

    .line 51
    :cond_3
    return p1

    .line 41
    .restart local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-direct {v3, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v0

    .line 57
    .local v0, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(ZLandroid/view/Menu;)Z
    .locals 5
    .param p1, "prepared"    # Z
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 66
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "onPrepareOptionsMenu"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction;

    .line 67
    .local v1, "onPrepare":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 69
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v2, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->setMenu(Landroid/view/Menu;)V

    .line 76
    :cond_0
    :goto_0
    const-string v2, "menu"

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const/4 p1, 0x1

    .line 80
    return p1

    .line 74
    .restart local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    new-instance v2, Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-direct {v2, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;-><init>(Landroid/view/Menu;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    goto :goto_0
.end method
