.class public final Lcom/google/a/b/ac;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/a/b/v;->a:Lcom/google/a/a/a;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/a/a/a;->c(Ljava/lang/String;)Lcom/google/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/ac;->a:Lcom/google/a/a/e;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/j;->a(Z)V

    add-int/lit8 v0, p0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/a/b/ad;

    invoke-direct {v0, p0}, Lcom/google/a/b/ad;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/a/b/x;

    invoke-direct {v0, p0, p1}, Lcom/google/a/b/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/a/b/ae;

    invoke-direct {v0, p0}, Lcom/google/a/b/ae;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
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
