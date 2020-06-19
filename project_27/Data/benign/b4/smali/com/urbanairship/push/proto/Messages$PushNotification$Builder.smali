.class public final Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages$PushNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/urbanairship/push/proto/Messages$PushNotification;",
        "Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/urbanairship/push/proto/Messages$PushNotification;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->buildParsed()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->create()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 3

    new-instance v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;-><init>()V

    new-instance v1, Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/urbanairship/push/proto/Messages$PushNotification;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v1, v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object v0
.end method


# virtual methods
.method public addAllMap(Ljava/lang/Iterable;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/urbanairship/push/proto/Messages$KeyValue;",
            ">;)",
            "Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMap(Lcom/urbanairship/push/proto/Messages$KeyValue$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$KeyValue$Builder;->build()Lcom/urbanairship/push/proto/Messages$KeyValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMap(Lcom/urbanairship/push/proto/Messages$KeyValue;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->build()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->clear()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object p0
.end method

.method public clearMap()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMessage()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5102(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5202(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearMessageId()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4902(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5002(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearPackageName()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5302(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5402(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearPayload()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5502(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5602(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->clone()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->clone()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->clone()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->create()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->clone()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public getMap(I)Lcom/urbanairship/push/proto/Messages$KeyValue;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMap(I)Lcom/urbanairship/push/proto/Messages$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getMapCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapCount()I

    move-result v0

    return v0
.end method

.method public getMapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$KeyValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage()Z

    move-result v0

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->internalGetResult()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-virtual {p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setPackageName(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setPayload(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/urbanairship/push/proto/Messages$KeyValue;->newBuilder()Lcom/urbanairship/push/proto/Messages$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$KeyValue$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$KeyValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->addMap(Lcom/urbanairship/push/proto/Messages$KeyValue;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setPackageName(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->setPayload(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    :cond_5
    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setMap(ILcom/urbanairship/push/proto/Messages$KeyValue$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/push/proto/Messages$KeyValue$Builder;->build()Lcom/urbanairship/push/proto/Messages$KeyValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMap(ILcom/urbanairship/push/proto/Messages$KeyValue;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5102(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5202(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$4902(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5002(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5302(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5402(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5502(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->result:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification;->access$5602(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
