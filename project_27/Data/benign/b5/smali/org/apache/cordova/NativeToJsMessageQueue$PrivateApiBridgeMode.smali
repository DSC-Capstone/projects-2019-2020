.class Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;
.super Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateApiBridgeMode"
.end annotation


# static fields
.field private static final EXECUTE_JS:I = 0xc2


# instance fields
.field initFailed:Z

.field sendMessageMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lorg/apache/cordova/NativeToJsMessageQueue;

.field webViewCore:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 1

    .prologue
    .line 327
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue;Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/NativeToJsMessageQueue;Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    return-void
.end method

.method private initReflection()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 339
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-static {v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->access$1(Lorg/apache/cordova/NativeToJsMessageQueue;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v3

    .line 340
    .local v3, "webViewObject":Lorg/apache/cordova/CordovaWebView;
    const-class v2, Landroid/webkit/WebView;

    .line 342
    .local v2, "webViewClass":Ljava/lang/Class;
    :try_start_0
    const-string v4, "mProvider"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 343
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 344
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-static {v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->access$1(Lorg/apache/cordova/NativeToJsMessageQueue;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 345
    .local v3, "webViewObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 351
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "webViewObject":Ljava/lang/Object;
    :goto_0
    :try_start_1
    const-string v4, "mWebViewCore"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 352
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->webViewCore:Ljava/lang/Object;

    .line 355
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->webViewCore:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->webViewCore:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sendMessage"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/Message;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->sendMessageMethod:Ljava/lang/reflect/Method;

    .line 357
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->sendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v9, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->initFailed:Z

    .line 361
    const-string v4, "JsMessageQueue"

    const-string v5, "PrivateApiBridgeMode failed to find the expected APIs."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 346
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method onNativeToJsMessageAvailable()V
    .locals 7

    .prologue
    .line 366
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->initFailed:Z

    if-nez v3, :cond_0

    .line 367
    invoke-direct {p0}, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->initReflection()V

    .line 370
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-static {v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->access$0(Lorg/apache/cordova/NativeToJsMessageQueue;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "js":Ljava/lang/String;
    const/4 v3, 0x0

    const/16 v4, 0xc2

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 374
    .local v1, "execJsMessage":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->sendMessageMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;->webViewCore:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1    # "execJsMessage":Landroid/os/Message;
    .end local v2    # "js":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 375
    .restart local v1    # "execJsMessage":Landroid/os/Message;
    .restart local v2    # "js":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "JsMessageQueue"

    const-string v4, "Reflection message bridge failed."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
