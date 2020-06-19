.class Laty;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lats;

.field final synthetic d:Latx;


# direct methods
.method constructor <init>(Latx;Ljava/util/List;Ljava/lang/String;Lats;)V
    .locals 0

    iput-object p1, p0, Laty;->d:Latx;

    iput-object p2, p0, Laty;->a:Ljava/util/List;

    iput-object p3, p0, Laty;->b:Ljava/lang/String;

    iput-object p4, p0, Laty;->c:Lats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laty;->d:Latx;

    invoke-static {v0}, Latx;->a(Latx;)Laak;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Laty;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Laty;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Laak;->a(Ljava/lang/String;Ljava/util/Set;)Laal;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    invoke-virtual {v0}, Laal;->a()Z

    move-result v2

    invoke-virtual {v0}, Laal;->b()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Laty;->c:Lats;

    invoke-interface {v0, v1}, Lats;->a(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing checkServerAuthorization callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
