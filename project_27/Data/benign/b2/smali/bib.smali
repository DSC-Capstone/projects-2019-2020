.class final Lbib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhp;


# instance fields
.field final a:Lbhx;

.field b:I

.field c:I

.field d:B

.field e:B

.field f:S

.field g:I

.field h:B

.field i:I

.field j:I

.field private final k:Lbbc;

.field private final l:Z

.field private final m:Lbhq;

.field private final n:Lbbe;

.field private final o:Lbcr;

.field private final p:Lbcr;


# direct methods
.method constructor <init>(Lbbc;Lbhq;IZ)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lbic;

    invoke-direct {v0, p0}, Lbic;-><init>(Lbib;)V

    iput-object v0, p0, Lbib;->o:Lbcr;

    .line 143
    new-instance v0, Lbid;

    invoke-direct {v0, p0}, Lbid;-><init>(Lbib;)V

    iput-object v0, p0, Lbib;->p:Lbcr;

    .line 103
    iput-object p1, p0, Lbib;->k:Lbbc;

    .line 104
    iput-boolean p4, p0, Lbib;->l:Z

    .line 105
    new-instance v0, Lbhx;

    invoke-direct {v0, p3}, Lbhx;-><init>(I)V

    iput-object v0, p0, Lbib;->a:Lbhx;

    .line 106
    iput-object p2, p0, Lbib;->m:Lbhq;

    .line 107
    new-instance v0, Lbbe;

    invoke-direct {v0}, Lbbe;-><init>()V

    iput-object v0, p0, Lbib;->n:Lbbe;

    .line 109
    invoke-direct {p0}, Lbib;->a()V

    .line 110
    return-void
.end method

.method static synthetic a(Lbib;)Lbcr;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbib;->p:Lbcr;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lbib;->k:Lbbc;

    iget-object v1, p0, Lbib;->n:Lbbe;

    invoke-interface {v0, v1}, Lbbc;->a(Lbcr;)V

    .line 114
    iget-object v0, p0, Lbib;->n:Lbbe;

    const/16 v1, 0x8

    iget-object v2, p0, Lbib;->o:Lbcr;

    invoke-virtual {v0, v1, v2}, Lbbe;->a(ILbcr;)V

    .line 115
    return-void
.end method

.method private a(Lbaz;I)V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v1

    .line 292
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 293
    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 294
    invoke-virtual {p1}, Lbaz;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 295
    iget-object v3, p0, Lbib;->m:Lbhq;

    invoke-interface {v3, p2, v1, v2, v0}, Lbhq;->a(IIIZ)V

    .line 296
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lbaz;SBI)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 216
    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 219
    :cond_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbaz;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v3, v0

    .line 221
    :cond_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0, p1, p4}, Lbib;->a(Lbaz;I)V

    .line 223
    add-int/lit8 v0, p2, -0x5

    int-to-short p2, v0

    .line 226
    :cond_2
    invoke-static {p2, p3, v3}, Lbhz;->a(SBS)S

    move-result v2

    .line 228
    iget-byte v0, p0, Lbib;->e:B

    iput-byte v0, p0, Lbib;->h:B

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 229
    invoke-direct/range {v0 .. v5}, Lbib;->a(Lbaz;SSBI)V

    .line 232
    return-void
.end method

