.class Lorg/apache/cordova/CordovaWebViewClient$1$1;
.super Ljava/lang/Object;
.source "CordovaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebViewClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CordovaWebViewClient$1;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebViewClient$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewClient$1$1;->this$1:Lorg/apache/cordova/CordovaWebViewClient$1;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewClient$1$1;->this$1:Lorg/apache/cordova/CordovaWebViewClient$1;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebViewClient$1;->access$0(Lorg/apache/cordova/CordovaWebViewClient$1;)Lorg/apache/cordova/CordovaWebViewClient;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewClient;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "spinner"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    return-void
.end method
