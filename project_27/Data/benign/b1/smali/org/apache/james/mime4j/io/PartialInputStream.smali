.class public Lorg/apache/james/mime4j/io/PartialInputStream;
.super Lorg/apache/james/mime4j/io/PositionInputStream;


# instance fields
.field private final limit:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    add-long v0, p2, p4

    iput-wide v0, p0, Lorg/apache/james/mime4j/io/PartialInputStream;->limit:J

    return-void
.end method

.method private getBytesLeft()I
    .locals 6

    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/PartialInputStream;->limit:J

    iget-wide v4, p0, Lorg/apache/james/mime4j/io/PartialInputStream;->position:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/james/mime4j/io/PositionInputStream;->available()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/PartialInputStream;->getBytesLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/james/mime4j/io/PartialInputStream;->limit:J

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/PartialInputStream;->position:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0}, Lorg/apache/james/mime4j/io/PositionInputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/PartialInputStream;->getBytesLeft()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lorg/apache/james/mime4j/io/PositionInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/PartialInputStream;->getBytesLeft()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lorg/apache/james/mime4j/io/PositionInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
