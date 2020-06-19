.class public Lbhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhq;


# instance fields
.field a:Lbaw;

.field b:Lbax;

.field c:Lbhp;

.field d:Lbhr;

.field e:Lbjc;

.field f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lbhi;",
            ">;"
        }
    .end annotation
.end field

.field g:Lbfo;

.field h:Z

.field i:I

.field final j:Lbii;

.field k:J

.field l:Lbii;

.field m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbih;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbaw;Lbfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    .line 33
    iput-boolean v2, p0, Lbhh;->h:Z

    .line 266
    new-instance v0, Lbii;

    invoke-direct {v0}, Lbii;-><init>()V

    iput-object v0, p0, Lbhh;->j:Lbii;

    .line 423
    new-instance v0, Lbii;

    invoke-direct {v0}, Lbii;-><init>()V

    iput-object v0, p0, Lbhh;->l:Lbii;

    .line 424
    iput-boolean v3, p0, Lbhh;->q:Z

    .line 271
    iput-object p2, p0, Lbhh;->g:Lbfo;

    .line 272
    iput-object p1, p0, Lbhh;->a:Lbaw;

    .line 273
    new-instance v0, Lbax;

    invoke-direct {v0, p1}, Lbax;-><init>(Lbbf;)V

    iput-object v0, p0, Lbhh;->b:Lbax;

    .line 275
    sget-object v0, Lbfo;->c:Lbfo;

    if-ne p2, v0, :cond_2

    .line 276
    new-instance v0, Lbij;

    invoke-direct {v0}, Lbij;-><init>()V

    iput-object v0, p0, Lbhh;->e:Lbjc;

    .line 281
    :cond_0
    :goto_0
    iget-object v0, p0, Lbhh;->e:Lbjc;

    invoke-interface {v0, p1, p0, v2}, Lbjc;->a(Lbbc;Lbhq;Z)Lbhp;

    move-result-object v0

    iput-object v0, p0, Lbhh;->c:Lbhp;

    .line 282
    iget-object v0, p0, Lbhh;->e:Lbjc;

    iget-object v1, p0, Lbhh;->b:Lbax;

    invoke-interface {v0, v1, v2}, Lbjc;->a(Lbax;Z)Lbhr;

    move-result-object v0

    iput-object v0, p0, Lbhh;->d:Lbhr;

    .line 285
    iput v2, p0, Lbhh;->p:I

    .line 286
    sget-object v0, Lbfo;->d:Lbfo;

    if-ne p2, v0, :cond_1

    .line 287
    iget v0, p0, Lbhh;->p:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbhh;->p:I

    .line 289
    :cond_1
    iput v2, p0, Lbhh;->n:I

    .line 295
    iget-object v0, p0, Lbhh;->j:Lbii;

    const/4 v1, 0x7

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v3, v2}, Lbii;->a(III)Lbii;

    .line 297
    return-void

    .line 278
    :cond_2
    sget-object v0, Lbfo;->d:Lbfo;

    if-ne p2, v0, :cond_0

    .line 279
    new-instance v0, Lbhz;

    invoke-direct {v0}, Lbhz;-><init>()V

    iput-object v0, p0, Lbhh;->e:Lbjc;

    goto :goto_0
.end method

