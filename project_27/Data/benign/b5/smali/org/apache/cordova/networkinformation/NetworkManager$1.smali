.class Lorg/apache/cordova/networkinformation/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/networkinformation/NetworkManager;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/networkinformation/NetworkManager;


# direct methods
.method constructor <init>(Lorg/apache/cordova/networkinformation/NetworkManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v0, v0, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v1, v1, Lorg/apache/cordova/networkinformation/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$0(Lorg/apache/cordova/networkinformation/NetworkManager;Landroid/net/NetworkInfo;)V

    .line 109
    :cond_0
    return-void
.end method
