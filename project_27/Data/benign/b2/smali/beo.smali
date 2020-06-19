.class public Lbeo;
.super Lbfs;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field f:I

.field g:I

.field protected h:Lbdj;

.field i:Z

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lbew;",
            ">;"
        }
    .end annotation
.end field

.field m:I


# direct methods
.method public constructor <init>(Lbdj;)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "http"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v0, v1}, Lbeo;-><init>(Lbdj;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lbdj;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lbfs;-><init>()V

    .line 26
    const v0, 0x493e0

    iput v0, p0, Lbeo;->g:I

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbeo;->l:Ljava/util/Hashtable;

    .line 112
    const v0, 0x7fffffff

    iput v0, p0, Lbeo;->m:I

    .line 29
    iput-object p1, p0, Lbeo;->h:Lbdj;

    .line 30
    iput-object p2, p0, Lbeo;->e:Ljava/lang/String;

    .line 31
    iput p3, p0, Lbeo;->f:I

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)Lbew;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lbeo;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    .line 265
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lbew;

    invoke-direct {v0}, Lbew;-><init>()V

    .line 267
    iget-object v1, p0, Lbeo;->l:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-object v0
.end method

.method private a(Lbaw;)V
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lbeu;

    invoke-direct {v0, p0, p1}, Lbeu;-><init>(Lbeo;Lbaw;)V

    invoke-interface {p1, v0}, Lbaw;->b(Lbcn;)V

    .line 323
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbaw;->a(Lbcu;)V

    .line 326
    new-instance v0, Lbev;

    invoke-direct {v0, p0, p1}, Lbev;-><init>(Lbeo;Lbaw;)V

    invoke-interface {p1, v0}, Lbaw;->a(Lbcr;)V

    .line 335
    return-void
.end method

.method private a(Lbaw;Lbea;)V
    .locals 4

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p2}, Lbea;->d()Landroid/net/Uri;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lbeo;->a(Landroid/net/Uri;)I

    move-result v1

    .line 295
    invoke-virtual {p2}, Lbea;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbea;->j()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lbeo;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Lbex;

    invoke-direct {v1, p0, p1}, Lbex;-><init>(Lbeo;Lbaw;)V

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-direct {p0, v0}, Lbeo;->a(Ljava/lang/String;)Lbew;

    move-result-object v2

    .line 300
    iget-object v2, v2, Lbew;->c:Lazo;

    .line 301
    invoke-virtual {v2, v1}, Lazo;->e(Ljava/lang/Object;)V

    .line 302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    new-instance v3, Lbet;

    invoke-direct {v3, p0, v2, v1, v0}, Lbet;-><init>(Lbeo;Lazo;Lbex;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lbaw;->a(Lbcn;)V

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lbea;)V
    .locals 5

    .prologue
    .line 338
    invoke-virtual {p1}, Lbea;->d()Landroid/net/Uri;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lbeo;->a(Landroid/net/Uri;)I

    move-result v1

    .line 340
    invoke-virtual {p1}, Lbea;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbea;->j()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lbeo;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lbeo;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    .line 343
    if-nez v0, :cond_0

    .line 344
    monitor-exit p0

    .line 356
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v1, v0, Lbew;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lbew;->a:I

    .line 346
    :cond_1
    :goto_1
    iget v1, v0, Lbew;->a:I

    iget v2, p0, Lbeo;->m:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lbew;->b:Lazo;

    invoke-virtual {v1}, Lazo;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 347
    iget-object v1, v0, Lbew;->b:Lazo;

    invoke-virtual {v1}, Lazo;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbds;

    .line 348
    iget-object v2, v1, Lbds;->b:Lbcv;

    check-cast v2, Lbde;

    .line 349
    invoke-virtual {v2}, Lbde;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 351
    invoke-virtual {p0, v1}, Lbeo;->a(Lbds;)Lbcv;

    move-result-object v1

    .line 352
    invoke-virtual {v2, v1}, Lbde;->b(Lbcv;)Lbde;

    goto :goto_1

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Lbeo;->b(Ljava/lang/String;)V

    .line 355
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lbeo;Lbaw;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbeo;->a(Lbaw;)V

    return-void
.end method

