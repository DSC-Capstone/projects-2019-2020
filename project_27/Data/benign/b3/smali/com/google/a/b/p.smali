.class Lcom/google/a/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/a/b/o;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;)V
    .locals 2

    iput-object p1, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/a/b/p;->b:Ljava/util/Collection;

    iget-object v0, p1, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    iget-object v1, p1, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lcom/google/a/b/o;Ljava/util/Iterator;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/a/b/p;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->a()V

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/a/b/p;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method b()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/p;->a()V

    iget-object v0, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/p;->a()V

    iget-object v0, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/p;->a()V

    iget-object v0, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->f:Lcom/google/a/b/b;

    invoke-static {v0}, Lcom/google/a/b/b;->b(Lcom/google/a/b/b;)I

    iget-object v0, p0, Lcom/google/a/b/p;->c:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->b()V

    return-void
.end method
