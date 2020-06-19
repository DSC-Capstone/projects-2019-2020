.class public Lorg/appcelerator/titanium/TiBlob;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiBlob.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiBlob"

.field public static final TYPE_DATA:I = 0x2

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private data:Ljava/lang/Object;

.field private height:I

.field private mimetype:Ljava/lang/String;

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiBlob;->DBG:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    iput p1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    .line 49
    iput-object p2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .line 50
    iput-object p3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 51
    iput v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 52
    iput v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 53
    return-void
.end method

.method public static blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 89
    const-string v0, "application/octet-stream"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, v2, p0, v1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-direct {v0, v2, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .param p0, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p0, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v2, v5, [B

    .line 77
    .local v2, "data":[B
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 81
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v3, "image/bitmap"

    invoke-direct {v0, v5, v2, v3}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 82
    .local v0, "blob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 84
    return-object v0
.end method

.method public static blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x3

    const-string v2, "text/plain"

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 9
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    const/4 v7, 0x0

    .line 177
    iget v5, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v5, :pswitch_data_0

    .line 200
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Blob type id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "dataString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "dataString":Ljava/lang/String;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "TiBlob"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 189
    .local v1, "dataBytes":[B
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v0

    .line 190
    .local v0, "appendBytes":[B
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 191
    .local v4, "newData":[B
    array-length v5, v1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    array-length v5, v1

    array-length v6, v0

    invoke-static {v0, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    goto :goto_0

    .line 197
    .end local v0    # "appendBytes":[B
    .end local v1    # "dataBytes":[B
    .end local v4    # "newData":[B
    :pswitch_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not yet implemented. TYPE_FILE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 6

    .prologue
    .line 102
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 104
    .local v0, "bytes":[B
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Blob type id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 119
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 124
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    :goto_1
    throw v3

    .line 125
    :catch_2
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getFile()Lorg/appcelerator/titanium/TiFileProxy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 314
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 308
    const-string v1, "TiBlob"

    const-string v2, "getFile not supported for non-file blob types."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v1, v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v1, :cond_2

    .line 311
    const-string v1, "TiBlob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFile unable to return value: underlying data is not file, rather "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_2
    new-instance v1, Lorg/appcelerator/titanium/TiFileProxy;

    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Lorg/appcelerator/titanium/io/TiBaseFile;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 161
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v1, :pswitch_data_0

    .line 170
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v1

    .line 164
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TiBlob"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 141
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v2, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    :goto_0
    return v2

    .line 144
    :pswitch_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TitaniumBlob;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 149
    .local v0, "fileSize":J
    :goto_1
    long-to-int v2, v0

    goto :goto_0

    .line 147
    .end local v0    # "fileSize":J
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->size()J

    move-result-wide v0

    .restart local v0    # "fileSize":J
    goto :goto_1

    .line 152
    .end local v0    # "fileSize":J
    :pswitch_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 280
    :cond_1
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 281
    const-string v2, "TiBlob"

    const-string v3, "getNativePath not supported for non-file blob types."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v2, :cond_3

    .line 284
    const-string v2, "TiBlob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNativePath unable to return value: underlying data is not file, rather "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_3
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 290
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 210
    .local v1, "result":Ljava/lang/String;
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v3, v1

    .line 230
    :goto_1
    return-object v3

    .line 212
    :pswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 219
    .restart local v1    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    if-eq v3, v4, :cond_0

    .line 220
    const/4 v3, 0x0

    goto :goto_1

    .line 223
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v1, v2

    .line 226
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    const-string v4, "Unable to convert to string."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    return v0
.end method

.method public toBase64()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    const-string v0, "[object TiBlob]"

    goto :goto_0
.end method
