.class public Lti/modules/titanium/ui/TabProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TabProxy.java"


# instance fields
.field private tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

.field private win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 37
    invoke-direct {p0}, Lti/modules/titanium/ui/TabProxy;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 44
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v0
.end method

.method public getTabGroup()Lti/modules/titanium/ui/TabGroupProxy;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    return-object v0
.end method

.method public getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 58
    const-string v1, "window"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "window":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .end local v0    # "window":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabProxy;->setWindow(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 62
    :cond_0
    return-void
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 106
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 108
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 110
    :cond_0
    return-void
.end method

.method public setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V
    .locals 0
    .param p1, "tabGroupProxy"    # Lti/modules/titanium/ui/TabGroupProxy;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 99
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 100
    return-void
.end method

.method public setWindow(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 3
    .param p1, "window"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    .line 67
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "window"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "addedToTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method
