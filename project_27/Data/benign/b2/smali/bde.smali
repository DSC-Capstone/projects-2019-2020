.class public Lbde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcy;


# static fields
.field public static final g:Lbcv;

.field static final synthetic h:Z


# instance fields
.field private a:Lbcv;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-class v0, Lbde;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbde;->h:Z

    .line 74
    new-instance v0, Lbdf;

    invoke-direct {v0}, Lbdf;-><init>()V

    sput-object v0, Lbde;->g:Lbcv;

    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbcv;)Lbcy;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lbde;->b(Lbcv;)Lbde;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public b(Lbcv;)Lbde;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lbde;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lbde;->a:Lbcv;

    .line 63
    :cond_0
    monitor-exit p0

    .line 64
    return-object p0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v1, p0, Lbde;->e:Z

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x0

    monitor-exit p0

    .line 53
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-boolean v1, p0, Lbde;->f:Z

    if-eqz v1, :cond_1

    .line 43
    monitor-exit p0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 44
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lbde;->f:Z

    .line 45
    iget-object v1, p0, Lbde;->a:Lbcv;

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lbde;->a:Lbcv;

    .line 48
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v1}, Lbcv;->b()Z

    .line 51
    :cond_2
    invoke-virtual {p0}, Lbde;->a()V

    .line 52
    invoke-virtual {p0}, Lbde;->d()V

    goto :goto_0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-boolean v1, p0, Lbde;->f:Z

    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x0

    monitor-exit p0

    .line 33
    :goto_0
    return v0

    .line 23
    :cond_0
    iget-boolean v1, p0, Lbde;->e:Z

    if-eqz v1, :cond_2

    .line 25
    sget-boolean v1, Lbde;->h:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :cond_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbde;->e:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lbde;->a:Lbcv;

    .line 30
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-virtual {p0}, Lbde;->e()V

    .line 32
    invoke-virtual {p0}, Lbde;->d()V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lbde;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbde;->a:Lbcv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbde;->a:Lbcv;

    invoke-interface {v0}, Lbcv;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 7
    iget-boolean v0, p0, Lbde;->e:Z

    return v0
.end method
