.class public Lacs;
.super Ladc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ladc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Laac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laac",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILaai;Laaj;Lacx;Laac;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ladc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILaai;Laaj;Lacx;)V

    iput-object p7, p0, Lacs;->c:Laac;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lacs;->c:Laac;

    invoke-interface {v0, p1}, Laac;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lacs;->c:Laac;

    invoke-interface {v0}, Laac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lacs;->c:Laac;

    invoke-interface {v0}, Laac;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
