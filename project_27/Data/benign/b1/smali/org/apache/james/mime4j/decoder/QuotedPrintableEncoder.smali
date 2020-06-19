.class final Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final CR:B = 0xdt

.field private static final EQUALS:B = 0x3dt

.field private static final HEX_DIGITS:[B

.field private static final LF:B = 0xat

.field private static final QUOTED_PRINTABLE_LAST_PLAIN:B = 0x7et

.field private static final QUOTED_PRINTABLE_MAX_LINE_LENGTH:I = 0x4c

.field private static final QUOTED_PRINTABLE_OCTETS_PER_ESCAPE:I = 0x3

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final binary:Z

.field private final inBuffer:[B

.field private nextSoftBreak:I

.field private out:Ljava/io/OutputStream;

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->HEX_DIGITS:[B

    return-void

    :array_0
    .array-data 1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->inBuffer:[B

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    iput v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iput-boolean p2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->binary:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private clearPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private encode(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x9

    const/16 v2, 0x20

    const/4 v1, 0x1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->writePending()V

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->lineBreak()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->clearPending()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->writePending()V

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->writePending()V

    if-ne p1, v2, :cond_8

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_7
    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    goto :goto_0

    :cond_8
    if-ne p1, v3, :cond_a

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_9
    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    goto :goto_0

    :cond_a
    if-ge p1, v2, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_b
    const/16 v0, 0x7e

    if-le p1, v0, :cond_c

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_c
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_d

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0
.end method

.method private escape(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->softBreak()V

    :cond_0
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    iget v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    sget-object v1, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->HEX_DIGITS:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    iget v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    sget-object v1, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->HEX_DIGITS:[B

    rem-int/lit8 v0, v0, 0x10

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private lineBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method

.method private plain(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->softBreak()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private softBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->write(B)V

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->lineBreak()V

    return-void
.end method

.method private write(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->flushOutput()V

    :cond_0
    return-void
.end method

.method private writePending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->plain(B)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->clearPending()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0
.end method


# virtual methods
.method completeEncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->writePending()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->flushOutput()V

    return-void
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->inBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->inBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->encodeChunk([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->completeEncoding()V

    return-void
.end method

.method encodeChunk([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->encode(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iput v3, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outputIndex:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->outBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method initEncoding(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingSpace:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingTab:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->pendingCR:Z

    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method
