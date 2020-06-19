.class Lcom/google/a/b/q;
.super Lcom/google/a/b/o;

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/b/o;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/b/o;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    invoke-static {v1}, Lcom/google/a/b/b;->c(Lcom/google/a/b/b;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/q;->d()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/q;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/q;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;I)I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/q;->d()V

    goto :goto_0
.end method

.method g()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    new-instance v0, Lcom/google/a/b/r;

    invoke-direct {v0, p0}, Lcom/google/a/b/r;-><init>(Lcom/google/a/b/q;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    new-instance v0, Lcom/google/a/b/r;

    invoke-direct {v0, p0, p1}, Lcom/google/a/b/r;-><init>(Lcom/google/a/b/q;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    invoke-static {v1}, Lcom/google/a/b/b;->b(Lcom/google/a/b/b;)I

    invoke-virtual {p0}, Lcom/google/a/b/q;->b()V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/google/a/b/q;->a()V

    iget-object v0, p0, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/q;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/b/q;->f()Lcom/google/a/b/o;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0, v1, v2, p0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/q;->f()Lcom/google/a/b/o;

    move-result-object p0

    goto :goto_0
.end method
