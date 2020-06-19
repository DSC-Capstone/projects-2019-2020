.class Lyd;
.super Lxq;


# instance fields
.field private a:Z

.field private final b:Lya;

.field private final c:Lwy;

.field private final d:Lwx;

.field private final e:Lxv;

.field private f:J

.field private final g:Lyt;

.field private final h:Lyt;

.field private final i:Lxd;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lxr;Lxt;)V
    .locals 2

    invoke-direct {p0, p1}, Lxq;-><init>(Lxr;)V

    invoke-static {p2}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lyd;->f:J

    invoke-virtual {p2, p1}, Lxt;->k(Lxr;)Lwx;

    move-result-object v0

    iput-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {p2, p1}, Lxt;->m(Lxr;)Lya;

    move-result-object v0

    iput-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {p2, p1}, Lxt;->n(Lxr;)Lwy;

    move-result-object v0

    iput-object v0, p0, Lyd;->c:Lwy;

    invoke-virtual {p2, p1}, Lxt;->o(Lxr;)Lxv;

    move-result-object v0

    iput-object v0, p0, Lyd;->e:Lxv;

    new-instance v0, Lxd;

    invoke-virtual {p0}, Lyd;->n()Lant;

    move-result-object v1

    invoke-direct {v0, v1}, Lxd;-><init>(Lant;)V

    iput-object v0, p0, Lyd;->i:Lxd;

    new-instance v0, Lye;

    invoke-direct {v0, p0, p1}, Lye;-><init>(Lyd;Lxr;)V

    iput-object v0, p0, Lyd;->g:Lyt;

    new-instance v0, Lyf;

    invoke-direct {v0, p0, p1}, Lyf;-><init>(Lyd;Lxr;)V

    iput-object v0, p0, Lyd;->h:Lyt;

    return-void
.end method

.method private J()V
    .locals 2

    invoke-virtual {p0}, Lyd;->k()Lxr;

    move-result-object v0

    invoke-virtual {v0}, Lxr;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lyd;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lvt;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lyd;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lyd;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lvu;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lyd;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private K()V
    .locals 1

    new-instance v0, Lyh;

    invoke-direct {v0, p0}, Lyh;-><init>(Lyd;)V

    invoke-virtual {p0, v0}, Lyd;->a(Lyx;)V

    return-void
.end method

