.class public Laqq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Laqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqx",
            "<",
            "Laqk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapn;",
            "Laqs;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Laqr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Laqx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laqx",
            "<",
            "Laqk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laqq;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laqq;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laqq;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laqq;->f:Ljava/util/Map;

    iput-object p1, p0, Laqq;->b:Landroid/content/Context;

    iput-object p2, p0, Laqq;->a:Laqx;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->a()V

    :try_start_0
    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqk;

    iget-object v1, p0, Laqq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Laqk;->b(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->a()V

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqk;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Laqk;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public a(Lapn;)V
    .locals 3

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->a()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Laqq;->e:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Laqq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqs;

    iget-object v1, p0, Laqq;->c:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laqq;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laqq;->c:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    iput-object v1, p0, Laqq;->c:Landroid/content/ContentProviderClient;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Laqs;->a()V

    iget-object v1, p0, Laqq;->a:Laqx;

    invoke-interface {v1}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Laqk;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Lary;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Laqk;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->a()V

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqk;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v1

    invoke-interface {v0, v1}, Laqk;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->a()V

    iget-object v0, p0, Laqq;->a:Laqx;

    invoke-interface {v0}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laqk;

    invoke-interface {v0, p1}, Laqk;->a(Z)V

    iput-boolean p1, p0, Laqq;->d:Z

    return-void
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Laqq;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Laqq;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqs;

    if-eqz v0, :cond_0

    iget-object v1, p0, Laqq;->a:Laqx;

    invoke-interface {v1}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Laqk;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Lary;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Laqk;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Laqq;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Laqq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqr;

    if-eqz v0, :cond_2

    iget-object v1, p0, Laqq;->a:Laqx;

    invoke-interface {v1}, Laqx;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Laqk;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Larv;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Laqk;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laqq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Laqq;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Laqq;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
