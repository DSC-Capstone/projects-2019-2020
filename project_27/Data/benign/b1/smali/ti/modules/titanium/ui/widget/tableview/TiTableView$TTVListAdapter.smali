.class Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TTVListAdapter"
.end annotation


# instance fields
.field private filtered:Z

.field index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

.field viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V
    .locals 2
    .param p2, "viewModel"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .prologue
    .line 83
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getRowCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 87
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 161
    .local v0, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, -0x1

    .line 166
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 167
    .local v0, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v3, 0x0

    .line 169
    .local v3, "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 170
    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "sameView":Z
    iget-object v4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v4, v4, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v4, :cond_0

    .line 174
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 175
    .local v1, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 176
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 179
    .end local v1    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    if-nez v2, :cond_1

    .line 180
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__default__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v4

    if-eq v4, v0, :cond_1

    .line 182
    const/4 v3, 0x0

    .line 193
    .end local v2    # "sameView":Z
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 194
    iget-object v4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v5, "__header__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;

    .end local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Landroid/app/Activity;)V

    .line 196
    .restart local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v4, "__header__"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    .line 207
    :goto_1
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_2
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 211
    return-object v3

    .line 186
    .restart local v2    # "sameView":Z
    :cond_3
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    const-string v4, "TiTableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handed a view to convert with className "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v3, 0x0

    goto :goto_0

    .line 197
    .end local v2    # "sameView":Z
    :cond_4
    iget-object v4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v5, "__normal__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 198
    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 199
    .restart local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v4, "__normal__"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_5
    iget-object v4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v5, "__default__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 201
    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 202
    .restart local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v4, "__default__"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_6
    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 205
    .restart local v3    # "v":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x20

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 222
    .local v1, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v0, 0x1

    .line 223
    .local v0, "enabled":Z
    if-eqz v1, :cond_0

    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v3, "__header__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_0
    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 237
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 238
    return-void
.end method

.method public reIndexItems()V
    .locals 9

    .prologue
    .line 99
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v4

    .line 100
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 101
    .local v0, "count":I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v7, 0x0

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 104
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 105
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 106
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "filter":Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 111
    const/4 v5, 0x1

    .line 112
    .local v5, "keep":Z
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 113
    .local v3, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 114
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "t":Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 119
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    .line 120
    const/4 v5, 0x0

    .line 123
    .end local v6    # "t":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 124
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v5    # "keep":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 129
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 130
    .restart local v3    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 131
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v3    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_5
    return-void
.end method

.method protected registerClassName(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "TiTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registering new className "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    return-void
.end method
