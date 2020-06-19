.class public Lti/modules/titanium/ui/widget/picker/TiUISpinner;
.super Lti/modules/titanium/ui/widget/picker/TiUIPicker;
.source "TiUISpinner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISpinner"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 35
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 36
    .local v0, "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setDisableHorizontalWrap(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->setNativeView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method private propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 123
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 124
    .local v0, "child":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private refreshColumn(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V

    goto :goto_0
.end method

.method private refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V
    .locals 0
    .param p1, "column"    # Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 5
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "visibleItems"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "visibleItems"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "visibleItems"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "selectionIndicator"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "selectionIndicator"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "selectionIndicator"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 151
    return-void
.end method

.method public forceRequestLayout()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 156
    .local v0, "child":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v2, :cond_0

    .line 157
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->forceRequestLayout()V

    goto :goto_0

    .line 161
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->layoutNativeView()V

    .line 162
    return-void
.end method

.method public getSelectedRowIndex(I)I
    .locals 5
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 69
    if-ltz p1, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 70
    :cond_0
    const-string v2, "TiUISpinner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring effort to get selected row index for out-of-bounds columnIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v1

    .line 73
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 74
    .local v0, "child":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v2, :cond_2

    .line 75
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->getSelectedRowIndex()I

    move-result v1

    goto :goto_0

    .line 77
    .restart local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const-string v2, "TiUISpinner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not locate column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  Ignoring effort to get selected row index in that column."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onColumnModelChanged(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(I)V

    .line 100
    return-void
.end method

.method public onRowChanged(II)V
    .locals 0
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(I)V

    .line 105
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 134
    const-string v0, "visibleItems"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "visibleItems"

    const-string v1, "visibleItems"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_0
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "selectionIndicator"

    const-string v1, "selectionIndicator"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 110
    const-string v0, "visibleItems"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "selectionIndicator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_0
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v0, "visibleItems"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->forceRequestLayout()V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected refreshNativeView()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 47
    .local v0, "child":Lorg/appcelerator/titanium/view/TiUIView;
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V

    goto :goto_0
.end method

.method public selectRow(IIZ)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 84
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 85
    :cond_0
    const-string v1, "TiUISpinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist.  Ignoring effort to select a row in that column."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 89
    .local v0, "child":Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v1, :cond_2

    .line 90
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->selectRow(I)V

    goto :goto_0

    .line 92
    .restart local v0    # "child":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const-string v1, "TiUISpinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not locate column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  Ignoring effort to select a row in that column."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
