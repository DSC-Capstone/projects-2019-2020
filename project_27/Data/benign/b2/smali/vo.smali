.class public Lvo;
.super Ljava/lang/Object;


# instance fields
.field a:Lafb;

.field b:Lape;

.field c:Z

.field d:Ljava/lang/Object;

.field e:Lvq;

.field final f:J

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvo;->d:Ljava/lang/Object;

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lvo;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvo;->c:Z

    iput-wide p2, p0, Lvo;->f:J

    return-void
.end method

.method static a(Landroid/content/Context;)Lafb;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lzo;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lzm; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lafb;

    invoke-direct {v0}, Lafb;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Laew;->a()Laew;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v1, v0, v3}, Laew;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lzm;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lzm;-><init>(I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;Lafb;)Lape;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lafb;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lapf;->a(Landroid/os/IBinder;)Lape;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lvp;
    .locals 4

    new-instance v1, Lvo;

    const-wide/16 v2, -0x1

    invoke-direct {v1, p0, v2, v3}, Lvo;-><init>(Landroid/content/Context;J)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lvo;->a(Z)V

    invoke-virtual {v1}, Lvo;->a()Lvp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lvo;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lvo;->b()V

    throw v0
.end method

.method private c()V
    .locals 6

    iget-object v1, p0, Lvo;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lvo;->e:Lvq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvo;->e:Lvq;

    invoke-virtual {v0}, Lvq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lvo;->e:Lvq;

    invoke-virtual {v0}, Lvq;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lvo;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Lvq;

    iget-wide v2, p0, Lvo;->f:J

    invoke-direct {v0, p0, v2, v3}, Lvq;-><init>(Lvo;J)V

    iput-object v0, p0, Lvo;->e:Lvq;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lvp;
    .locals 4

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Laei;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvo;->c:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lvo;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lvo;->e:Lvq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvo;->e:Lvq;

    invoke-virtual {v0}, Lvq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lvo;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v0, p0, Lvo;->c:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lvo;->a:Lafb;

    invoke-static {v0}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lvo;->b:Lape;

    invoke-static {v0}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Lvp;

    iget-object v1, p0, Lvo;->b:Lape;

    invoke-interface {v1}, Lape;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lvo;->b:Lape;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lape;->a(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lvp;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {p0}, Lvo;->c()V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method protected a(Z)V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Laei;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvo;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvo;->b()V

    :cond_0
    iget-object v0, p0, Lvo;->g:Landroid/content/Context;

    invoke-static {v0}, Lvo;->a(Landroid/content/Context;)Lafb;

    move-result-object v0

    iput-object v0, p0, Lvo;->a:Lafb;

    iget-object v0, p0, Lvo;->g:Landroid/content/Context;

    iget-object v1, p0, Lvo;->a:Lafb;

    invoke-static {v0, v1}, Lvo;->a(Landroid/content/Context;Lafb;)Lape;

    move-result-object v0

    iput-object v0, p0, Lvo;->b:Lape;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvo;->c:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lvo;->c()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Laei;->c(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvo;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvo;->a:Lafb;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lvo;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Laew;->a()Laew;

    move-result-object v0

    iget-object v1, p0, Lvo;->g:Landroid/content/Context;

    iget-object v2, p0, Lvo;->a:Lafb;

    invoke-virtual {v0, v1, v2}, Laew;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lvo;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lvo;->b:Lape;

    const/4 v0, 0x0

    iput-object v0, p0, Lvo;->a:Lafb;

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
    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lvo;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