.method static synthetic a(Lbeo;Lbaw;Lbea;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lbeo;->a(Lbaw;Lbea;)V

    return-void
.end method

.method static synthetic a(Lbeo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbeo;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 273
    iget-object v0, p0, Lbeo;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbew;

    .line 274
    if-nez v0, :cond_2

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, v0, Lbew;->c:Lazo;

    invoke-virtual {v1}, Lazo;->g()Ljava/lang/Object;

    .line 283
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lbaw;->a(Lbcn;)V

    .line 284
    invoke-interface {v2}, Lbaw;->d()V

    .line 276
    :cond_2
    iget-object v1, v0, Lbew;->c:Lazo;

    invoke-virtual {v1}, Lazo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    iget-object v1, v0, Lbew;->c:Lazo;

    invoke-virtual {v1}, Lazo;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbex;

    .line 278
    iget-object v2, v1, Lbex;->a:Lbaw;

    .line 279
    iget-wide v4, v1, Lbex;->b:J

    iget v1, p0, Lbeo;->g:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 286
    :cond_3
    iget v1, v0, Lbew;->a:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lbew;->b:Lazo;

    invoke-virtual {v1}, Lazo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbew;->c:Lazo;

    invoke-virtual {v0}, Lazo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lbeo;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbeo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 42
    iget v0, p0, Lbeo;->f:I

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method protected a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;
    .locals 0

    .prologue
    .line 56
    return-object p5
.end method

.method public a(Lbds;)Lbcv;
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 124
    iget-object v1, p1, Lbds;->j:Lbea;

    invoke-virtual {v1}, Lbea;->d()Landroid/net/Uri;

    move-result-object v2

    .line 125
    iget-object v1, p1, Lbds;->j:Lbea;

    invoke-virtual {v1}, Lbea;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbeo;->a(Landroid/net/Uri;)I

    move-result v3

    .line 126
    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p1, Lbds;->i:Lbkc;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1, p0}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p1, Lbds;->j:Lbea;

    invoke-virtual {v0}, Lbea;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lbds;->j:Lbea;

    invoke-virtual {v1}, Lbea;->j()I

    move-result v1

    invoke-virtual {p0, v2, v3, v0, v1}, Lbeo;->a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lbeo;->a(Ljava/lang/String;)Lbew;

    move-result-object v1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, v1, Lbew;->a:I

    iget v5, p0, Lbeo;->m:I

    if-lt v0, v5, :cond_1

    .line 137
    new-instance v0, Lbde;

    invoke-direct {v0}, Lbde;-><init>()V

    .line 138
    iget-object v1, v1, Lbew;->b:Lazo;

    invoke-virtual {v1, p1}, Lazo;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit p0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_1
    :try_start_1
    iget v0, v1, Lbew;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lbew;->a:I

    .line 144
    :cond_2
    :goto_1
    iget-object v0, v1, Lbew;->c:Lazo;

    invoke-virtual {v0}, Lazo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, v1, Lbew;->c:Lazo;

    invoke-virtual {v0}, Lazo;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbex;

    .line 146
    iget-object v5, v0, Lbex;->a:Lbaw;

    .line 147
    iget-wide v6, v0, Lbex;->b:J

    iget v0, p0, Lbeo;->g:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 148
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Lbaw;->a(Lbcn;)V

    .line 149
    invoke-interface {v5}, Lbaw;->d()V

    goto :goto_1

    .line 152
    :cond_3
    invoke-interface {v5}, Lbaw;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p1, Lbds;->j:Lbea;

    const-string v1, "Reusing keep-alive socket"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Lbds;->a:Lbcp;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 159
    new-instance v0, Lbde;

    invoke-direct {v0}, Lbde;-><init>()V

    .line 160
    invoke-virtual {v0}, Lbde;->f()Z

    .line 161
    monitor-exit p0

    goto :goto_0

    .line 163
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-boolean v0, p0, Lbeo;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbeo;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lbds;->j:Lbea;

    invoke-virtual {v0}, Lbea;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 167
    :cond_5
    iget-object v0, p1, Lbds;->j:Lbea;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 171
    iget-object v1, p1, Lbds;->j:Lbea;

    invoke-virtual {v1}, Lbea;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 172
    iget-object v0, p1, Lbds;->j:Lbea;

    invoke-virtual {v0}, Lbea;->i()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v0, p1, Lbds;->j:Lbea;

    invoke-virtual {v0}, Lbea;->j()I

    move-result v0

    move v6, v0

    move-object v7, v1

    .line 185
    :goto_2
    if-eqz v4, :cond_6

    .line 186
    iget-object v0, p1, Lbds;->j:Lbea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using proxy: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 188
    :cond_6
    iget-object v0, p0, Lbeo;->h:Lbdj;

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v8

    iget-object v5, p1, Lbds;->a:Lbcp;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lbeo;->a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;

    move-result-object v0

    invoke-virtual {v8, v7, v6, v0}, Lbag;->a(Ljava/lang/String;ILbcp;)Lbcv;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :cond_7
    iget-object v1, p0, Lbeo;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 177
    iget-object v1, p0, Lbeo;->j:Ljava/lang/String;

    .line 178
    iget v0, p0, Lbeo;->k:I

    move v6, v0

    move-object v7, v1

    .line 179
    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move v4, v0

    move v6, v3

    move-object v7, v1

    .line 183
    goto :goto_2

    .line 193
    :cond_9
    iget-object v0, p1, Lbds;->j:Lbea;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lbeo;->h:Lbdj;

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/String;)Lbda;

    move-result-object v0

    new-instance v1, Lbep;

    invoke-direct {v1, p0, p1, v2, v3}, Lbep;-><init>(Lbeo;Lbds;Landroid/net/Uri;I)V

    invoke-interface {v0, v1}, Lbda;->b(Lbdb;)Lbdb;

    move-result-object v0

    check-cast v0, Lbcv;

    goto/16 :goto_0
