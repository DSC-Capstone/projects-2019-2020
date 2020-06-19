.class public final Lcom/google/a/d/a/f;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/google/a/d/a/e;


# instance fields
.field private final a:Lcom/google/a/d/a/b;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/a/d/a/b;

    invoke-direct {v0}, Lcom/google/a/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/a/f;->a:Lcom/google/a/d/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/google/a/d/a/b;

    invoke-direct {v0}, Lcom/google/a/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/a/f;->a:Lcom/google/a/d/a/b;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/a/d/a/f;
    .locals 1

    new-instance v0, Lcom/google/a/d/a/f;

    invoke-direct {v0, p0, p1}, Lcom/google/a/d/a/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/a/d/a/f;
    .locals 1

    new-instance v0, Lcom/google/a/d/a/f;

    invoke-direct {v0, p0}, Lcom/google/a/d/a/f;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/a/d/a/f;->a:Lcom/google/a/d/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/d/a/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected done()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/d/a/f;->a:Lcom/google/a/d/a/b;

    invoke-virtual {v0}, Lcom/google/a/d/a/b;->a()V

    return-void
.end method
