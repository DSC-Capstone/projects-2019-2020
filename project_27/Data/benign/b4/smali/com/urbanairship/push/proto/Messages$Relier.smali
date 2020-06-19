.class public final Lcom/urbanairship/push/proto/Messages$Relier;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Messages$Relier$Builder;
    }
.end annotation


# static fields
.field public static final APP_KEY_FIELD_NUMBER:I = 0x2

.field public static final PACKAGE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Messages$Relier;


# instance fields
.field private appKey_:Ljava/lang/String;

.field private hasAppKey:Z

.field private hasPackage:Z

.field private memoizedSerializedSize:I

.field private package_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$Relier;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$Relier;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Relier;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Relier;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Relier;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->package_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->appKey_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Messages$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Relier;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->package_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->appKey_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$302(Lcom/urbanairship/push/proto/Messages$Relier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasPackage:Z

    return p1
.end method

.method static synthetic access$402(Lcom/urbanairship/push/proto/Messages$Relier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->package_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/urbanairship/push/proto/Messages$Relier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasAppKey:Z

    return p1
.end method

.method static synthetic access$602(Lcom/urbanairship/push/proto/Messages$Relier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->appKey_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Relier;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Relier;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$100()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Relier$Builder;->access$000(Lcom/urbanairship/push/proto/Messages$Relier$Builder;)Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->appKey_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Relier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Relier;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Relier;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->package_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->hasAppKey()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasAppKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasAppKey:Z

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasPackage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasPackage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/urbanairship/push/proto/Messages$Relier;->hasAppKey:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilderForType()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Messages$Relier$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->toBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Messages$Relier$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->newBuilder(Lcom/urbanairship/push/proto/Messages$Relier;)Lcom/urbanairship/push/proto/Messages$Relier$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->hasAppKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Relier;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
