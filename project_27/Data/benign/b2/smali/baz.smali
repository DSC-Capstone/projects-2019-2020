.class public Lbaz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:I

.field static e:I

.field static f:I

.field public static final g:Ljava/nio/ByteBuffer;

.field static final synthetic h:Z

.field private static j:I

.field private static final k:Ljava/lang/Object;


# instance fields
.field a:Lazo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazo",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/nio/ByteOrder;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lbaz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbaz;->h:Z

    .line 412
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lbba;

    invoke-direct {v3}, Lbba;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lbaz;->c:Ljava/util/PriorityQueue;

    .line 420
    const/high16 v0, 0x100000

    sput v0, Lbaz;->j:I

    .line 421
    const/high16 v0, 0x40000

    sput v0, Lbaz;->d:I

    .line 422
    sput v1, Lbaz;->e:I

    .line 423
    sput v1, Lbaz;->f:I

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbaz;->k:Ljava/lang/Object;

    .line 536
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lbaz;->g:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    move v0, v1

    .line 17
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    iput-object v0, p0, Lbaz;->a:Lazo;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lbaz;->i:I

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    iput-object v0, p0, Lbaz;->a:Lazo;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lbaz;->i:I

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 42
    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    iput-object v0, p0, Lbaz;->a:Lazo;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lbaz;->i:I

    .line 35
    invoke-virtual {p0, p1}, Lbaz;->a([Ljava/nio/ByteBuffer;)Lbaz;

    .line 36
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 542
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 544
    const/4 v1, 0x0

    .line 545
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 546
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 553
    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 554
    return-void

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 550
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 551
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0
.end method

.method public static c(I)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 483
    sget v0, Lbaz;->f:I

    if-gt p0, v0, :cond_6

    .line 484
    invoke-static {}, Lbaz;->p()Ljava/util/PriorityQueue;

    move-result-object v5

    .line 485
    if-eqz v5, :cond_6

    .line 486
    sget-object v6, Lbaz;->k:Ljava/lang/Object;

    monitor-enter v6

    .line 487
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 488
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 490
    const/4 v1, 0x0

    sput v1, Lbaz;->f:I

    .line 491
    :cond_1
    sget v1, Lbaz;->e:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v1, v4

    sput v1, Lbaz;->e:I

    .line 492
    sget-boolean v1, Lbaz;->h:Z

    if-nez v1, :cond_4

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v2

    :goto_0
    sget v1, Lbaz;->e:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v4, v3

    .line 492
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 493
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, p0, :cond_0

    .line 495
    monitor-exit v6

    .line 505
    :goto_2
    return-object v0

    .line 499
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :cond_6
    const/16 v0, 0x2000

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2
.end method

.method public static c(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 446
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x2000

    if-lt v0, v3, :cond_0

    .line 448
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v3, Lbaz;->d:I

    if-gt v0, v3, :cond_0

    .line 451
    invoke-static {}, Lbaz;->p()Ljava/util/PriorityQueue;

    move-result-object v3

    .line 452
    if-eqz v3, :cond_0

    .line 455
    sget-object v4, Lbaz;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 456
    :goto_1
    :try_start_0
    sget v0, Lbaz;->e:I

    sget v5, Lbaz;->j:I

    if-le v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 458
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 459
    sget v5, Lbaz;->e:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, v5, v0

    sput v0, Lbaz;->e:I

    goto :goto_1

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 462
    :cond_2
    :try_start_1
    sget v0, Lbaz;->e:I

    sget v5, Lbaz;->j:I

    if-le v0, v5, :cond_3

    .line 464
    monitor-exit v4

    goto :goto_0

    .line 467
    :cond_3
    sget-boolean v0, Lbaz;->h:Z

    if-nez v0, :cond_4

    invoke-static {p0}, Lbaz;->d(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 469
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 470
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 471
    sget v0, Lbaz;->e:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v0, v5

    sput v0, Lbaz;->e:I

    .line 473
    invoke-virtual {v3, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 474
    sget-boolean v0, Lbaz;->h:Z

    if-nez v0, :cond_7

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    :goto_2
    sget v0, Lbaz;->e:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    xor-int/2addr v0, v3

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    .line 476
    :cond_7
    sget v0, Lbaz;->f:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lbaz;->f:I

    .line 477
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private d(I)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbaz;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 238
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    .line 240
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 243
    :cond_1
    if-nez v0, :cond_2

    .line 244
    sget-object v0, Lbaz;->g:Ljava/nio/ByteBuffer;

    .line 271
    :goto_1
    return-object v0

    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_3

    .line 248
    iget-object v1, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_3
    invoke-static {p1}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 252
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 253
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 254
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    .line 256
    :cond_4
    :goto_2
    if-ge v2, p1, :cond_5

    .line 257
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 258
    sub-int v5, p1, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 259
    invoke-virtual {v0, v4, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 260
    add-int/2addr v2, v5

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_4

    .line 262
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 263
    goto :goto_2

    .line 268
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_6

    .line 269
    iget-object v1, p0, Lbaz;->a:Lazo;

    invoke-virtual {v1, v0}, Lazo;->a(Ljava/lang/Object;)V

    .line 270
    :cond_6
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0, v3}, Lazo;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method private static d(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lbaz;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 435
    if-ne v0, p0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-ltz v0, :cond_0

    .line 336
    iget v0, p0, Lbaz;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lbaz;->i:I

    .line 337
    :cond_0
    return-void
.end method

.method private static p()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbaz;->c:Ljava/util/PriorityQueue;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lbaz;
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 287
    invoke-static {p1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    .line 309
    :goto_0
    return-object p0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lbaz;->e(I)V

    .line 293
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 294
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 301
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 302
    invoke-static {p1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    .line 303
    invoke-virtual {p0}, Lbaz;->l()V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0, p1}, Lazo;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Lbaz;->l()V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteOrder;)Lbaz;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbaz;->b:Ljava/nio/ByteOrder;

    .line 28
    return-object p0
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)Lbaz;
    .locals 3

    .prologue
    .line 45
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 46
    invoke-virtual {p0, v2}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object p0
.end method

.method public a(Lbaz;)V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lbaz;->a(Lbaz;I)V

    .line 218
    return-void
.end method

.method public a(Lbaz;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 184
    :goto_0
    if-ge v1, p2, :cond_4

    .line 185
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 188
    if-nez v3, :cond_1

    .line 189
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 193
    :cond_1
    add-int v4, v1, v3

    if-le v4, p2, :cond_3

    .line 194
    sub-int v1, p2, v1

    .line 196
    invoke-static {v1}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 197
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p1, v3}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 200
    iget-object v2, p0, Lbaz;->a:Lazo;

    invoke-virtual {v2, v0}, Lazo;->a(Ljava/lang/Object;)V

    .line 201
    sget-boolean v0, Lbaz;->h:Z

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_2
    sget-boolean v0, Lbaz;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_3
    invoke-virtual {p1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 210
    add-int v0, v1, v3

    move v1, v0

    .line 211
    goto :goto_0

    .line 213
    :cond_4
    iget v0, p0, Lbaz;->i:I

    sub-int/2addr v0, p2

    iput v0, p0, Lbaz;->i:I

    .line 214
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbaz;->a([BII)V

    .line 155
    return-void
.end method

.method public a([BII)V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, p3

    .line 162
    :goto_0
    if-lez v1, :cond_4

    .line 163
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 167
    :cond_1
    sub-int v2, v1, v3

    .line 168
    add-int/2addr p2, v3

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_3

    .line 170
    iget-object v1, p0, Lbaz;->a:Lazo;

    invoke-virtual {v1}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 171
    sget-boolean v3, Lbaz;->h:Z

    if-nez v3, :cond_2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_2
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    :cond_3
    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_4
    iget v0, p0, Lbaz;->i:I

    sub-int/2addr v0, p3

    iput v0, p0, Lbaz;->i:I

    .line 177
    return-void
.end method

.method public a()[B
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lbaz;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lbaz;->i:I

    .line 69
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    new-array v0, v0, [B

    .line 74
    invoke-virtual {p0, v0}, Lbaz;->a([B)V

    goto :goto_0
.end method

.method public a(I)[B
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [B

    .line 58
    invoke-virtual {p0, v0}, Lbaz;->a([B)V

    .line 59
    return-object v0
.end method

.method public b(I)Lbaz;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lbaz;->a([BII)V

    .line 120
    return-object p0
.end method

.method public b(Lbaz;)Lbaz;
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p1, p0}, Lbaz;->a(Lbaz;)V

    .line 281
    return-object p0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 314
    invoke-static {p1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    .line 332
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lbaz;->e(I)V

    .line 320
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 322
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 323
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 325
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 327
    invoke-static {p1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0, p1}, Lazo;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 81
    iget-object v1, p0, Lbaz;->a:Lazo;

    invoke-virtual {v1, v0}, Lazo;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 82
    iget-object v1, p0, Lbaz;->a:Lazo;

    invoke-virtual {v1}, Lazo;->clear()V

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lbaz;->i:I

    .line 84
    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lbaz;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lbaz;->i:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 125
    iget v1, p0, Lbaz;->i:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lbaz;->i:I

    .line 126
    return v0
.end method

.method public g()C
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    .line 131
    iget v1, p0, Lbaz;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbaz;->i:I

    .line 132
    return v0
.end method

.method public h()S
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 137
    iget v1, p0, Lbaz;->i:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbaz;->i:I

    .line 138
    return v0
.end method

.method public i()B
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 143
    iget v1, p0, Lbaz;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbaz;->i:I

    .line 144
    return v0
.end method

.method public j()J
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 149
    iget v2, p0, Lbaz;->i:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lbaz;->i:I

    .line 150
    return-wide v0
.end method

.method public k()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lbaz;->g:Ljava/nio/ByteBuffer;

    .line 230
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lbaz;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {p0}, Lbaz;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbaz;->d(I)Ljava/nio/ByteBuffer;

    .line 277
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 340
    :goto_0
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 343
    :cond_0
    sget-boolean v0, Lbaz;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lbaz;->i:I

    .line 345
    return-void
.end method

.method public n()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 349
    iget v1, p0, Lbaz;->i:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lbaz;->i:I

    .line 350
    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lbaz;->a:Lazo;

    invoke-virtual {v0}, Lazo;->size()I

    move-result v0

    return v0
.end method
