.class Lbdn;
.super Lbed;
.source "SourceFile"


# instance fields
.field final synthetic d:Lbdq;

.field final synthetic e:Lbea;

.field final synthetic f:Lbgr;

.field final synthetic g:Lbdy;

.field final synthetic h:I

.field final synthetic i:Lbdj;


# direct methods
.method constructor <init>(Lbdj;Lbea;Lbdq;Lbea;Lbgr;Lbdy;I)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lbdn;->i:Lbdj;

    iput-object p3, p0, Lbdn;->d:Lbdq;

    iput-object p4, p0, Lbdn;->e:Lbea;

    iput-object p5, p0, Lbdn;->f:Lbgr;

    iput-object p6, p0, Lbdn;->g:Lbdy;

    iput p7, p0, Lbdn;->h:I

    invoke-direct {p0, p2}, Lbed;-><init>(Lbea;)V

    return-void
.end method


# virtual methods
.method public a(Lbbc;)V
    .locals 6

    .prologue
    .line 347
    iget-object v0, p0, Lbdn;->g:Lbdy;

    iput-object p1, v0, Lbdy;->d:Lbbc;

    .line 348
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, v0, Lbdj;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdr;

    .line 350
    iget-object v3, p0, Lbdn;->g:Lbdy;

    invoke-interface {v0, v3}, Lbdr;->a(Lbdt;)V

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iget-object v0, p0, Lbdn;->g:Lbdy;

    iget-object v0, v0, Lbdy;->d:Lbbc;

    invoke-super {p0, v0}, Lbed;->a(Lbbc;)V

    .line 356
    iget-object v0, p0, Lbdn;->j:Lbfb;

    .line 357
    invoke-virtual {p0}, Lbdn;->f()I

    move-result v1

    .line 358
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_4

    :cond_1
    iget-object v1, p0, Lbdn;->e:Lbea;

    invoke-virtual {v1}, Lbea;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lbfb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :try_start_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 364
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lbdn;->e:Lbea;

    invoke-virtual {v3}, Lbea;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 371
    :cond_2
    iget-object v1, p0, Lbdn;->e:Lbea;

    invoke-virtual {v1}, Lbea;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HEAD"

    .line 372
    :goto_1
    new-instance v2, Lbea;

    invoke-direct {v2, v0, v1}, Lbea;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lbdn;->e:Lbea;

    iget-wide v0, v0, Lbea;->g:J

    iput-wide v0, v2, Lbea;->g:J

    .line 374
    iget-object v0, p0, Lbdn;->e:Lbea;

    iget v0, v0, Lbea;->f:I

    iput v0, v2, Lbea;->f:I

    .line 375
    iget-object v0, p0, Lbdn;->e:Lbea;

    iget-object v0, v0, Lbea;->e:Ljava/lang/String;

    iput-object v0, v2, Lbea;->e:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lbdn;->e:Lbea;

    iget-object v0, v0, Lbea;->c:Ljava/lang/String;

    iput-object v0, v2, Lbea;->c:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lbdn;->e:Lbea;

    iget v0, v0, Lbea;->d:I

    iput v0, v2, Lbea;->d:I

    .line 378
    invoke-static {v2}, Lbdj;->b(Lbea;)V

    .line 379
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "User-Agent"

    invoke-static {v0, v2, v1}, Lbdj;->a(Lbea;Lbea;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "Range"

    invoke-static {v0, v2, v1}, Lbdj;->a(Lbea;Lbea;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "Redirecting"

    invoke-virtual {v0, v1}, Lbea;->a(Ljava/lang/String;)V

    .line 382
    const-string v0, "Redirected"

    invoke-virtual {v2, v0}, Lbea;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget v1, p0, Lbdn;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lbdn;->d:Lbdq;

    iget-object v4, p0, Lbdn;->f:Lbgr;

    invoke-static {v0, v2, v1, v3, v4}, Lbdj;->b(Lbdj;Lbea;ILbdq;Lbgr;)V

    .line 385
    new-instance v0, Lbcs;

    invoke-direct {v0}, Lbcs;-><init>()V

    invoke-virtual {p0, v0}, Lbdn;->a(Lbcr;)V

    .line 393
    :goto_2
    return-void

    .line 367
    :catch_0
    move-exception v2

    .line 368
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    iget-object v4, p0, Lbdn;->e:Lbea;

    iget-object v5, p0, Lbdn;->f:Lbgr;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbdq;Ljava/lang/Exception;Lbed;Lbea;Lbgr;)V

    goto :goto_2

    .line 371
    :cond_3
    const-string v1, "GET"

    goto :goto_1

    .line 389
    :cond_4
    iget-object v0, p0, Lbdn;->e:Lbea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final (post cache response) headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbdn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    const/4 v2, 0x0

    iget-object v4, p0, Lbdn;->e:Lbea;

    iget-object v5, p0, Lbdn;->f:Lbgr;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbdq;Ljava/lang/Exception;Lbed;Lbea;Lbgr;)V

    goto :goto_2
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lbea;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lbdn;->d:Lbdq;

    invoke-virtual {v0}, Lbdq;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    instance-of v0, p1, Lazv;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lbea;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, p1

    .line 425
    check-cast v0, Lazv;

    .line 426
    iget-object v1, p0, Lbdn;->e:Lbea;

    invoke-virtual {v1, v0}, Lbea;->a(Lazv;)V

    .line 427
    invoke-virtual {v0}, Lazv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_3
    invoke-virtual {p0}, Lbdn;->c()Lbaw;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_1

    .line 433
    invoke-super {p0, p1}, Lbed;->a(Ljava/lang/Exception;)V

    .line 434
    invoke-interface {v0}, Lbaw;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 435
    :cond_4
    invoke-virtual {p0}, Lbdn;->c_()Lbfb;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 436
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    const/4 v3, 0x0

    iget-object v4, p0, Lbdn;->e:Lbea;

    iget-object v5, p0, Lbdn;->f:Lbgr;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbdq;Ljava/lang/Exception;Lbed;Lbea;Lbgr;)V

    .line 439
    :cond_5
    iget-object v0, p0, Lbdn;->g:Lbdy;

    iput-object p1, v0, Lbdy;->k:Ljava/lang/Exception;

    .line 440
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, v0, Lbdj;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdr;

    .line 442
    iget-object v3, p0, Lbdn;->g:Lbdy;

    invoke-interface {v0, v3}, Lbdr;->a(Lbdy;)V

    goto :goto_1

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 396
    invoke-super {p0}, Lbed;->b()V

    .line 397
    iget-object v0, p0, Lbdn;->d:Lbdq;

    invoke-virtual {v0}, Lbdq;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lbdn;->d:Lbdq;

    iget-object v0, v0, Lbdq;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->e:Lbag;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    iget-object v1, v1, Lbdq;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Object;)V

    .line 405
    :cond_1
    iget-object v0, p0, Lbdn;->e:Lbea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbdn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, v0, Lbdj;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdr;

    .line 409
    iget-object v3, p0, Lbdn;->g:Lbdy;

    invoke-interface {v0, v3}, Lbdr;->a(Lbdv;)V

    goto :goto_1

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 324
    if-eqz p1, :cond_1

    .line 325
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    const/4 v3, 0x0

    iget-object v4, p0, Lbdn;->e:Lbea;

    iget-object v5, p0, Lbdn;->f:Lbgr;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbdq;Ljava/lang/Exception;Lbed;Lbea;Lbgr;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lbdn;->e:Lbea;

    const-string v1, "request completed"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lbdn;->d:Lbdq;

    invoke-virtual {v0}, Lbdq;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lbdn;->d:Lbdq;

    iget-object v0, v0, Lbdq;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbdn;->j:Lbfb;

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->e:Lbag;

    iget-object v1, p0, Lbdn;->d:Lbdq;

    iget-object v1, v1, Lbdq;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lbdn;->d:Lbdq;

    iget-object v1, p0, Lbdn;->i:Lbdj;

    iget-object v1, v1, Lbdj;->e:Lbag;

    iget-object v2, p0, Lbdn;->d:Lbdq;

    iget-object v2, v2, Lbdq;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Lbdn;->e:Lbea;

    invoke-static {v3}, Lbdj;->a(Lbea;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lbag;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lbdq;->b:Ljava/lang/Object;

    .line 338
    :cond_2
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v1, v0, Lbdj;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lbdn;->i:Lbdj;

    iget-object v0, v0, Lbdj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdr;

    .line 340
    iget-object v3, p0, Lbdn;->g:Lbdy;

    invoke-interface {v0, v3}, Lbdr;->a(Lbdx;)V

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
