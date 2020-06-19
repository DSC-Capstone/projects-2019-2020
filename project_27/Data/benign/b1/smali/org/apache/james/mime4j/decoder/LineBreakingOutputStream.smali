.class public Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static final CRLF:[B


# instance fields
.field private lineLength:I

.field private linepos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    iput p2, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    iget v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    return-void
.end method

.method public final write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move v0, p3

    move v1, p2

    :goto_0
    if-lez v0, :cond_2

    iget v3, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    iget v4, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    sget-object v4, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iput v2, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v3, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method
