.class Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public client:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/network/TiHTTPClient;",
            ">;"
        }
    .end annotation
.end field

.field public entity:Lorg/apache/http/HttpEntity;

.field public is:Ljava/io/InputStream;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 1
    .param p2, "client"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 193
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    .line 195
    return-void
.end method

.method private createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;
    .locals 8
    .param p1, "dumpResponseOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 293
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v2

    .line 295
    .local v2, "helper":Lorg/appcelerator/kroll/util/TiTempFileHelper;
    const-string v5, "tihttp"

    const-string v6, "tmp"

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 300
    .end local v2    # "helper":Lorg/appcelerator/kroll/util/TiTempFileHelper;
    .local v3, "outFile":Ljava/io/File;
    :goto_0
    new-instance v4, Lorg/appcelerator/titanium/io/TiFile;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 301
    .local v4, "tiFile":Lorg/appcelerator/titanium/io/TiFile;
    if-eqz p1, :cond_0

    .line 302
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 303
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 306
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v5, v6}, Lti/modules/titanium/network/TiHTTPClient;->access$702(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 307
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v6}, Lti/modules/titanium/network/TiHTTPClient;->access$400(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    invoke-static {v5, v6}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 308
    return-object v4

    .line 297
    .end local v3    # "outFile":Ljava/io/File;
    .end local v4    # "tiFile":Lorg/appcelerator/titanium/io/TiFile;
    :cond_1
    const-string v5, "tihttp"

    const-string v6, "tmp"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .restart local v3    # "outFile":Ljava/io/File;
    goto :goto_0
.end method

.method private finishedReceivingEntityData(J)V
    .locals 4
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 350
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$400(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 352
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 353
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$702(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 354
    return-void
.end method

.method private handleEntityData([BIJJ)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "totalSize"    # J
    .param p5, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    if-nez v8, :cond_0

    .line 314
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v8

    cmp-long v8, p5, v8

    if-lez v8, :cond_3

    .line 315
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 321
    :cond_0
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v8

    cmp-long v8, p3, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    instance-of v8, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v8, :cond_1

    .line 324
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 327
    :cond_1
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 328
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v9, "ondatastream"

    invoke-virtual {v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->getCallback(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v5

    .line 329
    .local v5, "onDataStreamCallback":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v5, :cond_2

    .line 330
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 331
    .local v4, "o":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "totalCount"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v8, "totalSize"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v8, "size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-array v3, p2, [B

    .line 336
    .local v3, "blobData":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v3, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$400(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .line 339
    .local v2, "blob":Lorg/appcelerator/titanium/TiBlob;
    const-string v8, "blob"

    invoke-virtual {v4, v8, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v8, "progress"

    move-wide/from16 v0, p3

    long-to-double v9, v0

    move-wide/from16 v0, p5

    long-to-double v11, v0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$900(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 344
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v3    # "blobData":[B
    .end local v4    # "o":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    return-void

    .line 317
    .end local v5    # "onDataStreamCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-lez v8, :cond_4

    move-wide/from16 v6, p5

    .line 318
    .local v6, "streamSize":J
    :goto_1
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    long-to-int v10, v6

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->access$702(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    goto/16 :goto_0

    .line 317
    .end local v6    # "streamSize":J
    :cond_4
    const-wide/16 v6, 0x200

    goto :goto_1
.end method

.method private setResponseText(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$1002(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 14
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v12, 0x1

    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 200
    const/4 v8, 0x0

    .line 201
    .local v8, "clientResponse":Ljava/lang/String;
    const/4 v9, 0x0

    .line 203
    .local v9, "contentEncoding":Lorg/apache/http/Header;
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/network/TiHTTPClient;

    .line 205
    .local v7, "c":Lti/modules/titanium/network/TiHTTPClient;
    if-eqz v7, :cond_0

    .line 206
    invoke-static {v7, p1}, Lti/modules/titanium/network/TiHTTPClient;->access$202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 207
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 208
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatus(I)V

    .line 209
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatusText(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 213
    :cond_0
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity Content Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity isChunked: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity isStreaming: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 224
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 225
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v12, 0x12c

    if-lt v0, v12, :cond_2

    .line 226
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->setResponseText(Lorg/apache/http/HttpEntity;)V

    .line 227
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    .line 231
    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 232
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :cond_3
    if-eqz v9, :cond_7

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v12, "gzip"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    .line 241
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    :goto_2
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 248
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 250
    .local v5, "contentLength":J
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4
    const/4 v2, 0x0

    .line 254
    .local v2, "count":I
    const-wide/16 v3, 0x0

    .line 255
    .local v3, "totalSize":J
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 256
    .local v1, "buf":[B
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Available: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_5
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    :cond_6
    :goto_3
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_9

    .line 264
    int-to-long v12, v2

    add-long/2addr v3, v12

    move-object v0, p0

    .line 266
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleEntityData([BIJJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 267
    :catch_0
    move-exception v10

    .line 268
    .local v10, "e":Ljava/io/IOException;
    const-string v0, "TiHttpClient"

    const-string v12, "Error handling entity data"

    invoke-static {v0, v12, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 239
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    .end local v3    # "totalSize":J
    .end local v5    # "contentLength":J
    .end local v10    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 243
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 274
    .restart local v1    # "buf":[B
    .restart local v2    # "count":I
    .restart local v3    # "totalSize":J
    .restart local v5    # "contentLength":J
    :cond_9
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_a

    .line 276
    :try_start_2
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    :cond_a
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-lez v0, :cond_b

    .line 282
    invoke-direct {p0, v3, v4}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->finishedReceivingEntityData(J)V

    .line 286
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    .end local v3    # "totalSize":J
    .end local v5    # "contentLength":J
    .end local v7    # "c":Lti/modules/titanium/network/TiHTTPClient;
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_b
    return-object v8

    .line 277
    .restart local v1    # "buf":[B
    .restart local v2    # "count":I
    .restart local v3    # "totalSize":J
    .restart local v5    # "contentLength":J
    .restart local v7    # "c":Lti/modules/titanium/network/TiHTTPClient;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v10

    .line 278
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 219
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    .end local v3    # "totalSize":J
    .end local v5    # "contentLength":J
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
