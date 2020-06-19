.class abstract Lcom/google/a/b/al;
.super Ljava/util/AbstractCollection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/a/b/ah;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/al;->a()Lcom/google/a/b/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/b/ah;->c()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/al;->a()Lcom/google/a/b/ah;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/a/b/ah;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/al;->a()Lcom/google/a/b/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/b/ah;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b/ac;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/al;->a()Lcom/google/a/b/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/b/ah;->b()I

    move-result v0

    return v0
.end method
