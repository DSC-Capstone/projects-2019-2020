.class Lxs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lxr;


# direct methods
.method constructor <init>(Lxr;)V
    .locals 0

    iput-object p1, p0, Lxs;->a:Lxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lxs;->a:Lxr;

    invoke-virtual {v0}, Lxr;->g()Lww;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lww;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
