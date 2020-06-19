.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewCallback"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 150
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    .line 152
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const-string v1, ""

    .line 166
    .end local p1    # "data":Ljava/lang/Object;
    .local v1, "dataString":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ti.executeListener("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-static {v3, v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)V

    .line 168
    return-void

    .line 159
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 160
    new-instance v2, Lorg/json/JSONObject;

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 161
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1    # "dataString":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dataString":Ljava/lang/String;
    goto :goto_0
.end method
