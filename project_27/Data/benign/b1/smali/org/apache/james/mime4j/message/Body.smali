.class public interface abstract Lorg/apache/james/mime4j/message/Body;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# virtual methods
.method public abstract getParent()Lorg/apache/james/mime4j/message/Entity;
.end method

.method public abstract setParent(Lorg/apache/james/mime4j/message/Entity;)V
.end method

.method public abstract writeTo(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method
