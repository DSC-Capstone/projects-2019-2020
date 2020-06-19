.class Lcom/a/a/v;
.super Lcom/a/a/s;


# instance fields
.field h:Lcom/a/a/n;

.field i:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/s;-><init>(Ljava/lang/String;Lcom/a/a/t;)V

    invoke-virtual {p0, p2}, Lcom/a/a/v;->a([I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/s;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/v;->e()Lcom/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/v;->h:Lcom/a/a/n;

    invoke-virtual {v0, p1}, Lcom/a/a/n;->b(F)I

    move-result v0

    iput v0, p0, Lcom/a/a/v;->i:I

    return-void
.end method

.method public varargs a([I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/s;->a([I)V

    iget-object v0, p0, Lcom/a/a/v;->e:Lcom/a/a/r;

    check-cast v0, Lcom/a/a/n;

    iput-object v0, p0, Lcom/a/a/v;->h:Lcom/a/a/n;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/v;->e()Lcom/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/a/a/v;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/v;
    .locals 2

    invoke-super {p0}, Lcom/a/a/s;->a()Lcom/a/a/s;

    move-result-object v0

    check-cast v0, Lcom/a/a/v;

    iget-object v1, v0, Lcom/a/a/v;->e:Lcom/a/a/r;

    check-cast v1, Lcom/a/a/n;

    iput-object v1, v0, Lcom/a/a/v;->h:Lcom/a/a/n;

    return-object v0
.end method