.method private a(Lbaz;SSBI)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, p3}, Lbaz;->b(I)Lbaz;

    .line 245
    iget-object v0, p0, Lbib;->a:Lbhx;

    invoke-virtual {v0, p1}, Lbhx;->a(Lbaz;)V

    .line 246
    iget-object v0, p0, Lbib;->a:Lbhx;

    invoke-virtual {v0}, Lbhx;->a()V

    .line 247
    iget-object v0, p0, Lbib;->a:Lbhx;

    invoke-virtual {v0}, Lbhx;->b()V

    .line 250
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_3

    .line 251
    iget-byte v0, p0, Lbib;->h:B

    if-ne v0, v2, :cond_1

    .line 252
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    iget-object v0, p0, Lbib;->m:Lbhq;

    const/4 v4, -0x1

    iget-object v3, p0, Lbib;->a:Lbhx;

    invoke-virtual {v3}, Lbhx;->c()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lbhv;->d:Lbhv;

    move v3, p5

    invoke-interface/range {v0 .. v6}, Lbhq;->a(ZZIILjava/util/List;Lbhv;)V

    .line 265
    :goto_1
    return-void

    :cond_0
    move v2, v1

    .line 252
    goto :goto_0

    .line 255
    :cond_1
    iget-byte v0, p0, Lbib;->h:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lbib;->m:Lbhq;

    iget v1, p0, Lbib;->j:I

    iget-object v2, p0, Lbib;->a:Lbhx;

    invoke-virtual {v2}, Lbhx;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p5, v1, v2}, Lbhq;->a(IILjava/util/List;)V

    goto :goto_1

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unknown header type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_3
    iput p5, p0, Lbib;->i:I

    goto :goto_1
.end method

