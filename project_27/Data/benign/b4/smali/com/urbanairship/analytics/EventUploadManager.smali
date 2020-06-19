.class final Lcom/urbanairship/analytics/EventUploadManager;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_BATCH_SIZE:I = 0x19000

.field public static final LAST_SEND_KEY:Ljava/lang/String; = "LAST_SEND"

.field public static final MAX_BATCH_SIZE_KEY:Ljava/lang/String; = "MAX_BATCH_SIZE"

.field public static final MAX_TOTAL_DB_SIZE_KEY:Ljava/lang/String; = "MAX_TOTAL_DB_SIZE"

.field public static final MAX_UPLOAD_RETRY_INTERVAL_MS:I = 0x36ee80

.field public static final MAX_WAIT_KEY:Ljava/lang/String; = "MAX_WAIT"

.field public static final MAX_WAIT_MS:I = 0x240c8400

.field public static final MIN_BATCH_INTERVAL_KEY:Ljava/lang/String; = "MIN_BATCH_INTERVAL"

.field public static final MIN_BATCH_INTERVAL_MS:I = 0xea60


# instance fields
.field private backoffMs:J

.field private batchSize:I

.field private final dataManager:Lcom/urbanairship/analytics/EventDataManager;

.field private lastSendTime:J

.field private maxBatchSize:I

.field private maxTotalDBSize:I

.field private maxWait:I

.field private minBatchInterval:I

.field private final prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

.field private useGzip:Z


# direct methods
.method public constructor <init>(Lcom/urbanairship/analytics/EventDataManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-direct {p0}, Lcom/urbanairship/analytics/EventUploadManager;->loadPrefs()V

    const v0, 0x19000

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->batchSize:I

    iput-object p1, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->useGzip:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    return-void
.end method

.method private loadPrefs()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxTotalDbSize()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxBatchSize()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxWait()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    return-void
.end method

.method private saveHeaders(Lcom/urbanairship/restclient/Response;)V
    .locals 8

    const v3, 0x240c8400

    const v0, 0x4e2000

    const v2, 0x7d000

    const v4, 0xea60

    const-string v1, "X-UA-Max-Total"

    invoke-virtual {p1, v1}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    const-string v5, "X-UA-Max-Batch"

    invoke-virtual {p1, v5}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    const-string v6, "X-UA-Max-Wait"

    invoke-virtual {p1, v6}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    const-string v7, "X-UA-Min-Batch-Interval"

    invoke-virtual {p1, v7}, Lcom/urbanairship/restclient/Response;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gtz v1, :cond_7

    :goto_0
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    :cond_0
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    :cond_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v3

    :cond_3
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    :cond_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v0, :cond_5

    move v0, v4

    :cond_5
    iput v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    :cond_6
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventUploadManager;->savePrefs()V

    return-void

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private savePrefs()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxTotalDbSize(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxBatchSize:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxBatchSize(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxWait:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxWait(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget v1, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMinBatchInterval(I)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    return-void
.end method

.method private static scheduleEventUpload(J)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, p0, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "alarm"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.urbanairship.analytics.SEND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-static {v3, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    move v0, v2

    goto :goto_0
.end method

.method private send(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "Send failed. No events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No network connectivity available. Postponing analytics event updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " events."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v0, "["

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Unable to create raw JSON payload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "]"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v4, Lcom/urbanairship/restclient/Request;

    const-string v0, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v5

    iget-object v5, v5, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "warp9/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->useGzip:Z

    if-eqz v0, :cond_7

    :try_start_2
    array-length v0, v3

    div-int/lit8 v0, v0, 0x4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GZIP\'d: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v0}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_4
    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v4}, Lcom/urbanairship/analytics/EventUploadManager;->setHeaders(Lcom/urbanairship/restclient/Request;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Analytics to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warp 9 response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventUploadManager;->saveHeaders(Lcom/urbanairship/restclient/Response;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    const-string v2, "GZIP of analytics payload failed."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method private setHeaders(Lcom/urbanairship/restclient/Request;)V
    .locals 4

    const-string v0, "X-UA-Device-Family"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-string v2, "X-UA-Sent-At"

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Package-Name"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Package-Version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/analytics/Analytics;->getHashedDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "X-UA-Device-ID"

    invoke-virtual {p1, v1, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    const-string v1, "X-UA-App-Key"

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-In-Production"

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Device-Model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-OS-Version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Lib-Version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "X-UA-Apid"

    invoke-virtual {p1, v1, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-Push-Address"

    invoke-virtual {p1, v1, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getLastSendTime()J
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTotalDBSize()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->maxTotalDBSize:I

    return v0
.end method

.method protected upload()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;->scheduleEventUpload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->prefs:Lcom/urbanairship/analytics/AnalyticsPreferences;

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getEventCount()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v0, "No events to send. Ending analytics upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    div-int/2addr v0, v1

    iget-object v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    iget v3, p0, Lcom/urbanairship/analytics/EventUploadManager;->batchSize:I

    div-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/EventDataManager;->getOldestEvents(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventUploadManager;->send(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0, v4, v5}, Lcom/urbanairship/analytics/EventDataManager;->deleteEventsOlderThan(J)Z

    iput-wide v6, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    sub-int v0, v1, v0

    if-lez v0, :cond_0

    :cond_3
    const-string v0, "Scheduling next event batch upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->lastSendTime:J

    iget v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;->scheduleEventUpload(J)Z

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget v0, p0, Lcom/urbanairship/analytics/EventUploadManager;->minBatchInterval:I

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    goto :goto_1

    :cond_5
    iget-wide v4, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/urbanairship/analytics/EventUploadManager;->backoffMs:J

    goto :goto_1
.end method
