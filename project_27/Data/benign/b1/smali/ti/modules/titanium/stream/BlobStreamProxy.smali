.class public Lti/modules/titanium/stream/BlobStreamProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BlobStreamProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/io/TiStream;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "BlobStream"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private isOpen:Z

.field private tiBlob:Lorg/appcelerator/titanium/TiBlob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/stream/BlobStreamProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 1
    .param p1, "tiBlob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 36
    iput-object p1, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    .line 131
    iget-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 133
    return-void
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public read([Ljava/lang/Object;)I
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 45
    iget-boolean v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    if-nez v4, :cond_0

    .line 46
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, "bufferProxy":Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 51
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 53
    .local v2, "length":I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_a

    .line 54
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 55
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_5

    .line 56
    aget-object v0, p1, v7

    .end local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 57
    .restart local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 64
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 65
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 66
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 76
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    :cond_3
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_4

    .line 91
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    .line 95
    :cond_4
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_b

    .line 97
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 60
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_6
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 69
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 72
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_8
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_9

    .line 79
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 82
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, input stream is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public write([Ljava/lang/Object;)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to write, blob is read only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
