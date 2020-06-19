.class public interface abstract Lorg/apache/james/mime4j/message/storage/TempPath;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createTempFile()Lorg/apache/james/mime4j/message/storage/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/message/storage/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method
