.class public final Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegistrationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_RELIERS_FIELD_NUMBER:I = 0x2

.field public static final VALID_RELIERS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;


# instance fields
.field private invalidReliers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I

.field private validReliers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Messages$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$3100(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2900()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;->access$2800(Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationResponse;

    return-object v0
.end method

.method public getInvalidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    return-object v0
.end method

.method public getInvalidReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->invalidReliers_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getValidReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    return-object v0
.end method

.method public getValidReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->validReliers_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilderForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->toBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->newBuilder(Lcom/urbanairship/push/proto/Messages$RegistrationResponse;)Lcom/urbanairship/push/proto/Messages$RegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getValidReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationResponse;->getInvalidReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_1

    :cond_1
    return-void
.end method
