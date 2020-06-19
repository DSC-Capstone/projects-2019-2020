.class public Lvr;
.super Ljava/lang/Object;

# interfaces
.implements Lyx;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lxr;

.field final synthetic c:Lww;

.field final synthetic d:Lcom/google/android/gms/analytics/AnalyticsService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/AnalyticsService;ILxr;Lww;)V
    .locals 0

    iput-object p1, p0, Lvr;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iput p2, p0, Lvr;->a:I

    iput-object p3, p0, Lvr;->b:Lxr;

    iput-object p4, p0, Lvr;->c:Lww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lvr;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Lcom/google/android/gms/analytics/AnalyticsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lvs;

    invoke-direct {v1, p0}, Lvs;-><init>(Lvr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
