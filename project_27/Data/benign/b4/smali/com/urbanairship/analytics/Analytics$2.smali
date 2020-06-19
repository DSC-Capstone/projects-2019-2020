.class Lcom/urbanairship/analytics/Analytics$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics;

.field final synthetic val$event:Lcom/urbanairship/analytics/Event;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$2;->this$0:Lcom/urbanairship/analytics/Analytics;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$2;->val$event:Lcom/urbanairship/analytics/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/urbanairship/analytics/Analytics$AddEventTask;

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$2;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/Analytics$AddEventTask;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/urbanairship/analytics/Event;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/urbanairship/analytics/Analytics$2;->val$event:Lcom/urbanairship/analytics/Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics$AddEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to add analytics event."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
