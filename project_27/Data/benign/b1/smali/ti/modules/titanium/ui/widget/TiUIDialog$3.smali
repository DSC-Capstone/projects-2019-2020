.class Lti/modules/titanium/ui/widget/TiUIDialog$3;
.super Ljava/lang/Object;
.source "TiUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIDialog;->show(Lorg/appcelerator/kroll/KrollDict;)V
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
    .line 236
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$3;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dlg"    # Landroid/content/DialogInterface;

    .prologue
    .line 239
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$3;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->access$000(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$3;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->access$100(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 240
    .local v0, "cancelIndex":I
    :goto_0
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIDialog;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "TiUIDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelListener called. Sending index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$3;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->handleEvent(I)V

    .line 244
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$3;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 245
    return-void

    .line 239
    .end local v0    # "cancelIndex":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
