.class Lcom/urbanairship/richpush/RichPushManager$3;
.super Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/richpush/RichPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$3;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const-string v0, "com.urbanairship.richpush.MESSAGE_ID_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v0, "Message retrieval succeeded"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$3;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->access$100(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$3;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->access$100(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushManager$Listener;->onRetrieveMessage(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "RichPushManager unable to complete onRetrieveMessage() callback."

    invoke-static {v5, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "Message retrieval failed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
