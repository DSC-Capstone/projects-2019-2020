.class public final Lcom/google/a/b/y;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/a/b/at;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/b/z;

    invoke-direct {v0}, Lcom/google/a/b/z;-><init>()V

    sput-object v0, Lcom/google/a/b/y;->a:Lcom/google/a/b/at;

    new-instance v0, Lcom/google/a/b/aa;

    invoke-direct {v0}, Lcom/google/a/b/aa;-><init>()V

    sput-object v0, Lcom/google/a/b/y;->b:Ljava/util/Iterator;

    return-void
.end method

.method static a()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/a/b/y;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method static a(Ljava/util/Iterator;)V
    .locals 1

    invoke-static {p0}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 1

    const-string v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lcom/google/a/a/j;->b(ZLjava/lang/Object;)V

    return-void
.end method
