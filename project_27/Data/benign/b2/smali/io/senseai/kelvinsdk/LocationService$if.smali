.class final Lio/senseai/kelvinsdk/LocationService$if;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private ˊ:Landroid/content/IntentFilter;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/LocationService;


# direct methods
.method public constructor <init>(Lio/senseai/kelvinsdk/LocationService;)V
    .locals 2

    .prologue
    .line 189
    iput-object p1, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˋ:Lio/senseai/kelvinsdk/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˊ:Landroid/content/IntentFilter;

    .line 191
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "ACTION_TAKE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˊ:Landroid/content/IntentFilter;

    const-string v1, "ACTION_SET_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "ACTION_TAKE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˋ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/LocationService;->ˎ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˋ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v0}, Lio/senseai/kelvinsdk/LocationService;->ˊ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/ˏ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ˏ;->ˊ()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v1, "ACTION_SET_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.djh.locationofflinemodule.LocationService.KEY_LOCATION_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˋ:Lio/senseai/kelvinsdk/LocationService;

    invoke-static {v1, v0}, Lio/senseai/kelvinsdk/LocationService;->ˊ(Lio/senseai/kelvinsdk/LocationService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final ˊ()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService$if;->ˊ:Landroid/content/IntentFilter;

    return-object v0
.end method
