.class public final enum Lio/senseai/kelvinsdk/RawData$FilterFields;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/senseai/kelvinsdk/RawData$FilterFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cpu_freq:Lio/senseai/kelvinsdk/RawData$FilterFields;

.field public static final enum cpu_load:Lio/senseai/kelvinsdk/RawData$FilterFields;

.field public static final enum temp:Lio/senseai/kelvinsdk/RawData$FilterFields;

.field public static final enum time:Lio/senseai/kelvinsdk/RawData$FilterFields;

.field private static final synthetic ˊ:[Lio/senseai/kelvinsdk/RawData$FilterFields;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    const-string v1, "time"

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FilterFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->time:Lio/senseai/kelvinsdk/RawData$FilterFields;

    .line 42
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    const-string v1, "temp"

    invoke-direct {v0, v1, v3}, Lio/senseai/kelvinsdk/RawData$FilterFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->temp:Lio/senseai/kelvinsdk/RawData$FilterFields;

    .line 43
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    const-string v1, "cpu_load"

    invoke-direct {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData$FilterFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_load:Lio/senseai/kelvinsdk/RawData$FilterFields;

    .line 44
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    const-string v1, "cpu_freq"

    invoke-direct {v0, v1, v5}, Lio/senseai/kelvinsdk/RawData$FilterFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FilterFields;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lio/senseai/kelvinsdk/RawData$FilterFields;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FilterFields;->time:Lio/senseai/kelvinsdk/RawData$FilterFields;

    aput-object v1, v0, v2

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FilterFields;->temp:Lio/senseai/kelvinsdk/RawData$FilterFields;

    aput-object v1, v0, v3

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_load:Lio/senseai/kelvinsdk/RawData$FilterFields;

    aput-object v1, v0, v4

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FilterFields;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FilterFields;

    aput-object v1, v0, v5

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->ˊ:[Lio/senseai/kelvinsdk/RawData$FilterFields;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/RawData$FilterFields;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/RawData$FilterFields;

    return-object v0
.end method

.method public static values()[Lio/senseai/kelvinsdk/RawData$FilterFields;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FilterFields;->ˊ:[Lio/senseai/kelvinsdk/RawData$FilterFields;

    invoke-virtual {v0}, [Lio/senseai/kelvinsdk/RawData$FilterFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/senseai/kelvinsdk/RawData$FilterFields;

    return-object v0
.end method
