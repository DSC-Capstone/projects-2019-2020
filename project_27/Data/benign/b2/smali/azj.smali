.class public Lazj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lazj;->a:[C

    .line 1598
    new-instance v0, Lazk;

    invoke-direct {v0}, Lazk;-><init>()V

    sput-object v0, Lawg;->a:Lawg;

    .line 1621
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lazj;->c:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lazj;->d:[C

    .line 239
    iput v1, p0, Lazj;->e:I

    .line 240
    iput v1, p0, Lazj;->f:I

    .line 242
    iput v1, p0, Lazj;->g:I

    .line 243
    iput v1, p0, Lazj;->h:I

    .line 245
    iput v1, p0, Lazj;->i:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lazj;->m:[I

    .line 270
    iput v1, p0, Lazj;->n:I

    .line 272
    iget-object v0, p0, Lazj;->m:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lazj;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lazj;->o:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lazj;->p:[I

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iput-object p1, p0, Lazj;->b:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 1580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(Z)I

    .line 1581
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->e:I

    .line 1583
    iget v0, p0, Lazj;->e:I

    sget-object v1, Lazj;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lazj;->f:I

    if-le v0, v1, :cond_1

    sget-object v0, Lazj;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lazj;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1588
    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lazj;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1594
    :cond_2
    iget v0, p0, Lazj;->e:I

    sget-object v1, Lazj;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lazj;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lazj;->i:I

    return v0
.end method

.method static synthetic a(Lazj;I)I
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lazj;->i:I

    return p1
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1267
    iget v0, p0, Lazj;->n:I

    iget-object v1, p0, Lazj;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1268
    iget v0, p0, Lazj;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1269
    iget v1, p0, Lazj;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1270
    iget v2, p0, Lazj;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1271
    iget-object v3, p0, Lazj;->m:[I

    iget v4, p0, Lazj;->n:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    iget-object v3, p0, Lazj;->p:[I

    iget v4, p0, Lazj;->n:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1273
    iget-object v3, p0, Lazj;->o:[Ljava/lang/String;

    iget v4, p0, Lazj;->n:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iput-object v0, p0, Lazj;->m:[I

    .line 1275
    iput-object v1, p0, Lazj;->p:[I

    .line 1276
    iput-object v2, p0, Lazj;->o:[Ljava/lang/String;

    .line 1278
    :cond_0
    iget-object v0, p0, Lazj;->m:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lazj;->n:I

    aput p1, v0, v1

    .line 1279
    return-void
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 754
    sparse-switch p1, :sswitch_data_0

    .line 774
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 760
    :sswitch_0
    invoke-direct {p0}, Lazj;->x()V

    .line 772
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1448
    :goto_0
    iget v0, p0, Lazj;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lazj;->f:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1449
    :cond_0
    iget-object v0, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1450
    iget v0, p0, Lazj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->g:I

    .line 1451
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->h:I

    .line 1448
    :cond_1
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->e:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1454
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1455
    iget-object v2, p0, Lazj;->d:[C

    iget v3, p0, Lazj;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1459
    :cond_3
    const/4 v1, 0x1

    .line 1461
    :cond_4
    return v1
.end method

.method static synthetic b(Lazj;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    return v0
.end method

.method private b(Z)I
    .locals 5

    .prologue
    .line 1338
    iget-object v3, p0, Lazj;->d:[C

    .line 1339
    iget v1, p0, Lazj;->e:I

    .line 1340
    iget v0, p0, Lazj;->f:I

    .line 1342
    :goto_0
    if-ne v1, v0, :cond_1

    .line 1343
    iput v1, p0, Lazj;->e:I

    .line 1344
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    if-eqz p1, :cond_8

    .line 1412
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1413
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_0
    iget v1, p0, Lazj;->e:I

    .line 1348
    iget v0, p0, Lazj;->f:I

    .line 1351
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1352
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 1353
    iget v1, p0, Lazj;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lazj;->g:I

    .line 1354
    iput v2, p0, Lazj;->h:I

    move v1, v2

    .line 1355
    goto :goto_0

    .line 1356
    :cond_2
    const/16 v4, 0x20

    if-eq v1, v4, :cond_9

    const/16 v4, 0xd

    if-eq v1, v4, :cond_9

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 1357
    goto :goto_0

    .line 1360
    :cond_3
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_6

    .line 1361
    iput v2, p0, Lazj;->e:I

    .line 1362
    if-ne v2, v0, :cond_4

    .line 1363
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->e:I

    .line 1364
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    .line 1365
    iget v2, p0, Lazj;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lazj;->e:I

    .line 1366
    if-nez v0, :cond_4

    move v0, v1

    .line 1415
    :goto_1
    return v0

    .line 1371
    :cond_4
    invoke-direct {p0}, Lazj;->x()V

    .line 1372
    iget v0, p0, Lazj;->e:I

    aget-char v0, v3, v0

    .line 1373
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1393
    goto :goto_1

    .line 1376
    :sswitch_0
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->e:I

    .line 1377
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lazj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1378
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1380
    :cond_5
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v1, v0, 0x2

    .line 1381
    iget v0, p0, Lazj;->f:I

    goto/16 :goto_0

    .line 1386
    :sswitch_1
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->e:I

    .line 1387
    invoke-direct {p0}, Lazj;->y()V

    .line 1388
    iget v1, p0, Lazj;->e:I

    .line 1389
    iget v0, p0, Lazj;->f:I

    goto/16 :goto_0

    .line 1395
    :cond_6
    const/16 v0, 0x23

    if-ne v1, v0, :cond_7

    .line 1396
    iput v2, p0, Lazj;->e:I

    .line 1402
    invoke-direct {p0}, Lazj;->x()V

    .line 1403
    invoke-direct {p0}, Lazj;->y()V

    .line 1404
    iget v1, p0, Lazj;->e:I

    .line 1405
    iget v0, p0, Lazj;->f:I

    goto/16 :goto_0

    .line 1407
    :cond_7
    iput v2, p0, Lazj;->e:I

    move v0, v1

    .line 1408
    goto :goto_1

    .line 1415
    :cond_8
    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .line 1373
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1571
    new-instance v0, Lazn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1572
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lazn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .locals 7

    .prologue
    .line 999
    iget-object v4, p0, Lazj;->d:[C

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    :cond_0
    iget v0, p0, Lazj;->e:I

    .line 1003
    iget v1, p0, Lazj;->f:I

    move v3, v0

    .line 1006
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1007
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    .line 1009
    if-ne v3, p1, :cond_1

    .line 1010
    iput v2, p0, Lazj;->e:I

    .line 1011
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1013
    :cond_1
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3

    .line 1014
    iput v2, p0, Lazj;->e:I

    .line 1015
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1016
    invoke-direct {p0}, Lazj;->z()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1017
    iget v0, p0, Lazj;->e:I

    .line 1018
    iget v1, p0, Lazj;->f:I

    move v2, v0

    :cond_2
    :goto_1
    move v3, v2

    .line 1024
    goto :goto_0

    .line 1020
    :cond_3
    const/16 v6, 0xa

    if-ne v3, v6, :cond_2

    .line 1021
    iget v3, p0, Lazj;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lazj;->g:I

    .line 1022
    iput v2, p0, Lazj;->h:I

    goto :goto_1

    .line 1026
    :cond_4
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1027
    iput v3, p0, Lazj;->e:I

    .line 1028
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1287
    iget-object v1, p0, Lazj;->d:[C

    .line 1288
    iget v2, p0, Lazj;->h:I

    iget v3, p0, Lazj;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lazj;->h:I

    .line 1289
    iget v2, p0, Lazj;->f:I

    iget v3, p0, Lazj;->e:I

    if-eq v2, v3, :cond_3

    .line 1290
    iget v2, p0, Lazj;->f:I

    iget v3, p0, Lazj;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lazj;->f:I

    .line 1291
    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->f:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    :goto_0
    iput v0, p0, Lazj;->e:I

    .line 1298
    :cond_0
    iget-object v2, p0, Lazj;->b:Ljava/io/Reader;

    iget v3, p0, Lazj;->f:I

    array-length v4, v1

    iget v5, p0, Lazj;->f:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1299
    iget v3, p0, Lazj;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lazj;->f:I

    .line 1302
    iget v2, p0, Lazj;->g:I

    if-nez v2, :cond_1

    iget v2, p0, Lazj;->h:I

    if-nez v2, :cond_1

    iget v2, p0, Lazj;->f:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    .line 1303
    iget v2, p0, Lazj;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lazj;->e:I

    .line 1304
    iget v2, p0, Lazj;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lazj;->h:I

    .line 1305
    add-int/lit8 p1, p1, 0x1

    .line 1308
    :cond_1
    iget v2, p0, Lazj;->f:I

    if-lt v2, p1, :cond_0

    .line 1309
    const/4 v0, 0x1

    .line 1312
    :cond_2
    return v0

    .line 1293
    :cond_3
    iput v0, p0, Lazj;->f:I

    goto :goto_0
.end method

.method static synthetic c(Lazj;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lazj;->v()I

    move-result v0

    return v0
.end method

.method private c(C)V
    .locals 5

    .prologue
    .line 1101
    iget-object v3, p0, Lazj;->d:[C

    .line 1103
    :cond_0
    iget v1, p0, Lazj;->e:I

    .line 1104
    iget v0, p0, Lazj;->f:I

    move v2, v1

    .line 1106
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1107
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1108
    if-ne v2, p1, :cond_1

    .line 1109
    iput v1, p0, Lazj;->e:I

    .line 1110
    return-void

    .line 1111
    :cond_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    .line 1112
    iput v1, p0, Lazj;->e:I

    .line 1113
    invoke-direct {p0}, Lazj;->z()C

    .line 1114
    iget v1, p0, Lazj;->e:I

    .line 1115
    iget v0, p0, Lazj;->f:I

    :cond_2
    :goto_1
    move v2, v1

    .line 1120
    goto :goto_0

    .line 1116
    :cond_3
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 1117
    iget v2, p0, Lazj;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lazj;->g:I

    .line 1118
    iput v1, p0, Lazj;->h:I

    goto :goto_1

    .line 1121
    :cond_4
    iput v2, p0, Lazj;->e:I

    .line 1122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic d(Lazj;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lazj;->w()I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 8

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 464
    iget-object v4, p0, Lazj;->m:[I

    iget v5, p0, Lazj;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 465
    if-ne v4, v2, :cond_3

    .line 466
    iget-object v5, p0, Lazj;->m:[I

    iget v6, p0, Lazj;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 551
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v2}, Lazj;->b(Z)I

    move-result v5

    .line 552
    sparse-switch v5, :sswitch_data_0

    .line 581
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->e:I

    .line 584
    iget v0, p0, Lazj;->n:I

    if-ne v0, v2, :cond_1

    .line 585
    invoke-direct {p0}, Lazj;->x()V

    .line 588
    :cond_1
    invoke-direct {p0}, Lazj;->r()I

    move-result v0

    .line 589
    if-eqz v0, :cond_14

    .line 603
    :cond_2
    :goto_1
    return v0

    .line 467
    :cond_3
    if-ne v4, v1, :cond_4

    .line 469
    invoke-direct {p0, v2}, Lazj;->b(Z)I

    move-result v5

    .line 470
    sparse-switch v5, :sswitch_data_1

    .line 478
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 472
    :sswitch_1
    iput v0, p0, Lazj;->i:I

    goto :goto_1

    .line 474
    :sswitch_2
    invoke-direct {p0}, Lazj;->x()V

    goto :goto_0

    .line 480
    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v7, :cond_9

    .line 481
    :cond_5
    iget-object v3, p0, Lazj;->m:[I

    iget v5, p0, Lazj;->n:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 483
    if-ne v4, v7, :cond_6

    .line 484
    invoke-direct {p0, v2}, Lazj;->b(Z)I

    move-result v0

    .line 485
    sparse-switch v0, :sswitch_data_2

    .line 493
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 487
    :sswitch_3
    iput v1, p0, Lazj;->i:I

    move v0, v1

    goto :goto_1

    .line 489
    :sswitch_4
    invoke-direct {p0}, Lazj;->x()V

    .line 496
    :cond_6
    :sswitch_5
    invoke-direct {p0, v2}, Lazj;->b(Z)I

    move-result v0

    .line 497
    sparse-switch v0, :sswitch_data_3

    .line 510
    invoke-direct {p0}, Lazj;->x()V

    .line 511
    iget v1, p0, Lazj;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lazj;->e:I

    .line 512
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lazj;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 513
    const/16 v0, 0xe

    iput v0, p0, Lazj;->i:I

    goto :goto_1

    .line 499
    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lazj;->i:I

    goto :goto_1

    .line 501
    :sswitch_7
    invoke-direct {p0}, Lazj;->x()V

    .line 502
    const/16 v0, 0xc

    iput v0, p0, Lazj;->i:I

    goto :goto_1

    .line 504
    :sswitch_8
    if-eq v4, v7, :cond_7

    .line 505
    iput v1, p0, Lazj;->i:I

    move v0, v1

    goto :goto_1

    .line 507
    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 515
    :cond_8
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 518
    :cond_9
    if-ne v4, v0, :cond_b

    .line 519
    iget-object v5, p0, Lazj;->m:[I

    iget v6, p0, Lazj;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 521
    invoke-direct {p0, v2}, Lazj;->b(Z)I

    move-result v5

    .line 522
    packed-switch v5, :pswitch_data_0

    .line 532
    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 526
    :pswitch_2
    invoke-direct {p0}, Lazj;->x()V

    .line 527
    iget v5, p0, Lazj;->e:I

    iget v6, p0, Lazj;->f:I

    if-lt v5, v6, :cond_a

    invoke-direct {p0, v2}, Lazj;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_a
    iget-object v5, p0, Lazj;->d:[C

    iget v6, p0, Lazj;->e:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_0

    .line 528
    iget v5, p0, Lazj;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lazj;->e:I

    goto/16 :goto_0

    .line 534
    :cond_b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 535
    iget-boolean v5, p0, Lazj;->c:Z

    if-eqz v5, :cond_c

    .line 536
    invoke-direct {p0}, Lazj;->A()V

    .line 538
    :cond_c
    iget-object v5, p0, Lazj;->m:[I

    iget v6, p0, Lazj;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_0

    .line 539
    :cond_d
    if-ne v4, v3, :cond_f

    .line 540
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lazj;->b(Z)I

    move-result v5

    .line 541
    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 542
    const/16 v0, 0x11

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 544
    :cond_e
    invoke-direct {p0}, Lazj;->x()V

    .line 545
    iget v5, p0, Lazj;->e:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lazj;->e:I

    goto/16 :goto_0

    .line 547
    :cond_f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :sswitch_9
    if-ne v4, v2, :cond_10

    .line 555
    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 561
    :cond_10
    :sswitch_a
    if-eq v4, v2, :cond_11

    if-ne v4, v1, :cond_12

    .line 562
    :cond_11
    invoke-direct {p0}, Lazj;->x()V

    .line 563
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->e:I

    .line 564
    iput v3, p0, Lazj;->i:I

    move v0, v3

    goto/16 :goto_1

    .line 566
    :cond_12
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 569
    :sswitch_b
    invoke-direct {p0}, Lazj;->x()V

    .line 570
    const/16 v0, 0x8

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 572
    :sswitch_c
    iget v0, p0, Lazj;->n:I

    if-ne v0, v2, :cond_13

    .line 573
    invoke-direct {p0}, Lazj;->x()V

    .line 575
    :cond_13
    const/16 v0, 0x9

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 577
    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 579
    :sswitch_e
    iput v2, p0, Lazj;->i:I

    move v0, v2

    goto/16 :goto_1

    .line 593
    :cond_14
    invoke-direct {p0}, Lazj;->s()I

    move-result v0

    .line 594
    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lazj;->d:[C

    iget v1, p0, Lazj;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lazj;->a(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 599
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 602
    :cond_15
    invoke-direct {p0}, Lazj;->x()V

    .line 603
    const/16 v0, 0xa

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 552
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 470
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 485
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 497
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 522
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private r()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-object v0, p0, Lazj;->d:[C

    iget v1, p0, Lazj;->e:I

    aget-char v0, v0, v1

    .line 612
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 613
    :cond_0
    const-string v2, "true"

    .line 614
    const-string v1, "TRUE"

    .line 615
    const/4 v0, 0x5

    .line 629
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 630
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    .line 631
    iget v6, p0, Lazj;->e:I

    add-int/2addr v6, v4

    iget v7, p0, Lazj;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lazj;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    .line 647
    :goto_2
    return v0

    .line 616
    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 617
    :cond_2
    const-string v2, "false"

    .line 618
    const-string v1, "FALSE"

    .line 619
    const/4 v0, 0x6

    goto :goto_0

    .line 620
    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 621
    :cond_4
    const-string v2, "null"

    .line 622
    const-string v1, "NULL"

    .line 623
    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    .line 625
    goto :goto_2

    .line 634
    :cond_6
    iget-object v6, p0, Lazj;->d:[C

    iget v7, p0, Lazj;->e:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 635
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    .line 636
    goto :goto_2

    .line 630
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 640
    :cond_8
    iget v1, p0, Lazj;->e:I

    add-int/2addr v1, v5

    iget v2, p0, Lazj;->f:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lazj;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    .line 641
    invoke-direct {p0, v1}, Lazj;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    .line 642
    goto :goto_2

    .line 646
    :cond_a
    iget v1, p0, Lazj;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lazj;->e:I

    .line 647
    iput v0, p0, Lazj;->i:I

    goto :goto_2
.end method

.method private s()I
    .locals 15

    .prologue
    .line 652
    iget-object v11, p0, Lazj;->d:[C

    .line 653
    iget v2, p0, Lazj;->e:I

    .line 654
    iget v1, p0, Lazj;->f:I

    .line 656
    const-wide/16 v6, 0x0

    .line 657
    const/4 v5, 0x0

    .line 658
    const/4 v4, 0x1

    .line 659
    const/4 v3, 0x0

    .line 661
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    .line 665
    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_4

    .line 666
    array-length v0, v11

    if-ne v10, v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 749
    :goto_1
    return v0

    .line 671
    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 740
    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    if-eqz v4, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_16

    .line 741
    :cond_2
    if-eqz v5, :cond_15

    :goto_2
    iput-wide v6, p0, Lazj;->j:J

    .line 742
    iget v0, p0, Lazj;->e:I

    add-int/2addr v0, v10

    iput v0, p0, Lazj;->e:I

    .line 743
    const/16 v0, 0xf

    iput v0, p0, Lazj;->i:I

    goto :goto_1

    .line 674
    :cond_3
    iget v1, p0, Lazj;->e:I

    .line 675
    iget v0, p0, Lazj;->f:I

    .line 678
    :cond_4
    add-int v2, v1, v10

    aget-char v2, v11, v2

    .line 679
    sparse-switch v2, :sswitch_data_0

    .line 714
    const/16 v8, 0x30

    if-lt v2, v8, :cond_5

    const/16 v8, 0x39

    if-le v2, v8, :cond_c

    .line 715
    :cond_5
    invoke-direct {p0, v2}, Lazj;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    const/4 v0, 0x0

    goto :goto_1

    .line 681
    :sswitch_0
    if-nez v3, :cond_6

    .line 682
    const/4 v3, 0x1

    .line 683
    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    .line 664
    :goto_3
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 685
    :cond_6
    const/4 v2, 0x5

    if-ne v3, v2, :cond_7

    .line 686
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 687
    goto :goto_3

    .line 689
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 692
    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_8

    .line 693
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 694
    goto :goto_3

    .line 696
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 700
    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_a

    .line 701
    :cond_9
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    .line 702
    goto :goto_3

    .line 704
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 707
    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    .line 708
    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    .line 709
    goto :goto_3

    .line 711
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 720
    :cond_c
    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    if-nez v3, :cond_e

    .line 721
    :cond_d
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    .line 722
    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 723
    :cond_e
    const/4 v8, 0x2

    if-ne v3, v8, :cond_12

    .line 724
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_f

    .line 725
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 727
    :cond_f
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    .line 728
    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_10

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_11

    cmp-long v2, v8, v6

    if-gez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    :goto_4
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    .line 731
    goto :goto_3

    .line 728
    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 731
    :cond_12
    const/4 v2, 0x3

    if-ne v3, v2, :cond_13

    .line 732
    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 733
    :cond_13
    const/4 v2, 0x5

    if-eq v3, v2, :cond_14

    const/4 v2, 0x6

    if-ne v3, v2, :cond_19

    .line 734
    :cond_14
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 741
    :cond_15
    neg-long v6, v6

    goto/16 :goto_2

    .line 744
    :cond_16
    const/4 v0, 0x2

    if-eq v3, v0, :cond_17

    const/4 v0, 0x4

    if-eq v3, v0, :cond_17

    const/4 v0, 0x7

    if-ne v3, v0, :cond_18

    .line 746
    :cond_17
    iput v10, p0, Lazj;->k:I

    .line 747
    const/16 v0, 0x10

    iput v0, p0, Lazj;->i:I

    goto/16 :goto_1

    .line 749
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private t()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1039
    const/4 v0, 0x0

    move v1, v2

    .line 1044
    :goto_0
    iget v3, p0, Lazj;->e:I

    add-int/2addr v3, v1

    iget v4, p0, Lazj;->f:I

    if-ge v3, v4, :cond_1

    .line 1045
    iget-object v3, p0, Lazj;->d:[C

    iget v4, p0, Lazj;->e:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :sswitch_0
    invoke-direct {p0}, Lazj;->x()V

    .line 1089
    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    .line 1090
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lazj;->d:[C

    iget v3, p0, Lazj;->e:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1095
    :goto_2
    iget v2, p0, Lazj;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lazj;->e:I

    .line 1096
    return-object v0

    .line 1068
    :cond_1
    iget-object v3, p0, Lazj;->d:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1069
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lazj;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1077
    :cond_2
    if-nez v0, :cond_3

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    :cond_3
    iget-object v3, p0, Lazj;->d:[C

    iget v4, p0, Lazj;->e:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1081
    iget v3, p0, Lazj;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lazj;->e:I

    .line 1083
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lazj;->b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 1084
    goto :goto_1

    .line 1092
    :cond_4
    iget-object v2, p0, Lazj;->d:[C

    iget v3, p0, Lazj;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    .line 1045
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private u()V
    .locals 3

    .prologue
    .line 1128
    :cond_0
    const/4 v0, 0x0

    .line 1129
    :goto_0
    iget v1, p0, Lazj;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Lazj;->f:I

    if-ge v1, v2, :cond_1

    .line 1130
    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    :sswitch_0
    invoke-direct {p0}, Lazj;->x()V

    .line 1148
    :sswitch_1
    iget v1, p0, Lazj;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    .line 1154
    :goto_1
    return-void

    .line 1152
    :cond_1
    iget v1, p0, Lazj;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    .line 1153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1130
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private v()I
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Lazj;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()I
    .locals 2

    .prologue
    .line 1320
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Lazj;->c:Z

    if-nez v0, :cond_0

    .line 1421
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1423
    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    .line 1431
    :cond_0
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    :cond_1
    iget-object v0, p0, Lazj;->d:[C

    iget v1, p0, Lazj;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lazj;->e:I

    aget-char v0, v0, v1

    .line 1433
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1434
    iget v0, p0, Lazj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->g:I

    .line 1435
    iget v0, p0, Lazj;->e:I

    iput v0, p0, Lazj;->h:I

    .line 1441
    :cond_2
    :goto_0
    return-void

    .line 1437
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private z()C
    .locals 7

    .prologue
    const/4 v5, 0x4

    .line 1510
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1514
    :cond_0
    iget-object v0, p0, Lazj;->d:[C

    iget v1, p0, Lazj;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lazj;->e:I

    aget-char v0, v0, v1

    .line 1515
    sparse-switch v0, :sswitch_data_0

    .line 1562
    :goto_0
    return v0

    .line 1517
    :sswitch_0
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lazj;->f:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lazj;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1518
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lazj;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1521
    :cond_1
    const/4 v1, 0x0

    .line 1522
    iget v0, p0, Lazj;->e:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    .line 1523
    iget-object v3, p0, Lazj;->d:[C

    aget-char v3, v3, v1

    .line 1524
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1525
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 1526
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1522
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1527
    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    .line 1528
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1529
    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    .line 1530
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1532
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lazj;->d:[C

    iget v4, p0, Lazj;->e:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_5
    iget v1, p0, Lazj;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lazj;->e:I

    goto :goto_0

    .line 1539
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1542
    :sswitch_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1545
    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1548
    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1551
    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1554
    :sswitch_6
    iget v1, p0, Lazj;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lazj;->g:I

    .line 1555
    iget v1, p0, Lazj;->e:I

    iput v1, p0, Lazj;->h:I

    goto/16 :goto_0

    .line 1515
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Lazj;->i:I

    .line 342
    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazj;->a(I)V

    .line 347
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 348
    iput v2, p0, Lazj;->i:I

    .line 353
    return-void

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lazj;->c:Z

    .line 327
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 360
    iget v0, p0, Lazj;->i:I

    .line 361
    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 364
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 365
    iget v0, p0, Lazj;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->n:I

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lazj;->i:I

    .line 371
    return-void

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 378
    iget v0, p0, Lazj;->i:I

    .line 379
    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 382
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 383
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lazj;->a(I)V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lazj;->i:I

    .line 389
    return-void

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1219
    iput v2, p0, Lazj;->i:I

    .line 1220
    iget-object v0, p0, Lazj;->m:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1221
    const/4 v0, 0x1

    iput v0, p0, Lazj;->n:I

    .line 1222
    iget-object v0, p0, Lazj;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1223
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 396
    iget v0, p0, Lazj;->i:I

    .line 397
    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 400
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 401
    iget v0, p0, Lazj;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lazj;->n:I

    .line 402
    iget-object v0, p0, Lazj;->o:[Ljava/lang/String;

    iget v1, p0, Lazj;->n:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lazj;->i:I

    .line 408
    return-void

    .line 405
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lazj;->i:I

    .line 415
    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 418
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lazl;
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lazj;->i:I

    .line 426
    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 430
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 459
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :pswitch_0
    sget-object v0, Lazl;->c:Lazl;

    .line 457
    :goto_0
    return-object v0

    .line 434
    :pswitch_1
    sget-object v0, Lazl;->d:Lazl;

    goto :goto_0

    .line 436
    :pswitch_2
    sget-object v0, Lazl;->a:Lazl;

    goto :goto_0

    .line 438
    :pswitch_3
    sget-object v0, Lazl;->b:Lazl;

    goto :goto_0

    .line 442
    :pswitch_4
    sget-object v0, Lazl;->e:Lazl;

    goto :goto_0

    .line 445
    :pswitch_5
    sget-object v0, Lazl;->h:Lazl;

    goto :goto_0

    .line 447
    :pswitch_6
    sget-object v0, Lazl;->i:Lazl;

    goto :goto_0

    .line 452
    :pswitch_7
    sget-object v0, Lazl;->f:Lazl;

    goto :goto_0

    .line 455
    :pswitch_8
    sget-object v0, Lazl;->g:Lazl;

    goto :goto_0

    .line 457
    :pswitch_9
    sget-object v0, Lazl;->j:Lazl;

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 786
    iget v0, p0, Lazj;->i:I

    .line 787
    if-nez v0, :cond_0

    .line 788
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 791
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 792
    invoke-direct {p0}, Lazj;->t()Ljava/lang/String;

    move-result-object v0

    .line 801
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lazj;->i:I

    .line 802
    iget-object v1, p0, Lazj;->o:[Ljava/lang/String;

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 803
    return-object v0

    .line 793
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 794
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 795
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 796
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 799
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 815
    iget v0, p0, Lazj;->i:I

    .line 816
    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 820
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 821
    invoke-direct {p0}, Lazj;->t()Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lazj;->i:I

    .line 839
    iget-object v1, p0, Lazj;->p:[I

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 840
    return-object v0

    .line 822
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 823
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 824
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 825
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 827
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 828
    const/4 v1, 0x0

    iput-object v1, p0, Lazj;->l:Ljava/lang/String;

    goto :goto_0

    .line 829
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 830
    iget-wide v0, p0, Lazj;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 832
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 833
    iget v1, p0, Lazj;->e:I

    iget v2, p0, Lazj;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lazj;->e:I

    goto :goto_0

    .line 835
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 836
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 851
    iget v1, p0, Lazj;->i:I

    .line 852
    if-nez v1, :cond_0

    .line 853
    invoke-direct {p0}, Lazj;->o()I

    move-result v1

    .line 855
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 856
    iput v0, p0, Lazj;->i:I

    .line 857
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 858
    const/4 v0, 0x1

    .line 862
    :goto_0
    return v0

    .line 859
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 860
    iput v0, p0, Lazj;->i:I

    .line 861
    iget-object v1, p0, Lazj;->p:[I

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    .line 864
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 865
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 876
    iget v0, p0, Lazj;->i:I

    .line 877
    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 880
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lazj;->i:I

    .line 882
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 887
    return-void

    .line 884
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 899
    iget v0, p0, Lazj;->i:I

    .line 900
    if-nez v0, :cond_0

    .line 901
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 904
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 905
    iput v4, p0, Lazj;->i:I

    .line 906
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 907
    iget-wide v0, p0, Lazj;->j:J

    long-to-double v0, v0

    .line 931
    :goto_0
    return-wide v0

    .line 910
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 911
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 912
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    .line 922
    :cond_2
    :goto_1
    iput v5, p0, Lazj;->i:I

    .line 923
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 924
    iget-boolean v2, p0, Lazj;->c:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 925
    :cond_3
    new-instance v2, Lazn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 926
    invoke-direct {p0}, Lazj;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lazj;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lazn;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 914
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    .line 915
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 916
    invoke-direct {p0}, Lazj;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    goto :goto_1

    .line 917
    :cond_8
    if-eq v0, v5, :cond_2

    .line 918
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 919
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lazj;->l:Ljava/lang/String;

    .line 929
    iput v4, p0, Lazj;->i:I

    .line 930
    iget-object v2, p0, Lazj;->p:[I

    iget v3, p0, Lazj;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public l()J
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 945
    iget v0, p0, Lazj;->i:I

    .line 946
    if-nez v0, :cond_0

    .line 947
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 950
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 951
    iput v6, p0, Lazj;->i:I

    .line 952
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 953
    iget-wide v0, p0, Lazj;->j:J

    .line 984
    :goto_0
    return-wide v0

    .line 956
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 957
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 958
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    .line 974
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lazj;->i:I

    .line 975
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 976
    double-to-long v0, v2

    .line 977
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    .line 978
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazj;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 979
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 960
    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 962
    :try_start_0
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 963
    const/4 v2, 0x0

    iput v2, p0, Lazj;->i:I

    .line 964
    iget-object v2, p0, Lazj;->p:[I

    iget v3, p0, Lazj;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 966
    :catch_0
    move-exception v0

    goto :goto_1

    .line 960
    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    .line 970
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 971
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lazj;->l:Ljava/lang/String;

    .line 982
    iput v6, p0, Lazj;->i:I

    .line 983
    iget-object v2, p0, Lazj;->p:[I

    iget v3, p0, Lazj;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public m()I
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1167
    iget v0, p0, Lazj;->i:I

    .line 1168
    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lazj;->o()I

    move-result v0

    .line 1173
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1174
    iget-wide v0, p0, Lazj;->j:J

    long-to-int v0, v0

    .line 1175
    iget-wide v2, p0, Lazj;->j:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1176
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lazj;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1177
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_1
    iput v6, p0, Lazj;->i:I

    .line 1180
    iget-object v1, p0, Lazj;->p:[I

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1212
    :goto_0
    return v0

    .line 1184
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1185
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lazj;->d:[C

    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 1186
    iget v0, p0, Lazj;->e:I

    iget v1, p0, Lazj;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lazj;->e:I

    .line 1202
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lazj;->i:I

    .line 1203
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1204
    double-to-int v0, v2

    .line 1205
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7

    .line 1206
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lazj;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 1188
    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lazj;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazj;->l:Ljava/lang/String;

    .line 1190
    :try_start_0
    iget-object v0, p0, Lazj;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1191
    const/4 v1, 0x0

    iput v1, p0, Lazj;->i:I

    .line 1192
    iget-object v1, p0, Lazj;->p:[I

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1194
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1188
    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    .line 1198
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->f()Lazl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1199
    invoke-direct {p0}, Lazj;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lazj;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lazj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1209
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lazj;->l:Ljava/lang/String;

    .line 1210
    iput v6, p0, Lazj;->i:I

    .line 1211
    iget-object v1, p0, Lazj;->p:[I

    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public n()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1231
    move v0, v1

    .line 1233
    :cond_0
    iget v2, p0, Lazj;->i:I

    .line 1234
    if-nez v2, :cond_1

    .line 1235
    invoke-direct {p0}, Lazj;->o()I

    move-result v2

    .line 1238
    :cond_1
    if-ne v2, v5, :cond_3

    .line 1239
    invoke-direct {p0, v4}, Lazj;->a(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    .line 1259
    :cond_2
    :goto_0
    iput v1, p0, Lazj;->i:I

    .line 1260
    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lazj;->p:[I

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1263
    iget-object v0, p0, Lazj;->o:[Ljava/lang/String;

    iget v1, p0, Lazj;->n:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1264
    return-void

    .line 1241
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1242
    invoke-direct {p0, v5}, Lazj;->a(I)V

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1245
    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lazj;->n:I

    .line 1246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1247
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1248
    iget v2, p0, Lazj;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lazj;->n:I

    .line 1249
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1250
    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1251
    :cond_7
    invoke-direct {p0}, Lazj;->u()V

    goto :goto_0

    .line 1252
    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    .line 1253
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lazj;->c(C)V

    goto :goto_0

    .line 1254
    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 1255
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lazj;->c(C)V

    goto :goto_0

    .line 1256
    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1257
    iget v2, p0, Lazj;->e:I

    iget v3, p0, Lazj;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lazj;->e:I

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lazj;->c:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1475
    const/4 v0, 0x0

    iget v2, p0, Lazj;->n:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1476
    iget-object v3, p0, Lazj;->m:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1475
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lazj;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1485
    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1486
    iget-object v3, p0, Lazj;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1487
    iget-object v3, p0, Lazj;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1497
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1466
    invoke-direct {p0}, Lazj;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lazj;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
