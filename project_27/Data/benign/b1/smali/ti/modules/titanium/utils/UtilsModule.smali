.class public Lti/modules/titanium/utils/UtilsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "UtilsModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilsModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 47
    invoke-direct {p0}, Lti/modules/titanium/utils/UtilsModule;-><init>()V

    .line 48
    return-void
.end method

.method private convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 39
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 38
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 41
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type for argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public arrayTest([F[J[I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # [F
    .param p2, "b"    # [J
    .param p3, "c"    # [I
    .param p4, "d"    # [Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public base64decode(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "UtilsModule"

    const-string v3, "UTF-8 is not a supported encoding type"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public base64encode(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v2, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_0

    .line 54
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .line 64
    :goto_0
    return-object v2

    .line 56
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 59
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "UtilsModule"

    const-string v3, "UTF-8 is not a supported encoding type"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public md5HexDigest(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sha1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sha256(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 114
    .local v1, "b":[B
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 115
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 116
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 117
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 118
    .local v5, "messageDigest":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_0

    .line 120
    aget-byte v7, v5, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 126
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v1    # "b":[B
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    .end local v6    # "result":Ljava/lang/StringBuilder;
    :goto_1
    return-object v7

    .line 123
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "UtilsModule"

    const-string v8, "SHA256 is not a supported algorithm"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public transcodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "orig"    # Ljava/lang/String;
    .param p2, "inEncoding"    # Ljava/lang/String;
    .param p3, "outEncoding"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 134
    .local v3, "charsetOut":Ljava/nio/charset/Charset;
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 136
    .local v2, "charsetIn":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    .local v0, "bufferIn":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 138
    .local v4, "dataIn":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    const/4 v0, 0x0

    .line 141
    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 142
    .local v1, "bufferOut":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 145
    .local v5, "dataOut":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 146
    const/4 v1, 0x0

    .line 148
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "bufferIn":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferOut":Ljava/nio/ByteBuffer;
    .end local v2    # "charsetIn":Ljava/nio/charset/Charset;
    .end local v3    # "charsetOut":Ljava/nio/charset/Charset;
    .end local v4    # "dataIn":Ljava/nio/CharBuffer;
    .end local v5    # "dataOut":[B
    :goto_0
    return-object v7

    .line 150
    :catch_0
    move-exception v6

    .line 151
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "UtilsModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v7, 0x0

    goto :goto_0
.end method
