.class public Lxj;
.super Lxq;


# instance fields
.field private final a:Lyd;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lxr;Lxt;)V
    .locals 1

    invoke-direct {p0, p1}, Lxq;-><init>(Lxr;)V

    invoke-static {p2}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lxt;->j(Lxr;)Lyd;

    move-result-object v0

    iput-object v0, p0, Lxj;->a:Lyd;

    invoke-direct {p0}, Lxj;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxj;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lxj;)Lyd;
    .locals 1

    iget-object v0, p0, Lxj;->a:Lyd;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p0}, Lxj;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lxj;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lxj;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4.5.0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get service version"

    invoke-virtual {p0, v1, v0}, Lxj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public a(Lxu;)J
    .locals 4

    invoke-virtual {p0}, Lxj;->D()V

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lxj;->m()V

    iget-object v0, p0, Lxj;->a:Lyd;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lyd;->a(Lxu;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lxj;->a:Lyd;

    invoke-virtual {v2, p1}, Lyd;->a(Lxu;)V

    :cond_0
    return-wide v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lxj;->a:Lyd;

    invoke-virtual {v0}, Lyd;->E()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Laei;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lxj;->r()Laog;

    move-result-object v0

    new-instance v1, Lxl;

    invoke-direct {v1, p0, p1, p2}, Lxl;-><init>(Lxj;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lwq;)V
    .locals 2

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lxj;->D()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lxj;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lxj;->r()Laog;

    move-result-object v0

    new-instance v1, Lxm;

    invoke-direct {v1, p0, p1}, Lxm;-><init>(Lxj;Lwq;)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lyx;)V
    .locals 2

    invoke-virtual {p0}, Lxj;->D()V

    invoke-virtual {p0}, Lxj;->r()Laog;

    move-result-object v0

    new-instance v1, Lxn;

    invoke-direct {v1, p0, p1}, Lxn;-><init>(Lxj;Lyx;)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lxj;->r()Laog;

    move-result-object v0

    new-instance v1, Lxk;

    invoke-direct {v1, p0, p1}, Lxk;-><init>(Lxj;Z)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lxj;->a:Lyd;

    invoke-virtual {v0}, Lyd;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lxj;->D()V

    invoke-virtual {p0}, Lxj;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxj;->a(Lyx;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lxj;->D()V

    invoke-virtual {p0}, Lxj;->r()Laog;

    move-result-object v1

    new-instance v2, Lxo;

    invoke-direct {v2, p0}, Lxo;-><init>(Lxj;)V

    invoke-virtual {v1, v2}, Laog;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lxj;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lxj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lxj;->D()V

    invoke-static {}, Laog;->d()V

    iget-object v0, p0, Lxj;->a:Lyd;

    invoke-virtual {v0}, Lyd;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lxj;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lxj;->c()V

    return-void
.end method

.method h()V
    .locals 1

    invoke-virtual {p0}, Lxj;->m()V

    iget-object v0, p0, Lxj;->a:Lyd;

    invoke-virtual {v0}, Lyd;->e()V

    return-void
.end method

.method i()V
    .locals 1

    invoke-virtual {p0}, Lxj;->m()V

    iget-object v0, p0, Lxj;->a:Lyd;

    invoke-virtual {v0}, Lyd;->d()V

    return-void
.end method
