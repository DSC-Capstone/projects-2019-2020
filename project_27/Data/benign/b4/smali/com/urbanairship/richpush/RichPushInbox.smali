.class public Lcom/urbanairship/richpush/RichPushInbox;
.super Lcom/urbanairship/util/UACursorWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushInbox$RichPushDatabaseChangeReceiver;,
        Lcom/urbanairship/richpush/RichPushInbox$Listener;
    }
.end annotation


# static fields
.field static instance:Lcom/urbanairship/richpush/RichPushInbox;


# instance fields
.field dbChangeReceiver:Lcom/urbanairship/richpush/RichPushInbox$RichPushDatabaseChangeReceiver;

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/urbanairship/richpush/RichPushInbox$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field messageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field messageIdColumnId:I


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getAllUndeletedMessages()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/util/UACursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageIdColumnId:I

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->saturateCache()V

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$RichPushDatabaseChangeReceiver;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/richpush/RichPushInbox$RichPushDatabaseChangeReceiver;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->dbChangeReceiver:Lcom/urbanairship/richpush/RichPushInbox$RichPushDatabaseChangeReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushInbox;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->removeMessagesFromCache([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->clearCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/Vector;

    return-object v0
.end method

.method private addMessageToCache(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private getMessageFromCache(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    return-object v0
.end method

.method private getMessageFromCursor(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToFirst()Z

    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageIdColumnId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToPosition(I)Z

    invoke-static {p0}, Lcom/urbanairship/richpush/RichPushMessage;->messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getMessageIdColumnId()I
    .locals 2

    iget v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageIdColumnId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "message_id"

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageIdColumnId:I

    :cond_0
    iget v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageIdColumnId:I

    return v0
.end method

.method private getMessagePositionFromCursor(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToFirst()Z

    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageIdColumnId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getPosition()I

    move-result v0

    monitor-exit v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private removeMessageFromCache(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeMessagesFromCache([Ljava/lang/String;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/urbanairship/richpush/RichPushInbox;->removeMessageFromCache(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saturateCache()V
    .locals 3

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/richpush/RichPushMessage;->messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->messageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized shared()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 2

    const-class v1, Lcom/urbanairship/richpush/RichPushInbox;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;

    :cond_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushInbox;->instance:Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteMessages(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesDeleted(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 3

    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageFromCache(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in the cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageFromCursor(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the cursor. Adding to cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->addMessageToCache(Lcom/urbanairship/richpush/RichPushMessage;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not find message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the cursor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessageAtPosition(I)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageIdColumnId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not move to position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMessageIdAtPosition(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessageIdColumnId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not move to position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMessagePosition(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushInbox;->getMessagePositionFromCursor(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markMessagesRead(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesRead(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public markMessagesUnread(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->markMessagesUnread(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public refresh()Landroid/database/Cursor;
    .locals 2

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getAllUndeletedMessages()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->replaceCursor(Landroid/database/Cursor;)V

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
