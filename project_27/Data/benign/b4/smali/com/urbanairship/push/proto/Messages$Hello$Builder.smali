.class public final Lcom/urbanairship/push/proto/Messages$Hello$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages$Hello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/urbanairship/push/proto/Messages$Hello;",
        "Lcom/urbanairship/push/proto/Messages$Hello$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/urbanairship/push/proto/Messages$Hello;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5700(Lcom/urbanairship/push/proto/Messages$Hello$Builder;)Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->buildParsed()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800()Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->create()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 3

    new-instance v0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;-><init>()V

    new-instance v1, Lcom/urbanairship/push/proto/Messages$Hello;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/urbanairship/push/proto/Messages$Hello;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v1, v0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->build()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->buildPartial()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->clear()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/urbanairship/push/proto/Messages$Hello;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$Hello;-><init>(Lcom/urbanairship/push/proto/Messages$1;)V

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    return-object p0
.end method

.method public clearMessage()Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Hello;->access$6002(Lcom/urbanairship/push/proto/Messages$Hello;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Hello;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$Hello;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Hello;->access$6102(Lcom/urbanairship/push/proto/Messages$Hello;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 2

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->create()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Hello;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->clone()Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Hello;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Hello;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Hello;->hasMessage()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->internalGetResult()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/urbanairship/push/proto/Messages$Hello;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Hello;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-virtual {p0, p1}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Hello;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/urbanairship/push/proto/Messages$Hello;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Hello;->getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Hello;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Hello;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/push/proto/Messages$Hello;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$Hello$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/proto/Messages$Hello;->access$6002(Lcom/urbanairship/push/proto/Messages$Hello;Z)Z

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Hello$Builder;->result:Lcom/urbanairship/push/proto/Messages$Hello;

    invoke-static {v0, p1}, Lcom/urbanairship/push/proto/Messages$Hello;->access$6102(Lcom/urbanairship/push/proto/Messages$Hello;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
