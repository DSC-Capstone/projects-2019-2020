.class Latx;
.super Lato;


# instance fields
.field private final a:Lapb;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lapb;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lato;-><init>()V

    iput-object p1, p0, Latx;->a:Lapb;

    iput-object p2, p0, Latx;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()Laak;
    .locals 1

    iget-object v0, p0, Latx;->a:Lapb;

    invoke-virtual {v0}, Lapb;->d()Laak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Latx;)Laak;
    .locals 1

    invoke-direct {p0}, Latx;->a()Laak;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lats;)V
    .locals 2

    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Latz;

    invoke-direct {v1, p0, p1, p2, p3}, Latz;-><init>(Latx;Ljava/lang/String;Ljava/lang/String;Lats;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lats;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lats;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laty;

    invoke-direct {v1, p0, p2, p1, p3}, Laty;-><init>(Latx;Ljava/util/List;Ljava/lang/String;Lats;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
