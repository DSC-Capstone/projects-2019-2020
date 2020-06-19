.class public final Lcom/urbanairship/push/proto/Messages$PushNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    }
.end annotation


# static fields
.field public static final MAP_FIELD_NUMBER:I = 0x5

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x1

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x3

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Messages$PushNotification;


# instance fields
.field private hasMessage:Z

.field private hasMessageId:Z

.field private hasPackageName:Z

.field private hasPayload:Z

.field private map_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I

.field private messageId_:Ljava/lang/String;

.field private message_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private payload_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Messages$PushNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$PushNotification;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$PushNotification;->defaultInstance:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Messages$PushNotification;->defaultInstance:Lcom/urbanairship/push/proto/Messages$PushNotification;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->messageId_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->message_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->packageName_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->payload_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Messages$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->messageId_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->message_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->packageName_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->payload_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$4800(Lcom/urbanairship/push/proto/Messages$PushNotification;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->messageId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->message_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->packageName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/urbanairship/push/proto/Messages$PushNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/urbanairship/push/proto/Messages$PushNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->payload_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$PushNotification;->defaultInstance:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4600()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;->access$4500(Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;)Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$PushNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$PushNotification;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$PushNotification;->defaultInstance:Lcom/urbanairship/push/proto/Messages$PushNotification;

    return-object v0
.end method

.method public getMap(I)Lcom/urbanairship/push/proto/Messages$KeyValue;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$KeyValue;

    return-object v0
.end method

.method public getMapCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->map_:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$KeyValue;

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$KeyValue;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$KeyValue;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilderForType()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->toBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->newBuilder(Lcom/urbanairship/push/proto/Messages$PushNotification;)Lcom/urbanairship/push/proto/Messages$PushNotification$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$PushNotification;->getMapList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$KeyValue;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    :cond_4
    return-void
.end method
