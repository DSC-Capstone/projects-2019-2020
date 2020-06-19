.class Lti/modules/titanium/ui/AlertDialogProxy$1;
.super Ljava/lang/Object;
.source "AlertDialogProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/AlertDialogProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/AlertDialogProxy;

.field final synthetic val$fOptions:Lorg/appcelerator/kroll/KrollDict;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/AlertDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lti/modules/titanium/ui/AlertDialogProxy$1;->this$0:Lti/modules/titanium/ui/AlertDialogProxy;

    iput-object p2, p0, Lti/modules/titanium/ui/AlertDialogProxy$1;->val$fOptions:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lti/modules/titanium/ui/AlertDialogProxy$1;->this$0:Lti/modules/titanium/ui/AlertDialogProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/AlertDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 72
    .local v0, "d":Lti/modules/titanium/ui/widget/TiUIDialog;
    iget-object v1, p0, Lti/modules/titanium/ui/AlertDialogProxy$1;->val$fOptions:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 73
    return-void
.end method
