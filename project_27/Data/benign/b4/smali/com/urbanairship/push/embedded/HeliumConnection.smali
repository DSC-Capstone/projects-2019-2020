.class public Lcom/urbanairship/push/embedded/HeliumConnection;
.super Ljava/lang/Thread;


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0xea60


# instance fields
.field private boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

.field private helium:Lcom/urbanairship/push/embedded/HeliumClient;

.field private lastSocketActivity:Ljava/util/concurrent/atomic/AtomicLong;

.field private manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

.field private retryInterval:J

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/embedded/EmbeddedPushManager;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->retryInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    iput-object p2, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastSocketActivity:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "HeliumConnectionThread"

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error closing socket."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private connect()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "HeliumConnection - run"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->typeName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->lookup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "No Helium servers available for connection."

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$FatalBoxOfficeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->stopHeartBeat()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Thread interrupted during lookup."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$FatalBoxOfficeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$FatalBoxOfficeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_3
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v8

    new-instance v3, Ljava/lang/Integer;

    aget-object v0, v0, v9

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Connection sequence aborted. Ending prior to opening Helium connection."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    sget-wide v6, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastSocketActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v2, 0xea60

    invoke-virtual {v0, v6, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection established to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on network type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/push/embedded/HeliumClient;

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {v0, v2, v3}, Lcom/urbanairship/push/embedded/HeliumClient;-><init>(Ljava/net/Socket;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumClient;->register()V

    :goto_2
    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->helium:Lcom/urbanairship/push/embedded/HeliumClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumClient;->readResponse()V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastSocketActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/urbanairship/push/embedded/HeliumClient$HeliumException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_3
    const-string v0, "Connection thread interrupted."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_4
    const-string v0, "Invalid protobuf exception (Expected, likely due to socket interruption)."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_5
    const-string v0, "Socket timed out."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_6
    const-string v0, "IOException (Expected following restart or connectivity change)."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->stopHeartBeat()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->sendRegistrationResponse(Z)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :catch_8
    move-exception v0

    :try_start_8
    const-string v0, "Helium exception - secret not set."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in Helium connection. Network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection aborted, shutting down. Network type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection aborted, shutting down. Network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :goto_3
    throw v0

    :cond_16
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    invoke-static {}, Lcom/urbanairship/push/embedded/Network;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->manager:Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    invoke-virtual {v1}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->isInHoldingPattern()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->boxOffice:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount()V

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/embedded/HeliumConnection;->sleepForRetryInterval(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_17
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3
.end method

.method private sleepForRetryInterval(J)Z
    .locals 9

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->retryInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v6, 0x2bf20

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x9c400

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescheduling connection in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->retryInterval:J

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 2

    const-string v0, "Connection aborting."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "Closing socket."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    :cond_0
    const-string v0, "Service stopped, socket closed successfully."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public getRetryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->retryInterval:J

    return-wide v0
.end method

.method public isConnected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSocketStale()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "Checking socket status:"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The connection is not running."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    const-string v1, "Socket is null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Socket is not connected."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Socket is closed."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->lastSocketActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "Connected to Helium with a healthy socket."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetStaleConnection()V
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->isSocketStale()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Helium connection is stale. Closing socket to force retry."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumConnection;->close(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/push/embedded/HeliumConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "The Helium Connection Thread has died."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public setRetryInterval(J)V
    .locals 3

    const-wide/32 v0, 0x9c400

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/HeliumConnection;->retryInterval:J

    return-void
.end method
