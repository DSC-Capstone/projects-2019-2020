.class Lbak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbar;

.field final synthetic b:Lbcp;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lbag;


# direct methods
.method constructor <init>(Lbag;Lbar;Lbcp;Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbak;->d:Lbag;

    iput-object p2, p0, Lbak;->a:Lbar;

    iput-object p3, p0, Lbak;->b:Lbcp;

    iput-object p4, p0, Lbak;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 351
    iget-object v0, p0, Lbak;->a:Lbar;

    invoke-virtual {v0}, Lbar;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lbak;->a:Lbar;

    iget-object v1, p0, Lbak;->b:Lbcp;

    iput-object v1, v0, Lbar;->b:Lbcp;

    .line 358
    :try_start_0
    iget-object v0, p0, Lbak;->a:Lbar;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, v0, Lbar;->a:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 360
    iget-object v0, p0, Lbak;->d:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbce;

    move-result-object v0

    invoke-virtual {v0}, Lbce;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 361
    iget-object v0, p0, Lbak;->a:Lbar;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lbak;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :goto_1
    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 367
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lbka;->a([Ljava/io/Closeable;)V

    .line 368
    iget-object v1, p0, Lbak;->a:Lbar;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lbar;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 364
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
