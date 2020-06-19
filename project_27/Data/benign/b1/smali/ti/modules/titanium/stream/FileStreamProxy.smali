.class public Lti/modules/titanium/stream/FileStreamProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "FileStreamProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/io/TiStream;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "FileStream"


# instance fields
.field private fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

.field private isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/stream/FileStreamProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiFileProxy;)V
    .locals 1
    .param p1, "fileProxy"    # Lorg/appcelerator/titanium/TiFileProxy;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->isOpen:Z

    .line 34
    iput-object p1, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->isOpen:Z

    .line 36
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
    .line 169
    iget-object v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->close()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->isOpen:Z

    .line 171
    return-void
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 43
    iget-boolean v4, p0, Lti/modules/titanium/stream/FileStreamProxy;->isOpen:Z

    if-nez v4, :cond_0

    .line 44
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from file, not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, "bufferProxy":Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 49
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 51
    .local v2, "length":I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_9

    .line 52
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 53
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_4

    .line 54
    aget-object v0, p1, v7

    .end local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 55
    .restart local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 62
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 63
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 64
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 73
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 74
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 89
    :cond_3
    :goto_1
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiBaseFile;->getExistingInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 58
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_5
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 67
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 70
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_7
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_8

    .line 77
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 80
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "FileStream"

    const-string v5, "Unable to read from file, IO error"

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from file, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public write([Ljava/lang/Object;)I
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

    .line 100
    iget-boolean v4, p0, Lti/modules/titanium/stream/FileStreamProxy;->isOpen:Z

    if-nez v4, :cond_0

    .line 101
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write to file, not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "bufferProxy":Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 106
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 108
    .local v2, "length":I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_9

    .line 109
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 110
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_4

    .line 111
    aget-object v0, p1, v7

    .end local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 112
    .restart local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 119
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 120
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 121
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 131
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    :cond_3
    :goto_1
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/FileStreamProxy;->fileProxy:Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiBaseFile;->getExistingOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->write(Ljava/io/OutputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 115
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_5
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 124
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 127
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_7
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_8

    .line 134
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 137
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "FileStream"

    const-string v5, "Unable to write to file, IO error"

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write to file, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
