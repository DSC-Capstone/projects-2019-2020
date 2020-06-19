.class public Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
.super Ljava/lang/Object;
.source "TableViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tableview/TableViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public footerText:Ljava/lang/String;

.field public headerText:Ljava/lang/String;

.field public index:I

.field public indexInSection:I

.field public name:Ljava/lang/String;

.field public proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field public rowData:Ljava/lang/Object;

.field public sectionIndex:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->this$0:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    .line 30
    return-void
.end method


# virtual methods
.method public hasHeader()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
