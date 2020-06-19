.class public final Lcom/google/a/b/v;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/a/a/a;->a(Ljava/lang/String;)Lcom/google/a/a/a;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/a/a/a;->b(Ljava/lang/String;)Lcom/google/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/v;->a:Lcom/google/a/a/a;

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
