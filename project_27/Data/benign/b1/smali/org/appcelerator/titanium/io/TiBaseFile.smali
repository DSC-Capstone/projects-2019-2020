.class public abstract Lorg/appcelerator/titanium/io/TiBaseFile;
.super Ljava/lang/Object;
.source "TiBaseFile.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiBaseFile"

.field public static final MODE_APPEND:I = 0x2

.field public static final MODE_READ:I = 0x0

.field public static final MODE_WRITE:I = 0x1

.field protected static final TYPE_BLOB:I = 0x3

.field protected static final TYPE_FILE:I = 0x1

.field protected static final TYPE_RESOURCE:I = 0x2


# instance fields
.field protected binary:Z

.field protected flagHidden:Z

.field protected flagSymbolicLink:Z

.field protected inreader:Ljava/io/BufferedReader;

.field protected instream:Ljava/io/InputStream;

.field protected modeExecutable:Z

.field protected modeRead:Z

.field protected modeWrite:Z

.field protected opened:Z

.field protected outstream:Ljava/io/OutputStream;

.field protected outwriter:Ljava/io/BufferedWriter;

.field protected stream:Z

.field protected type:I

.field protected typeDir:Z

.field protected typeFile:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->type:I

    .line 58
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    .line 59
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    .line 60
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    .line 61
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    .line 62
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    .line 63
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    .line 64
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    .line 66
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 67
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 68
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 69
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 70
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 71
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->stream:Z

    .line 72
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 73
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 324
    iget-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    if-eqz v1, :cond_4

    .line 325
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 334
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    .line 336
    :try_start_1
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 342
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 344
    :try_start_2
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 348
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 351
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_3

    .line 353
    :try_start_3
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 357
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 360
    :cond_3
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 363
    :cond_4
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 364
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 346
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 355
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copy(Ljava/lang/String;)Z
    .locals 12
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 107
    .local v7, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 109
    .local v2, "copied":Z
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v10

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 113
    if-nez v5, :cond_3

    .line 136
    if-eqz v5, :cond_2

    .line 138
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 139
    const/4 v5, 0x0

    .line 145
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 148
    const/4 v7, 0x0

    goto :goto_0

    .line 115
    :cond_3
    const/4 v11, 0x1

    :try_start_3
    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v9, v11

    .line 116
    .local v9, "parts":[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v9, v11}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 117
    .local v0, "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    if-nez v0, :cond_5

    .line 136
    if-eqz v5, :cond_4

    .line 138
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 139
    const/4 v5, 0x0

    .line 145
    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    .line 147
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 148
    const/4 v7, 0x0

    goto :goto_0

    .line 119
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .line 120
    if-nez v7, :cond_7

    .line 136
    if-eqz v5, :cond_6

    .line 138
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 139
    const/4 v5, 0x0

    .line 145
    :cond_6
    :goto_3
    if-eqz v7, :cond_0

    .line 147
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 148
    const/4 v7, 0x0

    goto :goto_0

    .line 122
    :cond_7
    const/16 v10, 0x1fa0

    :try_start_9
    new-array v1, v10, [B

    .line 123
    .local v1, "buf":[B
    const/4 v3, 0x0

    .line 124
    .local v3, "count":I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 125
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_a
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 127
    .end local v7    # "os":Ljava/io/OutputStream;
    .local v8, "os":Ljava/io/OutputStream;
    :goto_4
    :try_start_b
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 128
    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 132
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    move-object v5, v6

    .line 133
    .end local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1    # "buf":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "parts":[Ljava/lang/String;
    .local v4, "e":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_5
    :try_start_c
    const-string v10, "TiBaseFile"

    const-string v11, "Error while copying file: "

    invoke-static {v10, v11, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 136
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v5, :cond_8

    .line 138
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 139
    const/4 v5, 0x0

    .line 145
    :cond_8
    :goto_7
    if-eqz v7, :cond_9

    .line 147
    :try_start_e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 148
    const/4 v7, 0x0

    .line 151
    :cond_9
    :goto_8
    throw v10

    .line 131
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1    # "buf":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "parts":[Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    .line 136
    if-eqz v6, :cond_c

    .line 138
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 139
    const/4 v5, 0x0

    .line 145
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_9
    if-eqz v8, :cond_b

    .line 147
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 148
    const/4 v7, 0x0

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :goto_a
    move v10, v2

    .line 155
    goto/16 :goto_0

    .line 140
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_9

    .line 149
    :catch_2
    move-exception v10

    move-object v7, v8

    .line 151
    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    goto :goto_a

    .line 140
    .end local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1    # "buf":[B
    .end local v3    # "count":I
    .end local v9    # "parts":[Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 149
    :catch_4
    move-exception v11

    goto/16 :goto_0

    .line 140
    .restart local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v9    # "parts":[Ljava/lang/String;
    :catch_5
    move-exception v11

    goto :goto_2

    .line 149
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .line 140
    :catch_7
    move-exception v11

    goto :goto_3

    .line 149
    :catch_8
    move-exception v11

    goto/16 :goto_0

    .line 140
    .end local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v9    # "parts":[Ljava/lang/String;
    :catch_9
    move-exception v11

    goto :goto_7

    .line 149
    :catch_a
    move-exception v11

    goto :goto_8

    .line 136
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1    # "buf":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "parts":[Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 132
    .end local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1    # "buf":[B
    .end local v3    # "count":I
    .end local v9    # "parts":[Ljava/lang/String;
    :catch_b
    move-exception v4

    goto :goto_5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1    # "buf":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "parts":[Ljava/lang/String;
    :catch_c
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :cond_b
    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    goto :goto_a

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :cond_c
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_9
.end method

.method protected copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const/16 v2, 0x1fa0

    new-array v0, v2, [B

    .line 384
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 385
    .local v1, "count":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 386
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method protected copyStream(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 391
    const/16 v2, 0x1fa0

    new-array v0, v2, [C

    .line 392
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 393
    .local v1, "count":I
    :goto_0
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 394
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 396
    :cond_0
    return-void
.end method

.method public createDirectory(Z)Z
    .locals 1
    .param p1, "recursive"    # Z

    .prologue
    .line 159
    const-string v0, "createDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public createShortcut()Z
    .locals 1

    .prologue
    .line 164
    const-string v0, "createShortcut"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 169
    const-string v0, "createTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 170
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deleteDirectory(Z)Z
    .locals 1
    .param p1, "recursive"    # Z

    .prologue
    .line 174
    const-string v0, "deleteDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 179
    const-string v0, "deleteFile"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 184
    const-string v0, "exists"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "extensionsion"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "getDirectoryListing"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExistingInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getExistingOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNativeFile()Ljava/io/File;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getParent()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 199
    const-string v0, "getParent"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    return v0
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    return v0
.end method

.method protected logNotSupported(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 379
    :cond_0
    const-string v0, "TiBaseFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 204
    const-string v0, "modificationTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 205
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 8
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 210
    const/4 v3, 0x0

    .line 212
    .local v3, "moved":Z
    if-eqz p1, :cond_3

    .line 213
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 214
    .local v4, "parts":[Ljava/lang/String;
    invoke-static {v4, v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 215
    .local v0, "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Destination already exists."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 221
    .local v2, "fsrc":Ljava/io/File;
    if-nez v2, :cond_1

    .line 222
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Source is not a true file."

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 225
    .local v1, "fdest":Ljava/io/File;
    if-nez v1, :cond_2

    .line 226
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Destination is not a valid location for writing"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->copy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteFile()Z

    move-result v3

    .line 237
    .end local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1    # "fdest":Ljava/io/File;
    .end local v2    # "fsrc":Ljava/io/File;
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_3
    return v3

    .line 233
    .restart local v0    # "bf":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v4    # "parts":[Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destination not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "nativePath"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "binary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "open"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "read"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, "readLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 4
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "renamed":Z
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 264
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 270
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    return v2
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 274
    const-string v0, "resolve"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExecutable()Z
    .locals 1

    .prologue
    .line 279
    const-string v0, "setExecutable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public setReadonly()Z
    .locals 1

    .prologue
    .line 284
    const-string v0, "setReadonly"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public setWriteable()Z
    .locals 1

    .prologue
    .line 289
    const-string v0, "setWriteable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 294
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 295
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 299
    const-string v0, "spaceAvailable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 300
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public unzip(Ljava/lang/String;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "unzip"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "write"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public write(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 0
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public writeFromUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "writeFromUrl"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v0, "writeLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 321
    return-void
.end method