.end method

.method a(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    if-eqz p3, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    if-eqz p3, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Lbdy;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p1, Lbdy;->i:Lbkc;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 364
    :cond_0
    :try_start_0
    iget-object v0, p1, Lbdy;->e:Lbaw;

    invoke-direct {p0, v0}, Lbeo;->a(Lbaw;)V

    .line 366
    iget-object v0, p1, Lbdy;->k:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p1, Lbdy;->e:Lbaw;

    invoke-interface {v0}, Lbaw;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    :cond_1
    iget-object v0, p1, Lbdy;->j:Lbea;

    const-string v1, "closing out socket (exception)"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 368
    iget-object v0, p1, Lbdy;->e:Lbaw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbaw;->a(Lbcn;)V

    .line 369
    iget-object v0, p1, Lbdy;->e:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v0, p1, Lbdy;->j:Lbea;

    invoke-direct {p0, v0}, Lbeo;->a(Lbea;)V

    goto :goto_0

    .line 372
    :cond_2
    :try_start_1
    iget-object v0, p1, Lbdy;->f:Lbdz;

    invoke-interface {v0}, Lbdz;->d_()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lbdy;->f:Lbdz;

    invoke-interface {v1}, Lbdz;->c_()Lbfb;

    move-result-object v1

    invoke-static {v0, v1}, Lbfh;->a(Ljava/lang/String;Lbfb;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbfo;->b:Lbfo;

    iget-object v1, p1, Lbdy;->j:Lbea;

    invoke-virtual {v1}, Lbea;->e()Lbfb;

    move-result-object v1

    invoke-static {v0, v1}, Lbfh;->a(Lbfo;Lbfb;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 374
    :cond_3
    iget-object v0, p1, Lbdy;->j:Lbea;

    const-string v1, "closing out socket (not keep alive)"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 375
    iget-object v0, p1, Lbdy;->e:Lbaw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbaw;->a(Lbcn;)V

    .line 376
    iget-object v0, p1, Lbdy;->e:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    iget-object v0, p1, Lbdy;->j:Lbea;

    invoke-direct {p0, v0}, Lbeo;->a(Lbea;)V

    goto :goto_0

    .line 379
    :cond_4
    :try_start_2
    iget-object v0, p1, Lbdy;->j:Lbea;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 380
    iget-object v0, p1, Lbdy;->e:Lbaw;

    iget-object v1, p1, Lbdy;->j:Lbea;

    invoke-direct {p0, v0, v1}, Lbeo;->a(Lbaw;Lbea;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    iget-object v0, p1, Lbdy;->j:Lbea;

    invoke-direct {p0, v0}, Lbeo;->a(Lbea;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p1, Lbdy;->j:Lbea;

    invoke-direct {p0, v1}, Lbeo;->a(Lbea;)V

    throw v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lbeo;->i:Z

    .line 66
    return-void
.end method
