.class Lti/modules/titanium/ui/widget/tableview/TiTableView$4;
.super Ljava/lang/Object;
.source "TiTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterBy(Ljava/lang/String;)V
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
    .line 461
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 464
    return-void
.end method
