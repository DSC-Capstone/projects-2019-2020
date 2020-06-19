.class public Lorg/appcelerator/titanium/util/TiStreamHelper;
.super Ljava/lang/Object;
.source "TiStreamHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "bufferProxy"    # Lti/modules/titanium/BufferProxy;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v0

    .line 23
    .local v0, "buffer":[B
    add-int v1, p2, p3

    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 24
    array-length v1, v0

    sub-int p3, v1, p2

    .line 27
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1
.end method

.method public static write(Ljava/io/OutputStream;Lti/modules/titanium/BufferProxy;II)I
    .locals 3
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "bufferProxy"    # Lti/modules/titanium/BufferProxy;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v0

    .line 34
    .local v0, "buffer":[B
    add-int v1, p2, p3

    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 35
    array-length v1, v0

    sub-int p3, v1, p2

    .line 38
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 41
    return p3
.end method
