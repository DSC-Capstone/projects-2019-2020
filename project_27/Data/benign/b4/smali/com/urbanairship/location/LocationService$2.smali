.class Lcom/urbanairship/location/LocationService$2;
.super Lcom/urbanairship/location/ILocationService$Stub;


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

    iput-object p1, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-direct {p0}, Lcom/urbanairship/location/ILocationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createLocationEvent(Landroid/location/Location;II)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$702(Lcom/urbanairship/location/LocationService;Landroid/location/Location;)Landroid/location/Location;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/LocationEvent;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v2}, Lcom/urbanairship/location/LocationService;->access$700(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;II)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public getBestProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$600(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCriteria()Landroid/location/Criteria;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$800(Lcom/urbanairship/location/LocationService;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$300(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$700(Lcom/urbanairship/location/LocationService;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public requestSingleLocationUpdate(Landroid/location/Criteria;)V
    .locals 6

    const-string v0, "Requesting a single update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$300(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$1100(Lcom/urbanairship/location/LocationService;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$400(Lcom/urbanairship/location/LocationService;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$800(Lcom/urbanairship/location/LocationService;)Landroid/location/Criteria;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->access$300(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v2, v0}, Lcom/urbanairship/location/LocationService;->access$1300(Lcom/urbanairship/location/LocationService;I)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$1200(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v5}, Lcom/urbanairship/location/LocationService;->access$1400(Lcom/urbanairship/location/LocationService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v1}, Lcom/urbanairship/location/LocationService;->access$1200(Lcom/urbanairship/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v0, "There are no available location providers. Retrieving last known location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$1500(Lcom/urbanairship/location/LocationService;)V

    goto :goto_2
.end method

.method public resetProviders()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$400(Lcom/urbanairship/location/LocationService;)V

    invoke-static {}, Lcom/urbanairship/location/LocationService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$500(Lcom/urbanairship/location/LocationService;)V

    :cond_0
    return-void
.end method

.method public setCriteria(Landroid/location/Criteria;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->access$802(Lcom/urbanairship/location/LocationService;Landroid/location/Criteria;)Landroid/location/Criteria;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$2;->this$0:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->access$900(Lcom/urbanairship/location/LocationService;)V

    return-void
.end method
