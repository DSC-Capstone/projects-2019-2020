.class public Lcom/urbanairship/push/PushRegistrationBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWithCurrentPreferences()Lcom/urbanairship/push/PushRegistrationPayload;
    .locals 5

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/push/PushRegistrationPayload;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getDeviceTagsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/urbanairship/push/PushRegistrationPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
