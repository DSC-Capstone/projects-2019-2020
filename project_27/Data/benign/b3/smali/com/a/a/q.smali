.class Lcom/a/a/q;
.super Lcom/a/a/o;


# instance fields
.field d:I


# direct methods
.method constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/o;-><init>()V

    iput p1, p0, Lcom/a/a/q;->a:F

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/q;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/o;-><init>()V

    iput p1, p0, Lcom/a/a/q;->a:F

    iput p2, p0, Lcom/a/a/q;->d:I

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/q;->b:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/q;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/a/a/q;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/q;->f()Lcom/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/a/a/o;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/q;->f()Lcom/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/a/a/q;->d:I

    return v0
.end method

.method public f()Lcom/a/a/q;
    .locals 3

    new-instance v0, Lcom/a/a/q;

    invoke-virtual {p0}, Lcom/a/a/q;->b()F

    move-result v1

    iget v2, p0, Lcom/a/a/q;->d:I

    invoke-direct {v0, v1, v2}, Lcom/a/a/q;-><init>(FI)V

    invoke-virtual {p0}, Lcom/a/a/q;->c()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/q;->a(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method
