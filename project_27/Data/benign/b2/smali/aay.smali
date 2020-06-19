.class Laay;
.super Latl;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Laaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laaw;)V
    .locals 1

    invoke-direct {p0}, Latl;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laay;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    .locals 3

    iget-object v0, p0, Laay;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Laaw;->a(Laaw;)Labf;

    move-result-object v1

    iget-object v1, v1, Labf;->c:Labk;

    new-instance v2, Laaz;

    invoke-direct {v2, p0, v0, p1}, Laaz;-><init>(Laay;Laaw;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Labk;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
