.class public Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;
    }
.end annotation


# static fields
.field protected static final INJECTION_CODE:Ljava/lang/String;

.field private static final LCAT:Ljava/lang/String; = "TiWebViewBinding"

.field protected static final SCRIPT_INJECTION_ID:Ljava/lang/String; = "__ti_injection"


# instance fields
.field private apiBinding:Lorg/appcelerator/kroll/KrollLogging;

.field private appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

.field private returnSemaphore:Ljava/util/concurrent/Semaphore;

.field private returnValue:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const-string v3, "json2.js"

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    .local v1, "jsonCode":Ljava/lang/StringBuilder;
    const-string v3, "binding.min.js"

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    .local v2, "tiCode":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "allCode":Ljava/lang/StringBuilder;
    const-string v3, "\n<script id=\"__ti_injection\">\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    if-nez v1, :cond_0

    .line 43
    const-string v3, "TiWebViewBinding"

    const-string v4, "Unable to read JSON code for injection"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    if-nez v2, :cond_1

    .line 49
    const-string v3, "TiWebViewBinding"

    const-string v4, "Unable to read Titanium binding code for injection"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    const-string v3, "\n</script>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    .line 59
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    .line 67
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lorg/appcelerator/kroll/KrollLogging;

    .line 70
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    const-string v1, "TiApp"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lorg/appcelerator/kroll/KrollLogging;

    const-string v1, "TiAPI"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;)V

    const-string v1, "_TiReturn"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;-><init>(Landroid/webkit/WebView;)V

    .line 79
    return-void
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->evalJS(Ljava/lang/String;)V

    return-void
.end method

.method private evalJS(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private static readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ti/modules/titanium/ui/widget/webview/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 89
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "code":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_0
    if-eqz v4, :cond_1

    .line 101
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v0    # "code":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 102
    .restart local v0    # "code":Ljava/lang/StringBuilder;
    .restart local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "TiWebViewBinding"

    const-string v6, "Error reading input stream"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    const/4 v0, 0x0

    .line 99
    .end local v0    # "code":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_1

    .line 101
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 102
    :catch_2
    move-exception v1

    .line 103
    const-string v5, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "code":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 104
    :cond_2
    :goto_2
    throw v5

    .line 102
    :catch_3
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "TiWebViewBinding"

    const-string v7, "Problem closing input stream."

    invoke-static {v6, v7, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:_TiReturn.setValue((function(){try{return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+\"\";}catch(ti_eval_err){return \'\';}})());"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "code":Ljava/lang/String;
    const-string v2, "TiWebViewBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJSValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 126
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "TiWebViewBinding"

    const-string v3, "Interrupted"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v2, 0x0

    goto :goto_0
.end method
