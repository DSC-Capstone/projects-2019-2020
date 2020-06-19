.class public final Lcom/urbanairship/push/proto/Messages$Register;
.super Lcom/google/protobuf/GeneratedMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Register"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/proto/Messages$Register$Builder;
    }
.end annotation


# static fields
.field public static final APID_FIELD_NUMBER:I = 0x1

.field public static final OS_FIELD_NUMBER:I = 0x2

.field public static final OS_VERSION_FIELD_NUMBER:I = 0x3

.field public static final RELIERS_FIELD_NUMBER:I = 0x6

.field public static final SECRET_FIELD_NUMBER:I = 0x5

.field public static final UA_VERSION_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/urbanairship/push/proto/Messages$Register;


# instance fields
.field private apid_:Ljava/lang/String;

.field private hasApid:Z

.field private hasOs:Z

.field private hasOsVersion:Z

.field private hasSecret:Z

.field private hasUaVersion:Z

.field private memoizedSerializedSize:I

.field private osVersion_:Ljava/lang/String;

.field private os_:Lcom/urbanairship/push/proto/Messages$OS;

.field private reliers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/proto/Messages$Relier;",
            ">;"
        }
    .end annotation
.end field

.field private secret_:Ljava/lang/String;

.field private uaVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/urbanairship/push/proto/Messages$Register;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/proto/Messages$Register;-><init>(Z)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$Register;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-static {}, Lcom/urbanairship/push/proto/Messages;->internalForceInit()V

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Register;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Register;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$Register;->initFields()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->apid_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->osVersion_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->uaVersion_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->secret_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Register;->initFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/proto/Messages$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/proto/Messages$Register;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->apid_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->osVersion_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->uaVersion_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->secret_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$1000(Lcom/urbanairship/push/proto/Messages$Register;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/urbanairship/push/proto/Messages$Register;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasApid:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->apid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/urbanairship/push/proto/Messages$Register;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOs:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/urbanairship/push/proto/Messages$Register;Lcom/urbanairship/push/proto/Messages$OS;)Lcom/urbanairship/push/proto/Messages$OS;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->os_:Lcom/urbanairship/push/proto/Messages$OS;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/urbanairship/push/proto/Messages$Register;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->osVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/urbanairship/push/proto/Messages$Register;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->uaVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/urbanairship/push/proto/Messages$Register;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/urbanairship/push/proto/Messages$Register;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/proto/Messages$Register;->secret_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Register;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Register;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$OS;->ANDROID:Lcom/urbanairship/push/proto/Messages$OS;

    iput-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->os_:Lcom/urbanairship/push/proto/Messages$OS;

    return-void
.end method

.method public static newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$800()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Register$Builder;

    invoke-static {v0}, Lcom/urbanairship/push/proto/Messages$Register$Builder;->access$700(Lcom/urbanairship/push/proto/Messages$Register$Builder;)Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->apid_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Register;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/urbanairship/push/proto/Messages$Register;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$Register;->defaultInstance:Lcom/urbanairship/push/proto/Messages$Register;

    return-object v0
.end method

.method public getOs()Lcom/urbanairship/push/proto/Messages$OS;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->os_:Lcom/urbanairship/push/proto/Messages$OS;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->osVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getReliers(I)Lcom/urbanairship/push/proto/Messages$Relier;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    return-object v0
.end method

.method public getReliersCount()I
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->reliers_:Ljava/util/List;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->secret_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v1, p0, Lcom/urbanairship/push/proto/Messages$Register;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasApid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOs()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getOs()Lcom/urbanairship/push/proto/Messages$OS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/proto/Messages$OS;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getUaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getReliersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_6
    iput v1, p0, Lcom/urbanairship/push/proto/Messages$Register;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUaVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->uaVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasApid:Z

    return v0
.end method

.method public hasOs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOs:Z

    return v0
.end method

.method public hasOsVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion:Z

    return v0
.end method

.method public hasSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret:Z

    return v0
.end method

.method public hasUaVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasApid:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOs:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret:Z

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    invoke-virtual {v0}, Lcom/urbanairship/push/proto/Messages$Relier;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilderForType()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->toBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/urbanairship/push/proto/Messages$Register$Builder;
    .locals 1

    invoke-static {p0}, Lcom/urbanairship/push/proto/Messages$Register;->newBuilder(Lcom/urbanairship/push/proto/Messages$Register;)Lcom/urbanairship/push/proto/Messages$Register$Builder;

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

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasApid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getApid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getOs()Lcom/urbanairship/push/proto/Messages$OS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/proto/Messages$OS;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasOsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasUaVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getUaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->hasSecret()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/urbanairship/push/proto/Messages$Register;->getReliersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$Relier;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    :cond_5
    return-void
.end method
