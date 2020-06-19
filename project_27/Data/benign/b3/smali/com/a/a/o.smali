.class public abstract Lcom/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/o;->d:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/o;->c:Z

    return-void
.end method

.method public static a(F)Lcom/a/a/o;
    .locals 1

    new-instance v0, Lcom/a/a/q;

    invoke-direct {v0, p0}, Lcom/a/a/q;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lcom/a/a/o;
    .locals 1

    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0, p1}, Lcom/a/a/p;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/a/a/o;
    .locals 1

    new-instance v0, Lcom/a/a/q;

    invoke-direct {v0, p0, p1}, Lcom/a/a/q;-><init>(FI)V

    return-object v0
.end method

.method public static b(F)Lcom/a/a/o;
    .locals 1

    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/o;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/a/a/o;->a:F

    return v0
.end method

.method public c()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/a/a/o;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/o;->d()Lcom/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/a/a/o;
.end method
