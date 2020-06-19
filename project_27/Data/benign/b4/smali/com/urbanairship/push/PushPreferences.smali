.class public Lcom/urbanairship/push/PushPreferences;
.super Lcom/urbanairship/Preferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/PushPreferences$QuietTime;
    }
.end annotation


# static fields
.field private static final ALIAS_KEY:Ljava/lang/String; = "com.urbanairship.push.ALIAS"

.field private static final APID_KEY:Ljava/lang/String; = "com.urbanairship.push.APID"

.field private static final APID_READY_KEY:Ljava/lang/String; = "com.urbanairship.push.APID_READY"

.field private static final APID_UPDATE_NEEDED_KEY:Ljava/lang/String; = "com.urbanairship.push.APID_UPDATE_NEEDED"

.field private static final APP_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.push.APP_VERSION"

.field private static final BOX_OFFICE_SECRET_KEY:Ljava/lang/String; = "com.urbanairship.push.BOX_OFFICE_SECRET"

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.DEVICE_ID"

.field private static final GCM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push"

.field private static final LAST_APID_REGISTRATION_TIME_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_APID_REGISTRATION_TIME"

.field private static final PUSH_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED"

.field private static final RETRY_AFTER_KEY:Ljava/lang/String; = "com.urbanairship.push.RETRY_AFTER"

.field private static final SOUND_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.SOUND_ENABLED"

.field private static final TAGS_KEY:Ljava/lang/String; = "com.urbanairship.push.TAGS"

.field private static final VIBRATE_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.VIBRATE_ENABLED"

.field private static final WIFI_WAKE_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.WIFI_WAKE_ENABLED"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/Preferences;-><init>(Landroid/content/Context;)V

    const-string v0, "com.urbanairship.push"

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushPreferences;->migratePreferencesFromFileToDb(Ljava/lang/String;)V

    return-void
.end method

.method private sendPrefsChangedEvent()V
    .locals 2

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;

    invoke-direct {v1}, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.ALIAS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 2

    const-string v0, "com.urbanairship.push.APP_VERSION"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.DEVICE_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGcmId()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastApidRegistrationTime()J
    .locals 4

    const-string v0, "com.urbanairship.push.LAST_APID_REGISTRATION_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/urbanairship/push/PushPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.APID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushSecret()Ljava/lang/String;
    .locals 2

    const-string v0, "com.urbanairship.push.BOX_OFFICE_SECRET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuietTimeInterval()[Ljava/util/Date;
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v0, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v1, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v2, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v3, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->set(II)V

    if-ge v2, v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v6}, Ljava/util/Calendar;->add(II)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Date;

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    goto :goto_0
.end method

.method public getRetryAfter()J
    .locals 4

    const-string v0, "com.urbanairship.push.RETRY_AFTER"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/urbanairship/push/PushPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.urbanairship.push.TAGS"

    const-string v2, "[]"

    invoke-virtual {p0, v0, v2}, Lcom/urbanairship/push/PushPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method

.method isAPIDReady()Z
    .locals 2

    const-string v0, "com.urbanairship.push.APID_READY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isApidUpdateNeeded()Z
    .locals 2

    const-string v0, "com.urbanairship.push.APID_UPDATE_NEEDED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInQuietTime()Z
    .locals 11

    const/16 v10, 0xb

    const/4 v9, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v3, v8}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v4, v8}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v5, v8}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v6, v8}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v8, v3, :cond_0

    if-eq v8, v4, :cond_0

    if-eq v8, v5, :cond_0

    if-eq v8, v6, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v7, v3, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v10, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->add(II)V

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v9, v0}, Ljava/util/Calendar;->add(II)V

    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public isPushEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQuietTimeEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.push.QuietTime.ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVibrateEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWifiWakeEnabled()Z
    .locals 2

    const-string v0, "com.urbanairship.push.WIFI_WAKE_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setAPIDReady(Z)V
    .locals 2

    const-string v0, "com.urbanairship.push.APID_READY"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.ALIAS"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setApidUpdateNeeded(Z)V
    .locals 2

    const-string v0, "com.urbanairship.push.APID_UPDATE_NEEDED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 2

    const-string v0, "com.urbanairship.push.APP_VERSION"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGcmId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setLastApidRegistrationTime(J)V
    .locals 3

    const-string v0, "com.urbanairship.push.LAST_APID_REGISTRATION_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setPushEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.PUSH_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->sendPrefsChangedEvent()V

    :cond_0
    return-void
.end method

.method public setPushId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.APID"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "PushPreferences - attempted to save malformed APID."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPushSecret(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.BOX_OFFICE_SECRET"

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "PushPreferences - attempted to save malformed secret."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuietTimeEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.QuietTime.ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->sendPrefsChangedEvent()V

    :cond_0
    return-void
.end method

.method public setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v4, -0x1

    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {p0, v0, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {p0, v1, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {p0, v2, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {p0, v3, v4}, Lcom/urbanairship/push/PushPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v0, v5, :cond_0

    if-ne v1, v4, :cond_0

    if-ne v2, v7, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    const-string v0, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->sendPrefsChangedEvent()V

    :cond_1
    return-void
.end method

.method public setRetryAfter(J)V
    .locals 3

    const-string v0, "com.urbanairship.push.RETRY_AFTER"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isSoundEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.SOUND_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->sendPrefsChangedEvent()V

    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.urbanairship.push.TAGS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isVibrateEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "com.urbanairship.push.VIBRATE_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->sendPrefsChangedEvent()V

    :cond_0
    return-void
.end method

.method public setWifiWakeEnabled(Z)V
    .locals 2

    const-string v0, "com.urbanairship.push.WIFI_WAKE_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/PushPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
