.class final Lbie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhr;


# instance fields
.field private final a:Lbax;

.field private final b:Z

.field private final c:Lbhy;

.field private d:Z

.field private final e:Lbaz;


# direct methods
.method constructor <init>(Lbax;Z)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbie;->e:Lbaz;

    .line 414
    iput-object p1, p0, Lbie;->a:Lbax;

    .line 415
    iput-boolean p2, p0, Lbie;->b:Z

    .line 416
    new-instance v0, Lbhy;

    invoke-direct {v0}, Lbhy;-><init>()V

    iput-object v0, p0, Lbie;->c:Lbhy;

    .line 417
    return-void
.end method

.method private a(Lbaz;I)V
    .locals 3

    .prologue
    .line 500
    :goto_0
    invoke-virtual {p1}, Lbaz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const/16 v0, 0x3fff

    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 502
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v0

    sub-int/2addr v0, v1

    .line 503
    const/16 v2, 0x9

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, p2, v1, v2, v0}, Lbie;->a(IIBB)V

    .line 504
    iget-object v0, p0, Lbie;->e:Lbaz;

    invoke-virtual {p1, v0, v1}, Lbaz;->a(Lbaz;I)V

    .line 505
    iget-object v0, p0, Lbie;->a:Lbax;

    iget-object v1, p0, Lbie;->e:Lbaz;

    invoke-virtual {v0, v1}, Lbax;->a(Lbaz;)V

    goto :goto_0

    .line 503
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 507
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 432
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lbie;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 437
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_1
    :try_start_2
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lbhz;->b()Lbhn;

    move-result-object v4

    invoke-virtual {v4}, Lbhn;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 436
    :cond_2
    iget-object v0, p0, Lbie;->a:Lbax;

    new-instance v1, Lbaz;

    invoke-static {}, Lbhz;->b()Lbhn;

    move-result-object v2

    invoke-virtual {v2}, Lbhn;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lbaz;-><init>([B)V

    invoke-virtual {v0, v1}, Lbax;->a(Lbaz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method a(IBLbaz;)V
    .locals 2

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    invoke-virtual {p3}, Lbaz;->d()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p2}, Lbie;->a(IIBB)V

    .line 537
    iget-object v0, p0, Lbie;->a:Lbax;

    invoke-virtual {v0, p3}, Lbax;->a(Lbaz;)V

    .line 538
    return-void
.end method

.method a(IIBB)V
    .locals 5

    .prologue
    const/16 v2, 0x3fff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lbhz;->a()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lbia;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 621
    :cond_0
    if-le p2, v2, :cond_1

    .line 622
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbhz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 624
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 625
    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbhz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 626
    :cond_2
    const/16 v0, 0x100

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 627
    and-int/lit16 v1, p2, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 628
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 629
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 630
    iget-object v1, p0, Lbie;->a:Lbax;

    iget-object v2, p0, Lbie;->e:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbax;->a(Lbaz;)V

    .line 631
    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 466
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbie;->c:Lbhy;

    invoke-virtual {v0, p3}, Lbhy;->a(Ljava/util/List;)Lbaz;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Lbaz;->d()I

    move-result v0

    int-to-long v2, v0

    .line 469
    const-wide/16 v4, 0x3ffb

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 470
    const/4 v5, 0x5

    .line 471
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 472
    :goto_0
    add-int/lit8 v6, v4, 0x4

    invoke-virtual {p0, p1, v6, v5, v0}, Lbie;->a(IIBB)V

    .line 473
    const/16 v0, 0x2000

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 474
    const v5, 0x7fffffff

    and-int/2addr v5, p2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 476
    iget-object v5, p0, Lbie;->e:Lbaz;

    invoke-virtual {v5, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 477
    iget-object v0, p0, Lbie;->e:Lbaz;

    invoke-virtual {v1, v0, v4}, Lbaz;->a(Lbaz;I)V

    .line 478
    iget-object v0, p0, Lbie;->a:Lbax;

    iget-object v5, p0, Lbie;->e:Lbaz;

    invoke-virtual {v0, v5}, Lbax;->a(Lbaz;)V

    .line 480
    int-to-long v4, v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-direct {p0, v1, p1}, Lbie;->a(Lbaz;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :cond_1
    monitor-exit p0

    return-void

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 599
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 600
    :cond_1
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbhz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 603
    :cond_2
    const/4 v0, 0x4

    .line 604
    const/16 v1, 0x8

    .line 605
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p0, p1, v0, v1, v2}, Lbie;->a(IIBB)V

    .line 607
    const/16 v0, 0x100

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 608
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 610
    iget-object v1, p0, Lbie;->a:Lbax;

    iget-object v2, p0, Lbie;->e:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbax;->a(Lbaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILbho;)V
    .locals 3

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_0
    :try_start_1
    iget v0, p2, Lbho;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 515
    :cond_1
    const/4 v0, 0x4

    .line 516
    const/4 v1, 0x3

    .line 517
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0, p1, v0, v1, v2}, Lbie;->a(IIBB)V

    .line 519
    const/16 v0, 0x2000

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    iget v1, p2, Lbho;->r:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 522
    iget-object v1, p0, Lbie;->a:Lbax;

    iget-object v2, p0, Lbie;->e:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbax;->a(Lbaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lbii;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 542
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 543
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lbii;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 544
    const/4 v3, 0x4

    .line 545
    const/4 v4, 0x0

    .line 546
    const/4 v5, 0x0

    .line 547
    invoke-virtual {p0, v5, v0, v3, v4}, Lbie;->a(IIBB)V

    .line 548
    const/16 v0, 0x2000

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 549
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 550
    invoke-virtual {p1, v2}, Lbii;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x3

    .line 554
    :goto_2
    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {p1, v2}, Lbii;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 553
    :cond_2
    const/4 v0, 0x7

    if-ne v2, v0, :cond_4

    move v0, v1

    goto :goto_2

    .line 557
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 558
    iget-object v0, p0, Lbie;->a:Lbax;

    iget-object v1, p0, Lbie;->e:Lbaz;

    invoke-virtual {v1, v3}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbax;->a(Lbaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public declared-synchronized a(ZII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 564
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbie;->d:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_0
    const/16 v1, 0x8

    .line 566
    const/4 v2, 0x6

    .line 567
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 568
    :cond_1
    const/4 v3, 0x0

    .line 569
    :try_start_1
    invoke-virtual {p0, v3, v1, v2, v0}, Lbie;->a(IIBB)V

    .line 570
    const/16 v0, 0x100

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 574
    iget-object v1, p0, Lbie;->a:Lbax;

    iget-object v2, p0, Lbie;->e:Lbaz;

    invoke-virtual {v2, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbax;->a(Lbaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILbaz;)V
    .locals 2

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 530
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 531
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3}, Lbie;->a(IBLbaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    monitor-exit p0

    return-void
.end method

.method a(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lbie;->c:Lbhy;

    invoke-virtual {v0, p3}, Lbhy;->a(Ljava/util/List;)Lbaz;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lbaz;->d()I

    move-result v0

    int-to-long v2, v0

    .line 488
    const-wide/16 v4, 0x3fff

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 489
    const/4 v5, 0x1

    .line 490
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 491
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 492
    :cond_1
    invoke-virtual {p0, p2, v4, v5, v0}, Lbie;->a(IIBB)V

    .line 493
    iget-object v0, p0, Lbie;->e:Lbaz;

    invoke-virtual {v1, v0, v4}, Lbaz;->a(Lbaz;I)V

    .line 494
    iget-object v0, p0, Lbie;->a:Lbax;

    iget-object v5, p0, Lbie;->e:Lbaz;

    invoke-virtual {v0, v5}, Lbax;->a(Lbaz;)V

    .line 496
    int-to-long v4, v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-direct {p0, v1, p2}, Lbie;->a(Lbaz;I)V

    .line 497
    :cond_2
    return-void

    .line 490
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lbie;->a(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbie;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 423
    const/4 v1, 0x4

    .line 424
    const/4 v2, 0x1

    .line 425
    const/4 v3, 0x0

    .line 426
    :try_start_1
    invoke-virtual {p0, v3, v0, v1, v2}, Lbie;->a(IIBB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 615
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbie;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
