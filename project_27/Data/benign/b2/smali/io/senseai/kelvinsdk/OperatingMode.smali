.class public final enum Lio/senseai/kelvinsdk/OperatingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/senseai/kelvinsdk/OperatingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

.field public static final enum ALWAYS_SLOW:Lio/senseai/kelvinsdk/OperatingMode;

.field public static final enum TIMER:Lio/senseai/kelvinsdk/OperatingMode;

.field private static final synthetic ˊ:[Lio/senseai/kelvinsdk/OperatingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lio/senseai/kelvinsdk/OperatingMode;

    const-string v1, "ALWAYS_FAST"

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/OperatingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

    .line 8
    new-instance v0, Lio/senseai/kelvinsdk/OperatingMode;

    const-string v1, "ALWAYS_SLOW"

    invoke-direct {v0, v1, v3}, Lio/senseai/kelvinsdk/OperatingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_SLOW:Lio/senseai/kelvinsdk/OperatingMode;

    .line 9
    new-instance v0, Lio/senseai/kelvinsdk/OperatingMode;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lio/senseai/kelvinsdk/OperatingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lio/senseai/kelvinsdk/OperatingMode;

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_SLOW:Lio/senseai/kelvinsdk/OperatingMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    aput-object v1, v0, v4

    sput-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ˊ:[Lio/senseai/kelvinsdk/OperatingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lio/senseai/kelvinsdk/OperatingMode;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lio/senseai/kelvinsdk/OperatingMode;->valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/OperatingMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/OperatingMode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lio/senseai/kelvinsdk/OperatingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/OperatingMode;

    return-object v0
.end method

.method public static values()[Lio/senseai/kelvinsdk/OperatingMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ˊ:[Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v0}, [Lio/senseai/kelvinsdk/OperatingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/senseai/kelvinsdk/OperatingMode;

    return-object v0
.end method
