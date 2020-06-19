.class Lcom/robocatapps/thermo/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/robocatapps/thermo/j;


# direct methods
.method constructor <init>(Lcom/robocatapps/thermo/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/robocatapps/thermo/l;->b:Lcom/robocatapps/thermo/j;

    iput-object p2, p0, Lcom/robocatapps/thermo/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/robocatapps/thermo/model/Location;
    .locals 3

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/robocatapps/thermo/l;->b:Lcom/robocatapps/thermo/j;

    invoke-static {v1}, Lcom/robocatapps/thermo/j;->a(Lcom/robocatapps/thermo/j;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/robocatapps/thermo/l;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/robocatapps/thermo/m;

    invoke-direct {v0}, Lcom/robocatapps/thermo/m;-><init>()V

    throw v0

    :cond_1
    new-instance v1, Lcom/robocatapps/thermo/model/Location;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-direct {v1, v0}, Lcom/robocatapps/thermo/model/Location;-><init>(Landroid/location/Address;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/robocatapps/thermo/l;->a()Lcom/robocatapps/thermo/model/Location;

    move-result-object v0

    return-object v0
.end method
