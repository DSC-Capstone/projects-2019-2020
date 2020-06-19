.class public final Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegistrationEnvelope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;
    }
.end annotation


# static fields
.field public static final APID_FIELD_NUMBER:I = 0x1

.field public static final REGISTRATION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;


# instance fields
.field private apid_:Ljava/lang/String;

.field private hasApid:Z

.field private hasRegistration:Z

.field private memoizedSerializedSize:I

.field private registration_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->apid_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->registration_:Lcom/google/protobuf/ByteString;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Messages$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->apid_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->registration_:Lcom/google/protobuf/ByteString;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2402(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasApid:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->apid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasRegistration:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->registration_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2200()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;->access$2100(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->apid_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->defaultInstance:Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;

    return-object v0
.end method

.method public getRegistration()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->registration_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasApid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasRegistration()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getRegistration()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasApid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasApid:Z

    return v0
.end method

.method public hasRegistration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasRegistration:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasApid:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasRegistration:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilderForType()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->toBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->newBuilder(Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;)Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasApid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getApid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->hasRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$RegistrationEnvelope;->getRegistration()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    return-void
.end method
