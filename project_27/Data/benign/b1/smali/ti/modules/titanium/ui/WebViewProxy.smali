.class public Lti/modules/titanium/ui/WebViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FIRST_ID:I = 0x4ba

.field private static final MSG_GO_BACK:I = 0x51f

.field private static final MSG_GO_FORWARD:I = 0x520

.field protected static final MSG_LAST_ID:I = 0x8a1

.field private static final MSG_RELOAD:I = 0x521

.field private static final MSG_STOP_LOADING:I = 0x522

.field private static final TAG:Ljava/lang/String; = "WebViewProxy"

.field private static fpassword:Ljava/lang/String;

.field private static fusername:Ljava/lang/String;


# instance fields
.field private postCreateMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 52
    invoke-direct {p0}, Lti/modules/titanium/ui/WebViewProxy;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoBack()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoForward()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBasicAuthentication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 260
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 59
    .local v1, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->focus()V

    .line 61
    iget-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 63
    .local v0, "transport":Landroid/webkit/WebView$WebViewTransport;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 66
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    .line 70
    .end local v0    # "transport":Landroid/webkit/WebView$WebViewTransport;
    :cond_1
    return-object v1
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 87
    .local v0, "view":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v0, :cond_0

    .line 88
    const-string v1, "WebViewProxy"

    const-string v2, "WebView not available, returning null for evalJS result."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBasicAuthenticationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicAuthenticationUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableZoomControls()Z
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x1

    .line 251
    .local v0, "enabled":Z
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 254
    :cond_0
    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    const-string v1, "document.documentElement.outerHTML"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPluginState()I
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "pluginState":I
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 206
    :cond_0
    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 152
    .local v0, "currWebView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x51f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goBack()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goForward()V

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reload()V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->stopLoading()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->pauseWebView()V

    .line 229
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->resumeWebView()V

    .line 237
    :cond_0
    return-void
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    sput-object p1, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 131
    sput-object p2, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 135
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 243
    const-string v0, "enableZoomControls"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 244
    return-void
.end method

.method public setPluginState(I)V
    .locals 3
    .param p1, "pluginState"    # I

    .prologue
    const/4 v2, 0x1

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 219
    const-string v0, "pluginState"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 221
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const-string v0, "pluginState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPostCreateMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "postCreate"    # Landroid/os/Message;

    .prologue
    .line 275
    iput-object p1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    .line 276
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 143
    .local v0, "currWebView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method
