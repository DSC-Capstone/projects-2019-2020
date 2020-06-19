.class La/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/google/a/d/a/e;

.field final b:Lcom/google/a/b/ah;


# direct methods
.method constructor <init>(Lcom/google/a/d/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/b;->a:Lcom/google/a/d/a/e;

    invoke-static {}, Lcom/google/a/b/w;->l()Lcom/google/a/b/w;

    move-result-object v0

    iput-object v0, p0, La/a/a/b;->b:Lcom/google/a/b/ah;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, La/a/a/a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, La/a/a/b;->a:Lcom/google/a/d/a/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, La/a/a/b;->a:Lcom/google/a/d/a/e;

    invoke-interface {v0}, Lcom/google/a/d/a/e;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v0}, Lcom/google/a/b/ah;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/a/d;

    invoke-interface {v0, v1}, Lcom/google/a/d/a/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iget-object v0, p0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v0}, Lcom/google/a/b/ah;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/a/d;

    invoke-interface {v0, v1}, Lcom/google/a/d/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, La/a/a/b;->b:Lcom/google/a/b/ah;

    invoke-interface {v0}, Lcom/google/a/b/ah;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/a/d;

    invoke-interface {v0, v1}, Lcom/google/a/d/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    return-void
.end method
