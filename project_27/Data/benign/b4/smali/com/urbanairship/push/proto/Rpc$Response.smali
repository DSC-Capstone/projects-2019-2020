.class public final Lcom/urbanairship/push/proto/Rpc$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Rpc$Response$Builder;
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Rpc$Response;


# instance fields
.field private body_:Lcom/google/protobuf/ByteString;

.field private hasBody:Z

.field private hasRequestId:Z

.field private hasStatus:Z

.field private memoizedSerializedSize:I

.field private requestId_:Ljava/lang/String;

.field private status_:Lcom/urbanairship/push/proto/Rpc$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Rpc$Response;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Rpc$Response;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Rpc$Response;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Response;

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Response;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Response;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Rpc$Response;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->body_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->requestId_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Rpc$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Rpc$Response;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->body_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->requestId_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$1202(Lcom/urbanairship/push/proto/Rpc$Response;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasStatus:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/urbanairship/push/proto/Rpc$Response;Lcom/urbanairship/push/proto/Rpc$Status;)Lcom/urbanairship/push/proto/Rpc$Status;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->status_:Lcom/urbanairship/push/proto/Rpc$Status;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/urbanairship/push/proto/Rpc$Response;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasBody:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/urbanairship/push/proto/Rpc$Response;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->body_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/urbanairship/push/proto/Rpc$Response;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasRequestId:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/urbanairship/push/proto/Rpc$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Response;->requestId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Response;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Response;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Status;->OK:Lcom/urbanairship/push/proto/Rpc$Status;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->status_:Lcom/urbanairship/push/proto/Rpc$Status;

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$1000()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Rpc$Response;)Lcom/urbanairship/push/proto/Rpc$Response$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Rpc$Response;)Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Response$Builder;->access$900(Lcom/urbanairship/push/proto/Rpc$Response$Builder;)Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->body_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Rpc$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Rpc$Response;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Response;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Response;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getStatus()Lcom/urbanairship/push/proto/Rpc$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/proto/Rpc$Status;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasRequestId()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getStatus()Lcom/urbanairship/push/proto/Rpc$Status;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->status_:Lcom/urbanairship/push/proto/Rpc$Status;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasBody:Z

    return v0
.end method

.method public hasRequestId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasRequestId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Response;->hasStatus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilderForType()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Rpc$Response$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->toBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Rpc$Response$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->newBuilder(Lcom/urbanairship/push/proto/Rpc$Response;)Lcom/urbanairship/push/proto/Rpc$Response$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getStatus()Lcom/urbanairship/push/proto/Rpc$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Rpc$Status;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Response;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
