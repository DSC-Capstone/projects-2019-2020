.class Lcom/google/a/a/b;
.super Lcom/google/a/a/a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/a/a/a;


# direct methods
.method constructor <init>(Lcom/google/a/a/a;Lcom/google/a/a/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/a/b;->b:Lcom/google/a/a/a;

    iput-object p3, p0, Lcom/google/a/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/a/a/a;-><init>(Lcom/google/a/a/a;Lcom/google/a/a/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/a/a/a;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/b;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/b;->b:Lcom/google/a/a/a;

    invoke-virtual {v0, p1}, Lcom/google/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/google/a/a/a;
    .locals 2

    invoke-static {p1}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
