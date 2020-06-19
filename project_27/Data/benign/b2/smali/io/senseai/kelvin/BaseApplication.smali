.class public Lio/senseai/kelvin/BaseApplication;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lwi;

.field private c:Lbov;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvin/BaseApplication;->a:Z

    .line 66
    return-void
.end method

.method public static synthetic a(Lio/senseai/kelvin/BaseApplication;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lio/senseai/kelvin/BaseApplication;->a:Z

    return p1
.end method

.method private declared-synchronized b()Lwi;
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvin/BaseApplication;->b:Lwi;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lwa;->a(Landroid/content/Context;)Lwa;

    move-result-object v0

    .line 56
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Lwa;->a(I)Lwi;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvin/BaseApplication;->b:Lwi;

    .line 59
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvin/BaseApplication;->b:Lwi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lio/senseai/kelvin/BaseApplication;->a:Z

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    new-instance v0, Lbrp;

    invoke-direct {v0}, Lbrp;-><init>()V

    const-string v1, "fonts/DINRoundOffc.ttf"

    invoke-virtual {v0, v1}, Lbrp;->a(Ljava/lang/String;)Lbrp;

    move-result-object v0

    const v1, 0x7f010001

    invoke-virtual {v0, v1}, Lbrp;->a(I)Lbrp;

    move-result-object v0

    invoke-virtual {v0}, Lbrp;->a()Lbro;

    move-result-object v0

    invoke-static {v0}, Lbro;->a(Lbro;)V

    .line 38
    invoke-direct {p0}, Lio/senseai/kelvin/BaseApplication;->b()Lwi;

    .line 41
    invoke-virtual {p0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lboy;->a(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V

    .line 43
    iget-object v0, p0, Lio/senseai/kelvin/BaseApplication;->c:Lbov;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lbov;

    invoke-direct {v0, p0}, Lbov;-><init>(Lio/senseai/kelvin/BaseApplication;)V

    iput-object v0, p0, Lio/senseai/kelvin/BaseApplication;->c:Lbov;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lio/senseai/kelvin/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvin/BaseApplication;->c:Lbov;

    iget-object v2, p0, Lio/senseai/kelvin/BaseApplication;->c:Lbov;

    invoke-virtual {v2}, Lbov;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lay;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvin/BaseApplication;->a:Z

    .line 51
    return-void
.end method
