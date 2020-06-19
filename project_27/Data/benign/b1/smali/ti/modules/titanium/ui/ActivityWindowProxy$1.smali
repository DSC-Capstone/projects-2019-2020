.class Lti/modules/titanium/ui/ActivityWindowProxy$1;
.super Ljava/lang/Object;
.source "ActivityWindowProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/ActivityWindowProxy;->fillIntentForTab(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/ActivityWindowProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    new-instance v1, Lti/modules/titanium/ui/TiUIActivityWindow;

    iget-object v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    invoke-direct {v1, v2, p1}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    invoke-static {v0, v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->access$002(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/titanium/view/TiUIView;

    .line 134
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    invoke-static {v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->access$100(Lti/modules/titanium/ui/ActivityWindowProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 135
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->access$202(Lti/modules/titanium/ui/ActivityWindowProxy;Z)Z

    .line 136
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy$1;->this$0:Lti/modules/titanium/ui/ActivityWindowProxy;

    const-string v1, "open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/ActivityWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 137
    return-void
.end method
