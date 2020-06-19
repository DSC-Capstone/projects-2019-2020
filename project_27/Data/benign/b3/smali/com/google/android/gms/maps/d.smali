.class Lcom/google/android/gms/maps/d;
.super Lcom/google/android/gms/internal/v;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/e;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/d;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/e;

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bi;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/e;

    new-instance v1, Lcom/google/android/gms/maps/model/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/h;-><init>(Lcom/google/android/gms/internal/bi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/e;->a(Lcom/google/android/gms/maps/model/h;)Z

    move-result v0

    return v0
.end method
