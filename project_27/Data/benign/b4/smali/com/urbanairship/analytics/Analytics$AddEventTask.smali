.class Lcom/urbanairship/analytics/Analytics$AddEventTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/urbanairship/analytics/Event;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/urbanairship/analytics/Event;

    invoke-virtual {p0, p1}, Lcom/urbanairship/analytics/Analytics$AddEventTask;->doInBackground([Lcom/urbanairship/analytics/Event;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/urbanairship/analytics/Event;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, p1, v1

    const-class v4, Lcom/urbanairship/analytics/EventDataManager;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    iget-object v5, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v5}, Lcom/urbanairship/analytics/Analytics;->access$600(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventUploadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventUploadManager;->getMaxTotalDBSize()I

    move-result v5

    if-le v0, v5, :cond_2

    const-string v0, "DB size exceeded. Deleting non-critical events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    const-string v0, "activity_started"

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "activity_stopped"

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Database full. Not logging activity start/stop events"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    monitor-exit v4

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "Deleting activity start/stop events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    const-string v5, "activity_started"

    invoke-virtual {v0, v5}, Lcom/urbanairship/analytics/EventDataManager;->deleteEventType(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    const-string v5, "activity_stopped"

    invoke-virtual {v0, v5}, Lcom/urbanairship/analytics/EventDataManager;->deleteEventType(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    :cond_2
    iget-object v5, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v5}, Lcom/urbanairship/analytics/Analytics;->access$600(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventUploadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventUploadManager;->getMaxTotalDBSize()I

    move-result v5

    if-le v0, v5, :cond_3

    const-string v0, "Deleting oldest session."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getOldestSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v5}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/urbanairship/analytics/EventDataManager;->deleteSession(Ljava/lang/String;)Z

    :cond_3
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$500(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/urbanairship/analytics/EventDataManager;->insertEvent(Lcom/urbanairship/analytics/Event;)I

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "location_updated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$600(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/EventUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventUploadManager;->getLastSendTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    iget-wide v8, v0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$AddEventTask;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->access$100(Lcom/urbanairship/analytics/Analytics;)Z

    move-result v0

    if-eqz v0, :cond_5

    cmp-long v0, v6, v8

    if-gez v0, :cond_5

    sub-long v0, v8, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationEvent was inserted, but may not be updated until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms have passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    monitor-exit v4

    :cond_4
    return-object v12

    :cond_5
    invoke-static {}, Lcom/urbanairship/analytics/EventService;->startService()V

    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
