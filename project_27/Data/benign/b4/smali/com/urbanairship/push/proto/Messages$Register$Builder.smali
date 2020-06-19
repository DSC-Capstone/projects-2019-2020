.class public final Lcom/urbanairship/push/proto/Messages$Register$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages$Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/urbanairship/push/proto/Messages$Register;",
        "Lcom/urbanairship/push/proto/Messages$Register$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/urbanairship/push/proto/Messages$Register;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->buildParsed()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->create()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 3

    new-instance v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;-><init>()V

    new-instance v1, Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/urbanairship/push/proto/Messages$Register;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v1, v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    return-object v0
.end method


# virtual methods
.method public addAllReliers(Ljava/lang/Iterable;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;)",
            "Lcom/urbanairship/push/proto/Messages$Register$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addReliers(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->build()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->clear()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    return-object p0
.end method

.method public clearApid()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1102(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Register;->getApid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1202(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearOs()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1302(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    sget-object v1, Lcom/urbanairship/push/proto/Messages$OS;->ANDROID:Lcom/urbanairship/push/proto/Messages$OS;

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1402(Lcom/urbanairship/push/proto/Messages$Register;Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$OS;

    return-object p0
.end method

.method public clearOsVersion()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1502(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Register;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1602(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearReliers()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearSecret()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1902(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Register;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$2002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearUaVersion()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1702(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Register;->getUaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1802(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->create()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Lcom/urbanairship/push/proto/Messages$OS;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getOs()Lcom/urbanairship/push/proto/Messages$OS;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->getReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public getReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getReliersCount()I

    move-result v0

    return v0
.end method

.method public getReliersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUaVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->getUaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasApid()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->hasApid()Z

    move-result v0

    return v0
.end method

.method public hasOs()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOs()Z

    move-result v0

    return v0
.end method

.method public hasOsVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion()Z

    move-result v0

    return v0
.end method

.method public hasSecret()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret()Z

    move-result v0

    return v0
.end method

.method public hasUaVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->internalGetResult()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Register;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/urbanairship/push/proto/Messages$Register;

    invoke-virtual {p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$OS;->valueOf(I)Lcom/urbanairship/push/proto/Messages$OS;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOs(Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOsVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setUaVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setSecret(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->addReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->hasApid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->getApid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->getOs()Lcom/urbanairship/push/proto/Messages$OS;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOs(Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setOsVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->getUaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setUaVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Register;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->setSecret(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    :cond_6
    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setApid(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1102(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1202(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOs(Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1302(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1402(Lcom/urbanairship/push/proto/Messages$Register;Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$OS;

    return-object p0
.end method

.method public setOsVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1502(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1602(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setReliers(ILcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReliers(ILcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register;->access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSecret(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1902(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$2002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setUaVersion(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1702(Lcom/urbanairship/push/proto/Messages$Register;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register$Builder;->result:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Register;->access$1802(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
