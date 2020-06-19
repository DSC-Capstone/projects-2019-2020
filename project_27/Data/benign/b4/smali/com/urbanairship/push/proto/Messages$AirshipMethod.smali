.class public final enum Lcom/urbanairship/push/proto/Messages$AirshipMethod;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/proto/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirshipMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/push/proto/Messages$AirshipMethod;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field public static final enum DEVICE_CONNECT:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field public static final enum ECHO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field public static final enum HELLO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field public static final enum PUSH_NOTIFICATION:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field public static final enum REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/urbanairship/push/proto/Messages$AirshipMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const-string v1, "DEVICE_CONNECT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->DEVICE_CONNECT:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const-string v1, "PUSH_NOTIFICATION"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->PUSH_NOTIFICATION:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const-string v1, "ECHO"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->ECHO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const-string v1, "HELLO"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/urbanairship/push/proto/Messages$AirshipMethod;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->HELLO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->DEVICE_CONNECT:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->PUSH_NOTIFICATION:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->ECHO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->HELLO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->$VALUES:[Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    new-instance v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod$1;

    invoke-direct {v0}, Lcom/urbanairship/push/proto/Messages$AirshipMethod$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->index:I

    iput p4, p0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/urbanairship/push/proto/Messages$AirshipMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/urbanairship/push/proto/Messages$AirshipMethod;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->REGISTER:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->DEVICE_CONNECT:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->PUSH_NOTIFICATION:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->ECHO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->HELLO:Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/push/proto/Messages$AirshipMethod;
    .locals 1

    const-class v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/push/proto/Messages$AirshipMethod;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->$VALUES:[Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    invoke-virtual {v0}, [Lcom/urbanairship/push/proto/Messages$AirshipMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/push/proto/Messages$AirshipMethod;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/push/proto/Messages$AirshipMethod;->value:I

    return v0
.end method