.method private a(ILjava/util/List;ZZ)Lbhi;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;ZZ)",
            "Lbhi;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 49
    if-nez p3, :cond_0

    move v3, v4

    .line 50
    :goto_0
    if-nez p4, :cond_1

    .line 54
    :goto_1
    iget-boolean v0, p0, Lbhh;->m:Z

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x0

    .line 75
    :goto_2
    return-object v0

    :cond_0
    move v3, v0

    .line 49
    goto :goto_0

    :cond_1
    move v4, v0

    .line 50
    goto :goto_1

    .line 58
    :cond_2
    iget v2, p0, Lbhh;->p:I

    .line 59
    iget v0, p0, Lbhh;->p:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbhh;->p:I

    .line 60
    new-instance v0, Lbhi;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbhi;-><init>(Lbhh;IZZLjava/util/List;)V

    .line 61
    invoke-virtual {v0}, Lbhi;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_3
    if-nez p1, :cond_4

    .line 67
    :try_start_0
    iget-object v5, p0, Lbhh;->d:Lbhr;

    move v6, v3

    move v7, v4

    move v8, v2

    move v9, p1

    move-object v10, p2

    invoke-interface/range {v5 .. v10}, Lbhr;->a(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    :cond_4
    :try_start_1
    iget-boolean v1, p0, Lbhh;->h:Z

    if-eqz v1, :cond_5

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5
    iget-object v1, p0, Lbhh;->d:Lbhr;

    invoke-interface {v1, p1, v2, p2}, Lbhr;->a(IILjava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(ZIILbih;)V
    .locals 1

    .prologue
    .line 469
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lbih;->a()V

    .line 470
    :cond_0
    iget-object v0, p0, Lbhh;->d:Lbhr;

    invoke-interface {v0, p1, p2, p3}, Lbhr;->a(ZII)V

    .line 471
    return-void
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lbhh;->g:Lbfo;

    sget-object v1, Lbfo;->d:Lbfo;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized c(I)Lbih;
    .locals 2

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbhh;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhh;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbih;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;ZZ)Lbhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;ZZ)",
            "Lbhi;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lbhh;->a(ILjava/util/List;ZZ)Lbhi;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    const/high16 v3, 0x10000

    .line 304
    iget-object v0, p0, Lbhh;->d:Lbhr;

    invoke-interface {v0}, Lbhr;->a()V

    .line 305
    iget-object v0, p0, Lbhh;->d:Lbhr;

    iget-object v1, p0, Lbhh;->j:Lbii;

    invoke-interface {v0, v1}, Lbhr;->a(Lbii;)V

    .line 306
    iget-object v0, p0, Lbhh;->j:Lbii;

    invoke-virtual {v0, v3}, Lbii;->d(I)I

    move-result v0

    .line 307
    if-eq v0, v3, :cond_0

    .line 308
    iget-object v1, p0, Lbhh;->d:Lbhr;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lbhr;->a(IJ)V

    .line 310
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    iget v0, p0, Lbhh;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lbhh;->i:I

    .line 85
    iget v0, p0, Lbhh;->i:I

    iget-object v1, p0, Lbhh;->j:Lbii;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lbii;->d(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lbhh;->d:Lbhr;

    const/4 v1, 0x0

    iget v2, p0, Lbhh;->i:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lbhr;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iput v4, p0, Lbhh;->i:I

    .line 94
    :cond_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(IIIZ)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 2
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
    .line 529
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "pushPromise"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 514
    if-nez p1, :cond_1

    .line 515
    invoke-virtual {p0, p2, p3}, Lbhh;->a(J)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0, p2, p3}, Lbhi;->a(J)V

    goto :goto_0
.end method

.method public a(ILbho;)V
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lbhh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 417
    if-eqz v0, :cond_1

    .line 418
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p2}, Lbho;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Ljava/lang/Exception;)V

    .line 420
    :cond_1
    return-void
.end method

