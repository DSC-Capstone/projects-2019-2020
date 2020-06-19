.class Lorg/apache/cordova/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/PluginManager;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$callbackId:Ljava/lang/String;

.field private final synthetic val$rawArgs:Ljava/lang/String;

.field private final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/PluginManager$1;->this$0:Lorg/apache/cordova/PluginManager;

    iput-object p2, p0, Lorg/apache/cordova/PluginManager$1;->val$service:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/PluginManager$1;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/PluginManager$1;->val$callbackId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/PluginManager$1;->val$rawArgs:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/cordova/PluginManager$1;->this$0:Lorg/apache/cordova/PluginManager;

    iget-object v1, p0, Lorg/apache/cordova/PluginManager$1;->val$service:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/cordova/PluginManager$1;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/PluginManager$1;->val$callbackId:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/cordova/PluginManager$1;->val$rawArgs:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/cordova/PluginManager;->access$2(Lorg/apache/cordova/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/apache/cordova/PluginManager$1;->this$0:Lorg/apache/cordova/PluginManager;

    invoke-static {v0}, Lorg/apache/cordova/PluginManager;->access$0(Lorg/apache/cordova/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 224
    return-void
.end method
