.class public Laqt;
.super Lapy;


# instance fields
.field private final d:Laqq;

.field private final e:Lapw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;)V
    .locals 8

    sget-object v7, Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;->a:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Laqt;-><init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V
    .locals 3

    invoke-direct/range {p0 .. p6}, Lapy;-><init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;)V

    new-instance v0, Laqq;

    iget-object v1, p0, Laqt;->c:Laqx;

    invoke-direct {v0, p1, v1}, Laqq;-><init>(Landroid/content/Context;Laqx;)V

    iput-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {p6}, Lacx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6}, Lacx;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laqt;->c:Laqx;

    invoke-static {p1, v0, v1, v2, p7}, Lapw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laqx;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)Lapw;

    move-result-object v0

    iput-object v0, p0, Laqt;->e:Lapw;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0, p1}, Laqq;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Lapn;)V
    .locals 1

    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0, p1}, Laqq;->a(Lapn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0, p1, p2}, Laqq;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v1, p0, Laqt;->d:Laqq;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Laqt;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0}, Laqq;->b()V

    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0}, Laqq;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lapy;->b()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Laqt;->d:Laqq;

    invoke-virtual {v0}, Laqq;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
