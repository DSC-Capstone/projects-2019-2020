.class final Lio/senseai/kelvinsdk/LocationService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/LocationService$LocationClientCallbacks;


# instance fields
.field private synthetic ˊ:Lio/senseai/kelvinsdk/LocationService;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/LocationService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/senseai/kelvinsdk/LocationService$2;->ˊ:Lio/senseai/kelvinsdk/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationUpdate(Landroid/location/Location;)V
    .locals 9

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 88
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 89
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    .line 90
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 93
    iget-object v7, p0, Lio/senseai/kelvinsdk/LocationService$2;->ˊ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v7}, Lio/senseai/kelvinsdk/LocationService;->ˋ(Lio/senseai/kelvinsdk/LocationService;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 94
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 95
    const-string v8, "KEY_LATITUDE"

    double-to-float v0, v0

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v0, "KEY_LONGITUDE"

    double-to-float v1, v2

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v0, "KEY_ALTITUDE"

    double-to-float v1, v4

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v0, "KEY_ACCURACY"

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$2;->ˊ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/LocationService;->ˎ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$2;->ˊ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/LocationService;->ˎ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$2;->ˊ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/LocationService;->ˏ(Lio/senseai/kelvinsdk/LocationService;)V

    .line 104
    :cond_1
    return-void
.end method
