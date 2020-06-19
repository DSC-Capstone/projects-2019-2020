.class public Laqb;
.super Ljava/lang/Object;

# interfaces
.implements Lapk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laag;Landroid/app/PendingIntent;)Laan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laag;",
            "Landroid/app/PendingIntent;",
            ")",
            "Laan",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Laqe;

    invoke-direct {v0, p0, p1, p2}, Laqe;-><init>(Laqb;Laag;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Laag;->a(Laau;)Laau;

    move-result-object v0

    return-object v0
.end method

.method public a(Laag;Lapn;)Laan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laag;",
            "Lapn;",
            ")",
            "Laan",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Laqd;

    invoke-direct {v0, p0, p1, p2}, Laqd;-><init>(Laqb;Laag;Lapn;)V

    invoke-interface {p1, v0}, Laag;->a(Laau;)Laau;

    move-result-object v0

    return-object v0
.end method

.method public a(Laag;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Laan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laag;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Laan",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Laqc;

    invoke-direct {v0, p0, p1, p2, p3}, Laqc;-><init>(Laqb;Laag;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Laag;->a(Laau;)Laau;

    move-result-object v0

    return-object v0
.end method

.method public a(Laag;)Landroid/location/Location;
    .locals 1

    invoke-static {p1}, Lapq;->a(Laag;)Laqt;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Laqt;->q()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
