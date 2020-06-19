.class Lcom/robocatapps/thermo/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/robocatapps/thermo/model/Location;

.field final synthetic b:Lcom/robocatapps/thermo/j;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/j;Lcom/robocatapps/thermo/model/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/k;->b:Lcom/robocatapps/thermo/j;

    iput-object p2, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/robocatapps/thermo/model/Location;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->b:Lcom/robocatapps/thermo/j;

    invoke-static {v1}, Lcom/robocatapps/thermo/j;->a(Lcom/robocatapps/thermo/j;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v3}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    new-instance v0, Lcom/robocatapps/thermo/m;

    invoke-direct {v0}, Lcom/robocatapps/thermo/m;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/a/a/a;->a(Ljava/lang/String;)Lcom/google/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v3}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/robocatapps/thermo/model/Location;->setCountryCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/robocatapps/thermo/model/Location;->set(DD)V

    :cond_6
    iget-object v1, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCity()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/robocatapps/thermo/model/Location;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v0}, Lcom/robocatapps/thermo/model/Location;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/robocatapps/thermo/k;->a:Lcom/robocatapps/thermo/model/Location;

    :goto_2
    move-object v6, v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v6

    goto :goto_2

    :cond_a
    move-object v0, v6

    goto/16 :goto_1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/k;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    return-object v0
.end method