.method public a(ILbho;Lbhn;)V
    .locals 4

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhh;->m:Z

    .line 501
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 502
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 505
    if-le v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhi;

    invoke-virtual {v1}, Lbhi;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    new-instance v1, Ljava/io/IOException;

    sget-object v3, Lbho;->k:Lbho;

    invoke-virtual {v3}, Lbho;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 510
    :cond_1
    return-void
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 451
    iget-wide v0, p0, Lbhh;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbhh;->k:J

    .line 452
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 453
    invoke-static {v0}, Lbch;->a(Lbbf;)V

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lbhh;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V

    .line 539
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    invoke-static {v0, p1}, Lbch;->a(Lbbc;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 544
    :cond_0
    return-void
.end method

.method public a(ZII)V
    .locals 2

    .prologue
    .line 479
    if-eqz p1, :cond_1

    .line 480
    invoke-direct {p0, p2}, Lbhh;->c(I)Lbih;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lbih;->b()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2, p3, v1}, Lbhh;->a(ZIILbih;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(ZILbaz;)V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0, p2}, Lbhh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 325
    if-nez v0, :cond_2

    .line 327
    :try_start_0
    iget-object v0, p0, Lbhh;->d:Lbhr;

    sget-object v1, Lbho;->c:Lbho;

    invoke-interface {v0, p2, v1}, Lbhr;->a(ILbho;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-virtual {p3}, Lbaz;->m()V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 335
    :cond_2
    invoke-virtual {p3}, Lbaz;->d()I

    move-result v1

    .line 336
    iget-object v2, v0, Lbhi;->g:Lbaz;

    invoke-virtual {p3, v2}, Lbaz;->a(Lbaz;)V

    .line 337
    invoke-virtual {v0, v1}, Lbhi;->a(I)V

    .line 338
    iget-object v1, v0, Lbhi;->g:Lbaz;

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Lbaz;)V

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v1, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Lbhi;->d()V

    .line 342
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(ZLbii;)V
    .locals 5

    .prologue
    const/high16 v4, 0x10000

    .line 427
    const-wide/16 v0, 0x0

    .line 428
    iget-object v2, p0, Lbhh;->l:Lbii;

    invoke-virtual {v2, v4}, Lbii;->d(I)I

    move-result v2

    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-object v3, p0, Lbhh;->l:Lbii;

    invoke-virtual {v3}, Lbii;->a()V

    .line 431
    :cond_0
    iget-object v3, p0, Lbhh;->l:Lbii;

    invoke-virtual {v3, p2}, Lbii;->a(Lbii;)V

    .line 433
    :try_start_0
    iget-object v3, p0, Lbhh;->d:Lbhr;

    invoke-interface {v3}, Lbhr;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    iget-object v3, p0, Lbhh;->l:Lbii;

    invoke-virtual {v3, v4}, Lbii;->d(I)I

    move-result v3

    .line 438
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    .line 439
    sub-int v0, v3, v2

    int-to-long v0, v0

    .line 440
    iget-boolean v2, p0, Lbhh;->q:Z

    if-nez v2, :cond_1

    .line 441
    invoke-virtual {p0, v0, v1}, Lbhh;->a(J)V

    .line 442
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbhh;->q:Z

    :cond_1
    move-wide v2, v0

    .line 445
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 446
    invoke-virtual {v0, v2, v3}, Lbhi;->a(J)V

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 448
    :cond_2
    return-void
.end method

.method public a(ZZIILjava/util/List;Lbhv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;",
            "Lbhv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0, p3}, Lbhh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 357
    :cond_0
    iget-boolean v0, p0, Lbhh;->m:Z

    if-eqz v0, :cond_2

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhi;

    .line 361
    if-nez v0, :cond_4

    .line 363
    invoke-virtual {p6}, Lbhv;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    :try_start_0
    iget-object v0, p0, Lbhh;->d:Lbhr;

    sget-object v1, Lbho;->c:Lbho;

    invoke-interface {v0, p3, v1}, Lbhr;->a(ILbho;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 374
    :cond_3
    iget v0, p0, Lbhh;->o:I

    if-le p3, v0, :cond_1

    .line 377
    rem-int/lit8 v0, p3, 0x2

    iget v1, p0, Lbhh;->p:I

    rem-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_1

    .line 379
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unexpected receive stream"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 390
    :cond_4
    invoke-virtual {p6}, Lbhv;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 392
    :try_start_1
    iget-object v0, p0, Lbhh;->d:Lbhr;

    sget-object v1, Lbho;->c:Lbho;

    invoke-interface {v0, p3, v1}, Lbhr;->a(ILbho;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    iget-object v0, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 402
    :cond_5
    invoke-virtual {v0, p5, p6}, Lbhi;->a(Ljava/util/List;Lbhv;)V

    .line 403
    if-eqz p2, :cond_1

    .line 404
    iget-object v1, p0, Lbhh;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Lbhh;->d:Lbhr;

    invoke-interface {v0}, Lbhr;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
