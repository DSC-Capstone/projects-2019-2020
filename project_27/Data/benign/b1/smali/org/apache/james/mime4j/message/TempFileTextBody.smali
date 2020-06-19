.class Lorg/apache/james/mime4j/message/TempFileTextBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;

# interfaces
.implements Lorg/apache/james/mime4j/message/TextBody;


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mimeCharset:Ljava/lang/String;

.field private tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/message/TempFileTextBody;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/TempFileTextBody;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    invoke-static {}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getInstance()Lorg/apache/james/mime4j/message/storage/TempStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    const-string v1, "attachment"

    const-string v2, ".txt"

    invoke-interface {v0, v1, v2}, Lorg/apache/james/mime4j/message/storage/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    :cond_0
    return-void
.end method

.method public getReader()Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "ISO-8859-1"

    sget-object v1, Lorg/apache/james/mime4j/message/TempFileTextBody;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/james/mime4j/message/TempFileTextBody;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No MIME charset specified. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v2}, Lorg/apache/james/mime4j/message/storage/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    :cond_2
    sget-object v1, Lorg/apache/james/mime4j/message/TempFileTextBody;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->mimeCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corresponding Java charset. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileTextBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
