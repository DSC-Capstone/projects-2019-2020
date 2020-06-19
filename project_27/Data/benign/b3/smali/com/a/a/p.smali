.class Lcom/a/a/p;
.super Lcom/a/a/o;


# instance fields
.field d:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/o;-><init>()V

    iput p1, p0, Lcom/a/a/p;->a:F

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/p;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/o;-><init>()V

    iput p1, p0, Lcom/a/a/p;->a:F

    iput p2, p0, Lcom/a/a/p;->d:F

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/p;->b:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/p;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/a/a/p;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/p;->f()Lcom/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/a/a/o;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/p;->f()Lcom/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/a/a/p;->d:F

    return v0
.end method

.method public f()Lcom/a/a/p;
    .locals 3

    new-instance v0, Lcom/a/a/p;

    invoke-virtual {p0}, Lcom/a/a/p;->b()F

    move-result v1

    iget v2, p0, Lcom/a/a/p;->d:F

    invoke-direct {v0, v1, v2}, Lcom/a/a/p;-><init>(FF)V

    invoke-virtual {p0}, Lcom/a/a/p;->c()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/p;->a(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method
