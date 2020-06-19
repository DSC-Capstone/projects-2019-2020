.class Lcom/urbanairship/location/LocationService$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/LocationService;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService$3;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, ".urbanairship.location.LOCATION_CHANGED"

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".urbanairship.location.SINGLE_LOCATION_CHANGED"

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "Received a location update."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    sget-object v2, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, ".urbanairship.location.SINGLE_LOCATION_CHANGED"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Received a single-shot location update."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$3;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->access$1200(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$3;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v2}, Lcom/urbanairship/location/LocationService;->access$1400(Lcom/urbanairship/location/LocationService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    sget-object v2, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const/4 v1, 0x0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->shared()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationManager;->getPreferences()Lcom/urbanairship/location/LocationPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/LocationPreferences;->isForegroundLocationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->unbindService()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/urbanairship/location/LocationService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.urbanairship.location.STOP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/urbanairship/location/LocationService$3;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v3, v0}, Lcom/urbanairship/location/LocationService;->access$702(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)Landroid/location/Location;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/analytics/LocationEvent;

    const-string v5, "com.urbanairship.location.REQUESTED_ACCURACY"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v0, v2, v5, v1}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    invoke-virtual {v3, v4}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, ".urbanairship.location.LOCATION_UPDATE"

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.location.LOCATION"

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$3;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v2}, Lcom/urbanairship/location/LocationService;->access$700(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    iget v1, v1, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    goto :goto_1
.end method
