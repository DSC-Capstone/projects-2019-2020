.class Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;


# direct methods
.method constructor <init>(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->this$1:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->this$1:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->access$1(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;)Lorg/apache/cordova/NativeToJsMessageQueue;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->access$0(Lorg/apache/cordova/NativeToJsMessageQueue;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "js":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->this$1:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->access$1(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;)Lorg/apache/cordova/NativeToJsMessageQueue;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->access$1(Lorg/apache/cordova/NativeToJsMessageQueue;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaWebView;->loadUrlNow(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
