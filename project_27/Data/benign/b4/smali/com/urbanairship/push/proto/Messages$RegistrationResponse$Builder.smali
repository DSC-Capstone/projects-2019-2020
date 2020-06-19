.class public final Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/urbanairship/push/proto/Messages$RegistrationResponse;",
        "Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->buildParsed()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->create()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 3

    new-instance v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;-><init>()V

    new-instance v1, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v1, v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object v0
.end method


# virtual methods
.method public addAllInvalidReliers(Ljava/lang/Iterable;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;)",
            "Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllValidReliers(Ljava/lang/Iterable;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;)",
            "Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addInvalidReliers(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInvalidReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addValidReliers(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addValidReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->build()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->clear()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object p0
.end method

.method public clearInvalidReliers()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearValidReliers()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->clone()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->clone()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->clone()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->create()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->clone()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliersCount()I

    move-result v0

    return v0
.end method

.method public getInvalidReliersList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public getValidReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliersCount()I

    move-result v0

    return v0
.end method

.method public getValidReliersList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->internalGetResult()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-virtual {p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->addValidReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->addInvalidReliers(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setInvalidReliers(ILcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInvalidReliers(ILcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValidReliers(ILcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->build()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValidReliers(ILcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->result:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
