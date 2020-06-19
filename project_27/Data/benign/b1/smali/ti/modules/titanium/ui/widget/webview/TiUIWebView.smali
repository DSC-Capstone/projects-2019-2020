.class public Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PAGE_FINISH_URL:Ljava/lang/String; = "file:///android_asset/Resources/"

.field private static final LCAT:Ljava/lang/String; = "TiUIWebView"

.field public static final PLUGIN_STATE_OFF:I = 0x0

.field public static final PLUGIN_STATE_ON:I = 0x1

.field public static final PLUGIN_STATE_ON_DEMAND:I = 0x2

.field private static enumPluginStateOff:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOn:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOnDemand:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static final escapeChars:[C

.field private static internalSetPluginState:Ljava/lang/reflect/Method;

.field private static internalWebViewPause:Ljava/lang/reflect/Method;

.field private static internalWebViewResume:Ljava/lang/reflect/Method;


# instance fields
.field private changingUrl:Z

.field private client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->DBG:Z

    .line 331
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x25s
        0x23s
        0x27s
        0x3fs
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v9, 0x1

    .line 83
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 47
    const/4 v7, 0x0

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 85
    new-instance v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    .line 86
    .local v6, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v6, v9}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setVerticalScrollbarOverlay(Z)V

    .line 88
    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 89
    .local v3, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 90
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 92
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 93
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 94
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 95
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 98
    const/4 v0, 0x1

    .line 100
    .local v0, "enableZoom":Z
    const-string v7, "enableZoomControls"

    invoke-virtual {p1, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    const-string v7, "enableZoomControls"

    invoke-virtual {p1, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    :cond_0
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 105
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 108
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x7

    if-le v7, v8, :cond_1

    .line 109
    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V

    .line 112
    :cond_1
    new-instance v7, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-direct {v7, p0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    new-instance v7, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-direct {v7, p0, v6}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 114
    iget-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    iput-object v7, v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 117
    instance-of v7, p1, Lti/modules/titanium/ui/WebViewProxy;

    if-eqz v7, :cond_3

    move-object v5, p1

    .line 118
    check-cast v5, Lti/modules/titanium/ui/WebViewProxy;

    .line 119
    .local v5, "webProxy":Lti/modules/titanium/ui/WebViewProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationUserName()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "username":Ljava/lang/String;
    invoke-virtual {v5}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationPassword()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "password":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0, v4, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-virtual {v5}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 127
    .end local v2    # "password":Ljava/lang/String;
    .end local v4    # "username":Ljava/lang/String;
    .end local v5    # "webProxy":Lti/modules/titanium/ui/WebViewProxy;
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    .line 128
    .local v1, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v9, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 129
    iput-boolean v9, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 131
    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setNativeView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private escapeContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 340
    .local v1, "escapeChar":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "regex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "escapeChar":C
    .end local v4    # "regex":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V
    .locals 8
    .param p1, "webView"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 144
    :try_start_1
    sget-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    if-nez v4, :cond_0

    .line 145
    const-string v4, "android.webkit.WebSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 146
    .local v3, "webSettings":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "android.webkit.WebSettings$PluginState"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 148
    .local v2, "pluginState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "OFF"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 149
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    .line 150
    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 151
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    .line 152
    const-string v4, "ON_DEMAND"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    .line 154
    const-string v4, "setPluginState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onPause"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onResume"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    .line 160
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "pluginState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "webSettings":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit v5

    .line 170
    :goto_0
    return-void

    .line 160
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchField: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private mightBeHtml(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "mime":Ljava/lang/String;
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 382
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "scalesPageToFit"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 385
    :cond_0
    const-string v0, "__ti_injection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v0, "<html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 392
    .local v8, "tagStart":I
    const/4 v7, -0x1

    .line 393
    .local v7, "tagEnd":I
    if-ltz v8, :cond_2

    .line 394
    const-string v0, ">"

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 395
    if-le v7, v8, :cond_2

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x9c4

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 397
    .local v6, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public changeProxyUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 321
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 322
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 324
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 514
    .local v0, "currWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 530
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 535
    return-void
.end method

.method public pauseWebView()V
    .locals 4

    .prologue
    .line 467
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 468
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 469
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 471
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 472
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 177
    const-string v2, "scalesPageToFit"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 179
    .local v0, "settings":Landroid/webkit/WebSettings;
    const-string v2, "scalesPageToFit"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 182
    .end local v0    # "settings":Landroid/webkit/WebSettings;
    :cond_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "file:///android_asset/Resources/"

    const-string v3, "url"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 183
    const-string v2, "url"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    :cond_2
    const-string v2, "pluginState"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    const-string v2, "pluginState"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setPluginState(I)V

    .line 203
    :cond_3
    return-void

    .line 184
    :cond_4
    const-string v2, "html"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    const-string v2, "html"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_5
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_1

    .line 189
    check-cast v1, Lorg/appcelerator/titanium/TiBlob;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v3, "url"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    if-nez v3, :cond_3

    const-string v3, "file:///android_asset/Resources/"

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 209
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 226
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "border"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    const/4 v0, 0x1

    .line 227
    .local v0, "isBgRelated":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    :cond_2
    return-void

    .line 210
    .end local v0    # "isBgRelated":Z
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "html"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_4
    const-string v3, "data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 213
    instance-of v3, p3, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_0

    .line 214
    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 216
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v3, "scalesPageToFit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 218
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_0

    .line 220
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_7
    move v0, v2

    .line 226
    goto :goto_1
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 540
    return-void
.end method

.method public resumeWebView()V
    .locals 4

    .prologue
    .line 483
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 484
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 485
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 487
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 490
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public setData(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 4
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 409
    const-string v0, "text/html"

    .line 413
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "scalesPageToFit"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 416
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_1
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v2

    const-string v3, "base64"

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 499
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 500
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 501
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "file:///android_asset/Resources/"

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public setPluginState(I)V
    .locals 7
    .param p1, "pluginState"    # I

    .prologue
    .line 438
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 439
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    .line 440
    .local v2, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 441
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    if-eqz v2, :cond_0

    .line 443
    packed-switch p1, :pswitch_data_0

    .line 454
    :try_start_0
    const-string v3, "TiUIWebView"

    const-string v4, "Not a valid plugin state. Ignoring setPluginState request"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "webSettings":Landroid/webkit/WebSettings;
    .end local v2    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v1    # "webSettings":Landroid/webkit/WebSettings;
    .restart local v2    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :pswitch_0
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "TiUIWebView"

    const-string v4, "Method not supported"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 448
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_1
    :try_start_1
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "TiUIWebView"

    const-string v4, "Illegal Access"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 451
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :pswitch_2
    :try_start_2
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 21
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 246
    move-object/from16 v5, p1

    .line 247
    .local v5, "finalUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 248
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    const/4 v10, 0x1

    .line 250
    .local v10, "originalUrlHasScheme":Z
    :goto_0
    if-nez v10, :cond_0

    .line 251
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    :cond_0
    invoke-static {v5}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->mightBeHtml(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 255
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v5, v0}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v15

    .line 256
    .local v15, "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v15, :cond_7

    .line 257
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v11, "out":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 260
    .local v6, "fis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 261
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-direct {v14, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 262
    .local v14, "reader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 263
    .local v3, "breader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 264
    .local v7, "injected":Z
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "line":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 266
    if-nez v7, :cond_3

    .line 267
    const-string v17, "<html"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 268
    .local v12, "pos":I
    if-ltz v12, :cond_3

    .line 269
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 270
    .local v13, "posEnd":I
    if-le v13, v12, :cond_3

    .line 271
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 274
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/4 v7, 0x1

    .line 278
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 279
    goto :goto_1

    .line 248
    .end local v3    # "breader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v7    # "injected":Z
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "originalUrlHasScheme":Z
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v12    # "pos":I
    .end local v13    # "posEnd":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 283
    .restart local v3    # "breader":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "injected":Z
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "originalUrlHasScheme":Z
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 287
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v10, :cond_6

    move-object/from16 v17, p1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v6, :cond_5

    .line 297
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    .end local v3    # "breader":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v7    # "injected":Z
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_5
    :goto_3
    return-void

    .restart local v3    # "breader":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "injected":Z
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_6
    move-object/from16 v17, v5

    .line 287
    goto :goto_2

    .line 298
    :catch_0
    move-exception v4

    .line 299
    .local v4, "e":Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 291
    .end local v3    # "breader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "injected":Z
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    .line 292
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem reading from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Will let WebView try loading it directly."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    if-eqz v6, :cond_7

    .line 297
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 306
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "ioe":Ljava/io/IOException;
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_7
    :goto_4
    sget-boolean v17, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->DBG:Z

    if-eqz v17, :cond_8

    .line 307
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WebView will load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " directly without code injection."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    const-string v18, "scalesPageToFit"

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 313
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 315
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 298
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v8    # "ioe":Ljava/io/IOException;
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :catch_2
    move-exception v4

    .line 299
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 295
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v6, :cond_a

    .line 297
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 300
    :cond_a
    :goto_5
    throw v17

    .line 298
    :catch_3
    move-exception v4

    .line 299
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "TiUIWebView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgentString"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 506
    .local v0, "currWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 509
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 545
    return-void
.end method
