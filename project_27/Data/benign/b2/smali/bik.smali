.class final Lbik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhp;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Lbaz;

.field private final h:Lbht;

.field private final i:Lbbc;

.field private final j:Z

.field private final k:Lbhq;

.field private final l:Lbbe;

.field private final m:Lbaz;

.field private final n:Lbcr;

.field private final o:Lbcr;

.field private final p:Lbcr;


# direct methods
.method constructor <init>(Lbbc;Lbhq;Z)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lbht;

    invoke-direct {v0}, Lbht;-><init>()V

    iput-object v0, p0, Lbik;->h:Lbht;

    .line 156
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbik;->m:Lbaz;

    .line 157
    new-instance v0, Lbim;

    invoke-direct {v0, p0}, Lbim;-><init>(Lbik;)V

    iput-object v0, p0, Lbik;->n:Lbcr;

    .line 185
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbik;->g:Lbaz;

    .line 186
    new-instance v0, Lbin;

    invoke-direct {v0, p0}, Lbin;-><init>(Lbik;)V

    iput-object v0, p0, Lbik;->o:Lbcr;

    .line 203
    new-instance v0, Lbio;

    invoke-direct {v0, p0}, Lbio;-><init>(Lbik;)V

    iput-object v0, p0, Lbik;->p:Lbcr;

    .line 130
    iput-object p1, p0, Lbik;->i:Lbbc;

    .line 131
    iput-object p2, p0, Lbik;->k:Lbhq;

    .line 132
    iput-boolean p3, p0, Lbik;->j:Z

    .line 134
    new-instance v0, Lbil;

    invoke-direct {v0, p0}, Lbil;-><init>(Lbik;)V

    invoke-interface {p1, v0}, Lbbc;->b(Lbcn;)V

    .line 141
    new-instance v0, Lbbe;

    invoke-direct {v0}, Lbbe;-><init>()V

    iput-object v0, p0, Lbik;->l:Lbbe;

    .line 142
    invoke-direct {p0}, Lbik;->a()V

    .line 143
    return-void
.end method

.method static synthetic a(Lbik;)Lbcr;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbik;->o:Lbcr;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lbik;->i:Lbbc;

    iget-object v1, p0, Lbik;->l:Lbbe;

    invoke-interface {v0, v1}, Lbbc;->a(Lbcr;)V

    .line 147
    iget-object v0, p0, Lbik;->l:Lbbe;

    const/16 v1, 0x8

    iget-object v2, p0, Lbik;->n:Lbcr;

    invoke-virtual {v0, v1, v2}, Lbbe;->a(ILbcr;)V

    .line 148
    return-void
.end method

.method private a(Lbaz;II)V
    .locals 7

    .prologue
    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v2

    .line 270
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v4

    .line 271
    and-int v3, v2, v5

    .line 272
    and-int/2addr v4, v5

    .line 273
    invoke-virtual {p1}, Lbaz;->h()S

    .line 274
    iget-object v2, p0, Lbik;->h:Lbht;

    add-int/lit8 v5, p3, -0xa

    invoke-virtual {v2, p1, v5}, Lbht;->a(Lbaz;I)Ljava/util/List;

    move-result-object v5

    .line 276
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    .line 277
    :goto_0
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    .line 278
    :goto_1
    iget-object v0, p0, Lbik;->k:Lbhq;

    sget-object v6, Lbhv;->a:Lbhv;

    invoke-interface/range {v0 .. v6}, Lbhq;->a(ZZIILjava/util/List;Lbhv;)V

    .line 280
    return-void

    :cond_0
    move v2, v0

    .line 276
    goto :goto_0

    :cond_1
    move v1, v0

    .line 277
    goto :goto_1
.end method

