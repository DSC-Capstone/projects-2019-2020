.class Lcom/a/a/u;
.super Lcom/a/a/s;


# instance fields
.field h:Lcom/a/a/l;

.field i:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/s;-><init>(Ljava/lang/String;Lcom/a/a/t;)V

    invoke-virtual {p0, p2}, Lcom/a/a/u;->a([F)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/s;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/u;->e()Lcom/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/u;->h:Lcom/a/a/l;

    invoke-virtual {v0, p1}, Lcom/a/a/l;->b(F)F

    move-result v0

    iput v0, p0, Lcom/a/a/u;->i:F

    return-void
.end method

.method public varargs a([F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/s;->a([F)V

    iget-object v0, p0, Lcom/a/a/u;->e:Lcom/a/a/r;

    check-cast v0, Lcom/a/a/l;

    iput-object v0, p0, Lcom/a/a/u;->h:Lcom/a/a/l;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/u;->e()Lcom/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/a/a/u;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/u;
    .locals 2

    invoke-super {p0}, Lcom/a/a/s;->a()Lcom/a/a/s;

    move-result-object v0

    check-cast v0, Lcom/a/a/u;

    iget-object v1, v0, Lcom/a/a/u;->e:Lcom/a/a/r;

    check-cast v1, Lcom/a/a/l;

    iput-object v1, v0, Lcom/a/a/u;->h:Lcom/a/a/l;

    return-object v0
.end method
