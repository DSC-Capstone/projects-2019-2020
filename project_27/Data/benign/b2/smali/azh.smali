.class final Lazh;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lavf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 721
    invoke-direct {p0}, Lavf;-><init>()V

    .line 718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazh;->a:Ljava/util/Map;

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazh;->b:Ljava/util/Map;

    .line 723
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v4, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 724
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v6, Lavj;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lavj;

    .line 726
    if-eqz v1, :cond_1

    .line 727
    invoke-interface {v1}, Lavj;->a()Ljava/lang/String;

    move-result-object v1

    .line 729
    :goto_1
    iget-object v2, p0, Lazh;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v2, p0, Lazh;->b:Ljava/util/Map;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 735
    :cond_0
    return-void

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazj;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 738
    invoke-virtual {p1}, Lazj;->j()V

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lazh;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_0
.end method

.method public a(Lazm;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazm;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 745
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lazm;->b(Ljava/lang/String;)Lazm;

    .line 746
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lazh;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lazh;->a(Lazm;Ljava/lang/Enum;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lazh;->a(Lazj;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
