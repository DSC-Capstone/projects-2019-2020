.class public Lxr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lxr;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lant;

.field private final e:Lyr;

.field private final f:Lww;

.field private final g:Laog;

.field private final h:Lxj;

.field private final i:Lyw;

.field private final j:Lxi;

.field private final k:Lxa;

.field private final l:Lwa;

.field private final m:Lyk;

.field private final n:Lwp;

.field private final o:Lyc;

.field private final p:Lyv;


# direct methods
.method protected constructor <init>(Lxt;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lxt;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Application;

    const-string v2, "getApplicationContext didn\'t return the application"

    invoke-static {v1, v2}, Laei;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lxt;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lxr;->b:Landroid/content/Context;

    iput-object v1, p0, Lxr;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lxt;->h(Lxr;)Lant;

    move-result-object v1

    iput-object v1, p0, Lxr;->d:Lant;

    invoke-virtual {p1, p0}, Lxt;->g(Lxr;)Lyr;

    move-result-object v1

    iput-object v1, p0, Lxr;->e:Lyr;

    invoke-virtual {p1, p0}, Lxt;->f(Lxr;)Lww;

    move-result-object v1

    invoke-virtual {v1}, Lww;->E()V

    iput-object v1, p0, Lxr;->f:Lww;

    invoke-virtual {p0}, Lxr;->e()Lyr;

    move-result-object v1

    invoke-virtual {v1}, Lyr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lxr;->f()Lww;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Analytics 4.5.0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lxr;->t()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lww;->d(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p0}, Lxt;->q(Lxr;)Lxa;

    move-result-object v1

    invoke-virtual {v1}, Lxa;->E()V

    iput-object v1, p0, Lxr;->k:Lxa;

    invoke-virtual {p1, p0}, Lxt;->e(Lxr;)Lxi;

    move-result-object v1

    invoke-virtual {v1}, Lxi;->E()V

    iput-object v1, p0, Lxr;->j:Lxi;

    invoke-virtual {p1, p0}, Lxt;->l(Lxr;)Lxj;

    move-result-object v1

    invoke-virtual {p1, p0}, Lxt;->d(Lxr;)Lyk;

    move-result-object v2

    invoke-virtual {p1, p0}, Lxt;->c(Lxr;)Lwp;

    move-result-object v3

    invoke-virtual {p1, p0}, Lxt;->b(Lxr;)Lyc;

    move-result-object v4

    invoke-virtual {p1, p0}, Lxt;->a(Lxr;)Lyv;

    move-result-object v5

    invoke-virtual {p1, v0}, Lxt;->a(Landroid/content/Context;)Laog;

    move-result-object v0

    invoke-virtual {p0}, Lxr;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Laog;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lxr;->g:Laog;

    invoke-virtual {p1, p0}, Lxt;->i(Lxr;)Lwa;

    move-result-object v0

    invoke-virtual {v2}, Lyk;->E()V

    iput-object v2, p0, Lxr;->m:Lyk;

    invoke-virtual {v3}, Lwp;->E()V

    iput-object v3, p0, Lxr;->n:Lwp;

    invoke-virtual {v4}, Lyc;->E()V

    iput-object v4, p0, Lxr;->o:Lyc;

    invoke-virtual {v5}, Lyv;->E()V

    iput-object v5, p0, Lxr;->p:Lyv;

    invoke-virtual {p1, p0}, Lxt;->p(Lxr;)Lyw;

    move-result-object v2

    invoke-virtual {v2}, Lyw;->E()V

    iput-object v2, p0, Lxr;->i:Lyw;

    invoke-virtual {v1}, Lxj;->E()V

    iput-object v1, p0, Lxr;->h:Lxj;

    invoke-virtual {p0}, Lxr;->e()Lyr;

    move-result-object v2

    invoke-virtual {v2}, Lyr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lxr;->f()Lww;

    move-result-object v2

    const-string v3, "Device AnalyticsService version"

    invoke-virtual {p0}, Lxr;->i()Lxj;

    move-result-object v4

    invoke-virtual {v4}, Lxj;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lww;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lwa;->a()V

    iput-object v0, p0, Lxr;->l:Lwa;

    invoke-virtual {v1}, Lxj;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lxr;->f()Lww;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Analytics 4.5.0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lxr;->t()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "To enable debug logging on a device run:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb shell setprop log.tag.GAv4 DEBUG\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lww;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lxr;
    .locals 8

    invoke-static {p0}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lxr;->a:Lxr;

    if-nez v0, :cond_1

    const-class v1, Lxr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lxr;->a:Lxr;

    if-nez v0, :cond_0

    invoke-static {}, Lanu;->c()Lant;

    move-result-object v0

    invoke-interface {v0}, Lant;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lxt;

    invoke-direct {v5, v4}, Lxt;-><init>(Landroid/content/Context;)V

    new-instance v4, Lxr;

    invoke-direct {v4, v5}, Lxr;-><init>(Lxt;)V

    sput-object v4, Lxr;->a:Lxr;

    invoke-static {}, Lwa;->d()V

    invoke-interface {v0}, Lant;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lyz;->Q:Lza;

    invoke-virtual {v0}, Lza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lxr;->f()Lww;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lww;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lxr;->a:Lxr;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lxq;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p1, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lxq;->C()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Laei;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method static t()I
    .locals 1

    const/16 v0, 0x1c9f

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lxs;

    invoke-direct {v0, p0}, Lxs;-><init>(Lxr;)V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lxr;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lxr;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lant;
    .locals 1

    iget-object v0, p0, Lxr;->d:Lant;

    return-object v0
.end method

.method public e()Lyr;
    .locals 1

    iget-object v0, p0, Lxr;->e:Lyr;

    return-object v0
.end method

.method public f()Lww;
    .locals 1

    iget-object v0, p0, Lxr;->f:Lww;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->f:Lww;

    return-object v0
.end method

.method public g()Lww;
    .locals 1

    iget-object v0, p0, Lxr;->f:Lww;

    return-object v0
.end method

.method public h()Laog;
    .locals 1

    iget-object v0, p0, Lxr;->g:Laog;

    invoke-static {v0}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxr;->g:Laog;

    return-object v0
.end method

.method public i()Lxj;
    .locals 1

    iget-object v0, p0, Lxr;->h:Lxj;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->h:Lxj;

    return-object v0
.end method

.method public j()Lyw;
    .locals 1

    iget-object v0, p0, Lxr;->i:Lyw;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->i:Lyw;

    return-object v0
.end method

.method public k()Lwa;
    .locals 2

    iget-object v0, p0, Lxr;->l:Lwa;

    invoke-static {v0}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxr;->l:Lwa;

    invoke-virtual {v0}, Lwa;->c()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Laei;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lxr;->l:Lwa;

    return-object v0
.end method

.method public l()Lxi;
    .locals 1

    iget-object v0, p0, Lxr;->j:Lxi;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->j:Lxi;

    return-object v0
.end method

.method public m()Lxa;
    .locals 1

    iget-object v0, p0, Lxr;->k:Lxa;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->k:Lxa;

    return-object v0
.end method

.method public n()Lxa;
    .locals 1

    iget-object v0, p0, Lxr;->k:Lxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxr;->k:Lxa;

    invoke-virtual {v0}, Lxa;->C()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lxr;->k:Lxa;

    goto :goto_0
.end method

.method public o()Lwp;
    .locals 1

    iget-object v0, p0, Lxr;->n:Lwp;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->n:Lwp;

    return-object v0
.end method

.method public p()Lyk;
    .locals 1

    iget-object v0, p0, Lxr;->m:Lyk;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->m:Lyk;

    return-object v0
.end method

.method public q()Lyc;
    .locals 1

    iget-object v0, p0, Lxr;->o:Lyc;

    invoke-direct {p0, v0}, Lxr;->a(Lxq;)V

    iget-object v0, p0, Lxr;->o:Lyc;

    return-object v0
.end method

.method public r()Lyv;
    .locals 1

    iget-object v0, p0, Lxr;->p:Lyv;

    return-object v0
.end method

.method public s()V
    .locals 0

    invoke-static {}, Laog;->d()V

    return-void
.end method
