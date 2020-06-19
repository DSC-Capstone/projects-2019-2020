.class Luf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lua",
        "<",
        "Luc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lvi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input string is NULL or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Character;

    .line 165
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    new-instance v0, Lvi;

    invoke-direct {v0, v1}, Lvi;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Luf;->a:Lvi;

    .line 169
    return-void
.end method

.method private a()Luc;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    invoke-direct {p0}, Luf;->b()Lty;

    move-result-object v2

    .line 256
    sget-object v1, Ltw;->a:Ltw;

    .line 257
    sget-object v0, Ltw;->a:Ltw;

    .line 259
    const/4 v3, 0x3

    new-array v3, v3, [Luh;

    sget-object v4, Luh;->d:Luh;

    aput-object v4, v3, v5

    sget-object v4, Luh;->e:Luh;

    aput-object v4, v3, v6

    sget-object v4, Luh;->f:Luh;

    aput-object v4, v3, v7

    invoke-direct {p0, v3}, Luf;->b([Luh;)Ljava/lang/Character;

    move-result-object v3

    .line 260
    sget-object v4, Luh;->d:Luh;

    invoke-virtual {v4, v3}, Luh;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-direct {p0}, Luf;->c()Ltw;

    move-result-object v1

    .line 262
    new-array v3, v7, [Luh;

    sget-object v4, Luh;->e:Luh;

    aput-object v4, v3, v5

    sget-object v4, Luh;->f:Luh;

    aput-object v4, v3, v6

    invoke-direct {p0, v3}, Luf;->b([Luh;)Ljava/lang/Character;

    move-result-object v3

    .line 263
    sget-object v4, Luh;->e:Luh;

    invoke-virtual {v4, v3}, Luh;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-direct {p0}, Luf;->e()Ltw;

    move-result-object v0

    .line 269
    :cond_0
    :goto_0
    new-array v3, v6, [Luh;

    sget-object v4, Luh;->f:Luh;

    aput-object v4, v3, v5

    invoke-direct {p0, v3}, Luf;->b([Luh;)Ljava/lang/Character;

    .line 270
    new-instance v3, Luc;

    invoke-direct {v3, v2, v1, v0}, Luc;-><init>(Lty;Ltw;Ltw;)V

    return-object v3

    .line 266
    :cond_1
    sget-object v4, Luh;->e:Luh;

    invoke-virtual {v4, v3}, Luh;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-direct {p0}, Luf;->e()Ltw;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a([Luh;)Luh;
    .locals 6

    .prologue
    .line 460
    iget-object v0, p0, Luf;->a:Lvi;

    invoke-virtual {v0}, Lvi;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 461
    array-length v4, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p1, v2

    .line 462
    invoke-virtual {v1, v0}, Luh;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 467
    :goto_1
    return-object v0

    .line 461
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 467
    :cond_2
    sget-object v0, Luh;->f:Luh;

    goto :goto_1
.end method

.method private varargs b([Luh;)Ljava/lang/Character;
    .locals 2

    .prologue
    .line 514
    :try_start_0
    iget-object v0, p0, Luf;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->a([Lvk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;
    :try_end_0
    .catch Lvl; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    new-instance v1, Lub;

    invoke-direct {v1, v0}, Lub;-><init>(Lvl;)V

    throw v1
.end method

.method private b()Lty;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-direct {p0}, Luf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    new-array v1, v3, [Luh;

    sget-object v2, Luh;->c:Luh;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luf;->b([Luh;)Ljava/lang/Character;

    .line 287
    invoke-direct {p0}, Luf;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    new-array v2, v3, [Luh;

    sget-object v3, Luh;->c:Luh;

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Luf;->b([Luh;)Ljava/lang/Character;

    .line 289
    invoke-direct {p0}, Luf;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    new-instance v3, Lty;

    invoke-direct {v3, v0, v1, v2}, Lty;-><init>(III)V

    return-object v3
.end method

.method private c()Ltw;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    const/4 v0, 0x3

    new-array v0, v0, [Luh;

    sget-object v1, Luh;->a:Luh;

    aput-object v1, v0, v4

    sget-object v1, Luh;->b:Luh;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Luh;->d:Luh;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Luf;->c([Luh;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :goto_0
    invoke-direct {p0}, Luf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v5, [Luh;

    sget-object v3, Luh;->c:Luh;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-array v1, v5, [Luh;

    sget-object v2, Luh;->c:Luh;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luf;->b([Luh;)Ljava/lang/Character;

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ltw;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Ltw;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method static c(Ljava/lang/String;)Luc;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Luf;

    invoke-direct {v0, p0}, Luf;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-direct {v0}, Luf;->a()Luc;

    move-result-object v0

    return-object v0
.end method

.method private varargs c([Luh;)V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Luf;->a:Lvi;

    invoke-virtual {v0, p1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    new-instance v1, Lub;

    iget-object v0, p0, Luf;->a:Lvi;

    const/4 v2, 0x1

    .line 529
    invoke-virtual {v0, v2}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    iget-object v2, p0, Luf;->a:Lvi;

    .line 530
    invoke-virtual {v2}, Lvi;->c()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lub;-><init>(Ljava/lang/Character;I[Luh;)V

    throw v1

    .line 534
    :cond_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    invoke-direct {p0}, Luf;->k()V

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Luh;

    sget-object v1, Luh;->c:Luh;

    aput-object v1, v0, v4

    sget-object v1, Luh;->e:Luh;

    aput-object v1, v0, v5

    sget-object v1, Luh;->f:Luh;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Luf;->a([Luh;)Luh;

    move-result-object v0

    .line 336
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v2, [Luh;

    sget-object v3, Luh;->b:Luh;

    aput-object v3, v2, v4

    sget-object v3, Luh;->d:Luh;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lvi;->a(Lvk;[Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Luf;->h()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Luf;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Ltw;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    const/4 v0, 0x3

    new-array v0, v0, [Luh;

    sget-object v1, Luh;->a:Luh;

    aput-object v1, v0, v4

    sget-object v1, Luh;->b:Luh;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Luh;->d:Luh;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Luf;->c([Luh;)V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    :goto_0
    invoke-direct {p0}, Luf;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v5, [Luh;

    sget-object v3, Luh;->c:Luh;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    new-array v1, v5, [Luh;

    sget-object v2, Luh;->c:Luh;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luf;->b([Luh;)Ljava/lang/Character;

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Ltw;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Ltw;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Luf;->k()V

    .line 385
    new-array v0, v2, [Luh;

    sget-object v1, Luh;->c:Luh;

    aput-object v1, v0, v4

    sget-object v1, Luh;->f:Luh;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Luf;->a([Luh;)Luh;

    move-result-object v0

    .line 386
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v2, [Luh;

    sget-object v3, Luh;->b:Luh;

    aput-object v3, v2, v4

    sget-object v3, Luh;->d:Luh;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lvi;->a(Lvk;[Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Luf;->h()Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Luf;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Luf;->j()V

    .line 408
    invoke-direct {p0}, Luf;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    :cond_0
    new-array v1, v7, [Luh;

    sget-object v2, Luh;->a:Luh;

    aput-object v2, v1, v4

    sget-object v2, Luh;->b:Luh;

    aput-object v2, v1, v5

    sget-object v2, Luh;->d:Luh;

    aput-object v2, v1, v6

    invoke-direct {p0, v1}, Luf;->b([Luh;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v7, [Luh;

    sget-object v3, Luh;->a:Luh;

    aput-object v3, v2, v4

    sget-object v3, Luh;->b:Luh;

    aput-object v3, v2, v5

    sget-object v3, Luh;->d:Luh;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    :cond_0
    new-array v1, v5, [Luh;

    sget-object v2, Luh;->a:Luh;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luf;->b([Luh;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Luf;->a:Lvi;

    new-array v2, v5, [Luh;

    sget-object v3, Luh;->a:Luh;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Luf;->a:Lvi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 477
    iget-object v1, p0, Luf;->a:Lvi;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    sget-object v0, Luh;->a:Luh;

    invoke-virtual {v0, v1}, Luh;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ltz;

    const-string v1, "Numeric identifier MUST NOT contain leading zeroes"

    invoke-direct {v0, v1}, Ltz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    return-void
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 492
    iget-object v0, p0, Luf;->a:Lvi;

    invoke-virtual {v0, v8}, Lvi;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 493
    sget-object v1, Luh;->c:Luh;

    invoke-virtual {v1, v0}, Luh;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Luh;->e:Luh;

    invoke-virtual {v1, v0}, Luh;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Luh;->f:Luh;

    invoke-virtual {v1, v0}, Luh;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    new-instance v1, Ltz;

    const-string v2, "Identifiers MUST NOT be empty"

    new-instance v3, Lub;

    iget-object v4, p0, Luf;->a:Lvi;

    .line 498
    invoke-virtual {v4}, Lvi;->c()I

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Luh;

    const/4 v6, 0x0

    sget-object v7, Luh;->a:Luh;

    aput-object v7, v5, v6

    sget-object v6, Luh;->b:Luh;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Luh;->d:Luh;

    aput-object v7, v5, v6

    invoke-direct {v3, v0, v4, v5}, Lub;-><init>(Ljava/lang/Character;I[Luh;)V

    invoke-direct {v1, v2, v3}, Ltz;-><init>(Ljava/lang/String;Lub;)V

    throw v1

    .line 503
    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Luf;->b(Ljava/lang/String;)Luc;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Luc;
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Luf;->a()Luc;

    move-result-object v0

    return-object v0
.end method
