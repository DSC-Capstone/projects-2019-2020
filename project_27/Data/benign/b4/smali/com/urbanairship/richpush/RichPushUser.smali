.class public Lcom/urbanairship/richpush/RichPushUser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushUser$UserPreferences;
    }
.end annotation


# static fields
.field private static final MODIFY_USER_URL:Ljava/lang/String; = "api/user/%s/"

.field private static final NEW_USER_URL:Ljava/lang/String; = "api/user/"

.field private static final PAYLOAD_ALIAS_KEY:Ljava/lang/String; = "alias"

.field private static final PAYLOAD_APIDS_KEY:Ljava/lang/String; = "apids"

.field private static final PAYLOAD_PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final PAYLOAD_TAGS_KEY:Ljava/lang/String; = "tags"

.field private static final PAYLOAD_USER_ID_KEY:Ljava/lang/String; = "user_id"

.field static preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    return-void
.end method

.method static addCurrentApid(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getAPID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(I)V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method static getUserAttributes()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v3, "com.urbanairship.user.APIDS"

    invoke-virtual {v0, v3, v1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUser;->addCurrentApid(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v3

    const-string v4, "apids"

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v3, "com.urbanairship.user.TAGS"

    invoke-virtual {v0, v3, v1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v3

    const-string v4, "tags"

    if-nez v3, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "alias"

    sget-object v3, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v4, "com.urbanairship.user.ALIAS"

    invoke-virtual {v3, v4, v1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public static isCreated()Z
    .locals 3

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v1, "com.urbanairship.user.ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static newUserUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static updateUserAttributes(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating user attributes for id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.ID"

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "password"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.PASSWORD"

    const-string v3, "password"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v3, "com.urbanairship.user.ALIAS"

    const-string v0, "alias"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.APIDS"

    const-string v3, "apids"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/richpush/RichPushUser;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.TAGS"

    const-string v3, "tags"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushUser;->jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void

    :cond_1
    const-string v0, "alias"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addApid(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.APIDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v3, "com.urbanairship.user.APIDS"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.TAGS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v3, "com.urbanairship.user.TAGS"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v1, "com.urbanairship.user.ALIAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApids()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.APIDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUser;->addCurrentApid(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v1, "com.urbanairship.user.ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/urbanairship/richpush/RichPushInbox;->shared()Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v1, "com.urbanairship.user.PASSWORD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.TAGS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->getSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v1, "com.urbanairship.user.ALIAS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setApids(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.APIDS"

    invoke-virtual {v0, v2, p1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTags(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUser;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUser$UserPreferences;

    const-string v2, "com.urbanairship.user.TAGS"

    invoke-virtual {v0, v2, p1}, Lcom/urbanairship/richpush/RichPushUser$UserPreferences;->putSet(Ljava/lang/String;Ljava/util/HashSet;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method userUrl()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/user/%s/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
