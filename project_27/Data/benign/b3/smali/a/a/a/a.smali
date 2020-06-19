.class public La/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:La/a/a/k;

.field private static b:Lcom/google/a/b/ah;

.field private static c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/a/a/k;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, La/a/a/k;-><init>(Landroid/os/Handler;)V

    sput-object v0, La/a/a/a;->a:La/a/a/k;

    invoke-static {}, Lcom/google/a/b/w;->l()Lcom/google/a/b/w;

    move-result-object v0

    sput-object v0, La/a/a/a;->b:Lcom/google/a/b/ah;

    invoke-static {}, Lcom/google/a/b/ac;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, La/a/a/a;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, La/a/a/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "ctx is null"

    invoke-static {p0, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a;->b:Lcom/google/a/b/ah;

    invoke-interface {v0, p0}, Lcom/google/a/b/ah;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    iget-object v0, v0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v0, p0}, Lcom/google/a/b/ah;->d(Ljava/lang/Object;)Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object v0, La/a/a/a;->b:Lcom/google/a/b/ah;

    invoke-interface {v0, p0}, Lcom/google/a/b/ah;->d(Ljava/lang/Object;)Ljava/util/Collection;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/a/d/a/d;)V
    .locals 3

    const-string v0, "ctx is null"

    invoke-static {p0, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback is null"

    invoke-static {p1, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a;->b:Lcom/google/a/b/ah;

    invoke-interface {v0, p0}, Lcom/google/a/b/ah;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    iget-object v2, v0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v2, p0, p1}, Lcom/google/a/b/ah;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v0, p0}, Lcom/google/a/b/ah;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/a/d/a/e;Lcom/google/a/d/a/d;)V
    .locals 2

    const-string v0, "ctx is null"

    invoke-static {p0, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "future is null"

    invoke-static {p1, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback is null"

    invoke-static {p2, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/b;

    invoke-direct {v0, p1}, La/a/a/b;-><init>(Lcom/google/a/d/a/e;)V

    sget-object v1, La/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/a;->a:La/a/a/k;

    invoke-interface {p1, v0, v1}, Lcom/google/a/d/a/e;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iget-object v1, v0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v1, p0, p2}, Lcom/google/a/b/ah;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, La/a/a/a;->b:Lcom/google/a/b/ah;

    invoke-interface {v1, p0, v0}, Lcom/google/a/b/ah;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