.method private L()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->g()I

    invoke-virtual {p0}, Lyd;->G()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lyd;->h:Lyt;

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lyt;->a(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private M()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lyd;->k:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lyd;->H()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private N()V
    .locals 6

    invoke-virtual {p0}, Lyd;->u()Lyw;

    move-result-object v0

    invoke-virtual {v0}, Lyw;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lyw;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lyd;->F()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lyd;->n()Lant;

    move-result-object v1

    invoke-interface {v1}, Lant;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->k()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->j()J

    move-result-wide v2

    const-string v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lyd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyw;->d()V

    goto :goto_0
.end method

.method private O()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lyd;->N()V

    invoke-virtual {p0}, Lyd;->H()J

    move-result-wide v2

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->d()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lyd;->n()Lant;

    move-result-object v4

    invoke-interface {v4}, Lant;->a()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    :goto_0
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lyd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lyd;->g:Lyt;

    invoke-virtual {v2}, Lyt;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lyd;->g:Lyt;

    invoke-virtual {v4}, Lyt;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lyd;->g:Lyt;

    invoke-virtual {v2, v0, v1}, Lyt;->b(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lyd;->g:Lyt;

    invoke-virtual {v2, v0, v1}, Lyt;->a(J)V

    goto :goto_1
.end method

.method private P()V
    .locals 0

    invoke-direct {p0}, Lyd;->Q()V

    invoke-direct {p0}, Lyd;->R()V

    return-void
.end method

.method private Q()V
    .locals 1

    iget-object v0, p0, Lyd;->g:Lyt;

    invoke-virtual {v0}, Lyt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lyd;->g:Lyt;

    invoke-virtual {v0}, Lyt;->d()V

    return-void
.end method

.method private R()V
    .locals 2

    invoke-virtual {p0}, Lyd;->u()Lyw;

    move-result-object v0

    invoke-virtual {v0}, Lyw;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyw;->e()V

    :cond_0
    return-void
.end method

.method private a(Lxu;Laop;)V
    .locals 8

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lze;

    invoke-virtual {p0}, Lyd;->k()Lxr;

    move-result-object v1

    invoke-direct {v0, v1}, Lze;-><init>(Lxr;)V

    invoke-virtual {p1}, Lxu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lze;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lxu;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lze;->b(Z)V

    invoke-virtual {v0}, Lze;->l()Laoc;

    move-result-object v5

    const-class v0, Lane;

    invoke-virtual {v5, v0}, Laoc;->b(Ljava/lang/Class;)Laoe;

    move-result-object v0

    check-cast v0, Lane;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lane;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lane;->b(Z)V

    invoke-virtual {v5, p2}, Laoc;->a(Laoe;)V

    const-class v1, Land;

    invoke-virtual {v5, v1}, Laoc;->b(Ljava/lang/Class;)Laoe;

    move-result-object v1

    check-cast v1, Land;

    const-class v2, Laoo;

    invoke-virtual {v5, v2}, Laoc;->b(Ljava/lang/Class;)Laoe;

    move-result-object v2

    check-cast v2, Laoo;

    invoke-virtual {p1}, Lxu;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Laoo;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Laoo;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Laoo;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Laoo;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Lane;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Land;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lxu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Laoc;->a(J)V

    invoke-virtual {v5}, Laoc;->e()V

    return-void
.end method

.method static synthetic a(Lyd;)V
    .locals 0

    invoke-direct {p0}, Lyd;->K()V

    return-void
.end method

.method static synthetic b(Lyd;)V
    .locals 0

    invoke-direct {p0}, Lyd;->L()V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lyd;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public F()J
    .locals 2

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->h()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public G()V
    .locals 1

    invoke-virtual {p0}, Lyd;->k()Lxr;

    move-result-object v0

    invoke-virtual {v0}, Lxr;->s()V

    invoke-virtual {p0}, Lyd;->D()V

    invoke-direct {p0}, Lyd;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->b()V

    invoke-direct {p0}, Lyd;->P()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->b()V

    invoke-direct {p0}, Lyd;->P()V

    goto :goto_0

    :cond_1
    sget-object v0, Lyz;->J:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->a()V

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->e()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lyd;->O()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lyd;->P()V

    invoke-direct {p0}, Lyd;->N()V

    goto :goto_0
.end method

.method public H()J
    .locals 4

    iget-wide v0, p0, Lyd;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lyd;->f:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lyd;->v()Lxi;

    move-result-object v2

    invoke-virtual {v2}, Lxi;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lyd;->v()Lxi;

    move-result-object v0

    invoke-virtual {v0}, Lxi;->g()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public I()V
    .locals 1

    invoke-virtual {p0}, Lyd;->D()V

    invoke-virtual {p0}, Lyd;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyd;->k:Z

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->d()V

    invoke-virtual {p0}, Lyd;->G()V

    return-void
.end method

.method public a(Lxu;Z)J
    .locals 5

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyd;->D()V

    invoke-virtual {p0}, Lyd;->m()V

    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->b()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {p1}, Lxu;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lxu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lya;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {p1}, Lxu;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lxu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lxu;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lya;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0, v1}, Lxu;->a(J)V

    :goto_0
    iget-object v2, p0, Lyd;->b:Lya;

    invoke-virtual {v2, p1}, Lya;->a(Lxu;)V

    iget-object v2, p0, Lyd;->b:Lya;

    invoke-virtual {v2}, Lya;->c()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lyd;->b:Lya;

    invoke-virtual {v2}, Lya;->d()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_2
    invoke-virtual {p1, v2, v3}, Lxu;->a(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v0, -0x1

    :try_start_4
    iget-object v2, p0, Lyd;->b:Lya;

    invoke-virtual {v2}, Lya;->d()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lyd;->b:Lya;

    invoke-virtual {v1}, Lya;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->E()V

    iget-object v0, p0, Lyd;->c:Lwy;

    invoke-virtual {v0}, Lwy;->E()V

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->E()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Laei;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lyd;->m()V

    invoke-virtual {p0}, Lyd;->l()V

    invoke-virtual {p0}, Lyd;->p()Lww;

    move-result-object v0

    invoke-static {v0, p1}, Lxh;->a(Lww;Ljava/lang/String;)Laop;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lyd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxa;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->c()Lxd;

    move-result-object v0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v2

    invoke-virtual {v2}, Lyr;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lxd;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lyd;->b:Lya;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lya;->d(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    invoke-direct {p0, v0, v1}, Lyd;->a(Lxu;Laop;)V

    goto :goto_1
.end method

.method public a(Lwq;)V
    .locals 3

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    iget-boolean v0, p0, Lyd;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lyd;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lyd;->b(Lwq;)Lwq;

    move-result-object v1

    invoke-virtual {p0}, Lyd;->g()V

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0, v1}, Lxv;->a(Lwq;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lyd;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lyd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyd;->p()Lww;

    move-result-object v0

    const-string v2, "Service unavailable on package side"

    invoke-virtual {v0, v1, v2}, Lww;->a(Lwq;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0, v1}, Lya;->a(Lwq;)V

    invoke-virtual {p0}, Lyd;->G()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->p()Lww;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lww;->a(Lwq;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Lxu;)V
    .locals 4

    invoke-virtual {p0}, Lyd;->m()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lxu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->c()Lxd;

    move-result-object v0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lxd;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lyd;->p()Lww;

    move-result-object v1

    invoke-static {v1, v0}, Lxh;->a(Lww;Ljava/lang/String;)Laop;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lyd;->a(Lxu;Laop;)V

    goto :goto_0
.end method

.method public a(Lyx;)V
    .locals 2

    iget-wide v0, p0, Lyd;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lyd;->a(Lyx;J)V

    return-void
.end method

.method public a(Lyx;J)V
    .locals 6

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v2

    invoke-virtual {v2}, Lxa;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lyd;->n()Lant;

    move-result-object v0

    invoke-interface {v0}, Lant;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyd;->g()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lyd;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyd;->r()Laog;

    move-result-object v0

    new-instance v1, Lyi;

    invoke-direct {v1, p0, p1, p2, p3}, Lyi;-><init>(Lyd;Lyx;J)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->e()V

    invoke-virtual {p0}, Lyd;->G()V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lyx;->a(Ljava/lang/Throwable;)V

    :cond_4
    iget-wide v0, p0, Lyd;->j:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v1

    invoke-virtual {v1}, Lxa;->e()V

    invoke-virtual {p0}, Lyd;->G()V

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lyx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lyd;->G()V

    return-void
.end method

.method b(Lwq;)Lwq;
    .locals 3

    invoke-virtual {p1}, Lwq;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->g()Lxc;

    move-result-object v0

    invoke-virtual {v0}, Lxc;->a()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lwq;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lwq;->a(Lxp;Lwq;Ljava/util/Map;)Lwq;

    move-result-object p1

    goto :goto_0
.end method

.method b()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lyd;->D()V

    iget-boolean v0, p0, Lyd;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Laei;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lyd;->a:Z

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lyd;->J()V

    :cond_0
    invoke-virtual {p0}, Lyd;->r()Laog;

    move-result-object v0

    new-instance v1, Lyg;

    invoke-direct {v1, p0}, Lyg;-><init>(Lyd;)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    invoke-virtual {p0}, Lyd;->D()V

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v0

    invoke-virtual {v0}, Lxa;->b()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lyd;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lyd;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lyd;->I()V

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lyd;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lyd;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lyd;->I()V

    :cond_1
    invoke-virtual {p0}, Lyd;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lyd;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lyd;->g()V

    :cond_2
    invoke-virtual {p0}, Lyd;->G()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lyd;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lyd;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()V
    .locals 2

    invoke-virtual {p0}, Lyd;->m()V

    invoke-virtual {p0}, Lyd;->n()Lant;

    move-result-object v0

    invoke-interface {v0}, Lant;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lyd;->j:J

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-virtual {p0}, Lyd;->m()V

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyd;->h()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected g()V
    .locals 3

    iget-boolean v0, p0, Lyd;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->x()J

    move-result-wide v0

    iget-object v2, p0, Lyd;->i:Lxd;

    invoke-virtual {v2, v0, v1}, Lxd;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd;->i:Lxd;

    invoke-virtual {v0}, Lxd;->a()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lyd;->i:Lxd;

    invoke-virtual {v0}, Lxd;->b()V

    invoke-virtual {p0}, Lyd;->e()V

    goto :goto_0
.end method

.method public h()V
    .locals 6

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    invoke-virtual {p0}, Lyd;->l()V

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lyd;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->l()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lya;->b(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lyd;->G()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lwq;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lya;->c(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq;

    iget-object v2, p0, Lyd;->e:Lxv;

    invoke-virtual {v2, v0}, Lxv;->a(Lwq;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lyd;->G()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto :goto_0
.end method

.method protected i()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lyd;->c:Lwy;

    invoke-virtual {v3}, Lwy;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->l()I

    move-result v0

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->m()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->b()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0, v6, v7}, Lya;->b(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lyd;->P()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lyd;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq;

    invoke-virtual {v0}, Lwq;->c()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lyd;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lyd;->e:Lxv;

    invoke-virtual {v0}, Lxv;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lyd;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq;

    iget-object v1, p0, Lyd;->e:Lxv;

    invoke-virtual {v1, v0}, Lxv;->a(Lwq;)Z

    move-result v1

    if-nez v1, :cond_6

    move-wide v0, v4

    :goto_5
    iget-object v4, p0, Lyd;->c:Lwy;

    invoke-virtual {v4}, Lwy;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lyd;->c:Lwy;

    invoke-virtual {v4, v8}, Lwy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lwq;->c()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lyd;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lwq;->c()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lya;->c(J)V

    invoke-virtual {v0}, Lwq;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :cond_7
    :try_start_c
    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0, v9}, Lya;->a(Ljava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_f
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->c()V

    iget-object v0, p0, Lyd;->b:Lya;

    invoke-virtual {v0}, Lya;->d()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :cond_9
    :try_start_12
    iget-object v4, p0, Lyd;->b:Lya;

    invoke-virtual {v4}, Lya;->c()V

    iget-object v4, p0, Lyd;->b:Lya;

    invoke-virtual {v4}, Lya;->d()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lyd;->b:Lya;

    invoke-virtual {v1}, Lya;->c()V

    iget-object v1, p0, Lyd;->b:Lya;

    invoke-virtual {v1}, Lya;->d()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lyd;->P()V

    goto/16 :goto_2

    :cond_a
    move-wide v0, v4

    goto/16 :goto_5
.end method

.method public j()V
    .locals 4

    invoke-static {}, Laog;->d()V

    invoke-virtual {p0}, Lyd;->D()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lyd;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lyd;->j:J

    invoke-virtual {p0}, Lyd;->q()Lyr;

    move-result-object v2

    invoke-virtual {v2}, Lyr;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lyd;->g()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lyd;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lyd;->w()Lxa;

    move-result-object v2

    invoke-virtual {v2}, Lxa;->e()V

    invoke-virtual {p0}, Lyd;->G()V

    iget-wide v2, p0, Lyd;->j:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyd;->d:Lwx;

    invoke-virtual {v0}, Lwx;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lyd;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyd;->G()V

    goto :goto_0
.end method
