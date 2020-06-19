.class public Lti/modules/titanium/stream/BufferStreamProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BufferStreamProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/io/TiStream;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "BufferStream"


# instance fields
.field private buffer:Lti/modules/titanium/BufferProxy;

.field private isOpen:Z

.field private mode:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/stream/BufferStreamProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/BufferProxy;I)V
    .locals 3
    .param p1, "buffer"    # Lti/modules/titanium/BufferProxy;
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 30
    iput v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    .line 31
    iput v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    .line 32
    iput-boolean v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->isOpen:Z

    .line 37
    if-nez p2, :cond_0

    .line 38
    iput v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    .line 50
    :goto_0
    iput-object p1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->buffer:Lti/modules/titanium/BufferProxy;

    .line 51
    iput p2, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    .line 52
    iput-boolean v2, p0, Lti/modules/titanium/stream/BufferStreamProxy;->isOpen:Z

    .line 53
    return-void

    .line 40
    :cond_0
    if-ne p2, v2, :cond_1

    .line 41
    iput v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 44
    invoke-virtual {p1}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->buffer:Lti/modules/titanium/BufferProxy;

    .line 206
    iput v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    .line 207
    iput v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->isOpen:Z

    .line 209
    return-void
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 187
    iget v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :cond_0
    return v0
.end method

.method public read([Ljava/lang/Object;)I
    .locals 11
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 59
    iget-boolean v6, p0, Lti/modules/titanium/stream/BufferStreamProxy;->isOpen:Z

    if-nez v6, :cond_0

    .line 60
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unable to read from buffer, not open"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_0
    iget v6, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    if-eqz v6, :cond_1

    .line 64
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unable to read on a stream, not opened in read mode"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    .local v1, "bufferProxy":Lti/modules/titanium/BufferProxy;
    const/4 v5, 0x0

    .line 69
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 71
    .local v4, "length":I
    array-length v6, p1

    if-eq v6, v7, :cond_2

    array-length v6, p1

    if-ne v6, v10, :cond_b

    .line 72
    :cond_2
    array-length v6, p1

    if-lez v6, :cond_3

    .line 73
    aget-object v6, p1, v9

    instance-of v6, v6, Lti/modules/titanium/BufferProxy;

    if-eqz v6, :cond_6

    .line 74
    aget-object v1, p1, v9

    .end local v1    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    check-cast v1, Lti/modules/titanium/BufferProxy;

    .line 75
    .restart local v1    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v1}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v4

    .line 82
    :cond_3
    array-length v6, p1

    if-ne v6, v10, :cond_4

    .line 83
    aget-object v6, p1, v7

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 84
    aget-object v6, p1, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 93
    :goto_0
    aget-object v6, p1, v8

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_9

    .line 94
    aget-object v6, p1, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 108
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lti/modules/titanium/stream/BufferStreamProxy;->buffer:Lti/modules/titanium/BufferProxy;

    invoke-virtual {v6}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v6

    iget v7, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    iget-object v8, p0, Lti/modules/titanium/stream/BufferStreamProxy;->buffer:Lti/modules/titanium/BufferProxy;

    invoke-virtual {v8}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v8

    iget v9, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    sub-int/2addr v8, v9

    invoke-direct {v0, v6, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 112
    .local v0, "bufferInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v0, v1, v5, v4}, Lorg/appcelerator/titanium/util/TiStreamHelper;->read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I

    move-result v2

    .line 114
    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-le v2, v6, :cond_5

    .line 115
    iget v6, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    add-int/2addr v6, v2

    iput v6, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_5
    return v2

    .line 78
    .end local v0    # "bufferInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bytesRead":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid buffer argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_7
    aget-object v6, p1, v7

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_8

    .line 87
    aget-object v6, p1, v7

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v5

    goto :goto_0

    .line 90
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid offset argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_9
    aget-object v6, p1, v8

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_a

    .line 97
    aget-object v6, p1, v8

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_1

    .line 100
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid length argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid number of arguments"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    .restart local v0    # "bufferInputStream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "BufferStream"

    const-string v7, "Unable to read from buffer stream, IO error"

    invoke-static {v6, v7, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unable to read from buffer stream, IO error"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
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

    .line 129
    iget-boolean v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->isOpen:Z

    if-nez v4, :cond_0

    .line 130
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write to buffer, not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    iget v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->mode:I

    if-eq v4, v6, :cond_1

    .line 134
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write on stream, not opened in read or append mode"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, "bufferProxy":Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 139
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 141
    .local v2, "length":I
    array-length v4, p1

    if-eq v4, v5, :cond_2

    array-length v4, p1

    if-ne v4, v8, :cond_a

    .line 142
    :cond_2
    array-length v4, p1

    if-lez v4, :cond_3

    .line 143
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_5

    .line 144
    aget-object v0, p1, v7

    .end local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 145
    .restart local v0    # "bufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 152
    :cond_3
    array-length v4, p1

    if-ne v4, v8, :cond_4

    .line 153
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 154
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 163
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 164
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 178
    :cond_4
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->buffer:Lti/modules/titanium/BufferProxy;

    iget v5, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3, v2}, Lti/modules/titanium/BufferProxy;->write(I[BII)I

    move-result v1

    .line 179
    .local v1, "bytesWritten":I
    iget v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lti/modules/titanium/stream/BufferStreamProxy;->position:I

    .line 181
    return v1

    .line 148
    .end local v1    # "bytesWritten":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_6
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 157
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 160
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_8
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_9

    .line 167
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 170
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
