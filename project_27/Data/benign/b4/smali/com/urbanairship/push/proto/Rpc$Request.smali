.class public final Lcom/urbanairship/push/proto/Rpc$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Rpc$Request$Builder;
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field public static final METHOD_ID_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Rpc$Request;


# instance fields
.field private body_:Lcom/google/protobuf/ByteString;

.field private hasBody:Z

.field private hasMethodId:Z

.field private hasRequestId:Z

.field private memoizedSerializedSize:I

.field private methodId_:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field private requestId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Rpc$Request;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Rpc$Request;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Rpc$Request;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Request;

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Request;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Request;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Rpc$Request;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->body_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->requestId_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Rpc$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Rpc$Request;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->body_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->requestId_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$302(Lcom/urbanairship/push/proto/Rpc$Request;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasMethodId:Z

    return p1
.end method

.method static synthetic access$402(Lcom/urbanairship/push/proto/Rpc$Request;Lcom/urbanairship/push/proto/Messages$AirshipMethod;)Lcom/urbanairship/push/proto/Messages$AirshipMethod;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->methodId_:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    return-object p1
.end method

.method static synthetic access$502(Lcom/urbanairship/push/proto/Rpc$Request;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasBody:Z

    return p1
.end method

.method static synthetic access$602(Lcom/urbanairship/push/proto/Rpc$Request;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->body_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lcom/urbanairship/push/proto/Rpc$Request;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasRequestId:Z

    return p1
.end method

.method static synthetic access$802(Lcom/urbanairship/push/proto/Rpc$Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->requestId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Request;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Request;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->methodId_:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$100()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Rpc$Request;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Rpc$Request;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Rpc$Request$Builder;->access$000(Lcom/urbanairship/push/proto/Rpc$Request$Builder;)Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->body_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Rpc$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Rpc$Request;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Rpc$Request;->defaultInstance:Lcom/urbanairship/push/proto/Rpc$Request;

    return-object v0
.end method

.method public getMethodId()Lcom/urbanairship/push/proto/Messages$AirshipMethod;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->methodId_:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasMethodId()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getMethodId()Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasRequestId()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasBody()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasBody:Z

    return v0
.end method

.method public hasMethodId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasMethodId:Z

    return v0
.end method

.method public hasRequestId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasRequestId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasMethodId:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Rpc$Request;->hasBody:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilderForType()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Rpc$Request$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->toBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Rpc$Request$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->newBuilder(Lcom/urbanairship/push/proto/Rpc$Request;)Lcom/urbanairship/push/proto/Rpc$Request$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasMethodId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getMethodId()Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Rpc$Request;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
