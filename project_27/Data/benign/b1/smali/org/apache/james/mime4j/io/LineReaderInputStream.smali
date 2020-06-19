.class public abstract Lorg/apache/james/mime4j/io/LineReaderInputStream;
.super Ljava/io/FilterInputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public abstract readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
