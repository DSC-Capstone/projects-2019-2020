.class final Lcom/urbanairship/location/UALocationManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager;->init()V
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

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$000()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$100(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$000()Lcom/urbanairship/location/UALocationManager;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->access$100(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationEnabled()Z

    move-result v1

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$000()Lcom/urbanairship/location/UALocationManager;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$100(Lcom/urbanairship/location/UALocationManager;)Lcom/urbanairship/location/LocationPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/LocationPreferences;->isForegroundLocationEnabled()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$200()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->ACTION_APP_FOREGROUND:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$300()V

    goto :goto_0
.end method
