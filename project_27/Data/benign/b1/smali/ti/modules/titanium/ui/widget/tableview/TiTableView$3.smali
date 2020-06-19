.class Lti/modules/titanium/ui/widget/tableview/TiTableView$3;
.super Ljava/lang/Object;
.source "TiTableView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$800(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    const/4 v0, 0x0

    .line 328
    .local v0, "tvItem":Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    instance-of v2, p2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 329
    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 333
    :goto_1
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v1

    const-string v2, "headerView"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    add-int/lit8 p3, p3, -0x1

    .line 339
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p3, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowClicked(Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;IZ)Z

    move-result v1

    goto :goto_0

    .line 331
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v2, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$900(Lti/modules/titanium/ui/widget/tableview/TiTableView;Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    move-result-object v0

    goto :goto_1
.end method
