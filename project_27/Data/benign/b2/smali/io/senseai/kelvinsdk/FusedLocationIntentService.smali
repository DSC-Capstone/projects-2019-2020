.class public Lio/senseai/kelvinsdk/FusedLocationIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"

# interfaces
.implements Laai;
.implements Laaj;


# static fields
.field public static final ACTION_STOP_LOCATION:Ljava/lang/String; = "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_STOP_COLLECTION"

.field public static final ACTION_UPDATE_LOCATION_PARAMS:Ljava/lang/String; = "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_UPDATE_LOCATION_PARAMS"

.field public static final KEY_FASTEST_INTERVAL:Ljava/lang/String;

.field public static final KEY_INTERVAL:Ljava/lang/String;

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final ˊ:Ljava/lang/String;


# instance fields
.field private ˋ:Laag;

.field private ˎ:I

.field private ˏ:I

.field private ᐝ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".LOG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->LOG_TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".KEY_INTERVAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_INTERVAL:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".KEY_FASTEST_INTERVAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_FASTEST_INTERVAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "io.senseai.kelvinsdk.FusedLocationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ᐝ:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ᐝ:Z

    .line 45
    return-void
.end method

.method private ˊ()V
    .locals 5

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 134
    iget v1, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˎ:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 135
    iget v1, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˏ:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    .line 136
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/senseai/kelvinsdk/LocationUpdateIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 141
    sget-object v2, Lapq;->b:Lapk;

    iget-object v3, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v2, v3, v0, v1}, Lapk;->a(Laag;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Laan;

    .line 142
    return-void
.end method

.method private ˋ()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/LocationUpdateIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    sget-object v1, Lapq;->b:Lapk;

    iget-object v2, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v1, v2, v0}, Lapk;->a(Laag;Landroid/app/PendingIntent;)Laan;

    .line 151
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->c()V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ᐝ:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ()V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 52
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Laah;

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laah;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Laah;->a(Laai;)Laah;

    move-result-object v0

    invoke-virtual {v0, p0}, Laah;->a(Laaj;)Laah;

    move-result-object v0

    sget-object v1, Lapq;->a:Lzt;

    invoke-virtual {v0, v1}, Laah;->a(Lzt;)Laah;

    move-result-object v0

    invoke-virtual {v0}, Laah;->b()Laag;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    .line 55
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xa

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_STOP_COLLECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ᐝ:Z

    .line 2101
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2102
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Laag;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    .line 2111
    :cond_1
    :goto_0
    return-void

    .line 2103
    :cond_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2104
    invoke-direct {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ()V

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_UPDATE_LOCATION_PARAMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    sget-object v1, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_INTERVAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˎ:I

    .line 73
    sget-object v1, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_FASTEST_INTERVAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˏ:I

    .line 2109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ᐝ:Z

    .line 2110
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2111
    invoke-direct {p0}, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˊ()V

    goto :goto_0

    .line 2112
    :cond_4
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    invoke-interface {v0}, Laag;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2116
    iget-object v0, p0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->ˋ:Laag;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Laag;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0
.end method
