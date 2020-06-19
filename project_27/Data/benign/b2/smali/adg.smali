.class public final Ladg;
.super Ladx;


# instance fields
.field private a:Ladc;


# direct methods
.method public constructor <init>(Ladc;)V
    .locals 0

    invoke-direct {p0}, Ladx;-><init>()V

    iput-object p1, p0, Ladg;->a:Ladc;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ladg;->a:Ladc;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Ladg;->a:Ladc;

    const-string v1, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v0, v1}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ladg;->a:Ladc;

    invoke-virtual {v0, p1, p2}, Ladc;->a(ILandroid/os/Bundle;)V

    invoke-direct {p0}, Ladg;->a()V

    return-void
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Ladg;->a:Ladc;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ladg;->a:Ladc;

    invoke-virtual {v0, p1, p2, p3}, Ladc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-direct {p0}, Ladg;->a()V

    return-void
.end method
