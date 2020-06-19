.class public final Lcom/google/android/gms/maps/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/e;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->a()Lcom/google/android/gms/maps/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/a/a;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->b()Lcom/google/android/gms/internal/at;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/internal/at;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/l;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
