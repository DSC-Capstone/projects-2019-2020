.class Lcom/urbanairship/analytics/AnalyticsPreferences;
.super Lcom/urbanairship/Preferences;


# static fields
.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.analytics"

.field private static final LAST_SEND_KEY:Ljava/lang/String; = "com.urbanairship.analytics.LAST_SEND"

.field static final MAX_BATCH_SIZE:I = 0x7d000

.field private static final MAX_BATCH_SIZE_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_BATCH_SIZE"

.field static final MAX_TOTAL_DB_SIZE:I = 0x4e2000

.field private static final MAX_TOTAL_DB_SIZE_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

.field private static final MAX_WAIT_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MAX_WAIT"

.field static final MAX_WAIT_MS:I = 0x240c8400

.field private static final MIN_BATCH_INTERVAL_KEY:Ljava/lang/String; = "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

.field static final MIN_BATCH_INTERVAL_MS:I = 0xea60


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.analytics"

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->migratePreferencesFromFileToDb(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getLastSendTime()J
    .locals 4

    const-string v0, "com.urbanairship.analytics.LAST_SEND"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxBatchSize()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    const v1, 0x7d000

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMaxTotalDbSize()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    const v1, 0x4e2000

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMaxWait()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_WAIT"

    const v1, 0x240c8400

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMinBatchInterval()I
    .locals 2

    const-string v0, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method setLastSendTime(J)V
    .locals 3

    const-string v0, "com.urbanairship.analytics.LAST_SEND"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setMaxBatchSize(I)V
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_BATCH_SIZE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setMaxTotalDbSize(I)V
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setMaxWait(I)V
    .locals 2

    const-string v0, "com.urbanairship.analytics.MAX_WAIT"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setMinBatchInterval(I)V
    .locals 2

    const-string v0, "com.urbanairship.analytics.MIN_BATCH_INTERVAL"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
