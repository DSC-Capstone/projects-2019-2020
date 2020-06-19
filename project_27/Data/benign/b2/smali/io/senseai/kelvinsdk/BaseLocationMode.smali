.class public final enum Lio/senseai/kelvinsdk/BaseLocationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/senseai/kelvinsdk/BaseLocationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

.field public static final enum MEDIUM:Lio/senseai/kelvinsdk/BaseLocationMode;

.field public static final enum OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

.field public static final enum SLOW:Lio/senseai/kelvinsdk/BaseLocationMode;

.field private static final synthetic ˊ:[Lio/senseai/kelvinsdk/BaseLocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/BaseLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->SLOW:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 8
    new-instance v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lio/senseai/kelvinsdk/BaseLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->MEDIUM:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 9
    new-instance v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    const-string v1, "EVERY_PREDICTION"

    invoke-direct {v0, v1, v4}, Lio/senseai/kelvinsdk/BaseLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 10
    new-instance v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v5}, Lio/senseai/kelvinsdk/BaseLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->SLOW:Lio/senseai/kelvinsdk/BaseLocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->MEDIUM:Lio/senseai/kelvinsdk/BaseLocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

    aput-object v1, v0, v5

    sput-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->ˊ:[Lio/senseai/kelvinsdk/BaseLocationMode;

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

.method public static fromName(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lio/senseai/kelvinsdk/BaseLocationMode;->valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/BaseLocationMode;

    return-object v0
.end method

.method public static values()[Lio/senseai/kelvinsdk/BaseLocationMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->ˊ:[Lio/senseai/kelvinsdk/BaseLocationMode;

    invoke-virtual {v0}, [Lio/senseai/kelvinsdk/BaseLocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/senseai/kelvinsdk/BaseLocationMode;

    return-object v0
.end method
