.class Lbam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbdg;

.field final synthetic c:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/lang/String;Lbdg;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lbam;->c:Lbag;

    iput-object p2, p0, Lbam;->a:Ljava/lang/String;

    iput-object p3, p0, Lbam;->b:Lbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lbam;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 420
    :cond_0
    new-instance v0, Lbbo;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Lbbo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    iget-object v1, p0, Lbam;->c:Lbag;

    new-instance v2, Lbao;

    invoke-direct {v2, p0, v0}, Lbao;-><init>(Lbam;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 435
    :goto_0
    return-void

    .line 421
    :cond_1
    :try_start_1
    iget-object v1, p0, Lbam;->c:Lbag;

    new-instance v2, Lban;

    invoke-direct {v2, p0, v0}, Lban;-><init>(Lbam;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
