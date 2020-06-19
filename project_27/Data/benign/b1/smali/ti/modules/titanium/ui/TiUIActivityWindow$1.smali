.class Lti/modules/titanium/ui/TiUIActivityWindow$1;
.super Ljava/lang/Object;
.source "TiUIActivityWindow.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiUIActivityWindow;->handleBooted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiUIActivityWindow;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIActivityWindow$1;->this$0:Lti/modules/titanium/ui/TiUIActivityWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow$1;->this$0:Lti/modules/titanium/ui/TiUIActivityWindow;

    invoke-static {v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->access$000(Lti/modules/titanium/ui/TiUIActivityWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "focus"

    :goto_0
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 194
    return-void

    .line 193
    :cond_0
    const-string v0, "blur"

    goto :goto_0
.end method
