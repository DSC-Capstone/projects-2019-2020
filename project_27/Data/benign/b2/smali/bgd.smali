.class Lbgd;
.super Lbbl;
.source "SourceFile"


# instance fields
.field d:Lbgl;

.field e:Lbaz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lbbl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbgc;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lbgd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lbgd;->d:Lbgl;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lbgd;->d:Lbgl;

    invoke-virtual {v0}, Lbgl;->b()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lbgd;->d:Lbgl;

    .line 398
    :cond_0
    return-void
.end method

.method public a(Lbbc;Lbaz;)V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lbgd;->e:Lbaz;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lbgd;->e:Lbaz;

    invoke-super {p0, p1, v0}, Lbbl;->a(Lbbc;Lbaz;)V

    .line 345
    iget-object v0, p0, Lbgd;->e:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbgd;->e:Lbaz;

    .line 351
    :cond_2
    new-instance v1, Lbaz;

    invoke-direct {v1}, Lbaz;-><init>()V

    .line 353
    :try_start_0
    iget-object v0, p0, Lbgd;->d:Lbgl;

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Lbgd;->d:Lbgl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbgl;->a(I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_3

    .line 356
    :goto_1
    invoke-virtual {p2}, Lbaz;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 357
    invoke-virtual {p2}, Lbaz;->n()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 359
    :try_start_1
    invoke-static {v0, v2}, Lbaz;->a(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    invoke-virtual {v1, v2}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    :try_start_3
    invoke-virtual {p0}, Lbgd;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    invoke-virtual {p2, v1}, Lbaz;->a(Lbaz;)V

    .line 376
    invoke-virtual {v1, p2}, Lbaz;->a(Lbaz;)V

    .line 379
    :goto_2
    invoke-super {p0, p1, p2}, Lbbl;->a(Lbbc;Lbaz;)V

    .line 381
    iget-object v0, p0, Lbgd;->d:Lbgl;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbgd;->e:Lbaz;

    .line 383
    iget-object v0, p0, Lbgd;->e:Lbaz;

    invoke-virtual {p2, v0}, Lbaz;->a(Lbaz;)V

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 375
    :catchall_1
    move-exception v0

    invoke-virtual {p2, v1}, Lbaz;->a(Lbaz;)V

    .line 376
    invoke-virtual {v1, p2}, Lbaz;->a(Lbaz;)V

    throw v0

    .line 367
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lbgd;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 375
    :cond_4
    invoke-virtual {p2, v1}, Lbaz;->a(Lbaz;)V

    .line 376
    invoke-virtual {v1, p2}, Lbaz;->a(Lbaz;)V

    goto :goto_2
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0, p1}, Lbbl;->a(Ljava/lang/Exception;)V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p0}, Lbgd;->a()V

    .line 338
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lbgd;->d:Lbgl;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lbgd;->d:Lbgl;

    invoke-virtual {v0}, Lbgl;->a()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lbgd;->d:Lbgl;

    .line 405
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p0}, Lbgd;->a()V

    .line 390
    invoke-super {p0}, Lbbl;->d()V

    .line 391
    return-void
.end method
