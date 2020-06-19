.class public Lti/modules/titanium/analytics/AnalyticsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AnalyticsModule.java"


# static fields
.field protected static final PROPERTY_APP_FEATURE:Ljava/lang/String; = "app.feature"

.field protected static final PROPERTY_APP_NAV:Ljava/lang/String; = "app.nav"

.field protected static final PROPERTY_APP_SETTINGS:Ljava/lang/String; = "app.settings"

.field protected static final PROPERTY_APP_TIMED:Ljava/lang/String; = "app.timed"

.field protected static final PROPERTY_APP_USER:Ljava/lang/String; = "app.user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 38
    invoke-direct {p0}, Lti/modules/titanium/analytics/AnalyticsModule;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 45
    return-void
.end method

.method public featureEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 104
    const-string v0, "app.feature"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 105
    return-void
.end method

.method protected localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 48
    const-string v0, ""

    .line 49
    .local v0, "dataJSON":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 50
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-static {p1, p2, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 53
    return-void
.end method

.method public navEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .param p4, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 60
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 61
    .local v0, "payload":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "event"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "app.nav"

    const-string v2, "event"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    return-void
.end method

.method public settingsEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 110
    const-string v0, "app.settings"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 111
    return-void
.end method

.method public timedEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;ILorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/Object;
    .param p3, "stop"    # Ljava/lang/Object;
    .param p4, "duration"    # I
    .param p5, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 73
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 74
    .local v0, "payload":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 76
    const-string v2, "start"

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_0
    instance-of v1, p3, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 86
    const-string v1, "stop"

    check-cast p3, Ljava/lang/Number;

    .end local p3    # "stop":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local p2    # "start":Ljava/lang/Object;
    :goto_1
    const-string v1, "duration"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "data"

    invoke-virtual {v0, v1, p5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "app.timed"

    const-string v2, "event"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 99
    return-void

    .line 78
    .restart local p2    # "start":Ljava/lang/Object;
    .restart local p3    # "stop":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 80
    const-string v2, "start"

    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "start must be a long or Date."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_2
    instance-of v1, p3, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 90
    const-string v1, "stop"

    check-cast p2, Ljava/util/Date;

    .end local p2    # "start":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .restart local p2    # "start":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stop must be a long or Date."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public userEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 116
    const-string v0, "app.user"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 117
    return-void
.end method
