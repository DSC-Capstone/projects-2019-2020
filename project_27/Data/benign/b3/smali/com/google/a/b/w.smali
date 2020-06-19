.class public final Lcom/google/a/b/w;
.super Lcom/google/a/b/u;


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/b/u;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/a/b/w;->a:I

    return-void
.end method

.method public static l()Lcom/google/a/b/w;
    .locals 1

    new-instance v0, Lcom/google/a/b/w;

    invoke-direct {v0}, Lcom/google/a/b/w;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/w;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/a/b/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/u;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/a/b/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/a/b/u;->c()V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/u;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/a/b/u;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/u;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/a/b/u;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/util/Set;
    .locals 1

    iget v0, p0, Lcom/google/a/b/w;->a:I

    invoke-static {v0}, Lcom/google/a/b/ap;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/a/b/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
