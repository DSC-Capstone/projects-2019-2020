.class public Lcom/urbanairship/location/LastLocationFinder;
.super Ljava/lang/Object;


# instance fields
.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/urbanairship/location/LastLocationFinder;->locationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public getLastBestLocation(IJ)Landroid/location/Location;
    .locals 12

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/urbanairship/location/LastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v8

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/urbanairship/location/LastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    cmp-long v10, v0, p2

    if-gez v10, :cond_0

    cmpg-float v10, v4, v5

    if-gez v10, :cond_0

    move v2, v4

    move-object v3, v6

    :goto_1
    move v5, v2

    move-object v7, v3

    move-wide v2, v0

    goto :goto_0

    :cond_0
    cmp-long v4, v0, p2

    if-lez v4, :cond_2

    cmpl-float v4, v5, v8

    if-nez v4, :cond_2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move v2, v5

    move-object v3, v6

    goto :goto_1

    :cond_1
    return-object v7

    :cond_2
    move-wide v0, v2

    move v2, v5

    move-object v3, v7

    goto :goto_1
.end method
