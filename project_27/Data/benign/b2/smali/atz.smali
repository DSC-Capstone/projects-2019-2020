.class Latz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lats;

.field final synthetic d:Latx;


# direct methods
.method constructor <init>(Latx;Ljava/lang/String;Ljava/lang/String;Lats;)V
    .locals 0

    iput-object p1, p0, Latz;->d:Latx;

    iput-object p2, p0, Latz;->a:Ljava/lang/String;

    iput-object p3, p0, Latz;->b:Ljava/lang/String;

    iput-object p4, p0, Latz;->c:Lats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Latz;->d:Latx;

    invoke-static {v0}, Latx;->a(Latx;)Laak;

    move-result-object v0

    iget-object v1, p0, Latz;->a:Ljava/lang/String;

    iget-object v2, p0, Latz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Laak;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Latz;->c:Lats;

    invoke-interface {v1, v0}, Lats;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing uploadServerAuthCode callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
