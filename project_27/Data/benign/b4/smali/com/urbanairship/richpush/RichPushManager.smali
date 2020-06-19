.class public Lcom/urbanairship/richpush/RichPushManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushManager$Listener;,
        Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;
    }
.end annotation


# static fields
.field private static final RICH_PUSH_KEY:Ljava/lang/String; = "_uamid"

.field private static final instance:Lcom/urbanairship/richpush/RichPushManager;

.field private static jsIdentifier:Ljava/lang/String;

.field private static jsInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/urbanairship/richpush/RichPushMessageJavaScript;",
            ">;"
        }
    .end annotation
.end field

.field static resolver:Lcom/urbanairship/richpush/RichPushResolver;


# instance fields
.field private isRefreshingMessages:Z

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/urbanairship/richpush/RichPushManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private retrieveMessageResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

.field private updateMessagesResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

.field private updateUserResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

.field private user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushManager;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->instance:Lcom/urbanairship/richpush/RichPushManager;

    const-class v0, Lcom/urbanairship/richpush/RichPushMessageJavaScript;

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->jsInterface:Ljava/lang/Class;

    const-string v0, "urbanairship"

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->jsIdentifier:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$1;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->updateMessagesResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$2;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->updateUserResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$3;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->retrieveMessageResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/Vector;

    new-instance v0, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    return-void
.end method

.method static synthetic access$002(Lcom/urbanairship/richpush/RichPushManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/Vector;

    return-object v0
.end method

.method public static getJsIdentifier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->jsIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public static getJsInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/urbanairship/richpush/RichPushMessageJavaScript;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->jsInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v1, Lcom/urbanairship/richpush/RichPushManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->richPushEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Initializing Rich Push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->instance:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isRichPushMessage(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "_uamid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRichPushMessage(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "_uamid"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static retrieveMessage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.urbanairship.richpush.MESSAGE_ID_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->instance:Lcom/urbanairship/richpush/RichPushManager;

    const-string v2, "com.urbanairship.richpush.MESSAGE_RETRIEVE"

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/richpush/RichPushManager;->startUpdateService(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static retrieveRichPushMessage(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/urbanairship/richpush/RichPushManager;->isRichPushMessage(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "_uamid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->retrieveMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setJavascriptInterface(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/urbanairship/richpush/RichPushMessageJavaScript;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->setJavascriptInterface(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static setJavascriptInterface(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/urbanairship/richpush/RichPushMessageJavaScript;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sput-object p0, Lcom/urbanairship/richpush/RichPushManager;->jsInterface:Ljava/lang/Class;

    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/urbanairship/richpush/RichPushManager;->jsIdentifier:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static shared()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->instance:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method private startUpdateService(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v2, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.urbanairship.richpush.RESULT_RECEIVER"

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushManager;->updateMessagesResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    const-string v2, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.urbanairship.richpush.RESULT_RECEIVER"

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushManager;->updateUserResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v2, "com.urbanairship.richpush.MESSAGE_RETRIEVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.urbanairship.richpush.RESULT_RECEIVER"

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushManager;->retrieveMessageResultReceiver:Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/richpush/RichPushUser;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushUser;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRefreshingMessages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages:Z

    return v0
.end method

.method public refreshMessages()V
    .locals 2

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages:Z

    const-string v0, "com.urbanairship.richpush.MESSAGES_UPDATE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->startUpdateService(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateUser()V
    .locals 2

    const-string v0, "com.urbanairship.richpush.USER_UPDATE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->startUpdateService(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
