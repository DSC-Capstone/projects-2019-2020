.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
.super Ljava/lang/Object;
.source "TiAnalyticsEvent.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TitaniumAnalyticsEvent"

.field private static isoDateFormatter:Ljava/text/SimpleDateFormat;

.field private static utc:Ljava/util/TimeZone;


# instance fields
.field private eventAppGuid:Ljava/lang/String;

.field private eventEvent:Ljava/lang/String;

.field private eventMid:Ljava/lang/String;

.field private eventPayload:Ljava/lang/String;

.field private eventSid:Ljava/lang/String;

.field private eventTimestamp:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private expandPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    .line 42
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventEvent"    # Ljava/lang/String;
    .param p3, "eventPayload"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v1, "o":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "o":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "TitaniumAnalyticsEvent"

    const-string v3, "Error packaging string."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, p2, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventEvent"    # Ljava/lang/String;
    .param p3, "eventPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    return-void
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventEvent"    # Ljava/lang/String;
    .param p3, "eventPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    .line 73
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    .line 74
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    .line 75
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    .line 76
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    .line 77
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getEventAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public mustExpandPayload()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    return v0
.end method
