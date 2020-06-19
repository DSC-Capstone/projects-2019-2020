.class Lcom/google/a/b/g;
.super Lcom/google/a/b/af;


# instance fields
.field final synthetic a:Lcom/google/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/g;->a:Lcom/google/a/b/f;

    invoke-direct {p0}, Lcom/google/a/b/af;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/g;->a:Lcom/google/a/b/f;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/g;->a:Lcom/google/a/b/f;

    iget-object v0, v0, Lcom/google/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/v;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/a/b/h;

    iget-object v1, p0, Lcom/google/a/b/g;->a:Lcom/google/a/b/f;

    invoke-direct {v0, v1}, Lcom/google/a/b/h;-><init>(Lcom/google/a/b/f;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/a/b/g;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/a/b/g;->a:Lcom/google/a/b/f;

    iget-object v0, v0, Lcom/google/a/b/f;->c:Lcom/google/a/b/b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/b;->a(Lcom/google/a/b/b;Ljava/lang/Object;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
