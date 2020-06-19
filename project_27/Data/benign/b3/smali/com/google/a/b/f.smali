.class Lcom/google/a/b/f;
.super Ljava/util/AbstractMap;


# instance fields
.field final transient a:Ljava/util/Map;

.field transient b:Ljava/util/Set;

.field final synthetic c:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/b/ac;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-static {v1, p1, v0}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-virtual {v1}, Lcom/google/a/b/b;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/a/b/b;->b(Lcom/google/a/b/b;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-static {v1}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-virtual {v0}, Lcom/google/a/b/b;->c()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/a/b/h;

    invoke-direct {v0, p0}, Lcom/google/a/b/h;-><init>(Lcom/google/a/b/f;)V

    invoke-static {v0}, Lcom/google/a/b/y;->a(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/b/ac;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/g;

    invoke-direct {v0, p0}, Lcom/google/a/b/g;-><init>(Lcom/google/a/b/f;)V

    iput-object v0, p0, Lcom/google/a/b/f;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/f;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-virtual {v0}, Lcom/google/a/b/b;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/f;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
