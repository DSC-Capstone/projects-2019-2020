.class public Lxx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lxv;

.field private volatile b:Lwr;

.field private volatile c:Z


# direct methods
.method protected constructor <init>(Lxv;)V
    .locals 0

    iput-object p1, p0, Lxx;->a:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lwr;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lxx;->a:Lxv;

    invoke-virtual {v1}, Lxv;->m()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms"

    const-string v4, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lxx;->a:Lxv;

    invoke-virtual {v2}, Lxv;->o()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_package_name"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Laew;->a()Laew;

    move-result-object v3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lxx;->b:Lwr;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lxx;->c:Z

    iget-object v4, p0, Lxx;->a:Lxv;

    invoke-static {v4}, Lxv;->a(Lxv;)Lxx;

    move-result-object v4

    const/16 v5, 0x81

    invoke-virtual {v3, v2, v1, v4, v5}, Laew;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iget-object v2, p0, Lxx;->a:Lxv;

    const-string v3, "Bind to service requested"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lxv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lxx;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lxx;->a:Lxv;

    invoke-virtual {v0}, Lxv;->q()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lxx;->c:Z

    iget-object v0, p0, Lxx;->b:Lwr;

    const/4 v1, 0x0

    iput-object v1, p0, Lxx;->b:Lwr;

    if-nez v0, :cond_1

    iget-object v1, p0, Lxx;->a:Lxv;

    const-string v2, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v1, v2}, Lxv;->f(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lxx;->a:Lxv;

    const-string v1, "Wait for service connect was interrupted"

    invoke-virtual {v0, v1}, Lxv;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "AnalyticsServiceConnection.onServiceConnected"

    invoke-static {v0}, Laei;->b(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lxx;->a:Lxv;

    const-string v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lxv;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lws;->a(Landroid/os/IBinder;)Lwr;

    move-result-object v0

    iget-object v1, p0, Lxx;->a:Lxv;

    const-string v2, "Bound to IAnalyticsService interface"

    invoke-virtual {v1, v2}, Lxv;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-nez v0, :cond_2

    :try_start_3
    invoke-static {}, Laew;->a()Laew;

    move-result-object v0

    iget-object v1, p0, Lxx;->a:Lxv;

    invoke-virtual {v1}, Lxv;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lxx;->a:Lxv;

    invoke-static {v2}, Lxv;->a(Lxv;)Lxx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laew;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    iget-object v2, p0, Lxx;->a:Lxv;

    const-string v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lxv;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v1, p0, Lxx;->a:Lxv;

    const-string v2, "Service connect failed to get IAnalyticsService"

    invoke-virtual {v1, v2}, Lxv;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :try_start_8
    iget-boolean v1, p0, Lxx;->c:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lxx;->a:Lxv;

    const-string v2, "onServiceConnected received after the timeout limit"

    invoke-virtual {v1, v2}, Lxv;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lxx;->a:Lxv;

    invoke-virtual {v1}, Lxv;->r()Laog;

    move-result-object v1

    new-instance v2, Lxy;

    invoke-direct {v2, p0, v0}, Lxy;-><init>(Lxx;Lwr;)V

    invoke-virtual {v1, v2}, Laog;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lxx;->b:Lwr;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "AnalyticsServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Laei;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lxx;->a:Lxv;

    invoke-virtual {v0}, Lxv;->r()Laog;

    move-result-object v0

    new-instance v1, Lxz;

    invoke-direct {v1, p0, p1}, Lxz;-><init>(Lxx;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Laog;->a(Ljava/lang/Runnable;)V

    return-void
.end method
