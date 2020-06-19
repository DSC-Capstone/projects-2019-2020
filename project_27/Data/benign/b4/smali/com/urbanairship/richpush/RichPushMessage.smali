.class public Lcom/urbanairship/richpush/RichPushMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/urbanairship/richpush/RichPushMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# instance fields
.field private databaseId:Ljava/lang/Integer;

.field private deleted:Z

.field private extras:Landroid/os/Bundle;

.field private messageBodyUrl:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private messageReadUrl:Ljava/lang/String;

.field private messageUrl:Ljava/lang/String;

.field private sent:Ljava/util/Date;

.field private title:Ljava/lang/String;

.field private unread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method private static bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static contentValuesFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "message_url"

    const-string v2, "message_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_body_url"

    const-string v2, "message_body_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_read_url"

    const-string v2, "message_read_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    const-string v2, "message_sent"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unread"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "unread_orig"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "unread"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "deleted"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "extra"

    const-string v2, "extra"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private formatDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Couldn\'t parse sent date, defaulting to now."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :try_start_1
    sget-object v1, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "Couldn\'t parse the current time. Not sure how this happens."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/urbanairship/richpush/RichPushMessage;

    const-string v0, "message_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/urbanairship/richpush/RichPushMessage;-><init>(Ljava/lang/String;)V

    const-string v0, "message_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    const-string v0, "message_body_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    const-string v0, "message_read_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->databaseId:Ljava/lang/Integer;

    const-string v0, "unread"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    new-instance v0, Lorg/json/JSONObject;

    const-string v4, "extra"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushMessage;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/urbanairship/richpush/RichPushMessage;->formatDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->sent:Ljava/util/Date;

    const-string v0, "deleted"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, v3, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static messageFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/urbanairship/richpush/RichPushMessage;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "message_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    const-string v1, "message_body_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    const-string v1, "message_read_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    const-string v1, "unread"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    const-string v1, "extra"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushMessage;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    const-string v1, "message_sent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->formatDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->sent:Ljava/util/Date;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushMessage;->compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessageDeleted(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/urbanairship/richpush/RichPushMessage;

    if-eqz v2, :cond_0

    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getDatabaseId()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->databaseId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMessageBodyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->sent:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markRead()V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessageRead(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public markUnread()V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessageUnread(Ljava/lang/String;)I

    goto :goto_0
.end method

.method toContentValues()Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->databaseId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "_id"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->databaseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v1, "timestamp"

    sget-object v2, Lcom/urbanairship/richpush/RichPushMessage;->UA_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->sent:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_id"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_url"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_body_url"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_read_url"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unread"

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "deleted"

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "extra"

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/urbanairship/richpush/RichPushMessage;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "unread_orig"

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->unread:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
