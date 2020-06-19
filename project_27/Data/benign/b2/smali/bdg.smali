.class public Lbdg;
.super Lbde;
.source "SourceFile"

# interfaces
.implements Lbcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbde;",
        "Lbcz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field d:Lbaf;

.field i:Ljava/lang/Exception;

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field k:Z

.field l:Lbdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbdb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lbde;-><init>()V

    .line 18
    return-void
.end method

.method private a(Z)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lbde;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 38
    :cond_0
    monitor-enter p0

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lbdg;->i:Ljava/lang/Exception;

    .line 40
    invoke-virtual {p0}, Lbdg;->g()V

    .line 41
    invoke-direct {p0}, Lbdg;->m()Lbdb;

    move-result-object v0

    .line 42
    iput-boolean p1, p0, Lbdg;->k:Z

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0, v0}, Lbdg;->c(Lbdb;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lbdb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lbdg;->k:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lbdg;->i:Ljava/lang/Exception;

    iget-object v1, p0, Lbdg;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method private l()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lbdg;->i:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lbdg;->i:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lbdg;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private m()Lbdb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbdb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lbdg;->l:Lbdb;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lbdg;->l:Lbdb;

    .line 102
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lbcv;)Lbcy;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lbdg;->c(Lbcv;)Lbdg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lbdb;)Lbda;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lbdg;->d(Lbdb;)Lbdg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbda;)Lbdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbda",
            "<TT;>;)",
            "Lbdg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lbdg;->i()Lbdb;

    move-result-object v0

    invoke-interface {p1, v0}, Lbda;->a(Lbdb;)Lbda;

    .line 156
    invoke-virtual {p0, p1}, Lbdg;->c(Lbcv;)Lbdg;

    .line 157
    return-object p0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-super {p0}, Lbde;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    monitor-exit p0

    .line 142
    :goto_0
    return v0

    .line 136
    :cond_0
    iput-object p2, p0, Lbdg;->j:Ljava/lang/Object;

    .line 137
    iput-object p1, p0, Lbdg;->i:Ljava/lang/Exception;

    .line 138
    invoke-virtual {p0}, Lbdg;->g()V

    .line 139
    invoke-direct {p0}, Lbdg;->m()Lbdb;

    move-result-object v0

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-direct {p0, v0}, Lbdg;->c(Lbdb;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lbdb;)Lbdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lbdb",
            "<TT;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 181
    instance-of v0, p1, Lbcy;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 182
    check-cast v0, Lbcy;

    invoke-interface {v0, p0}, Lbcy;->a(Lbcv;)Lbcy;

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lbdg;->d(Lbdb;)Lbdg;

    .line 184
    return-object p1
.end method

.method public synthetic b(Lbcv;)Lbde;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lbdg;->c(Lbcv;)Lbdg;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lbdg;->k:Z

    invoke-direct {p0, v0}, Lbdg;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lbcv;)Lbdg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcv;",
            ")",
            "Lbdg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0, p1}, Lbde;->b(Lbcv;)Lbde;

    .line 190
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbdg;->a(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lbdg;->b()Z

    move-result v0

    return v0
.end method

.method public d(Lbdb;)Lbdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdb",
            "<TT;>;)",
            "Lbdg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-object p1, p0, Lbdg;->l:Lbdb;

    .line 170
    invoke-virtual {p0}, Lbdg;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbdg;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lbdg;->m()Lbdb;

    move-result-object v0

    .line 174
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-direct {p0, v0}, Lbdg;->c(Lbdb;)V

    .line 176
    return-object p0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbdg;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbdg;->d:Lbaf;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lbdg;->d:Lbaf;

    invoke-virtual {v0}, Lbaf;->b()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lbdg;->d:Lbaf;

    .line 115
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lbdg;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbdg;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0}, Lbdg;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lbdg;->h()Lbaf;

    move-result-object v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Lbaf;->a()V

    .line 66
    invoke-direct {p0}, Lbdg;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lbdg;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbdg;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-direct {p0}, Lbdg;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lbdg;->h()Lbaf;

    move-result-object v0

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lbaf;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :cond_2
    invoke-direct {p0}, Lbdg;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method h()Lbaf;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbdg;->d:Lbaf;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    iput-object v0, p0, Lbdg;->d:Lbaf;

    .line 120
    :cond_0
    iget-object v0, p0, Lbdg;->d:Lbaf;

    return-object v0
.end method

.method public i()Lbdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbdb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lbdh;

    invoke-direct {v0, p0}, Lbdh;-><init>(Lbdg;)V

    return-object v0
.end method

.method public j()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lbdg;->i:Ljava/lang/Exception;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lbdg;->j:Ljava/lang/Object;

    return-object v0
.end method
