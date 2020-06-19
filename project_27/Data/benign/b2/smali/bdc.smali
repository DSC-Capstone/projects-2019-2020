.class public Lbdc;
.super Lbdg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbdg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbdb",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lbdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbdb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lbdg;-><init>()V

    .line 11
    new-instance v0, Lbdd;

    invoke-direct {v0, p0}, Lbdd;-><init>(Lbdc;)V

    iput-object v0, p0, Lbdc;->b:Lbdb;

    return-void
.end method


# virtual methods
.method public synthetic a(Lbdb;)Lbda;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lbdc;->c(Lbdb;)Lbdc;

    move-result-object v0

    return-object v0
.end method

.method public c(Lbdb;)Lbdc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdb",
            "<TT;>;)",
            "Lbdc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lbdc;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdc;->a:Ljava/util/ArrayList;

    .line 33
    :cond_0
    iget-object v0, p0, Lbdc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lbdc;->b:Lbdb;

    invoke-super {p0, v0}, Lbdg;->d(Lbdb;)Lbdg;

    .line 48
    return-object p0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic d(Lbdb;)Lbdg;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lbdc;->c(Lbdb;)Lbdc;

    move-result-object v0

    return-object v0
.end method
