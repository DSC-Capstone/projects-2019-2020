.class public final Lzt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lzu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Laaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laaa",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final b:Laad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laad",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final c:Laab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laab",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Laae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laae",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Laaa;Laab;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lzz;",
            ">(",
            "Ljava/lang/String;",
            "Laaa",
            "<TC;TO;>;",
            "Laab",
            "<TC;>;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lzt;->f:Ljava/lang/String;

    iput-object p2, p0, Lzt;->a:Laaa;

    iput-object v1, p0, Lzt;->b:Laad;

    iput-object p3, p0, Lzt;->c:Laab;

    iput-object v1, p0, Lzt;->d:Laae;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzt;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Laaa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laaa",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lzt;->a:Laaa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Laei;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lzt;->a:Laaa;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Laad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laad",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lzt;->b:Laad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Laei;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lzt;->b:Laad;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzt;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Laab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laab",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lzt;->c:Laab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Laei;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lzt;->c:Laab;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lzt;->d:Laae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
