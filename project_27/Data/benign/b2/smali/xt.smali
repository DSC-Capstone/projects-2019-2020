.class public Lxt;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lxt;->a:Landroid/content/Context;

    iput-object v0, p0, Lxt;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lxt;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Laog;
    .locals 1

    invoke-static {p1}, Laog;->a(Landroid/content/Context;)Laog;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lxr;)Lyv;
    .locals 1

    new-instance v0, Lyv;

    invoke-direct {v0, p1}, Lyv;-><init>(Lxr;)V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lxt;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Lxr;)Lyc;
    .locals 1

    new-instance v0, Lyc;

    invoke-direct {v0, p1}, Lyc;-><init>(Lxr;)V

    return-object v0
.end method

.method protected c(Lxr;)Lwp;
    .locals 1

    new-instance v0, Lwp;

    invoke-direct {v0, p1}, Lwp;-><init>(Lxr;)V

    return-object v0
.end method

.method protected d(Lxr;)Lyk;
    .locals 1

    new-instance v0, Lyk;

    invoke-direct {v0, p1}, Lyk;-><init>(Lxr;)V

    return-object v0
.end method

.method protected e(Lxr;)Lxi;
    .locals 1

    new-instance v0, Lxi;

    invoke-direct {v0, p1}, Lxi;-><init>(Lxr;)V

    return-object v0
.end method

.method protected f(Lxr;)Lww;
    .locals 1

    new-instance v0, Lww;

    invoke-direct {v0, p1}, Lww;-><init>(Lxr;)V

    return-object v0
.end method

.method protected g(Lxr;)Lyr;
    .locals 1

    new-instance v0, Lyr;

    invoke-direct {v0, p1}, Lyr;-><init>(Lxr;)V

    return-object v0
.end method

.method protected h(Lxr;)Lant;
    .locals 1

    invoke-static {}, Lanu;->c()Lant;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lxr;)Lwa;
    .locals 1

    new-instance v0, Lwa;

    invoke-direct {v0, p1}, Lwa;-><init>(Lxr;)V

    return-object v0
.end method

.method j(Lxr;)Lyd;
    .locals 1

    new-instance v0, Lyd;

    invoke-direct {v0, p1, p0}, Lyd;-><init>(Lxr;Lxt;)V

    return-object v0
.end method

.method k(Lxr;)Lwx;
    .locals 1

    new-instance v0, Lwx;

    invoke-direct {v0, p1}, Lwx;-><init>(Lxr;)V

    return-object v0
.end method

.method protected l(Lxr;)Lxj;
    .locals 1

    new-instance v0, Lxj;

    invoke-direct {v0, p1, p0}, Lxj;-><init>(Lxr;Lxt;)V

    return-object v0
.end method

.method public m(Lxr;)Lya;
    .locals 1

    new-instance v0, Lya;

    invoke-direct {v0, p1}, Lya;-><init>(Lxr;)V

    return-object v0
.end method

.method public n(Lxr;)Lwy;
    .locals 1

    new-instance v0, Lwy;

    invoke-direct {v0, p1}, Lwy;-><init>(Lxr;)V

    return-object v0
.end method

.method public o(Lxr;)Lxv;
    .locals 1

    new-instance v0, Lxv;

    invoke-direct {v0, p1}, Lxv;-><init>(Lxr;)V

    return-object v0
.end method

.method public p(Lxr;)Lyw;
    .locals 1

    new-instance v0, Lyw;

    invoke-direct {v0, p1}, Lyw;-><init>(Lxr;)V

    return-object v0
.end method

.method public q(Lxr;)Lxa;
    .locals 1

    new-instance v0, Lxa;

    invoke-direct {v0, p1}, Lxa;-><init>(Lxr;)V

    return-object v0
.end method
