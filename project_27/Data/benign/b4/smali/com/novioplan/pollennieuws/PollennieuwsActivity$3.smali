.class Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;
.super Ljava/lang/Object;
.source "PollennieuwsActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/PollennieuwsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iput-object p1, v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    .line 324
    const-string v0, "OK DIT IS ACCURACY!!!!!>>>>"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->updateLocation()V

    .line 326
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 328
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 332
    return-void
.end method
