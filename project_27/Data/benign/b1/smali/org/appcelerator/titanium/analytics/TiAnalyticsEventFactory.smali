.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;
.super Ljava/lang/Object;
.source "TiAnalyticsEventFactory.java"


# static fields
.field public static final EVENT_APP_END:Ljava/lang/String; = "ti.end"

.field public static final EVENT_APP_ENROLL:Ljava/lang/String; = "ti.enroll"

.field public static final EVENT_APP_GEO:Ljava/lang/String; = "ti.geo"

.field public static final EVENT_APP_START:Ljava/lang/String; = "ti.start"

.field public static final EVENT_ERROR:Ljava/lang/String; = "ti.crash"

.field private static final LCAT:Ljava/lang/String; = "TiAnalyticsEventFactory"

.field public static final MAX_GEO_ANALYTICS_FREQUENCY:J = 0xea60L

.field protected static lastLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppEndEvent()Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    const-string v1, "ti.end"

    const-string v2, "ti.end"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAppEnrollEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 7
    .param p0, "tiApp"    # Lorg/appcelerator/titanium/TiApplication;
    .param p1, "deployType"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    new-instance v0, Lorg/appcelerator/titanium/util/TiDatabaseHelper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "db":Lorg/appcelerator/titanium/util/TiDatabaseHelper;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "mac_addr"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMacaddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v4, "app_name"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v5

    invoke-interface {v5}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v4, "oscpu"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getProcessorCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v4, "platform"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v4, "app_id"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v5

    invoke-interface {v5}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v4, "ostype"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOstype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v4, "osarch"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v4, "model"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v4, "previous_mid"

    const-string v5, "previous_machine_id"

    const-string v6, "notfound"

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v4, "deploytype"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    .end local v2    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    const-string v4, "ti.enroll"

    const-string v5, "ti.enroll"

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :goto_0
    return-object v2

    .line 78
    .end local v2    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "TiAnalyticsEventFactory"

    const-string v5, "Unable to encode start event"

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v2, 0x0

    .restart local v2    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    goto :goto_0
.end method

.method public static createAppGeoEvent(Landroid/location/Location;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 8
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    sget-object v4, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sget-object v6, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 240
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v3, "wrapper":Lorg/json/JSONObject;
    const-string v4, "to"

    invoke-static {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object v4, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    if-eqz v4, :cond_2

    .line 244
    const-string v4, "from"

    sget-object v5, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->lastLocation:Landroid/location/Location;

    invoke-static {v5}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    const-string v4, "ti.geo"

    const-string v5, "ti.geo"

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .local v2, "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :try_start_1
    sput-object p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->lastLocation:Landroid/location/Location;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 255
    .end local v2    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .end local v3    # "wrapper":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :cond_1
    :goto_1
    return-object v1

    .line 246
    .restart local v3    # "wrapper":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string v4, "from"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 251
    .end local v3    # "wrapper":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v4, "TiAnalyticsEventFactory"

    const-string v5, "Error building ti.geo event"

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 251
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .restart local v2    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .restart local v3    # "wrapper":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .restart local v1    # "result":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    goto :goto_2
.end method

.method public static createAppStartEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 6
    .param p0, "application"    # Lorg/appcelerator/titanium/TiApplication;
    .param p1, "deployType"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 116
    .local v1, "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "tz"

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v3, "deploytype"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v3, "platform"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v3, "os"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v3, "osver"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v3, "version"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v3, "un"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v3, "model"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v3, "app_version"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v3, "nettype"

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    .end local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    const-string v3, "ti.start"

    const-string v4, "ti.start"

    invoke-direct {v1, v3, v4, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :goto_0
    return-object v1

    .line 129
    .end local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "TiAnalyticsEventFactory"

    const-string v4, "Unable to encode start event"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v1, 0x0

    .restart local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    goto :goto_0
.end method

.method public static createErrorEvent(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 8
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "tiVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "thread_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error_msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ti_version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<<<<<<<<<<<<<<< STACK TRACE >>>>>>>>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 184
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .line 186
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 187
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    .end local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    const-string v5, "ti.crash"

    const-string v6, "ti.crash"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .restart local v1    # "event":Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    const/4 v4, 0x0

    .line 194
    return-object v1
.end method

.method public static createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "o":Lorg/json/JSONObject;
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    invoke-direct {v2, p0, p1, v1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "o":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "TiAnalyticsEventFactory"

    const-string v3, "data object was not JSON, sending as string"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    invoke-direct {v2, p0, p1, p2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "loc"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "latitude"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 263
    const-string v1, "longitude"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 264
    const-string v1, "altitude"

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 265
    const-string v1, "accuracy"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 266
    const-string v1, "altitudeAccuracy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "heading"

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 268
    const-string v1, "speed"

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 269
    const-string v1, "timestamp"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 271
    return-object v0
.end method
