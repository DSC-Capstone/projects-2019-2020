.class Lti/modules/titanium/ui/widget/TiUIDialog$2;
.super Ljava/lang/Object;
.source "TiUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIDialog;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$2;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 131
    const/4 p1, 0x0

    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$2;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$2;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 135
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$2;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 137
    :cond_0
    return-void
.end method
