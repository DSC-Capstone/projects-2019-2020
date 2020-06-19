.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiReturn"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method private constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;)V
    .locals 0
    .param p1, "x0"    # Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
    .param p2, "x1"    # Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-static {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$102(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$200(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 142
    return-void
.end method
