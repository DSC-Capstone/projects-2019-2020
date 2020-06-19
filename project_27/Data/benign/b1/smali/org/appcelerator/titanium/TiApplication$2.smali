.class Lorg/appcelerator/titanium/TiApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "TiApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiApplication;->startExternalStorageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiApplication;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication$2;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 740
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication$2;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v0}, Lorg/appcelerator/titanium/TiApplication;->access$400(Lorg/appcelerator/titanium/TiApplication;)Lorg/appcelerator/titanium/util/TiResponseCache;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication$2;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v1}, Lorg/appcelerator/titanium/TiApplication;->access$300(Lorg/appcelerator/titanium/TiApplication;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->setCacheDir(Ljava/io/File;)V

    .line 742
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication$2;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v0}, Lorg/appcelerator/titanium/TiApplication;->access$400(Lorg/appcelerator/titanium/TiApplication;)Lorg/appcelerator/titanium/util/TiResponseCache;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 743
    const-string v0, "TiApplication"

    const-string v1, "SD card has been mounted. Enabling cache for http responses."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_0
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 748
    const-string v0, "TiApplication"

    const-string v1, "SD card has been unmounted. Disabling cache for http responses."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
