.class public Lcom/urbanairship/push/CustomPushNotificationBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/push/PushNotificationBuilder;


# instance fields
.field public constantNotificationId:I

.field public layout:I

.field public layoutIconDrawableId:I

.field public layoutIconId:I

.field public layoutMessageId:I

.field public layoutSubjectId:I

.field public soundUri:Landroid/net/Uri;

.field public statusBarIconDrawableId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconDrawableId:I

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->statusBarIconDrawableId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->constantNotificationId:I

    return-void
.end method


# virtual methods
.method public buildNotification(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->statusBarIconDrawableId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layout:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconId:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutSubjectId:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutMessageId:I

    if-nez v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The CustomPushNotificationBuilder object contains an invalid identifier (value of 0). layoutIconId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutSubjectId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutSubjectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " layoutMessageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to build notification. NotificationBuilder missing required parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutSubjectId:I

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutMessageId:I

    invoke-virtual {v2, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconId:I

    iget v3, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconDrawableId:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isInQuietTime()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isVibrateEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :cond_5
    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isSoundEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->soundUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->soundUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    goto/16 :goto_0
.end method

.method public getNextId(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->constantNotificationId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/urbanairship/push/CustomPushNotificationBuilder;->constantNotificationId:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    goto :goto_0
.end method
