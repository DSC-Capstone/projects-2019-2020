.class Lcom/google/a/a/c;
.super Lcom/google/a/a/a;


# instance fields
.field final synthetic a:Lcom/google/a/a/a;


# direct methods
.method constructor <init>(Lcom/google/a/a/a;Lcom/google/a/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/a/c;->a:Lcom/google/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/a/a/a;-><init>(Lcom/google/a/a/a;Lcom/google/a/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2

    const-string v0, "appendable"

    invoke-static {p1, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "parts"

    invoke-static {p2, v0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/a/a/c;->a:Lcom/google/a/a/a;

    invoke-virtual {v1, v0}, Lcom/google/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/a/a/c;->a:Lcom/google/a/a/a;

    invoke-static {v1}, Lcom/google/a/a/a;->a(Lcom/google/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/a/a/c;->a:Lcom/google/a/a/a;

    invoke-virtual {v1, v0}, Lcom/google/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/a/a/a;
    .locals 2

    invoke-static {p1}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/a/a/e;
    .locals 2

    invoke-static {p1}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
