.class Lcom/google/a/b/r;
.super Lcom/google/a/b/p;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/a/b/q;


# direct methods
.method constructor <init>(Lcom/google/a/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/r;->d:Lcom/google/a/b/q;

    invoke-direct {p0, p1}, Lcom/google/a/b/p;-><init>(Lcom/google/a/b/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/a/b/q;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/r;->d:Lcom/google/a/b/q;

    invoke-virtual {p1}, Lcom/google/a/b/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/p;-><init>(Lcom/google/a/b/o;Ljava/util/Iterator;)V

    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/r;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/r;->d:Lcom/google/a/b/q;

    invoke-virtual {v0}, Lcom/google/a/b/q;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/a/b/r;->d:Lcom/google/a/b/q;

    iget-object v1, v1, Lcom/google/a/b/q;->g:Lcom/google/a/b/b;

    invoke-static {v1}, Lcom/google/a/b/b;->c(Lcom/google/a/b/b;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/r;->d:Lcom/google/a/b/q;

    invoke-virtual {v0}, Lcom/google/a/b/q;->d()V

    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/a/b/r;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
