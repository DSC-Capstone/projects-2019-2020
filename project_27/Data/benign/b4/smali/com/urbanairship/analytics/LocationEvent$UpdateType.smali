.class public final enum Lcom/urbanairship/analytics/LocationEvent$UpdateType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/analytics/LocationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/analytics/LocationEvent$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

.field public static final enum CHANGE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

.field public static final enum CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

.field public static final enum SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    new-instance v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const-string v1, "CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CHANGE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->SINGLE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CHANGE:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->$VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    .locals 1

    const-class v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    .locals 1

    sget-object v0, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->$VALUES:[Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v0}, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    return-object v0
.end method
