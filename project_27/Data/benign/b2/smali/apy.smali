.class public Lapy;
.super Ladc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ladc",
        "<",
        "Laqk;",
        ">;"
    }
.end annotation


# instance fields
.field protected final c:Laqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqx",
            "<",
            "Laqk;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Laai;Laaj;Ljava/lang/String;Lacx;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ladc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILaai;Laaj;Lacx;)V

    new-instance v0, Lapz;

    invoke-direct {v0, p0}, Lapz;-><init>(Lapy;)V

    iput-object v0, p0, Lapy;->c:Laqx;

    iput-object p5, p0, Lapy;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lapy;)V
    .locals 0

    invoke-virtual {p0}, Lapy;->m()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lapy;->b(Landroid/os/IBinder;)Laqk;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Laqk;
    .locals 1

    invoke-static {p1}, Laql;->a(Landroid/os/IBinder;)Laqk;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected k()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lapy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