.method static synthetic a(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->a(Lbaz;II)V

    return-void
.end method

.method static synthetic b(Lbik;)Lbaz;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbik;->m:Lbaz;

    return-object v0
.end method

.method private b(Lbaz;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    .line 284
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 285
    iget-object v0, p0, Lbik;->h:Lbht;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, p1, v2}, Lbht;->a(Lbaz;I)Ljava/util/List;

    move-result-object v5

    .line 286
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 287
    :goto_0
    iget-object v0, p0, Lbik;->k:Lbhq;

    const/4 v4, -0x1

    sget-object v6, Lbhv;->b:Lbhv;

    invoke-interface/range {v0 .. v6}, Lbhq;->a(ZZIILjava/util/List;Lbhv;)V

    .line 288
    return-void

    :cond_0
    move v2, v1

    .line 286
    goto :goto_0
.end method

.method static synthetic b(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->b(Lbaz;II)V

    return-void
.end method

.method static synthetic c(Lbik;)Lbcr;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbik;->p:Lbcr;

    return-object v0
.end method

.method private c(Lbaz;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 293
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v1

    .line 294
    invoke-static {v1}, Lbho;->a(I)Lbho;

    move-result-object v2

    .line 295
    if-nez v2, :cond_1

    .line 296
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 298
    :cond_1
    iget-object v1, p0, Lbik;->k:Lbhq;

    invoke-interface {v1, v0, v2}, Lbhq;->a(ILbho;)V

    .line 299
    return-void
.end method

.method static synthetic c(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->c(Lbaz;II)V

    return-void
.end method

.method static synthetic d(Lbik;)Lbbe;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbik;->l:Lbbe;

    return-object v0
.end method

.method private d(Lbaz;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    .line 303
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 304
    iget-object v0, p0, Lbik;->h:Lbht;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, p1, v2}, Lbht;->a(Lbaz;I)Ljava/util/List;

    move-result-object v5

    .line 305
    iget-object v0, p0, Lbik;->k:Lbhq;

    const/4 v4, -0x1

    sget-object v6, Lbhv;->c:Lbhv;

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lbhq;->a(ZZIILjava/util/List;Lbhv;)V

    .line 306
    return-void
.end method

.method static synthetic d(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->h(Lbaz;II)V

    return-void
.end method

.method static synthetic e(Lbik;)Lbhq;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbik;->k:Lbhq;

    return-object v0
.end method

.method private e(Lbaz;II)V
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 310
    :cond_0
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    .line 311
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v1

    .line 312
    and-int/2addr v0, v2

    .line 313
    and-int/2addr v1, v2

    int-to-long v2, v1

    .line 314
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v0, "windowSizeIncrement was 0"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 315
    :cond_1
    iget-object v1, p0, Lbik;->k:Lbhq;

    invoke-interface {v1, v0, v2, v3}, Lbhq;->a(IJ)V

    .line 316
    return-void
.end method

.method static synthetic e(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->f(Lbaz;II)V

    return-void
.end method

.method private f(Lbaz;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v3

    .line 321
    iget-boolean v4, p0, Lbik;->j:Z

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_2

    .line 322
    :goto_1
    iget-object v2, p0, Lbik;->k:Lbhq;

    invoke-interface {v2, v0, v3, v1}, Lbhq;->a(ZII)V

    .line 323
    return-void

    :cond_1
    move v2, v1

    .line 321
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic f(Lbik;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lbik;->a()V

    return-void
.end method

.method static synthetic f(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->g(Lbaz;II)V

    return-void
.end method

.method private g(Lbaz;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 327
    :cond_0
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 328
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v1

    .line 329
    invoke-static {v1}, Lbho;->c(I)Lbho;

    move-result-object v2

    .line 330
    if-nez v2, :cond_1

    .line 331
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 333
    :cond_1
    iget-object v1, p0, Lbik;->k:Lbhq;

    sget-object v3, Lbhn;->a:Lbhn;

    invoke-interface {v1, v0, v2, v3}, Lbhq;->a(ILbho;Lbhn;)V

    .line 334
    return-void
.end method

.method static synthetic g(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->d(Lbaz;II)V

    return-void
.end method

.method private h(Lbaz;II)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v3

    .line 338
    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_0

    .line 339
    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lbik;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 341
    :cond_0
    new-instance v4, Lbii;

    invoke-direct {v4}, Lbii;-><init>()V

    move v2, v1

    .line 342
    :goto_0
    if-ge v2, v3, :cond_1

    .line 343
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v5

    .line 344
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v6

    .line 345
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 346
    const v8, 0xffffff

    and-int/2addr v5, v8

    .line 347
    invoke-virtual {v4, v5, v7, v6}, Lbii;->a(III)Lbii;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 350
    :goto_1
    iget-object v1, p0, Lbik;->k:Lbhq;

    invoke-interface {v1, v0, v4}, Lbhq;->a(ZLbii;)V

    .line 351
    return-void

    :cond_2
    move v0, v1

    .line 349
    goto :goto_1
.end method

.method static synthetic h(Lbik;Lbaz;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lbik;->e(Lbaz;II)V

    return-void
.end method
