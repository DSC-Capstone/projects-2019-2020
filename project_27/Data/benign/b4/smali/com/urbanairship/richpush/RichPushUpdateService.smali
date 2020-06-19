.class public Lcom/urbanairship/richpush/RichPushUpdateService;
.super Landroid/app/IntentService;


# static fields
.field public static final ACTION_RICH_PUSH_MESSAGES_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.MESSAGES_UPDATE"

.field public static final ACTION_RICH_PUSH_MESSAGE_RETRIEVE:Ljava/lang/String; = "com.urbanairship.richpush.MESSAGE_RETRIEVE"

.field public static final ACTION_RICH_PUSH_USER_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.USER_UPDATE"

.field private static final DELETED_IDS_TYPE:I = 0x1

.field private static final DELETE_MESSAGES_KEY:Ljava/lang/String; = "delete"

.field private static final DELETE_MESSAGES_URL:Ljava/lang/String; = "api/user/%s/messages/delete/"

.field public static final EXTRA_RICH_PUSH_RESULT_RECEIVER:Ljava/lang/String; = "com.urbanairship.richpush.RESULT_RECEIVER"

.field private static final MARK_READ_MESSAGES_KEY:Ljava/lang/String; = "mark_as_read"

.field private static final MARK_READ_MESSAGES_URL:Ljava/lang/String; = "api/user/%s/messages/unread/"

.field private static final MESSAGES_URL:Ljava/lang/String; = "api/user/%s/messages/"

.field private static final MESSAGE_URL:Ljava/lang/String; = "api/user/%s/messages/message/%s/"

.field private static final READ_IDS_TYPE:I = 0x2

.field public static final RICH_PUSH_MESSAGE_ID_KEY:Ljava/lang/String; = "com.urbanairship.richpush.MESSAGE_ID_KEY"

.field private static final SINCE_KEY:Ljava/lang/String; = "since"

.field public static final STATUS_RICH_PUSH_UPDATE_ERROR:I = 0x1

.field public static final STATUS_RICH_PUSH_UPDATE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RichPushUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "api/user/%s/messages/message/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x0

    invoke-direct {p0, v5, v6, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Request;
    .locals 3

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createUser()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "POST"

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->newUserUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->getUserAttributes()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-direct {p0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    const-string v2, "User creation succeeded. Updating"

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushUser;->updateUserAttributes(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v2, "User creation failed. Logging."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteMessagesOnServer(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "POST"

    const-string v1, "api/user/%s/messages/delete/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-direct {p0, v2, p1}, Lcom/urbanairship/richpush/RichPushUpdateService;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Z

    move-result v0

    return v0
.end method

.method private formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getHostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHostUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    return-object v0
.end method

.method private getIds(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->idSetFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getDeletedMessages()Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getReadUpdatedMessages()Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMessagesFromServer(Ljava/lang/String;)[Lcom/urbanairship/richpush/RichPushMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "since"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "GET"

    const-string v3, "api/user/%s/messages/"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v4, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "The response from the server was null. Will try later."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->messageArrayFromResponse(Lcom/urbanairship/restclient/Response;)[Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getNewestMessageId()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getNewestMessageId()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private getUser()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->shared()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    return-object v0
.end method

.method private handleDeletedMessages()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getIds(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to delete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->deleteMessagesOnServer(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->deleteMessages(Ljava/util/Set;)I

    goto :goto_0
.end method

.method private handleReadMessages()V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getIds(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to mark read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->markMessagesReadOnServer(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "unread_orig"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->updateMessages(Ljava/util/Set;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method private idSetFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, -0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_0

    const-string v0, "message_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private markMessagesReadOnServer(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "POST"

    const-string v1, "api/user/%s/messages/unread/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mark_as_read"

    invoke-direct {p0, v2, p1}, Lcom/urbanairship/richpush/RichPushUpdateService;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Z

    move-result v0

    return v0
.end method

.method private messageArrayFromResponse(Lcom/urbanairship/restclient/Response;)[Lcom/urbanairship/richpush/RichPushMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Lcom/urbanairship/richpush/RichPushMessage;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/urbanairship/richpush/RichPushMessage;->messageFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private messagesUpdate(Landroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->handleDeletedMessages()V

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->handleReadMessages()V

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->updateMessages()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    return-void
.end method

.method private respond(Landroid/os/ResultReceiver;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private retrieveMessage(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.urbanairship.richpush.MESSAGE_ID_KEY"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GET"

    const-string v2, "api/user/%s/messages/message/%s/"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-direct {p0, v2, v3, v7}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v7}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Failed to retrieve the message. Not storing anything, RichPushInbox will refresh and grab new messages."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, p2, v5, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V

    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/urbanairship/richpush/RichPushMessage;->contentValuesFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/urbanairship/richpush/RichPushResolver;->insertMessage(Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-direct {p0, p2, v5, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/richpush/RichPushUpdateService;->buildRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The response status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    if-ne v0, p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMessages()Z
    .locals 4

    const-string v0, "Updating Messages"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getNewestMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getMessagesFromServer(Ljava/lang/String;)[Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new messages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->insertMessages([Lcom/urbanairship/richpush/RichPushMessage;)I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "No new messages"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v0, "Failed to update messages from server"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private updateUser()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "Updating user"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "POST"

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->userUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->getUserAttributes()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v4, 0xc8

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "User update failed. Will retry later."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private userUpdate(Landroid/os/ResultReceiver;)V
    .locals 1

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->createUser()Z

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->updateUser()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting RichPushUpdateService with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "The Rich Push user has not been created, cancelling messages update"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->messagesUpdate(Landroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->userUpdate(Landroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.urbanairship.richpush.MESSAGE_RETRIEVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "The Rich Push user has not been created, not cancelling message retrieval"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    goto :goto_0

    :cond_4
    const-string v1, "com.urbanairship.richpush.MESSAGE_ID_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->retrieveMessage(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0
.end method
