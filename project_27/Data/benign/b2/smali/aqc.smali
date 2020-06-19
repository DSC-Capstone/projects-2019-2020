.class Laqc;
.super Laqf;


# instance fields
.field final synthetic b:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic c:Landroid/app/PendingIntent;

.field final synthetic d:Laqb;


# direct methods
.method constructor <init>(Laqb;Laag;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Laqc;->d:Laqb;

    iput-object p3, p0, Laqc;->b:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Laqc;->c:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Laqf;-><init>(Laag;)V

    return-void
.end method


# virtual methods
.method protected a(Laqt;)V
    .locals 2

    iget-object v0, p0, Laqc;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Laqc;->c:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Laqt;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqc;->a(Laaq;)V

    return-void
.end method

.method protected synthetic b(Lzz;)V
    .locals 0

    check-cast p1, Laqt;

    invoke-virtual {p0, p1}, Laqc;->a(Laqt;)V

    return-void
.end method
