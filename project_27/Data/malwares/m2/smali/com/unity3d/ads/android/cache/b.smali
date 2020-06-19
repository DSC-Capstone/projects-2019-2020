.class final Lcom/unity3d/ads/android/cache/b;
.super Landroid/os/AsyncTask;
.source "UnityAdsDownloader.java"


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field private d:I

.field private e:Ljava/net/URLConnection;

.field private f:Z

.field private g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 184
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    .line 185
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->b:Ljava/io/InputStream;

    .line 186
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    .line 187
    iput v1, p0, Lcom/unity3d/ads/android/cache/b;->d:I

    .line 188
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    .line 189
    iput-boolean v1, p0, Lcom/unity3d/ads/android/cache/b;->f:Z

    .line 190
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 193
    iput-object p1, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 194
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 202
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    .line 212
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 213
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 214
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/android/cache/b;->d:I

    .line 224
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/unity3d/ads/android/cache/b;->e:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->b:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    .line 231
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/unity3d/ads/android/cache/b;->onCancelled()V

    .line 234
    :cond_0
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 235
    const-wide/16 v0, 0x0

    .line 239
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/unity3d/ads/android/cache/b;->b:Ljava/io/InputStream;

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 240
    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 241
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    iget v10, p0, Lcom/unity3d/ads/android/cache/b;->d:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/cache/b;->publishProgress([Ljava/lang/Object;)V

    .line 242
    iget-object v6, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    iget-boolean v5, p0, Lcom/unity3d/ads/android/cache/b;->f:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v5, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 266
    :goto_2
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/unity3d/ads/android/cache/b;->onCancelled()V

    .line 207
    const/4 v0, 0x0

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Problems opening connection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :catch_2
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Problems opening stream: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 249
    :catch_3
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems downloading file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/b;->b()V

    .line 252
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a()V

    .line 253
    const/4 v0, 0x0

    goto :goto_2

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/b;->a()V

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " downloaded in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 260
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 262
    div-long/2addr v0, v2

    sput-wide v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    .line 266
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 308
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 309
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 317
    const-string v0, "ERROR"

    .line 318
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download cancelled for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/b;->a()V

    .line 323
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 325
    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/cache/b;)V

    .line 326
    sget-object v1, Lcom/unity3d/ads/android/cache/c;->DownloadCancelled:Lcom/unity3d/ads/android/cache/c;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/cache/c;Ljava/lang/String;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/cache/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/cache/b;->f:Z

    .line 273
    invoke-direct {p0}, Lcom/unity3d/ads/android/cache/b;->b()V

    .line 274
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 183
    check-cast p1, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/unity3d/ads/android/cache/b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->g:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    invoke-static {p0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/cache/b;)V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a()V

    const-string v0, "ERROR"

    iget-object v1, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/unity3d/ads/android/cache/c;->DownloadCompleted:Lcom/unity3d/ads/android/cache/c;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsDownloader;->a(Lcom/unity3d/ads/android/cache/c;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 295
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    return-void
.end method