.method static synthetic a(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->c(Lbaz;SBI)V

    return-void
.end method

.method static synthetic b(Lbib;)Lbbe;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbib;->n:Lbbe;

    return-object v0
.end method

.method private b(Lbaz;SBI)V
    .locals 6

    .prologue
    .line 236
    iget v0, p0, Lbib;->i:I

    if-eq p4, v0, :cond_0

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "continuation stream id mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbib;->a(Lbaz;SSBI)V

    .line 239
    return-void
.end method

.method static synthetic b(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->a(Lbaz;SBI)V

    return-void
.end method

.method private c(Lbaz;SBI)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    .line 271
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    .line 272
    :goto_1
    if-eqz v1, :cond_2

    .line 273
    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    move v2, v0

    .line 270
    goto :goto_0

    :cond_1
    move v1, v0

    .line 271
    goto :goto_1

    .line 276
    :cond_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lbaz;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 277
    :cond_3
    invoke-static {p2, p3, v0}, Lbhz;->a(SBS)S

    .line 279
    iget-object v1, p0, Lbib;->m:Lbhq;

    invoke-interface {v1, v2, p4, p1}, Lbhq;->a(ZILbaz;)V

    .line 280
    invoke-virtual {p1, v0}, Lbaz;->b(I)Lbaz;

    .line 281
    return-void
.end method

.method static synthetic c(Lbib;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lbib;->a()V

    return-void
.end method

.method static synthetic c(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->d(Lbaz;SBI)V

    return-void
.end method

.method static synthetic d(Lbib;)Lbhq;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbib;->m:Lbhq;

    return-object v0
.end method

.method private d(Lbaz;SBI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 287
    :cond_1
    invoke-direct {p0, p1, p4}, Lbib;->a(Lbaz;I)V

    .line 288
    return-void
.end method

.method static synthetic d(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->e(Lbaz;SBI)V

    return-void
.end method

.method private e(Lbaz;SBI)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 302
    :cond_1
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    .line 303
    invoke-static {v0}, Lbho;->b(I)Lbho;

    move-result-object v1

    .line 304
    if-nez v1, :cond_2

    .line 305
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 307
    :cond_2
    iget-object v0, p0, Lbib;->m:Lbhq;

    invoke-interface {v0, p4, v1}, Lbhq;->a(ILbho;)V

    .line 308
    return-void
.end method

.method static synthetic e(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->f(Lbaz;SBI)V

    return-void
.end method

.method private f(Lbaz;SBI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 312
    if-eqz p4, :cond_0

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 313
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    .line 314
    if-eqz p2, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lbib;->m:Lbhq;

    invoke-interface {v0}, Lbhq;->b()V

    .line 353
    :cond_2
    :goto_0
    return-void

    .line 319
    :cond_3
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_4

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_4
    new-instance v3, Lbii;

    invoke-direct {v3}, Lbii;-><init>()V

    move v1, v2

    .line 321
    :goto_1
    if-ge v1, p2, :cond_6

    .line 322
    invoke-virtual {p1}, Lbaz;->h()S

    move-result v0

    .line 323
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v4

    .line 325
    packed-switch v0, :pswitch_data_0

    .line 345
    const-string v1, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 329
    :pswitch_0
    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_5

    .line 330
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 334
    :pswitch_1
    const/4 v0, 0x4

    .line 347
    :cond_5
    :pswitch_2
    invoke-virtual {v3, v0, v2, v4}, Lbii;->a(III)Lbii;

    .line 321
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    .line 337
    :pswitch_3
    const/4 v0, 0x7

    .line 338
    if-gez v4, :cond_5

    .line 339
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 349
    :cond_6
    iget-object v0, p0, Lbib;->m:Lbhq;

    invoke-interface {v0, v2, v3}, Lbhq;->a(ZLbii;)V

    .line 350
    invoke-virtual {v3}, Lbii;->c()I

    move-result v0

    if-ltz v0, :cond_2

    .line 351
    iget-object v0, p0, Lbib;->a:Lbhx;

    invoke-virtual {v3}, Lbii;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lbhx;->a(I)V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->g(Lbaz;SBI)V

    return-void
.end method

.method private g(Lbaz;SBI)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 358
    if-nez p4, :cond_0

    .line 359
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 361
    :cond_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbaz;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v3, v0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lbib;->j:I

    .line 363
    add-int/lit8 v0, p2, -0x4

    int-to-short v0, v0

    .line 364
    invoke-static {v0, p3, v3}, Lbhz;->a(SBS)S

    move-result v2

    .line 365
    const/4 v0, 0x5

    iput-byte v0, p0, Lbib;->h:B

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 366
    invoke-direct/range {v0 .. v5}, Lbib;->a(Lbaz;SSBI)V

    .line 367
    return-void
.end method

.method static synthetic g(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->h(Lbaz;SBI)V

    return-void
.end method

.method private h(Lbaz;SBI)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 372
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v2

    .line 374
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v3

    .line 375
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 376
    :goto_0
    iget-object v1, p0, Lbib;->m:Lbhq;

    invoke-interface {v1, v0, v2, v3}, Lbhq;->a(ZII)V

    .line 377
    return-void

    :cond_2
    move v0, v1

    .line 375
    goto :goto_0
.end method

.method static synthetic h(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->i(Lbaz;SBI)V

    return-void
.end method

.method private i(Lbaz;SBI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 382
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 383
    :cond_1
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v1

    .line 384
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    .line 385
    add-int/lit8 v2, p2, -0x8

    .line 386
    invoke-static {v0}, Lbho;->b(I)Lbho;

    move-result-object v3

    .line 387
    if-nez v3, :cond_2

    .line 388
    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 390
    :cond_2
    sget-object v0, Lbhn;->a:Lbhn;

    .line 391
    if-lez v2, :cond_3

    .line 392
    invoke-virtual {p1, v2}, Lbaz;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lbhn;->a([B)Lbhn;

    move-result-object v0

    .line 394
    :cond_3
    iget-object v2, p0, Lbib;->m:Lbhq;

    invoke-interface {v2, v1, v3, v0}, Lbhq;->a(ILbho;Lbhn;)V

    .line 395
    return-void
.end method

.method static synthetic i(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->j(Lbaz;SBI)V

    return-void
.end method

.method private j(Lbaz;SBI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 399
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 400
    :cond_0
    invoke-virtual {p1}, Lbaz;->f()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 401
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lbhz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 402
    :cond_1
    iget-object v2, p0, Lbib;->m:Lbhq;

    invoke-interface {v2, p4, v0, v1}, Lbhq;->a(IJ)V

    .line 403
    return-void
.end method

.method static synthetic j(Lbib;Lbaz;SBI)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lbib;->b(Lbaz;SBI)V

    return-void
.end method
