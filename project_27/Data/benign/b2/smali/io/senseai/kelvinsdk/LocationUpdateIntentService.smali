.class public Lio/senseai/kelvinsdk/LocationUpdateIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Loc.eInt.Serv.LOG_TAG"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "io.senseai.kelvinsdk.LocationUpdateIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/LocationUpdateIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/LocationUpdateIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationResult;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/location/Location;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/LocationUpdateIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˏ(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/LocationUpdateIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˏ(Landroid/content/Context;)V

    goto :goto_0
.end method
