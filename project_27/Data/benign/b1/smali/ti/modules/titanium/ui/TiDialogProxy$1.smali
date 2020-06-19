.class Lti/modules/titanium/ui/TiDialogProxy$1;
.super Ljava/lang/Object;
.source "TiDialogProxy.java"

# interfaces
.implements Lorg/appcelerator/kroll/common/CurrentActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiDialogProxy;->show(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiDialogProxy;

.field final synthetic val$options:Lorg/appcelerator/kroll/KrollDict;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lti/modules/titanium/ui/TiDialogProxy$1;->this$0:Lti/modules/titanium/ui/TiDialogProxy;

    iput-object p2, p0, Lti/modules/titanium/ui/TiDialogProxy$1;->val$options:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityReady(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/TiDialogProxy$1;->this$0:Lti/modules/titanium/ui/TiDialogProxy;

    iget-boolean v0, v0, Lti/modules/titanium/ui/TiDialogProxy;->showing:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/TiDialogProxy$1;->this$0:Lti/modules/titanium/ui/TiDialogProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/TiDialogProxy$1;->val$options:Lorg/appcelerator/kroll/KrollDict;

    invoke-static {v0, v1}, Lti/modules/titanium/ui/TiDialogProxy;->access$001(Lti/modules/titanium/ui/TiDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V

    .line 48
    :cond_0
    return-void
.end method
