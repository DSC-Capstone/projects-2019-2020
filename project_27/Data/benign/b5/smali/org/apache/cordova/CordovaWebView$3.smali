.class Lorg/apache/cordova/CordovaWebView$3;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaWebView;

.field private final synthetic val$currentLoadUrlTimeout:I

.field private final synthetic val$loadError:Ljava/lang/Runnable;

.field private final synthetic val$loadUrlTimeoutValue:I

.field private final synthetic val$me:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;ILorg/apache/cordova/CordovaWebView;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$3;->this$0:Lorg/apache/cordova/CordovaWebView;

    iput p2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadUrlTimeoutValue:I

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    iput p4, p0, Lorg/apache/cordova/CordovaWebView$3;->val$currentLoadUrlTimeout:I

    iput-object p5, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadError:Ljava/lang/Runnable;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :try_start_1
    iget v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadUrlTimeoutValue:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 480
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    iget v1, v1, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    iget v2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$currentLoadUrlTimeout:I

    if-ne v1, v2, :cond_0

    .line 489
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    invoke-static {v1}, Lorg/apache/cordova/CordovaWebView;->access$1(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/CordovaInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    :cond_0
    return-void

    .line 480
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
