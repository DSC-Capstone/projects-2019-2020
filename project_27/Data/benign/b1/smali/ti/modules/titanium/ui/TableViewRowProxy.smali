.class public Lti/modules/titanium/ui/TableViewRowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewRowProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TableViewRowProxy"

.field private static final MSG_SET_DATA:I = 0x1842


# instance fields
.field protected controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 54
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>()V

    .line 55
    return-void
.end method

.method public static fillClickEvent(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 2
    .param p0, "data"    # Lorg/appcelerator/kroll/KrollDict;
    .param p1, "model"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .param p2, "item"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .prologue
    .line 167
    const-string v0, "rowData"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "section"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "row"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "index"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "detail"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "control"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 104
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 109
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1842

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 176
    const-string v2, "click"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "longclick"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v1

    .line 179
    .local v1, "table":Lti/modules/titanium/ui/TableViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v0

    .line 180
    .local v0, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v2, p2, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 181
    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 184
    .end local v0    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v1    # "table":Lti/modules/titanium/ui/TableViewProxy;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v0

    .line 192
    .local v0, "table":Lti/modules/titanium/ui/TableViewProxy;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 195
    :cond_0
    return-void
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getControls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTable()Lti/modules/titanium/ui/TableViewProxy;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 135
    .local v0, "parent":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    instance-of v1, v0, Lti/modules/titanium/ui/TableViewProxy;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/TableViewProxy;

    .end local v0    # "parent":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    return-object v0
.end method

.method public getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 72
    const-string v0, "selectedBackgroundColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "TableViewRowProxy"

    const-string v1, "selectedBackgroundColor is deprecated, use backgroundSelectedColor instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "backgroundSelectedColor"

    const-string v1, "selectedBackgroundColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    const-string v0, "selectedBackgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "TableViewRowProxy"

    const-string v1, "selectedBackgroundImage is deprecated, use backgroundSelectedImage instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "backgroundSelectedImage"

    const-string v1, "selectedBackgroundImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1842

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 161
    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasControls()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 210
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->release()V

    .line 212
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 214
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 216
    .local v0, "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 219
    .end local v0    # "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "control"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 118
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1842

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 61
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 63
    .local v0, "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 66
    .end local v0    # "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setLabelsClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 198
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

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

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 200
    .local v0, "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/LabelProxy;

    if-eqz v2, :cond_0

    .line 201
    check-cast v0, Lti/modules/titanium/ui/LabelProxy;

    .end local v0    # "control":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/LabelProxy;->setClickable(Z)V

    goto :goto_0

    .line 205
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "fireChange"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 144
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1842

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 150
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V
    .locals 0
    .param p1, "item"    # Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .prologue
    .line 130
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 131
    return-void
.end method
