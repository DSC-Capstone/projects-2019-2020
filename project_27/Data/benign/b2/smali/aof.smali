.class public abstract Laof;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Laof;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Laoc;

.field private final b:Laog;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Laog;Lant;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Laof;->b:Laog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laof;->c:Ljava/util/List;

    new-instance v0, Laoc;

    invoke-direct {v0, p0, p2}, Laoc;-><init>(Laof;Lant;)V

    invoke-virtual {v0}, Laoc;->k()V

    iput-object v0, p0, Laof;->a:Laoc;

    return-void
.end method


# virtual methods
.method protected a(Laoc;)V
    .locals 0

    return-void
.end method

.method protected b(Laoc;)V
    .locals 2

    iget-object v0, p0, Laof;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laod;

    invoke-interface {v0, p0, p1}, Laod;->a(Laof;Laoc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Laoc;
    .locals 1

    iget-object v0, p0, Laof;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Laoc;

    move-result-object v0

    invoke-virtual {p0, v0}, Laof;->b(Laoc;)V

    return-object v0
.end method

.method public m()Laoc;
    .locals 1

    iget-object v0, p0, Laof;->a:Laoc;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laof;->a:Laoc;

    invoke-virtual {v0}, Laoc;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected o()Laog;
    .locals 1

    iget-object v0, p0, Laof;->b:Laog;

    return-object v0
.end method
