.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private module:Lorg/appcelerator/kroll/KrollModule;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V
    .locals 2

    .prologue
    .line 177
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "App"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getModuleByName(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    .line 179
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;I)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {v1, v2, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollModule;->addEventListener(Ljava/lang/String;Lorg/appcelerator/kroll/KrollEventCallback;)I

    move-result v0

    return v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 185
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p2, :cond_0

    const-string v2, "undefined"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "dict":Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    .line 188
    .restart local v0    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    invoke-virtual {v2, p1, v0}, Lorg/appcelerator/kroll/KrollModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "TiWebViewBinding"

    const-string v3, "Error parsing event JSON"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->removeEventListener(Ljava/lang/String;I)V

    .line 202
    return-void
.end method
