.class Lcom/google/a/b/m;
.super Lcom/google/a/b/f;

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field d:Ljava/util/SortedSet;

.field final synthetic e:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/m;->e:Lcom/google/a/b/b;

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/f;-><init>(Lcom/google/a/b/b;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/m;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public b()Ljava/util/SortedSet;
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/m;->d:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/n;

    iget-object v1, p0, Lcom/google/a/b/m;->e:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/b/n;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/google/a/b/m;->d:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v0, Lcom/google/a/b/m;

    iget-object v1, p0, Lcom/google/a/b/m;->e:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/b/m;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->b()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v0, Lcom/google/a/b/m;

    iget-object v1, p0, Lcom/google/a/b/m;->e:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/b/m;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    new-instance v0, Lcom/google/a/b/m;

    iget-object v1, p0, Lcom/google/a/b/m;->e:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/m;->a()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/b/m;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    return-object v0
.end method
