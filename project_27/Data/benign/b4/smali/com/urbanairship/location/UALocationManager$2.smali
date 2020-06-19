.class final Lcom/urbanairship/location/UALocationManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/urbanairship/location/ILocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/urbanairship/location/ILocationService;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$402(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$502(Z)Z

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$600()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, ".urbanairship.location.LOCATION_SERVICE_BOUND"

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$402(Lcom/urbanairship/location/ILocationService;)Lcom/urbanairship/location/ILocationService;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$502(Z)Z

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->access$600()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, ".urbanairship.location.LOCATION_SERVICE_UNBOUND"

    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->getLocationIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "LocationService unbound."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
