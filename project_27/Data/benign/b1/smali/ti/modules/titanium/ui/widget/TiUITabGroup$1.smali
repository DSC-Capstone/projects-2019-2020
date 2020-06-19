.class Lti/modules/titanium/ui/widget/TiUITabGroup$1;
.super Ljava/lang/Object;
.source "TiUITabGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUITabGroup;->addTab(Landroid/widget/TabHost$TabSpec;Lti/modules/titanium/ui/TabProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

.field final synthetic val$tabCount:I

.field final synthetic val$tabProxy:Lti/modules/titanium/ui/TabProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUITabGroup;ILti/modules/titanium/ui/TabProxy;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

    iput p2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->val$tabCount:I

    iput-object p3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->val$tabProxy:Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUITabGroup;->access$000(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/TabHost;

    move-result-object v0

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->val$tabCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 91
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->val$tabProxy:Lti/modules/titanium/ui/TabProxy;

    const-string v1, "click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
