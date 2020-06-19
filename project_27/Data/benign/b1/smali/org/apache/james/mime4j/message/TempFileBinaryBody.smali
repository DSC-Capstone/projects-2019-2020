.class Lorg/apache/james/mime4j/message/TempFileBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# instance fields
.field private tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-static {}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getInstance()Lorg/apache/james/mime4j/message/storage/TempStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    const-string v1, "attachment"

    const-string v2, ".bin"

    invoke-interface {v0, v1, v2}, Lorg/apache/james/mime4j/message/storage/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
