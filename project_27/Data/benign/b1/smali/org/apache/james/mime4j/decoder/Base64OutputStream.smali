.class public Lorg/apache/james/mime4j/decoder/Base64OutputStream;
.super Ljava/io/FilterOutputStream;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private closed:Z

.field private currentLinePos:I

.field private final encodeSize:I

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private final singleByte:[B

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
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

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I[B)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iput-boolean v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    iput p2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p2, :cond_0

    array-length v0, p3

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    :goto_0
    invoke-static {p3}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->containsBase64Byte([B)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->isBase64(B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    :cond_0
    return-void
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeBuf()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->write([BII)V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flushBuffer()V

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x3d

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-gez p3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->resizeBuf()V

    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flushBuffer()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v5, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v5, v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v3, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v5, v0, v1

    goto/16 :goto_0

    :cond_4
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-gez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    array-length v0, p1

    if-gt p2, v0, :cond_7

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-lez p3, :cond_3

    move v1, v2

    :goto_1
    if-ge v1, p3, :cond_3

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v0, v0

    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    if-ge v0, v3, :cond_9

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->resizeBuf()V

    :cond_9
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_a

    add-int/lit16 v0, v0, 0x100

    :cond_a
    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_b

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    if-gt v0, v4, :cond_b

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iput v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
