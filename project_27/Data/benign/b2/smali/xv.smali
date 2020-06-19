.class public Lxv;
.super Lxq;


# instance fields
.field private final a:Lxx;

.field private b:Lwr;

.field private final c:Lyt;

.field private d:Lxd;


# direct methods
.method protected constructor <init>(Lxr;)V
    .locals 2

    invoke-direct {p0, p1}, Lxq;-><init>(Lxr;)V

    new-instance v0, Lxd;

    invoke-virtual {p1}, Lxr;->d()Lant;

    move-result-object v1

    invoke-direct {v0, v1}, Lxd;-><init>(Lant;)V

    iput-object v0, p0, Lxv;->d:Lxd;

    new-instance v0, Lxx;

    invoke-direct {v0, p0}, Lxx;-><init>(Lxv;)V

    iput-object v0, p0, Lxv;->a:Lxx;

    new-instance v0, Lxw;

    invoke-direct {v0, p0, p1}, Lxw;-><init>(Lxv;Lxr;)V

    iput-object v0, p0, Lxv;->c:Lyt;

    return-void
.end method

.method static synthetic a(Lxv;)Lxx;
    .locals 1

    iget-object v0, p0, Lxv;->a:Lxx;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Lxv;->m()V

    iget-object v0, p0, Lxv;->b:Lwr;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lxv;->b:Lwr;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lxv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lxv;->g()V

    :cond_0
    return-void
.end method

.method private a(Lwr;)V
    .locals 1

    invoke-virtual {p0}, Lxv;->m()V

    iput-object p1, p0, Lxv;->b:Lwr;

    invoke-direct {p0}, Lxv;->e()V

    invoke-virtual {p0}, Lxv;->t()Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->h()V

    return-void
.end method

.method static synthetic a(Lxv;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lxv;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lxv;Lwr;)V
    .locals 0

    invoke-direct {p0, p1}, Lxv;->a(Lwr;)V

    return-void
.end method

.method static synthetic b(Lxv;)V
    .locals 0

    invoke-direct {p0}, Lxv;->f()V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lxv;->d:Lxd;

    invoke-virtual {v0}, Lxd;->a()V

    iget-object v0, p0, Lxv;->c:Lyt;

    invoke-virtual {p0}, Lxv;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lyt;->a(J)V

    return-void
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lxv;->m()V

    invoke-virtual {p0}, Lxv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lxv;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lxv;->d()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lxv;->t()Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->f()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lwq;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lxv;->m()V

    invoke-virtual {p0}, Lxv;->D()V

    iget-object v0, p0, Lxv;->b:Lwr;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lwq;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lxv;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->o()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lwq;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lwq;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lwr;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lxv;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxv;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lxv;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lxv;->m()V

    invoke-virtual {p0}, Lxv;->D()V

    iget-object v0, p0, Lxv;->b:Lwr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lxv;->m()V

    invoke-virtual {p0}, Lxv;->D()V

    iget-object v1, p0, Lxv;->b:Lwr;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lxv;->a:Lxx;

    invoke-virtual {v1}, Lxx;->a()Lwr;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lxv;->b:Lwr;

    invoke-direct {p0}, Lxv;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lxv;->m()V

    invoke-virtual {p0}, Lxv;->D()V

    :try_start_0
    invoke-static {}, Laew;->a()Laew;

    move-result-object v0

    invoke-virtual {p0}, Lxv;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lxv;->a:Lxx;

    invoke-virtual {v0, v1, v2}, Laew;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lxv;->b:Lwr;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lxv;->b:Lwr;

    invoke-direct {p0}, Lxv;->g()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
