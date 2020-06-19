.class Lvs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lvr;


# direct methods
.method constructor <init>(Lvr;)V
    .locals 0

    iput-object p1, p0, Lvs;->a:Lvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lvs;->a:Lvr;

    iget-object v0, v0, Lvr;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Lvs;->a:Lvr;

    iget v1, v1, Lvr;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvs;->a:Lvr;

    iget-object v0, v0, Lvr;->b:Lxr;

    invoke-virtual {v0}, Lxr;->e()Lyr;

    move-result-object v0

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvs;->a:Lvr;

    iget-object v0, v0, Lvr;->c:Lww;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lww;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lvs;->a:Lvr;

    iget-object v0, v0, Lvr;->c:Lww;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lww;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
