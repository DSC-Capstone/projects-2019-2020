.class Lbgf;
.super Lbbl;
.source "SourceFile"


# static fields
.field static final synthetic h:Z


# instance fields
.field d:Lbgk;

.field e:Lbaz;

.field f:Z

.field g:Ljava/lang/Runnable;

.field private i:Z

.field private j:Lbjq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    const-class v0, Lbgb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbgf;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbgk;J)V
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Lbbl;-><init>()V

    .line 410
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbgf;->e:Lbaz;

    .line 412
    new-instance v0, Lbjq;

    invoke-direct {v0}, Lbjq;-><init>()V

    iput-object v0, p0, Lbgf;->j:Lbjq;

    .line 419
    new-instance v0, Lbgg;

    invoke-direct {v0, p0}, Lbgg;-><init>(Lbgf;)V

    iput-object v0, p0, Lbgf;->g:Ljava/lang/Runnable;

    .line 415
    iput-object p1, p0, Lbgf;->d:Lbgk;

    .line 416
    iget-object v0, p0, Lbgf;->j:Lbjq;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lbjq;->b(I)V

    .line 417
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 487
    iget-boolean v0, p0, Lbgf;->f:Z

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgf;->d:Lbgk;

    invoke-virtual {v2}, Lbgk;->a()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 490
    invoke-super {p0, p1}, Lbbl;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 427
    iget-object v0, p0, Lbgf;->e:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 428
    iget-object v0, p0, Lbgf;->e:Lbaz;

    invoke-super {p0, p0, v0}, Lbbl;->a(Lbbc;Lbaz;)V

    .line 429
    iget-object v0, p0, Lbgf;->e:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    :try_start_0
    iget-object v0, p0, Lbgf;->j:Lbjq;

    invoke-virtual {v0}, Lbjq;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 436
    sget-boolean v1, Lbgf;->h:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    iput-boolean v6, p0, Lbgf;->f:Z

    .line 451
    invoke-virtual {p0, v0}, Lbgf;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 437
    :cond_2
    :try_start_1
    iget-object v1, p0, Lbgf;->d:Lbgk;

    invoke-virtual {v1}, Lbgk;->a()Ljava/io/FileInputStream;

    move-result-object v1

    .line 438
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 439
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 440
    invoke-static {v0}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgf;->f:Z

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbgf;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v2, p0, Lbgf;->j:Lbjq;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lbjq;->a(J)V

    .line 446
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 447
    iget-object v1, p0, Lbgf;->e:Lbaz;

    invoke-virtual {v1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    iget-object v0, p0, Lbgf;->e:Lbaz;

    invoke-super {p0, p0, v0}, Lbbl;->a(Lbbc;Lbaz;)V

    .line 455
    iget-object v0, p0, Lbgf;->e:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-gtz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lbgf;->m()Lbag;

    move-result-object v0

    iget-object v1, p0, Lbgf;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lbag;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgf;->d:Lbgk;

    invoke-virtual {v2}, Lbgk;->a()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 480
    invoke-super {p0}, Lbbl;->d()V

    .line 481
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lbgf;->m()Lbag;

    move-result-object v0

    iget-object v1, p0, Lbgf;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgf;->i:Z

    .line 469
    invoke-virtual {p0}, Lbgf;->e()V

    .line 470
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lbgf;->i:Z

    return v0
.end method
