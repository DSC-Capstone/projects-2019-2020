.class public Lcom/robocatapps/thermo/model/Location;
.super Ljava/lang/Object;


# static fields
.field public static final NULL:D


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, v1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/robocatapps/thermo/model/Location;->mLongitude:D

    iput-wide v1, p0, Lcom/robocatapps/thermo/model/Location;->mLatitude:D

    iput-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0, p5, p6}, Lcom/robocatapps/thermo/model/Location;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/robocatapps/thermo/model/Location;->set(DD)V

    iput-object p7, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/Address;)V
    .locals 8

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/robocatapps/thermo/model/Location;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v0, p0

    move-wide v3, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/robocatapps/thermo/model/Location;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/robocatapps/thermo/model/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/robocatapps/thermo/model/Location;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    :goto_2
    const-string v3, ", "

    invoke-static {v3}, Lcom/google/a/a/a;->a(Ljava/lang/String;)Lcom/google/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/a/a;->a()Lcom/google/a/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    goto :goto_2
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/robocatapps/thermo/model/Location;->mLongitude:D

    return-wide v0
.end method

.method public hasCountry()Z
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCountryCity()Z
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCountryCode()Z
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatLon()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/robocatapps/thermo/model/Location;->mLatitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/robocatapps/thermo/model/Location;->mLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/robocatapps/thermo/model/Location;->mLatitude:D

    iput-wide p3, p0, Lcom/robocatapps/thermo/model/Location;->mLongitude:D

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    iput-object p2, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/a/a/f;->a(Ljava/lang/Object;)Lcom/google/a/a/h;

    move-result-object v0

    const-string v1, "lat"

    iget-wide v2, p0, Lcom/robocatapps/thermo/model/Location;->mLatitude:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/h;->a(Ljava/lang/String;D)Lcom/google/a/a/h;

    move-result-object v0

    const-string v1, "lon"

    iget-wide v2, p0, Lcom/robocatapps/thermo/model/Location;->mLongitude:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/h;->a(Ljava/lang/String;D)Lcom/google/a/a/h;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Location;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/h;

    move-result-object v0

    const-string v1, "city"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Location;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/h;

    move-result-object v0

    const-string v1, "CC"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Location;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
