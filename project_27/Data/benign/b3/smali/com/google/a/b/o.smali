.class Lcom/google/a/b/o;
.super Ljava/util/AbstractCollection;


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:Lcom/google/a/b/o;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/b/o;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/a/b/o;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/a/b/o;->e:Ljava/util/Collection;

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/google/a/b/o;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/o;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/o;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v2}, Lcom/google/a/b/b;->c(Lcom/google/a/b/b;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/o;->d()V

    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/o;->size()I

    move-result v1

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;I)I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/o;->d()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/o;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/o;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/a/b/o;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v1, v0}, Lcom/google/a/b/b;->b(Lcom/google/a/b/b;I)I

    invoke-virtual {p0}, Lcom/google/a/b/o;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/o;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method e()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Lcom/google/a/b/o;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/o;->d:Lcom/google/a/b/o;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    new-instance v0, Lcom/google/a/b/p;

    invoke-direct {v0, p0}, Lcom/google/a/b/p;-><init>(Lcom/google/a/b/o;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v1}, Lcom/google/a/b/b;->b(Lcom/google/a/b/b;)I

    invoke-virtual {p0}, Lcom/google/a/b/o;->b()V

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/o;->size()I

    move-result v1

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;I)I

    invoke-virtual {p0}, Lcom/google/a/b/o;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-static {p1}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/a/b/o;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;I)I

    invoke-virtual {p0}, Lcom/google/a/b/o;->b()V

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
