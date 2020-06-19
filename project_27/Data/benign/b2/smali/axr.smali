.class public final Laxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavg;


# instance fields
.field private final a:Lavr;

.field private final b:Laui;

.field private final c:Lawe;


# direct methods
.method public constructor <init>(Lavr;Laui;Lawe;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Laxr;->a:Lavr;

    .line 54
    iput-object p2, p0, Laxr;->b:Laui;

    .line 55
    iput-object p3, p0, Laxr;->c:Lawe;

    .line 56
    return-void
.end method

.method private a(Lauj;Ljava/lang/reflect/Field;Lazi;)Lavf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "Ljava/lang/reflect/Field;",
            "Lazi",
            "<*>;)",
            "Lavf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    const-class v0, Lavi;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lavi;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Laxr;->a:Lavr;

    invoke-static {v1, p1, p3, v0}, Laxh;->a(Lavr;Lauj;Lazi;Lavi;)Lavf;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lauj;->a(Lazi;)Lavf;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Laxr;Lauj;Ljava/lang/reflect/Field;Lazi;)Lavf;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Laxr;->a(Lauj;Ljava/lang/reflect/Field;Lazi;)Lavf;

    move-result-object v0

    return-object v0
.end method

.method private a(Lauj;Ljava/lang/reflect/Field;Ljava/lang/String;Lazi;ZZ)Laxu;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lazi",
            "<*>;ZZ)",
            "Laxu;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p4}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lawr;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 83
    new-instance v0, Laxs;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Laxs;-><init>(Laxr;Ljava/lang/String;ZZLauj;Ljava/lang/reflect/Field;Lazi;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lavj;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lavj;

    .line 64
    if-nez v0, :cond_0

    iget-object v0, p0, Laxr;->b:Laui;

    invoke-interface {v0, p1}, Laui;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lavj;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lauj;Lazi;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "Lazi",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 140
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 119
    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    .line 120
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 121
    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v2, v10, v8

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Laxr;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Laxr;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 124
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 121
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 127
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lavn;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 129
    invoke-direct {p0, v2}, Laxr;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v0}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    .line 129
    invoke-direct/range {v0 .. v6}, Laxr;->a(Lauj;Ljava/lang/reflect/Field;Ljava/lang/String;Lazi;ZZ)Laxu;

    move-result-object v0

    .line 131
    iget-object v1, v0, Laxu;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxu;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Laxu;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_3
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lavn;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 140
    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lauj;",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 70
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Laxr;->a:Lavr;

    invoke-virtual {v1, p2}, Lavr;->a(Lazi;)Lawq;

    move-result-object v3

    .line 75
    new-instance v1, Laxt;

    invoke-direct {p0, p1, p2, v2}, Laxr;->a(Lauj;Lazi;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Laxt;-><init>(Lawq;Ljava/util/Map;Laxs;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Laxr;->c:Lawe;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lawe;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxr;->c:Lawe;

    invoke-virtual {v0, p1, p2}, Lawe;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
