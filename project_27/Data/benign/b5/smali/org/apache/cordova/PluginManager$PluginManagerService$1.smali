.class Lorg/apache/cordova/PluginManager$PluginManagerService$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/PluginManager$PluginManagerService;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/PluginManager$PluginManagerService;


# direct methods
.method constructor <init>(Lorg/apache/cordova/PluginManager$PluginManagerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/PluginManager$PluginManagerService$1;->this$1:Lorg/apache/cordova/PluginManager$PluginManagerService;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/cordova/PluginManager$PluginManagerService$1;->this$1:Lorg/apache/cordova/PluginManager$PluginManagerService;

    invoke-static {v0}, Lorg/apache/cordova/PluginManager$PluginManagerService;->access$1(Lorg/apache/cordova/PluginManager$PluginManagerService;)Lorg/apache/cordova/PluginManager;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/PluginManager;->access$0(Lorg/apache/cordova/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 451
    return-void
.end method
