.class public Lcom/urbanairship/push/embedded/HeliumClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;,
        Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;
    }
.end annotation


# instance fields
.field private boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

.field private in:Lcom/google/protobuf/CodedInputStream;

.field private out:Ljava/io/OutputStream;

.field private prefs:Lcom/urbanairship/push/PushPreferences;

.field private pushIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/urbanairship/push/embedded/BoxOfficeClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    iput-object p2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->in:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->pushIDs:Ljava/util/HashMap;

    return-void
.end method

.method private handleNotification(Lcom/urbanairship/push/proto/Messages$PushNotification;)V
    .locals 4

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got app id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/push/embedded/HeliumClient;->messageAlreadySent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already sent. Discarding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/push/embedded/HeliumClient;->recordMessage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Got push notification, but Push is disabled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->deliverPush(Lcom/urbanairship/push/proto/Messages$PushNotification;)V

    goto :goto_0
.end method

.method private handleRegistration(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration response received for APID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliersList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliersList()Ljava/util/List;

    move-result-object v4

    const-string v0, ""

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Valid: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->sendRegistrationResponse(Z)V

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->resetFailureCount()V

    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;

    const-string v1, "Package name on server does not match the application package name."

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/embedded/HeliumClient$HeliumInvalidPackageException;-><init>(Lcom/urbanairship/push/embedded/HeliumClient;Ljava/lang/String;)V

    throw v0
.end method

.method private messageAlreadySent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->pushIDs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->pushIDs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static protoReliers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->setPackage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->setAppKey(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private recordMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->pushIDs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendRequest(Lcom/urbanairship/push/proto/Messages$AirshipMethod;Lcom/google/protobuf/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->setMethodId(Lcom/urbanairship/push/proto/Messages$AirshipMethod;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->build()Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->getSerializedSize()I

    move-result v1

    int-to-short v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeliumClient.sendRequest() - Protobuf Request Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/proto/Rpc$Request;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method protected readResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;,
            Lcom/urbanairship/push/embedded/Crypto$NullUUID;,
            Lcom/urbanairship/util/Base64DecoderException;
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/embedded/HeliumClient;->in:Lcom/google/protobuf/CodedInputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeliumClient.readResponse() - Protobuf Response Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "HeliumClient.readResponse() - Keepalive Read"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumClient;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->getEncryptionKey()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;

    const-string v1, "HeliumClient.readResponse() - No Key"

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/embedded/HeliumClient$HeliumException;-><init>(Lcom/urbanairship/push/embedded/HeliumClient;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/embedded/HeliumClient;->in:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/Base64;->decode([B)[B

    move-result-object v0

    new-instance v1, Lcom/urbanairship/push/embedded/Crypto;

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v2}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->getEncryptionKey()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/push/embedded/Crypto;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/embedded/Crypto;->decrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->parseFrom([B)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    const-string v1, "response read"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->getMethodId()Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumClient;->handleRegistration(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->getMethodId()Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->PUSH_NOTIFICATION:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/HeliumClient;->handleNotification(Lcom/urbanairship/push/proto/Messages$PushNotification;)V

    goto :goto_0

    :cond_3
    const-string v0, "HeliumClient.readResponse() - Recevied an unknown Helium method type."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected register()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/urbanairship/push/embedded/Crypto$NullUUID;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/push/proto/Messages$OS;->ANDROID:Lcom/urbanairship/push/proto/Messages$OS;

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOs(Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOsVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    const-string v2, "4.1.3"

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setUaVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setSecret(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/push/embedded/HeliumClient;->protoReliers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->addAllReliers(Ljava/lang/Iterable;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->build()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/urbanairship/push/embedded/Crypto;

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->boxOfficeClient:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-virtual {v2}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->getEncryptionKey()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/push/embedded/Crypto;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/embedded/Crypto;->encrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/Base64;->encodeBytesToBytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/embedded/HeliumClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->setRegistration(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->build()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/urbanairship/push/embedded/HeliumClient;->sendRequest(Lcom/urbanairship/push/proto/Messages$AirshipMethod;Lcom/google/protobuf/ByteString;)V

    return-void
.end method
