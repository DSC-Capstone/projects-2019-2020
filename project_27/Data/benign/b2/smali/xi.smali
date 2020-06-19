.class public Lxi;
.super Lxq;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Z

.field protected f:I

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Lxr;)V
    .locals 0

    invoke-direct {p0, p1}, Lxq;-><init>(Lxr;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-virtual {p0}, Lxi;->j()V

    return-void
.end method

.method a(Lzd;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Loading global XML config values"

    invoke-virtual {p0, v0}, Lxi;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzd;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxi;->b:Ljava/lang/String;

    const-string v1, "XML config - app name"

    invoke-virtual {p0, v1, v0}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lzd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lzd;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxi;->a:Ljava/lang/String;

    const-string v1, "XML config - app version"

    invoke-virtual {p0, v1, v0}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lzd;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lzd;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iput v0, p0, Lxi;->d:I

    const-string v1, "XML config - log level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lxi;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lzd;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lzd;->h()I

    move-result v0

    iput v0, p0, Lxi;->f:I

    iput-boolean v2, p0, Lxi;->e:Z

    const-string v1, "XML config - dispatch period (sec)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lzd;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lzd;->j()Z

    move-result v0

    iput-boolean v0, p0, Lxi;->h:Z

    iput-boolean v2, p0, Lxi;->g:Z

    const-string v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-object v0, p0, Lxi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-object v0, p0, Lxi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-boolean v0, p0, Lxi;->c:Z

    return v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget v0, p0, Lxi;->d:I

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-boolean v0, p0, Lxi;->e:Z

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget v0, p0, Lxi;->f:I

    return v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-boolean v0, p0, Lxi;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lxi;->D()V

    iget-boolean v0, p0, Lxi;->h:Z

    return v0
.end method

.method protected j()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lxi;->o()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lxi;->e(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v2, v0}, Lxi;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lzb;

    invoke-virtual {p0}, Lxi;->k()Lxr;

    move-result-object v2

    invoke-direct {v1, v2}, Lzb;-><init>(Lxr;)V

    invoke-virtual {v1, v0}, Lzb;->a(I)Lyo;

    move-result-object v0

    check-cast v0, Lzd;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lxi;->a(Lzd;)V

    goto :goto_1
.end method
