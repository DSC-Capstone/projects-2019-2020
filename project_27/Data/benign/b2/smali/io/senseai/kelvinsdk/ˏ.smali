.class final Lio/senseai/kelvinsdk/ˏ;
.super Lio/senseai/kelvinsdk/IF;
.source "SourceFile"


# instance fields
.field private ʻ:Lio/senseai/kelvinsdk/ˏ$3;

.field private ˎ:Laag;

.field private ˏ:Lio/senseai/kelvinsdk/ˏ$1;

.field private ᐝ:Lio/senseai/kelvinsdk/ˏ$2;


# direct methods
.method public constructor <init>(Lio/senseai/kelvinsdk/LocationService$2;Lio/senseai/kelvinsdk/LocationService;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lio/senseai/kelvinsdk/IF;-><init>(Lio/senseai/kelvinsdk/LocationService$2;Lio/senseai/kelvinsdk/LocationService;)V

    .line 66
    new-instance v0, Lio/senseai/kelvinsdk/ˏ$3;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/ˏ$3;-><init>(Lio/senseai/kelvinsdk/ˏ;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ʻ:Lio/senseai/kelvinsdk/ˏ$3;

    .line 28
    new-instance v0, Lio/senseai/kelvinsdk/ˏ$1;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/ˏ$1;-><init>(Lio/senseai/kelvinsdk/ˏ;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˏ:Lio/senseai/kelvinsdk/ˏ$1;

    .line 41
    new-instance v0, Lio/senseai/kelvinsdk/ˏ$2;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/ˏ$2;-><init>(Lio/senseai/kelvinsdk/ˏ;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ᐝ:Lio/senseai/kelvinsdk/ˏ$2;

    .line 47
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/ˏ;)Laag;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    return-object v0
.end method

.method private declared-synchronized ˊ(Lio/senseai/kelvinsdk/LocationService;)V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    new-instance v0, Laah;

    invoke-direct {v0, p1}, Laah;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˏ;->ˏ:Lio/senseai/kelvinsdk/ˏ$1;

    invoke-virtual {v0, v1}, Laah;->a(Laai;)Laah;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˏ;->ᐝ:Lio/senseai/kelvinsdk/ˏ$2;

    invoke-virtual {v0, v1}, Laah;->a(Laaj;)Laah;

    move-result-object v0

    sget-object v1, Lapq;->a:Lzt;

    invoke-virtual {v0, v1}, Laah;->a(Lzt;)Laah;

    move-result-object v0

    invoke-virtual {v0}, Laah;->b()Laag;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ˊ()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˋ:Lio/senseai/kelvinsdk/LocationService;

    invoke-direct {p0, v0}, Lio/senseai/kelvinsdk/ˏ;->ˊ(Lio/senseai/kelvinsdk/LocationService;)V

    .line 76
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    invoke-interface {v0}, Laag;->b()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˊ:Lio/senseai/kelvinsdk/LocationService$2;

    sget-object v1, Lapq;->b:Lapk;

    iget-object v2, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    invoke-interface {v1, v2}, Lapk;->a(Laag;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/senseai/kelvinsdk/LocationService$LocationClientCallbacks;->onLocationUpdate(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public final ˋ()V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lapq;->b:Lapk;

    iget-object v1, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    iget-object v2, p0, Lio/senseai/kelvinsdk/ˏ;->ʻ:Lio/senseai/kelvinsdk/ˏ$3;

    invoke-interface {v0, v1, v2}, Lapk;->a(Laag;Lapn;)Laan;

    .line 91
    iget-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    invoke-interface {v0}, Laag;->c()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ˏ;->ˎ:Laag;

    .line 93
    return-void
.end method
