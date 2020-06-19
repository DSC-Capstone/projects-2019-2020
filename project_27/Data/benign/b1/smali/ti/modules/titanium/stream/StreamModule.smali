.class public Lti/modules/titanium/stream/StreamModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "StreamModule.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "StreamModule"

.field public static final MODE_APPEND:I = 0x2

.field public static final MODE_READ:I = 0x0

.field public static final MODE_WRITE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/stream/StreamModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/stream/StreamModule;
    .param p1, "x1"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lti/modules/titanium/stream/StreamModule;->buildRWCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;I)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/stream/StreamModule;
    .param p1, "x1"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "x2"    # Lti/modules/titanium/BufferProxy;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/stream/StreamModule;->readAll(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;I)V

    return-void
.end method

.method static synthetic access$200(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;I)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/stream/StreamModule;
    .param p1, "x1"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "x2"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/stream/StreamModule;->writeStream(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/stream/StreamModule;
    .param p1, "x1"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "x2"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lti/modules/titanium/stream/StreamModule;->buildWriteStreamCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/stream/StreamModule;
    .param p1, "x1"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "x2"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p3, "x3"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/stream/StreamModule;->pump(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V

    return-void
.end method

.method private buildPumpCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IIILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "sourceStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "buffer"    # Lti/modules/titanium/BufferProxy;
    .param p3, "bytesProcessed"    # I
    .param p4, "totalBytesProcessed"    # I
    .param p5, "errorState"    # I
    .param p6, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 560
    .local v0, "callbackArgs":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "buffer"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "bytesProcessed"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "totalBytesProcessed"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "errorState"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1, p6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object v0
.end method

.method private buildRWCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "sourceStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "bytesProcessed"    # I
    .param p3, "errorState"    # I
    .param p4, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 537
    .local v0, "callbackArgs":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "bytesProcessed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "errorState"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-object v0
.end method

.method private buildWriteStreamCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;IILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "fromStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "toStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p3, "bytesProcessed"    # I
    .param p4, "errorState"    # I
    .param p5, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 547
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 548
    .local v0, "callbackArgs":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "fromStream"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "toStream"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "bytesProcessed"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v1, "errorState"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1, p5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    return-object v0
.end method

.method private pump(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V
    .locals 16
    .param p1, "inputStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "handler"    # Lorg/appcelerator/kroll/KrollFunction;
    .param p3, "maxChunkSize"    # I

    .prologue
    .line 498
    const/4 v5, 0x0

    .line 499
    .local v5, "totalBytesRead":I
    const/4 v6, 0x0

    .line 500
    .local v6, "errorState":I
    const-string v7, ""

    .line 504
    .local v7, "errorDescription":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Lti/modules/titanium/BufferProxy;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Lti/modules/titanium/BufferProxy;-><init>(I)V

    .line 505
    .local v3, "buffer":Lti/modules/titanium/BufferProxy;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/appcelerator/titanium/io/TiStream;->read([Ljava/lang/Object;)I

    move-result v4

    .line 506
    .local v4, "bytesRead":I
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    .line 507
    add-int/2addr v5, v4

    .line 510
    :cond_1
    invoke-virtual {v3}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v1

    if-eq v4, v1, :cond_2

    .line 511
    const/4 v1, -0x1

    if-ne v4, v1, :cond_3

    .line 512
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 519
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/stream/StreamModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lti/modules/titanium/stream/StreamModule;->buildPumpCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IIILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v1}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 520
    const/4 v3, 0x0

    .line 522
    const/4 v1, -0x1

    if-ne v4, v1, :cond_0

    .line 532
    .end local v3    # "buffer":Lti/modules/titanium/BufferProxy;
    .end local v4    # "bytesRead":I
    :goto_1
    return-void

    .line 515
    .restart local v3    # "buffer":Lti/modules/titanium/BufferProxy;
    .restart local v4    # "bytesRead":I
    :cond_3
    invoke-virtual {v3, v4}, Lti/modules/titanium/BufferProxy;->resize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    .end local v3    # "buffer":Lti/modules/titanium/BufferProxy;
    .end local v4    # "bytesRead":I
    :catch_0
    move-exception v15

    .line 528
    .local v15, "e":Ljava/io/IOException;
    const/4 v6, 0x1

    .line 529
    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 530
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/stream/StreamModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    new-instance v10, Lti/modules/titanium/BufferProxy;

    invoke-direct {v10}, Lti/modules/titanium/BufferProxy;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v12, v5

    move v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lti/modules/titanium/stream/StreamModule;->buildPumpCallbackArgs(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IIILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private readAll(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;I)V
    .locals 5
    .param p1, "sourceStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "buffer"    # Lti/modules/titanium/BufferProxy;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 232
    .local v1, "totalBytesRead":I
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {p1, v2}, Lorg/appcelerator/titanium/io/TiStream;->read([Ljava/lang/Object;)I

    move-result v0

    .line 233
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 242
    invoke-virtual {p2, v1}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 243
    return-void

    .line 237
    :cond_0
    add-int/2addr v1, v0

    .line 238
    add-int/lit16 v2, v1, 0x400

    invoke-virtual {p2, v2}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 239
    add-int/2addr p3, v0

    .line 240
    goto :goto_0
.end method

.method private writeStream(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;I)I
    .locals 10
    .param p1, "inputStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p2, "outputStream"    # Lorg/appcelerator/titanium/io/TiStream;
    .param p3, "maxChunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 413
    new-instance v0, Lti/modules/titanium/BufferProxy;

    invoke-direct {v0, p3}, Lti/modules/titanium/BufferProxy;-><init>(I)V

    .line 414
    .local v0, "buffer":Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 417
    .local v3, "totalBytesWritten":I
    :goto_0
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {p1, v4}, Lorg/appcelerator/titanium/io/TiStream;->read([Ljava/lang/Object;)I

    move-result v1

    .line 418
    .local v1, "bytesRead":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 427
    return v3

    .line 422
    :cond_0
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {p2, v4}, Lorg/appcelerator/titanium/io/TiStream;->write([Ljava/lang/Object;)I

    move-result v2

    .line 423
    .local v2, "bytesWritten":I
    add-int/2addr v3, v2

    .line 424
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public createStream(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 37
    const-string v3, "source"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "source":Ljava/lang/Object;
    const-string v3, "mode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "rawMode":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Number;

    if-nez v3, :cond_0

    .line 41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to create stream, invalid mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "rawMode":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 45
    .local v0, "mode":I
    instance-of v3, v2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_2

    .line 46
    if-eqz v0, :cond_1

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to create a blob stream in a mode other than read"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_1
    new-instance v3, Lti/modules/titanium/stream/BlobStreamProxy;

    check-cast v2, Lorg/appcelerator/titanium/TiBlob;

    .end local v2    # "source":Ljava/lang/Object;
    invoke-direct {v3, v2}, Lti/modules/titanium/stream/BlobStreamProxy;-><init>(Lorg/appcelerator/titanium/TiBlob;)V

    .line 53
    :goto_0
    return-object v3

    .line 52
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lti/modules/titanium/BufferProxy;

    if-eqz v3, :cond_3

    .line 53
    new-instance v3, Lti/modules/titanium/stream/BufferStreamProxy;

    check-cast v2, Lti/modules/titanium/BufferProxy;

    .end local v2    # "source":Ljava/lang/Object;
    invoke-direct {v3, v2, v0}, Lti/modules/titanium/stream/BufferStreamProxy;-><init>(Lti/modules/titanium/BufferProxy;I)V

    goto :goto_0

    .line 56
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to create a stream for the specified argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public pump([Ljava/lang/Object;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v3, 0x0

    .line 437
    .local v3, "handler":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v6, 0x0

    .line 438
    .local v6, "maxChunkSize":I
    const/4 v5, 0x0

    .line 440
    .local v5, "isAsync":Z
    array-length v7, p1

    if-eq v7, v8, :cond_0

    array-length v7, p1

    if-ne v7, v12, :cond_6

    .line 441
    :cond_0
    aget-object v7, p1, v9

    instance-of v7, v7, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v7, :cond_2

    .line 442
    aget-object v4, p1, v9

    .end local v4    # "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v4, Lorg/appcelerator/titanium/io/TiStream;

    .line 448
    .restart local v4    # "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    aget-object v7, p1, v10

    instance-of v7, v7, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_3

    .line 449
    aget-object v3, p1, v10

    .end local v3    # "handler":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v3, Lorg/appcelerator/kroll/KrollFunction;

    .line 455
    .restart local v3    # "handler":Lorg/appcelerator/kroll/KrollFunction;
    aget-object v7, p1, v11

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_4

    .line 456
    aget-object v7, p1, v11

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 462
    array-length v7, p1

    if-ne v7, v12, :cond_1

    .line 463
    aget-object v7, p1, v8

    instance-of v7, v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    .line 464
    aget-object v7, p1, v8

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 475
    :cond_1
    if-eqz v5, :cond_7

    .line 477
    move-object v1, v4

    .line 478
    .local v1, "finputStream":Lorg/appcelerator/titanium/io/TiStream;
    move-object v0, v3

    .line 479
    .local v0, "fHandler":Lorg/appcelerator/kroll/KrollFunction;
    move v2, v6

    .line 481
    .local v2, "fmaxChunkSize":I
    new-instance v7, Lti/modules/titanium/stream/StreamModule$6;

    new-instance v8, Lti/modules/titanium/stream/StreamModule$5;

    invoke-direct {v8, p0, v1, v0, v2}, Lti/modules/titanium/stream/StreamModule$5;-><init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V

    invoke-direct {v7, p0, v8}, Lti/modules/titanium/stream/StreamModule$6;-><init>(Lti/modules/titanium/stream/StreamModule;Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lti/modules/titanium/stream/StreamModule$6;->start()V

    .line 494
    .end local v0    # "fHandler":Lorg/appcelerator/kroll/KrollFunction;
    .end local v1    # "finputStream":Lorg/appcelerator/titanium/io/TiStream;
    .end local v2    # "fmaxChunkSize":I
    :goto_0
    return-void

    .line 445
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid stream argument"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 452
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid handler argument"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 459
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid max chunk size argument"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 467
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid async flag argument"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 472
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid number of arguments"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 492
    :cond_7
    invoke-direct {p0, v4, v3, v6}, Lti/modules/titanium/stream/StreamModule;->pump(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;I)V

    goto :goto_0
.end method

.method public read([Ljava/lang/Object;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v11, 0x0

    .line 66
    .local v11, "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v7, 0x0

    .line 67
    .local v7, "buffer":Lti/modules/titanium/BufferProxy;
    const/4 v9, 0x0

    .line 68
    .local v9, "offset":I
    const/4 v8, 0x0

    .line 69
    .local v8, "length":I
    const/4 v10, 0x0

    .line 71
    .local v10, "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 72
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x0

    aget-object v11, p1, v0

    .end local v11    # "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v11, Lorg/appcelerator/titanium/io/TiStream;

    .line 79
    .restart local v11    # "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v0, 0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lti/modules/titanium/BufferProxy;

    if-eqz v0, :cond_3

    .line 80
    const/4 v0, 0x1

    aget-object v7, p1, v0

    .end local v7    # "buffer":Lti/modules/titanium/BufferProxy;
    check-cast v7, Lti/modules/titanium/BufferProxy;

    .line 81
    .restart local v7    # "buffer":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v7}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v8

    .line 87
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 88
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x2

    aget-object v10, p1, v0

    .end local v10    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .line 122
    .restart local v10    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    :goto_0
    move-object v2, v11

    .line 123
    .local v2, "fsourceStream":Lorg/appcelerator/titanium/io/TiStream;
    move-object v3, v7

    .line 124
    .local v3, "fbuffer":Lti/modules/titanium/BufferProxy;
    move v4, v9

    .line 125
    .local v4, "foffset":I
    move v5, v8

    .line 126
    .local v5, "flength":I
    move-object v6, v10

    .line 128
    .local v6, "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lti/modules/titanium/stream/StreamModule$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/stream/StreamModule$1;-><init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IILorg/appcelerator/kroll/KrollFunction;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 148
    return-void

    .line 76
    .end local v2    # "fsourceStream":Lorg/appcelerator/titanium/io/TiStream;
    .end local v3    # "fbuffer":Lti/modules/titanium/BufferProxy;
    .end local v4    # "foffset":I
    .end local v5    # "flength":I
    .end local v6    # "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid buffer argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid callback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 96
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 103
    const/4 v0, 0x3

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 104
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 110
    const/4 v0, 0x4

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_8

    .line 111
    const/4 v0, 0x4

    aget-object v10, p1, v0

    .end local v10    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .restart local v10    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offset argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid length argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid callback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 155
    const/4 v7, 0x0

    .line 156
    .local v7, "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v1, 0x0

    .line 157
    .local v1, "bufferArg":Lti/modules/titanium/BufferProxy;
    const/4 v6, 0x0

    .line 159
    .local v6, "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    array-length v8, p1

    if-eq v8, v9, :cond_0

    array-length v8, p1

    if-ne v8, v12, :cond_5

    .line 160
    :cond_0
    aget-object v8, p1, v10

    instance-of v8, v8, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v8, :cond_2

    .line 161
    aget-object v7, p1, v10

    .end local v7    # "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v7, Lorg/appcelerator/titanium/io/TiStream;

    .line 167
    .restart local v7    # "sourceStream":Lorg/appcelerator/titanium/io/TiStream;
    array-length v8, p1

    if-ne v8, v12, :cond_1

    .line 168
    aget-object v8, p1, v9

    instance-of v8, v8, Lti/modules/titanium/BufferProxy;

    if-eqz v8, :cond_3

    .line 169
    aget-object v1, p1, v9

    .end local v1    # "bufferArg":Lti/modules/titanium/BufferProxy;
    check-cast v1, Lti/modules/titanium/BufferProxy;

    .line 175
    .restart local v1    # "bufferArg":Lti/modules/titanium/BufferProxy;
    aget-object v8, p1, v11

    instance-of v8, v8, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v8, :cond_4

    .line 176
    aget-object v6, p1, v11

    .end local v6    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v6, Lorg/appcelerator/kroll/KrollFunction;

    .line 187
    .restart local v6    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    array-length v8, p1

    if-ne v8, v9, :cond_6

    .line 188
    new-instance v0, Lti/modules/titanium/BufferProxy;

    const/16 v8, 0x400

    invoke-direct {v0, v8}, Lti/modules/titanium/BufferProxy;-><init>(I)V

    .line 189
    .local v0, "buffer":Lti/modules/titanium/BufferProxy;
    const/4 v5, 0x0

    .line 191
    .local v5, "offset":I
    invoke-direct {p0, v7, v0, v5}, Lti/modules/titanium/stream/StreamModule;->readAll(Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;I)V

    .line 223
    .end local v0    # "buffer":Lti/modules/titanium/BufferProxy;
    .end local v5    # "offset":I
    :goto_0
    return-object v0

    .line 164
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid stream argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid buffer argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 179
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid callback argument"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid number of arguments"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 196
    :cond_6
    move-object v4, v7

    .line 197
    .local v4, "fsourceStream":Lorg/appcelerator/titanium/io/TiStream;
    move-object v3, v1

    .line 198
    .local v3, "fbuffer":Lti/modules/titanium/BufferProxy;
    move-object v2, v6

    .line 200
    .local v2, "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lti/modules/titanium/stream/StreamModule$2;

    invoke-direct {v9, p0, v3, v4, v2}, Lti/modules/titanium/stream/StreamModule$2;-><init>(Lti/modules/titanium/stream/StreamModule;Lti/modules/titanium/BufferProxy;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 223
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write([Ljava/lang/Object;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 250
    const/4 v10, 0x0

    .line 251
    .local v10, "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v7, 0x0

    .line 252
    .local v7, "buffer":Lti/modules/titanium/BufferProxy;
    const/4 v9, 0x0

    .line 253
    .local v9, "offset":I
    const/4 v8, 0x0

    .line 254
    .local v8, "length":I
    const/4 v11, 0x0

    .line 256
    .local v11, "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 257
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v0, :cond_2

    .line 258
    const/4 v0, 0x0

    aget-object v10, p1, v0

    .end local v10    # "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v10, Lorg/appcelerator/titanium/io/TiStream;

    .line 264
    .restart local v10    # "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v0, 0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lti/modules/titanium/BufferProxy;

    if-eqz v0, :cond_3

    .line 265
    const/4 v0, 0x1

    aget-object v7, p1, v0

    .end local v7    # "buffer":Lti/modules/titanium/BufferProxy;
    check-cast v7, Lti/modules/titanium/BufferProxy;

    .line 266
    .restart local v7    # "buffer":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v7}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v8

    .line 272
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 273
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_4

    .line 274
    const/4 v0, 0x2

    aget-object v11, p1, v0

    .end local v11    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v11, Lorg/appcelerator/kroll/KrollFunction;

    .line 307
    .restart local v11    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    :goto_0
    move-object v2, v10

    .line 308
    .local v2, "foutputStream":Lorg/appcelerator/titanium/io/TiStream;
    move-object v3, v7

    .line 309
    .local v3, "fbuffer":Lti/modules/titanium/BufferProxy;
    move v4, v9

    .line 310
    .local v4, "foffset":I
    move v5, v8

    .line 311
    .local v5, "flength":I
    move-object v6, v11

    .line 313
    .local v6, "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lti/modules/titanium/stream/StreamModule$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/stream/StreamModule$3;-><init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lti/modules/titanium/BufferProxy;IILorg/appcelerator/kroll/KrollFunction;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 332
    return-void

    .line 261
    .end local v2    # "foutputStream":Lorg/appcelerator/titanium/io/TiStream;
    .end local v3    # "fbuffer":Lti/modules/titanium/BufferProxy;
    .end local v4    # "foffset":I
    .end local v5    # "flength":I
    .end local v6    # "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid buffer argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid callback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_5
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 281
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 282
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 288
    const/4 v0, 0x3

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 289
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 295
    const/4 v0, 0x4

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_8

    .line 296
    const/4 v0, 0x4

    aget-object v11, p1, v0

    .end local v11    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v11, Lorg/appcelerator/kroll/KrollFunction;

    .restart local v11    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 285
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offset argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid length argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid callback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStream([Ljava/lang/Object;)I
    .locals 14
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x3

    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v8, 0x0

    .line 341
    .local v8, "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    const/4 v7, 0x0

    .line 342
    .local v7, "maxChunkSize":I
    const/4 v9, 0x0

    .line 344
    .local v9, "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    array-length v0, p1

    if-eq v0, v1, :cond_0

    array-length v0, p1

    if-ne v0, v13, :cond_6

    .line 345
    :cond_0
    aget-object v0, p1, v10

    instance-of v0, v0, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v0, :cond_2

    .line 346
    aget-object v6, p1, v10

    .end local v6    # "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v6, Lorg/appcelerator/titanium/io/TiStream;

    .line 352
    .restart local v6    # "inputStream":Lorg/appcelerator/titanium/io/TiStream;
    aget-object v0, p1, v11

    instance-of v0, v0, Lorg/appcelerator/titanium/io/TiStream;

    if-eqz v0, :cond_3

    .line 353
    aget-object v8, p1, v11

    .end local v8    # "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    check-cast v8, Lorg/appcelerator/titanium/io/TiStream;

    .line 359
    .restart local v8    # "outputStream":Lorg/appcelerator/titanium/io/TiStream;
    aget-object v0, p1, v12

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 360
    aget-object v0, p1, v12

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 366
    array-length v0, p1

    if-ne v0, v13, :cond_1

    .line 367
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_5

    .line 368
    aget-object v9, p1, v1

    .end local v9    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v9, Lorg/appcelerator/kroll/KrollFunction;

    .line 379
    .restart local v9    # "resultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    array-length v0, p1

    if-ne v0, v1, :cond_7

    .line 380
    invoke-direct {p0, v6, v8, v7}, Lti/modules/titanium/stream/StreamModule;->writeStream(Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;I)I

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input stream argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output stream argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid max chunk size argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid callback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_7
    move-object v2, v6

    .line 384
    .local v2, "finputStream":Lorg/appcelerator/titanium/io/TiStream;
    move-object v3, v8

    .line 385
    .local v3, "foutputStream":Lorg/appcelerator/titanium/io/TiStream;
    move v4, v7

    .line 386
    .local v4, "fmaxChunkSize":I
    move-object v5, v9

    .line 388
    .local v5, "fResultsCallback":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lti/modules/titanium/stream/StreamModule$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/stream/StreamModule$4;-><init>(Lti/modules/titanium/stream/StreamModule;Lorg/appcelerator/titanium/io/TiStream;Lorg/appcelerator/titanium/io/TiStream;ILorg/appcelerator/kroll/KrollFunction;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move v0, v10

    .line 407
    goto :goto_0
.end method
