.class final Laxe;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lavf",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lavf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavf",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lawq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lawq",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lauj;Ljava/lang/reflect/Type;Lavf;Lawq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj;",
            "Ljava/lang/reflect/Type;",
            "Lavf",
            "<TE;>;",
            "Lawq",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lavf;-><init>()V

    .line 67
    new-instance v0, Laxz;

    invoke-direct {v0, p1, p3, p2}, Laxz;-><init>(Lauj;Lavf;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Laxe;->a:Lavf;

    .line 69
    iput-object p4, p0, Laxe;->b:Lawq;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazj;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lazj;->j()V

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Laxe;->b:Lawq;

    invoke-interface {v0}, Lawq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 79
    invoke-virtual {p1}, Lazj;->a()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lazj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Laxe;->a:Lavf;

    invoke-virtual {v1, p1}, Lavf;->b(Lazj;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lazj;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Laxe;->a(Lazm;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lazm;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazm;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lazm;->b()Lazm;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget-object v2, p0, Laxe;->a:Lavf;

    invoke-virtual {v2, p1, v1}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lazm;->c()Lazm;

    goto :goto_0
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Laxe;->a(Lazj;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
