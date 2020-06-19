.class public Lcom/novioplan/pollennieuws/Tab2Activity;
.super Landroid/app/Activity;
.source "Tab2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;
    }
.end annotation


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private currentLat:Ljava/lang/String;

.field private currentLocation:Landroid/location/Location;

.field private currentLon:Ljava/lang/String;

.field private listener:Landroid/location/LocationListener;

.field private manager:Landroid/location/LocationManager;

.field private minDistance:F

.field private minTime:I

.field private recordedLocation:Z

.field private webView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "Tab2Activity"

    sput-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/16 v0, 0x1388

    iput v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->minTime:I

    .line 36
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->minDistance:F

    .line 143
    new-instance v0, Lcom/novioplan/pollennieuws/Tab2Activity$3;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/Tab2Activity$3;-><init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/Tab2Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab2Activity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->webView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/novioplan/pollennieuws/Tab2Activity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab2Activity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    return-object p1
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->webView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->webView:Landroid/widget/TextView;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->setContentView(I)V

    .line 47
    sget-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    const-string v1, "...oncreate..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->manager:Landroid/location/LocationManager;

    .line 51
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/Tab2Activity;->setupViews()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    sget-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/Tab2Activity;->setupViews()V

    .line 99
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->manager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-string v0, "Location Manager"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    const-string v0, "We want to use your location, but GPS is currently disabled.\nWould you like to change these settings now?"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const-string v0, "Yes"

    new-instance v1, Lcom/novioplan/pollennieuws/Tab2Activity$1;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/Tab2Activity$1;-><init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v0, "No"

    new-instance v1, Lcom/novioplan/pollennieuws/Tab2Activity$2;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/Tab2Activity$2;-><init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 122
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->manager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    .line 123
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 125
    sget-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    const-string v1, "still waiting for Location data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->manager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget v2, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->minTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->minDistance:F

    iget-object v5, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 141
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLat:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLon:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/novioplan/pollennieuws/Tab2Activity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location data: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->recordedLocation:Z

    if-nez v0, :cond_1

    .line 131
    new-instance v7, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;

    invoke-direct {v7, p0}, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;-><init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V

    .line 132
    .local v7, "task":Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.googleapis.com/maps/api/geocode/json?latlng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/Tab2Activity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sensor=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Lcom/novioplan/pollennieuws/Tab2Activity$ReverseGeoCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
