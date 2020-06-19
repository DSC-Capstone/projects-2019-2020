.class Lcom/google/a/b/t;
.super Lcom/google/a/b/o;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/b;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/b/o;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/b/o;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/t;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/t;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/a/b/t;->a()V

    new-instance v0, Lcom/google/a/b/t;

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/t;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/a/b/t;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/b/o;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/t;->a()V

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/a/b/t;->a()V

    new-instance v0, Lcom/google/a/b/t;

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/t;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/a/b/t;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/b/o;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/a/b/t;->a()V

    new-instance v0, Lcom/google/a/b/t;

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/b;

    invoke-virtual {p0}, Lcom/google/a/b/t;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/a/b/t;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/a/b/t;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/b/o;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/t;->f()Lcom/google/a/b/o;

    move-result-object p0

    goto :goto_0
.end method
