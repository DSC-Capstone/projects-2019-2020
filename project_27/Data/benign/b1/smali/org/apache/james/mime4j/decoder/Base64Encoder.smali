.class final Lorg/apache/james/mime4j/decoder/Base64Encoder;
.super Ljava/lang/Object;


# static fields
.field private static final ENCODING:[B

.field private static final FIRST_MASK:I = 0xfc0000

.field private static final FORTH_MASK:I = 0x3f

.field private static final MASK:I = 0x3f

.field private static final SECOND_MASK:I = 0x3f000

.field private static final THIRD_MASK:I = 0xfc0


# instance fields
.field private final in:[B

.field private final out:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    mul-int/lit8 v0, p1, 0x4

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v1, v0

    const/high16 v2, 0x42980000    # 76.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    return-void
.end method

.method private checkLineLength([BI)I
    .locals 6

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_0

    if-le p2, v0, :cond_1

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-float v4, p2

    const/high16 v5, 0x42980000    # 76.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4053000000000000L    # 76.0

    rem-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0xd

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, p1, v0

    :cond_1
    return p2
.end method

.method private encodeInputBuffer([BII)I
    .locals 9

    const/4 v0, 0x0

    const/high16 v8, 0xfc0000

    const v7, 0x3f000

    const/16 v6, 0x3d

    if-nez p3, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int v1, p2, p3

    :goto_1
    sub-int v2, v1, p2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v4, 0x1

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v4

    or-int/2addr v2, v3

    or-int/2addr v2, v4

    and-int v3, v2, v8

    shr-int/lit8 v3, v3, 0x12

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int v3, v2, v7

    shr-int/lit8 v3, v3, 0xc

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int/lit16 v3, v2, 0xfc0

    shr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v3, v5, v3

    invoke-direct {p0, v4, v0, v3}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int/lit8 v2, v2, 0x3f

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x10

    and-int v2, v1, v8

    shr-int/lit8 v2, v2, 0x12

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    and-int v2, v1, v8

    shr-int/lit8 v2, v2, 0x12

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int v2, v1, v7

    shr-int/lit8 v2, v2, 0xc

    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v2, v4, v2

    invoke-direct {p0, v3, v0, v2}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    and-int/lit16 v1, v1, 0xfc0

    shr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    invoke-direct {p0, v1, v0, v6}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setResult([BIB)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    aput-byte p3, p1, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->checkLineLength([BI)I

    move-result v0

    return v0
.end method

.method private toInt(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->encodeInputBuffer([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method
