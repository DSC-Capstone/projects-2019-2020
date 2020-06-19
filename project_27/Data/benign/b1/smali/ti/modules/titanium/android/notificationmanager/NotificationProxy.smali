.class public Lti/modules/titanium/android/notificationmanager/NotificationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NotificationProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiNotification"


# instance fields
.field protected notification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 42
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108008a

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    .line 44
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 49
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method protected checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 228
    const-string v5, "contentTitle"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "contentText"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 231
    :cond_0
    const-string v3, ""

    .line 232
    .local v3, "contentTitle":Ljava/lang/String;
    const-string v2, ""

    .line 233
    .local v2, "contentText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 234
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const-string v5, "contentTitle"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    const-string v5, "contentTitle"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    :cond_1
    const-string v5, "contentText"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const-string v5, "contentText"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_2
    const-string v5, "contentIntent"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 241
    const-string v5, "contentIntent"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/android/PendingIntentProxy;

    .line 242
    .local v4, "intentProxy":Lti/modules/titanium/android/PendingIntentProxy;
    invoke-virtual {v4}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 244
    .end local v4    # "intentProxy":Lti/modules/titanium/android/PendingIntentProxy;
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_4

    .line 246
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "contentText":Ljava/lang/String;
    .end local v3    # "contentTitle":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setIcon(Ljava/lang/Object;)V

    .line 62
    :cond_1
    const-string v0, "tickerText"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "tickerText"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setTickerText(Ljava/lang/String;)V

    .line 65
    :cond_2
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setWhen(Ljava/lang/Object;)V

    .line 68
    :cond_3
    const-string v0, "audioStreamType"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const-string v0, "audioStreamType"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setAudioStreamType(I)V

    .line 71
    :cond_4
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V

    .line 74
    :cond_5
    const-string v0, "contentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    const-string v0, "contentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 77
    :cond_6
    const-string v0, "defaults"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    const-string v0, "defaults"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDefaults(I)V

    .line 80
    :cond_7
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 83
    :cond_8
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    const-string v0, "flags"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setFlags(I)V

    .line 86
    :cond_9
    const-string v0, "iconLevel"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    const-string v0, "iconLevel"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setIconLevel(I)V

    .line 89
    :cond_a
    const-string v0, "ledARGB"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    const-string v0, "ledARGB"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedARGB(I)V

    .line 92
    :cond_b
    const-string v0, "ledOffMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 93
    const-string v0, "ledOffMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOffMS(I)V

    .line 95
    :cond_c
    const-string v0, "ledOnMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    const-string v0, "ledOnMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOnMS(I)V

    .line 98
    :cond_d
    const-string v0, "number"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    const-string v0, "number"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setNumber(I)V

    .line 101
    :cond_e
    const-string v0, "sound"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    const-string v0, "sound"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setSound(Ljava/lang/String;)V

    .line 104
    :cond_f
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setVibratePattern([Ljava/lang/Object;)V

    .line 107
    :cond_10
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 146
    return-void
.end method

.method public setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "contentIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 158
    return-void
.end method

.method public setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V
    .locals 2
    .param p1, "contentView"    # Lti/modules/titanium/android/RemoteViewsProxy;

    .prologue
    .line 151
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/RemoteViewsProxy;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 152
    return-void
.end method

.method public setDefaults(I)V
    .locals 1
    .param p1, "defaults"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 164
    return-void
.end method

.method public setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "deleteIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 170
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 176
    return-void
.end method

.method public setIcon(Ljava/lang/Object;)V
    .locals 5
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 113
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "icon":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local p1    # "icon":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "iconUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "iconFullUrl":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 120
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-nez v2, :cond_0

    .line 121
    const-string v2, "TiNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No image found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIconLevel(I)V
    .locals 1
    .param p1, "iconLevel"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->iconLevel:I

    .line 182
    return-void
.end method

.method public setLatestEventInfo(Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 3
    .param p1, "contentTitle"    # Ljava/lang/String;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 255
    invoke-virtual {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 257
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-virtual {p3}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 260
    return-void
.end method

.method public setLedARGB(I)V
    .locals 1
    .param p1, "ledARGB"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 188
    return-void
.end method

.method public setLedOffMS(I)V
    .locals 1
    .param p1, "ledOffMS"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 194
    return-void
.end method

.method public setLedOnMS(I)V
    .locals 1
    .param p1, "ledOnMS"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 200
    return-void
.end method

.method public setNumber(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 206
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 213
    return-void
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setVibratePattern([Ljava/lang/Object;)V
    .locals 4
    .param p1, "pattern"    # [Ljava/lang/Object;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    array-length v2, p1

    new-array v2, v2, [J

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->vibrate:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setWhen(Ljava/lang/Object;)V
    .locals 3
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    .line 135
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    check-cast p1, Ljava/util/Date;

    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 140
    :goto_0
    return-void

    .line 138
    .restart local p1    # "when":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notification:Landroid/app/Notification;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    goto :goto_0
.end method
