.class Lwx;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Lxr;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lwx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwx;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lxr;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lwx;->b:Lxr;

    return-void
.end method

.method private g()V
    .locals 0

    invoke-direct {p0}, Lwx;->i()Lww;

    invoke-direct {p0}, Lwx;->j()Lxj;

    return-void
.end method

.method private h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private i()Lww;
    .locals 1

    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->f()Lww;

    move-result-object v0

    return-object v0
.end method

.method private j()Lxj;
    .locals 1

    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->i()Lxj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Lwx;->g()V

    iget-boolean v0, p0, Lwx;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lwx;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "com.google.analytics.RADIO_POWERED"

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lwx;->f()Z

    move-result v0

    iput-boolean v0, p0, Lwx;->d:Z

    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->f()Lww;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lwx;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lww;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwx;->c:Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lwx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->f()Lww;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lww;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lwx;->c:Z

    iput-boolean v2, p0, Lwx;->d:Z

    invoke-direct {p0}, Lwx;->h()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lwx;->i()Lww;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lww;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lwx;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lwx;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lwx;->c:Z

    return v0
.end method

.method public e()Z
    .locals 2

    iget-boolean v0, p0, Lwx;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwx;->b:Lxr;

    invoke-virtual {v0}, Lxr;->f()Lww;

    move-result-object v0

    const-string v1, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v0, v1}, Lww;->e(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lwx;->d:Z

    return v0
.end method

.method protected f()Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lwx;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lwx;->g()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwx;->b:Lxr;

    invoke-virtual {v1}, Lxr;->f()Lww;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lww;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lwx;->f()Z

    move-result v0

    iget-boolean v1, p0, Lwx;->d:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lwx;->d:Z

    invoke-direct {p0}, Lwx;->j()Lxj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxj;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lwx;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lwx;->j()Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->g()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lwx;->b:Lxr;

    invoke-virtual {v1}, Lxr;->f()Lww;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lww;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
