.class public Lti/modules/titanium/BufferProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BufferProxy.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "BufferProxy"


# instance fields
.field private buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/BufferProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 44
    new-array v0, p1, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "existingBuffer"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 49
    iput-object p1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 50
    return-void
.end method


# virtual methods
.method public append([Ljava/lang/Object;)I
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 201
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v5

    .line 202
    .local v0, "destLength":I
    const/4 v5, 0x0

    aget-object v4, p1, v5

    check-cast v4, Lti/modules/titanium/BufferProxy;

    .line 203
    .local v4, "src":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v4}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v2

    .line 205
    .local v2, "sourceBuffer":[B
    const/4 v1, 0x0

    .line 206
    .local v1, "offset":I
    array-length v5, p1

    if-le v5, v6, :cond_0

    aget-object v5, p1, v6

    if-eqz v5, :cond_0

    .line 207
    aget-object v5, p1, v6

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 210
    :cond_0
    array-length v3, v2

    .line 211
    .local v3, "sourceLength":I
    array-length v5, p1

    if-le v5, v7, :cond_1

    aget-object v5, p1, v7

    if-eqz v5, :cond_1

    .line 212
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 215
    :cond_1
    array-length v5, v2

    invoke-virtual {p0, v1, v3, v5}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 217
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v6, v0, v3

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 218
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    return v3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 331
    return-void
.end method

.method public clone([Ljava/lang/Object;)Lti/modules/titanium/BufferProxy;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "offset":I
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v2, p1, v4

    if-eqz v2, :cond_0

    .line 291
    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 294
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v2

    .line 295
    .local v0, "length":I
    array-length v2, p1

    if-le v2, v3, :cond_1

    aget-object v2, p1, v3

    if-eqz v2, :cond_1

    .line 296
    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 299
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 301
    new-instance v2, Lti/modules/titanium/BufferProxy;

    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v4, v1, v0

    invoke-virtual {p0, v3, v1, v4}, Lti/modules/titanium/BufferProxy;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lti/modules/titanium/BufferProxy;-><init>([B)V

    return-object v2
.end method

.method public copy([Ljava/lang/Object;)I
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 258
    array-length v5, p1

    if-ge v5, v6, :cond_0

    .line 259
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "At least 1 argument required for copy: srcBuffer"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_0
    const/4 v5, 0x0

    aget-object v2, p1, v5

    check-cast v2, Lti/modules/titanium/BufferProxy;

    .line 263
    .local v2, "sourceBufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v2}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v1

    .line 265
    .local v1, "sourceBuffer":[B
    const/4 v0, 0x0

    .line 266
    .local v0, "offset":I
    array-length v5, p1

    if-le v5, v6, :cond_1

    aget-object v5, p1, v6

    if-eqz v5, :cond_1

    .line 267
    aget-object v5, p1, v6

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 270
    :cond_1
    const/4 v4, 0x0

    .line 271
    .local v4, "sourceOffset":I
    array-length v5, p1

    if-le v5, v7, :cond_2

    aget-object v5, p1, v7

    if-eqz v5, :cond_2

    .line 272
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    .line 275
    :cond_2
    array-length v3, v1

    .line 276
    .local v3, "sourceLength":I
    array-length v5, p1

    if-le v5, v8, :cond_3

    aget-object v5, p1, v8

    if-eqz v5, :cond_3

    .line 277
    aget-object v5, p1, v8

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 280
    :cond_3
    array-length v5, v1

    invoke-virtual {p0, v4, v3, v5}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 282
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return v3
.end method

.method protected copyOf([BI)[B
    .locals 4
    .param p1, "array"    # [B
    .param p2, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    new-array v1, p2, [B

    .line 164
    .local v1, "newArray":[B
    move v0, p2

    .line 165
    .local v0, "length":I
    array-length v2, p1

    if-le v0, v2, :cond_0

    .line 166
    array-length v0, p1

    .line 168
    :cond_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v1
.end method

.method protected copyOfRange([BII)[B
    .locals 3
    .param p1, "array"    # [B
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 174
    sub-int v0, p3, p2

    .line 175
    .local v0, "length":I
    new-array v1, v0, [B

    .line 176
    .local v1, "newArray":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-object v1
.end method

.method protected encodeNumber(Ljava/lang/Number;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 106
    const-string v2, "type"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "data is a Number, but no type was given"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v2, v2

    if-nez v2, :cond_1

    .line 112
    invoke-static {v1}, Lti/modules/titanium/codec/CodecModule;->getWidth(Ljava/lang/String;)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 115
    :cond_1
    const-string v2, "byteOrder"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "byteOrder":I
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lti/modules/titanium/codec/CodecModule;->encodeNumber(Ljava/lang/Number;Ljava/lang/String;[BII)I

    .line 117
    return-void
.end method

.method protected encodeString(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 121
    const-string v4, "type"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "type":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 123
    const-string v3, "utf8"

    .line 126
    :cond_0
    invoke-static {v3}, Lti/modules/titanium/codec/CodecModule;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "charset":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    .local v0, "bytes":[B
    iget-object v4, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v4, v4

    if-nez v4, :cond_1

    .line 130
    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "BufferProxy"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public fill([Ljava/lang/Object;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 307
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 308
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fill requires at least 1 argument: fillByte"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 312
    .local v0, "fillByte":I
    const/4 v2, 0x0

    .line 313
    .local v2, "offset":I
    array-length v3, p1

    if-le v3, v4, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 314
    aget-object v3, p1, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 317
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v1, v3

    .line 318
    .local v1, "length":I
    array-length v3, p1

    if-le v3, v5, :cond_2

    aget-object v3, p1, v5

    if-eqz v3, :cond_2

    .line 319
    aget-object v3, p1, v5

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 322
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v1, v3}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 324
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v4, v2, v1

    int-to-byte v5, v0

    invoke-static {v3, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 325
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    return-object v0
.end method

.method public getIndexedProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    array-length v0, p2

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "length":I
    const-string v3, "length"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "lengthProperty":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 86
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 89
    :cond_0
    const-string v3, "byteOrder"

    invoke-virtual {p0, v3}, Lti/modules/titanium/BufferProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const-string v3, "byteOrder"

    const/4 v4, 0x0

    invoke-static {v4}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/BufferProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_1
    new-array v3, v0, [B

    iput-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 96
    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 98
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/BufferProxy;->encodeNumber(Ljava/lang/Number;Lorg/appcelerator/kroll/KrollDict;)V

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 99
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 100
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/BufferProxy;->encodeString(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public insert([Ljava/lang/Object;)I
    .locals 11
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 225
    array-length v7, p1

    if-ge v7, v8, :cond_0

    .line 226
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "At least 2 arguments required for insert: src, offset"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    :cond_0
    aget-object v4, p1, v10

    check-cast v4, Lti/modules/titanium/BufferProxy;

    .line 229
    .local v4, "sourceBufferProxy":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v4}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v3

    .line 230
    .local v3, "sourceBuffer":[B
    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 232
    .local v0, "offset":I
    const/4 v6, 0x0

    .line 233
    .local v6, "sourceOffset":I
    array-length v7, p1

    if-le v7, v8, :cond_1

    aget-object v7, p1, v8

    if-eqz v7, :cond_1

    .line 234
    aget-object v7, p1, v8

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    .line 237
    :cond_1
    array-length v5, v3

    .line 238
    .local v5, "sourceLength":I
    array-length v7, p1

    if-le v7, v9, :cond_2

    aget-object v7, p1, v9

    if-eqz v7, :cond_2

    .line 239
    aget-object v7, p1, v9

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    .line 242
    :cond_2
    array-length v7, v3

    invoke-virtual {p0, v6, v5, v7}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 244
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-virtual {p0, v7, v0}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v2

    .line 245
    .local v2, "preInsertBuffer":[B
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    iget-object v8, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v8

    invoke-virtual {p0, v7, v0, v8}, Lti/modules/titanium/BufferProxy;->copyOfRange([BII)[B

    move-result-object v1

    .line 247
    .local v1, "postInsertBuffer":[B
    array-length v7, v2

    add-int/2addr v7, v5

    array-length v8, v1

    add-int/2addr v7, v8

    new-array v7, v7, [B

    iput-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 248
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    invoke-static {v2, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    invoke-static {v3, v6, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    add-int/2addr v8, v5

    array-length v9, v1

    invoke-static {v1, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    return v5
.end method

.method public release()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 337
    return-void
.end method

.method public resize(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 366
    return-void
.end method

.method public setIndexedProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v1

    aput-byte v1, v0, p1

    .line 159
    :goto_0
    return-void

    .line 157
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setIndexedProperty(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 361
    return-void
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected validateOffsetAndLength(III)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bufferLength"    # I

    .prologue
    .line 182
    add-int v0, p1, p3

    if-le p2, v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is larger than the buffer length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    return-void
.end method

.method public write(I[BII)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "sourceBuffer"    # [B
    .param p3, "sourceOffset"    # I
    .param p4, "sourceLength"    # I

    .prologue
    .line 189
    add-int v0, p1, p4

    iget-object v1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v1, p1, p4

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 193
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    return p4
.end method
