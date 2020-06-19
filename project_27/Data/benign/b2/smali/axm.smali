.class public final Laxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavg;


# instance fields
.field private final a:Lavr;

.field private final b:Z


# direct methods
.method public constructor <init>(Lavr;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Laxm;->a:Lavr;

    .line 112
    iput-boolean p2, p0, Laxm;->b:Z

    .line 113
    return-void
.end method

.method private a(Lauj;Ljava/lang/reflect/Type;)Lavf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lavf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Laya;->f:Lavf;

    .line 142
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Laxm;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Laxm;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lavn;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lavn;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Laxm;->a(Lauj;Ljava/lang/reflect/Type;)Lavf;

    move-result-object v4

    .line 126
    aget-object v0, v1, v5

    invoke-static {v0}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v6

    .line 127
    iget-object v0, p0, Laxm;->a:Lavr;

    invoke-virtual {v0, p2}, Lavr;->a(Lazi;)Lawq;

    move-result-object v7

    .line 131
    new-instance v0, Laxn;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Laxn;-><init>(Laxm;Lauj;Ljava/lang/reflect/Type;Lavf;Ljava/lang/reflect/Type;Lavf;Lawq;)V

    goto :goto_0
.end method
