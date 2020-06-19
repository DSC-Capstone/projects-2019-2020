.class final Lcom/urbanairship/push/embedded/EmbeddedPushManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/embedded/EmbeddedPushManager;->init(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connectivity changed: connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    const-string v0, "isFailover"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Network failover."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->access$000(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)Lcom/urbanairship/push/embedded/HeliumConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->access$000(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)Lcom/urbanairship/push/embedded/HeliumConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->access$100(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->access$200(Lcom/urbanairship/push/embedded/EmbeddedPushManager;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "Connectivity lost, shutting down helium connection"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->clearConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in connectivity changed receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
