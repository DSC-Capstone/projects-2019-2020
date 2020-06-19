.class abstract Lcom/google/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/b/ah;
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Collection;

.field private transient e:Ljava/util/Collection;

.field private transient f:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/j;->a(Z)V

    iput-object p1, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/a/b/b;I)I
    .locals 1

    iget v0, p0, Lcom/google/a/b/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/b/b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/a/b/b;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/b/b;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/b;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/b/t;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/a/b/t;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/b/o;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/a/b/s;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/b/s;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/a/b/b;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/a/b/o;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/a/b/o;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/b/o;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/b/b;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/b/b;->b(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/b;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)Ljava/util/List;
    .locals 1

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/b/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/b/l;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/b/q;-><init>(Lcom/google/a/b/b;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/b/o;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/b/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/b/b;)I
    .locals 2

    iget v0, p0, Lcom/google/a/b/b;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/a/b/b;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/a/b/b;I)I
    .locals 1

    iget v0, p0, Lcom/google/a/b/b;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/b/b;->b:I

    return v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/a/b/b;)I
    .locals 2

    iget v0, p0, Lcom/google/a/b/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/a/b/b;->b:I

    return v0
.end method

.method private f(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget v0, p0, Lcom/google/a/b/b;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/b/b;->b:I

    :cond_0
    move v0, v1

    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private j()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/a/b/n;

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/a/b/n;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/j;

    iget-object v1, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/j;-><init>(Lcom/google/a/b/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private k()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/a/b/m;

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/a/b/m;-><init>(Lcom/google/a/b/b;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/f;

    iget-object v1, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/f;-><init>(Lcom/google/a/b/b;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Ljava/util/Collection;
.end method

.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/b;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/a/b/b;->b:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/a/b/b;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/a/b/b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/b/b;->b:I

    iget-object v2, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/a/b/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/b;->b:I

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/b/b;->b:I

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/google/a/b/b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/a/b/b;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/a/b/b;->a()Ljava/util/Collection;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lcom/google/a/b/b;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/b/b;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/a/b/b;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/b/b;->j()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/b;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/c;

    invoke-direct {v0, p0}, Lcom/google/a/b/c;-><init>(Lcom/google/a/b/b;)V

    iput-object v0, p0, Lcom/google/a/b/b;->d:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/a/b/b;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/a/b/b;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/a/b/ah;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/a/b/ah;

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/a/b/ah;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->e:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/b;->g()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/b;->e:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method g()Ljava/util/Collection;
    .locals 1

    instance-of v0, p0, Lcom/google/a/b/ao;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/b/d;

    invoke-direct {v0, p0}, Lcom/google/a/b/d;-><init>(Lcom/google/a/b/b;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/e;

    invoke-direct {v0, p0}, Lcom/google/a/b/e;-><init>(Lcom/google/a/b/b;)V

    goto :goto_0
.end method

.method h()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/a/b/i;

    invoke-direct {v0, p0}, Lcom/google/a/b/i;-><init>(Lcom/google/a/b/b;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/b/b;->k()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/b;->f:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/b;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
