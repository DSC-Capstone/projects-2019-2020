.class public interface abstract Lorg/apache/james/mime4j/message/storage/TempFile;
.super Ljava/lang/Object;


# virtual methods
.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isInMemory()Z
.end method

.method public abstract length()J
.end method
