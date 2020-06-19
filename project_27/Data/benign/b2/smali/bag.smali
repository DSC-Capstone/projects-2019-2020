.class public Lbag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lbag;

.field static final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lbag;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic f:Z

.field private static h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lbau;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Thread;

.field private g:Lbce;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lbag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbag;->f:Z

    .line 85
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 86
    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_1
    new-instance v0, Lbag;

    invoke-direct {v0}, Lbag;-><init>()V

    sput-object v0, Lbag;->a:Lbag;

    .line 411
    invoke-static {}, Lbag;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbag;->h:Ljava/util/concurrent/ExecutorService;

    .line 525
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbag;->d:Ljava/util/WeakHashMap;

    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbag;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lbav;->a:Lbav;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lbag;->c:Ljava/util/PriorityQueue;

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string p1, "AsyncServer"

    .line 113
    :cond_0
    iput-object p1, p0, Lbag;->b:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static a(Lbag;Ljava/util/PriorityQueue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbag;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lbau;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 684
    const-wide v0, 0x7fffffffffffffffL

    move-wide v2, v0

    .line 688
    :goto_0
    const/4 v1, 0x0

    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 693
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 694
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbau;

    .line 695
    iget-wide v6, v0, Lbau;->b:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    .line 703
    :goto_1
    monitor-exit p0

    .line 705
    if-nez v2, :cond_2

    .line 711
    return-wide v0

    .line 699
    :cond_0
    iget-wide v2, v0, Lbau;->b:J

    sub-long/2addr v2, v4

    .line 700
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v8, v1

    move-wide v0, v2

    move-object v2, v8

    goto :goto_1

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 708
    :cond_2
    iget-object v2, v2, Lbau;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move-wide v2, v0

    .line 709
    goto :goto_0
.end method

.method static synthetic a(Lbag;Ljava/net/InetSocketAddress;Lbcp;)Lbar;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lbag;->b(Ljava/net/InetSocketAddress;Lbcp;)Lbar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbag;)Lbce;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbag;->g:Lbce;

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lbat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbat;-><init>(Lbah;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lbcg;->a(Ljava/lang/Thread;)Lbcg;

    move-result-object v1

    .line 72
    iput-object v1, v0, Lbat;->c:Lbcg;

    .line 73
    iput-object p0, v0, Lbat;->d:Landroid/os/Handler;

    .line 74
    iput-object p1, v0, Lbat;->b:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v1, v0}, Lbcg;->a(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, v1, Lbcg;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 81
    return-void
.end method

.method static synthetic a(Lbag;Lbce;Ljava/util/PriorityQueue;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lbag;->b(Lbag;Lbce;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method private static a(Lbce;)V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lbag;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbah;

    invoke-direct {v1, p0}, Lbah;-><init>(Lbce;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v1, p0, Lbag;->g:Lbce;

    if-eqz v1, :cond_2

    .line 550
    const-string v0, "NIO"

    const-string v1, "Reentrant call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v0, Lbag;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lbag;->e:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 553
    :cond_0
    const/4 v0, 0x1

    .line 554
    :try_start_1
    iget-object v2, p0, Lbag;->g:Lbce;

    .line 555
    iget-object v1, p0, Lbag;->c:Ljava/util/PriorityQueue;

    .line 594
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    if-eqz v0, :cond_5

    .line 598
    :try_start_2
    invoke-static {p0, v2, v1}, Lbag;->c(Lbag;Lbce;Ljava/util/PriorityQueue;)V
    :try_end_2
    .catch Lbaq; {:try_start_2 .. :try_end_2} :catch_1

    .line 613
    :goto_0
    return-void

    .line 559
    :cond_2
    :try_start_3
    new-instance v2, Lbce;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v2, v1}, Lbce;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v2, p0, Lbag;->g:Lbce;

    .line 560
    iget-object v1, p0, Lbag;->c:Ljava/util/PriorityQueue;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 565
    if-eqz p1, :cond_3

    .line 566
    :try_start_4
    new-instance v3, Lbai;

    iget-object v4, p0, Lbag;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v2, v1}, Lbai;-><init>(Lbag;Ljava/lang/String;Lbce;Ljava/util/PriorityQueue;)V

    iput-object v3, p0, Lbag;->e:Ljava/lang/Thread;

    .line 575
    :goto_1
    invoke-direct {p0}, Lbag;->d()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 577
    :try_start_5
    iget-object v0, p0, Lbag;->g:Lbce;

    invoke-virtual {v0}, Lbce;->f()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 581
    :goto_2
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lbag;->g:Lbce;

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lbag;->e:Ljava/lang/Thread;

    .line 583
    monitor-exit p0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    monitor-exit p0

    goto :goto_0

    .line 573
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lbag;->e:Ljava/lang/Thread;

    goto :goto_1

    .line 585
    :cond_4
    if-eqz p1, :cond_1

    .line 586
    iget-object v0, p0, Lbag;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 600
    :catch_1
    move-exception v0

    .line 601
    const-string v1, "NIO"

    const-string v3, "Selector closed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :try_start_7
    invoke-virtual {v2}, Lbce;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 606
    :catch_2
    move-exception v0

    goto :goto_0

    .line 612
    :cond_5
    invoke-static {p0, v2, v1}, Lbag;->b(Lbag;Lbce;Ljava/util/PriorityQueue;)V

    goto :goto_0

    .line 579
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/net/InetSocketAddress;Lbcp;)Lbar;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lbar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbar;-><init>(Lbag;Lbah;)V

    .line 346
    sget-boolean v1, Lbag;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_0
    new-instance v1, Lbak;

    invoke-direct {v1, p0, v0, p2, p1}, Lbak;-><init>(Lbag;Lbar;Lbcp;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 373
    return-object v0
.end method

.method private static b(Lbag;Lbce;Ljava/util/PriorityQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbag;",
            "Lbce;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lbau;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lbag;->c(Lbag;Lbce;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lbaq; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_1
    monitor-enter p0

    .line 639
    :try_start_1
    invoke-virtual {p1}, Lbce;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbce;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 640
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const-string v1, "NIO"

    const-string v2, "Selector exception, shutting down"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    :try_start_2
    invoke-virtual {p1}, Lbce;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 634
    :catch_1
    move-exception v0

    goto :goto_1

    .line 642
    :cond_1
    :try_start_3
    invoke-static {p1}, Lbag;->c(Lbce;)V

    .line 643
    iget-object v0, p0, Lbag;->g:Lbce;

    if-ne v0, p1, :cond_2

    .line 644
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lbav;->a:Lbav;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lbag;->c:Ljava/util/PriorityQueue;

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lbag;->g:Lbce;

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lbag;->e:Ljava/lang/Thread;

    .line 648
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 651
    sget-object v1, Lbag;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 652
    :try_start_4
    sget-object v0, Lbag;->d:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    monitor-exit v1

    .line 655
    return-void

    .line 653
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static b(Lbce;)V
    .locals 5

    .prologue
    .line 659
    :try_start_0
    invoke-virtual {p0}, Lbce;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 660
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbka;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    goto :goto_0

    .line 668
    :catch_1
    move-exception v0

    .line 670
    :cond_0
    return-void
.end method

.method private static c()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 405
    new-instance v8, Lbas;

    const-string v0, "AsyncServer-worker-"

    invoke-direct {v8, v0}, Lbas;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 408
    return-object v1
.end method

.method private static c(Lbag;Lbce;Ljava/util/PriorityQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbag;",
            "Lbce;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lbau;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 722
    .line 725
    invoke-static {p0, p2}, Lbag;->a(Lbag;Ljava/util/PriorityQueue;)J

    move-result-wide v2

    .line 727
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 730
    :try_start_1
    invoke-virtual {p1}, Lbce;->b()I

    move-result v5

    .line 731
    if-nez v5, :cond_0

    .line 734
    invoke-virtual {p1}, Lbce;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 736
    monitor-exit p0

    .line 831
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 742
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    if-eqz v0, :cond_2

    .line 745
    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    .line 747
    :try_start_2
    invoke-virtual {p1}, Lbce;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 760
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lbce;->e()Ljava/util/Set;

    move-result-object v5

    .line 761
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 763
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 764
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 768
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    .line 769
    if-eqz v3, :cond_3

    .line 771
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 772
    invoke-virtual {p1}, Lbce;->a()Ljava/nio/channels/Selector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 773
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbct;

    .line 774
    new-instance v7, Lazr;

    invoke-direct {v7}, Lazr;-><init>()V

    .line 775
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v3, v1}, Lazr;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 776
    invoke-virtual {v7, p0, v2}, Lazr;->a(Lbag;Ljava/nio/channels/SelectionKey;)V

    .line 777
    invoke-virtual {v2, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-interface {v0, v7}, Lbct;->a(Lbaw;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 780
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    .line 781
    :goto_3
    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lbka;->a([Ljava/io/Closeable;)V

    .line 782
    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 827
    :catch_1
    move-exception v0

    goto :goto_2

    .line 742
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 755
    :catch_2
    move-exception v0

    .line 756
    new-instance v1, Lbaq;

    invoke-direct {v1, v0}, Lbaq;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 751
    :cond_4
    :try_start_a
    invoke-virtual {p1, v2, v3}, Lbce;->a(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    .line 786
    :cond_5
    :try_start_b
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 787
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazr;

    .line 788
    invoke-virtual {v0}, Lazr;->c()I

    move-result v0

    .line 789
    invoke-virtual {p0, v0}, Lbag;->a(I)V

    goto/16 :goto_2

    .line 791
    :cond_6
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 792
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazr;

    .line 793
    invoke-virtual {v0}, Lazr;->b()V

    goto/16 :goto_2

    .line 795
    :cond_7
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 796
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbar;

    .line 797
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 798
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_1

    .line 801
    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 802
    new-instance v7, Lazr;

    invoke-direct {v7}, Lazr;-><init>()V

    .line 803
    invoke-virtual {v7, p0, v0}, Lazr;->a(Lbag;Ljava/nio/channels/SelectionKey;)V

    .line 804
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v2, v3}, Lazr;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 805
    invoke-virtual {v0, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_1

    .line 815
    :try_start_d
    invoke-virtual {v1, v7}, Lbar;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, v1, Lbar;->b:Lbcp;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v7}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    .line 818
    :catch_3
    move-exception v0

    .line 819
    :try_start_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 807
    :catch_4
    move-exception v3

    .line 808
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 809
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 810
    invoke-virtual {v1, v3}, Lbar;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, v1, Lbar;->b:Lbcp;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    goto/16 :goto_2

    .line 823
    :cond_8
    const-string v0, "NIO"

    const-string v1, "wtf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown key state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_1

    .line 830
    :cond_9
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    .line 780
    :catch_5
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v0, v4

    move-object v1, v3

    goto/16 :goto_3
.end method

.method private static c(Lbce;)V
    .locals 1

    .prologue
    .line 673
    invoke-static {p0}, Lbag;->b(Lbce;)V

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lbce;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 528
    sget-object v1, Lbag;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 529
    :try_start_0
    sget-object v0, Lbag;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lbag;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbag;

    .line 530
    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x0

    monitor-exit v1

    .line 536
    :goto_0
    return v0

    .line 534
    :cond_0
    sget-object v0, Lbag;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lbag;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit v1

    .line 536
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILbcp;)Lbcv;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lbag;->a(Ljava/net/InetSocketAddress;Lbcp;)Lbcv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/InetSocketAddress;Lbcp;)Lbcv;
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0, p1, p2}, Lbag;->b(Ljava/net/InetSocketAddress;Lbcp;)Lbar;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    .line 380
    :cond_0
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    .line 382
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbag;->b(Ljava/lang/String;)Lbda;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Lbdg;->c(Lbcv;)Lbdg;

    .line 384
    new-instance v2, Lbal;

    invoke-direct {v2, p0, p2, v0, p1}, Lbal;-><init>(Lbag;Lbcp;Lbdg;Ljava/net/InetSocketAddress;)V

    invoke-interface {v1, v2}, Lbda;->a(Lbdb;)Lbda;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lbda;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbda",
            "<[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    .line 414
    sget-object v1, Lbag;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lbam;

    invoke-direct {v2, p0, p1, v0}, Lbam;-><init>(Lbag;Ljava/lang/String;Lbdg;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 437
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbag;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    monitor-enter p0

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 159
    :goto_0
    iget-object v2, p0, Lbag;->c:Ljava/util/PriorityQueue;

    new-instance v3, Lbau;

    invoke-direct {v3, p1, v0, v1}, Lbau;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lbag;->g:Lbce;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbag;->a(Z)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lbag;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lbag;->g:Lbce;

    invoke-static {v0}, Lbag;->a(Lbce;)V

    .line 166
    :cond_1
    monitor-exit p0

    .line 167
    return-object v3

    .line 158
    :cond_2
    iget-object v0, p0, Lbag;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lbag;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lbag;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lbda;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbda",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lbag;->a(Ljava/lang/String;)Lbda;

    move-result-object v0

    new-instance v1, Lbap;

    invoke-direct {v1, p0}, Lbap;-><init>(Lbag;)V

    invoke-interface {v0, v1}, Lbda;->b(Lbdb;)Lbdb;

    move-result-object v0

    check-cast v0, Lbda;

    return-object v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lbag;->e:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lbag;->c:Ljava/util/PriorityQueue;

    invoke-static {p0, v0}, Lbag;->a(Lbag;Ljava/util/PriorityQueue;)J

    .line 204
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 191
    new-instance v1, Lbaj;

    invoke-direct {v1, p0, p1, v0}, Lbaj;-><init>(Lbag;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 199
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "NIO"

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lbag;->e:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
