.class public Lig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lip;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 600
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 601
    new-instance v0, Lio;

    invoke-direct {v0}, Lio;-><init>()V

    sput-object v0, Lig;->a:Lip;

    .line 611
    :goto_0
    return-void

    .line 602
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 603
    new-instance v0, Lim;

    invoke-direct {v0}, Lim;-><init>()V

    sput-object v0, Lig;->a:Lip;

    goto :goto_0

    .line 604
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 605
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    sput-object v0, Lig;->a:Lip;

    goto :goto_0

    .line 606
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 607
    new-instance v0, Lik;

    invoke-direct {v0}, Lik;-><init>()V

    sput-object v0, Lig;->a:Lip;

    goto :goto_0

    .line 609
    :cond_3
    new-instance v0, Lii;

    invoke-direct {v0}, Lii;-><init>()V

    sput-object v0, Lig;->a:Lip;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lig;->c:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Lig;->d:Ljava/lang/Runnable;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lig;->e:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic a(Lig;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lig;->e:I

    return p1
.end method

.method static synthetic a(Lig;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lig;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lig;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lig;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lig;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lig;->e:I

    return v0
.end method


# virtual methods
.method public a(F)Lig;
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 678
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->a(Lig;Landroid/view/View;F)V

    .line 680
    :cond_0
    return-object p0
.end method

.method public a(J)Lig;
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 627
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1, p2}, Lip;->a(Lig;Landroid/view/View;J)V

    .line 629
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lig;
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 767
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->a(Lig;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 769
    :cond_0
    return-object p0
.end method

.method public a(Liw;)Lig;
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1199
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->a(Lig;Landroid/view/View;Liw;)V

    .line 1201
    :cond_0
    return-object p0
.end method

.method public a(Liy;)Lig;
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1218
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->a(Lig;Landroid/view/View;Liy;)V

    .line 1220
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1001
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0}, Lip;->a(Lig;Landroid/view/View;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public b(F)Lig;
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 695
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->b(Lig;Landroid/view/View;F)V

    .line 697
    :cond_0
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1119
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0}, Lip;->b(Lig;Landroid/view/View;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public c(F)Lig;
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lig;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 973
    sget-object v1, Lig;->a:Lip;

    invoke-interface {v1, p0, v0, p1}, Lip;->c(Lig;Landroid/view/View;F)V

    .line 975
    :cond_0
    return-object p0
.end method
