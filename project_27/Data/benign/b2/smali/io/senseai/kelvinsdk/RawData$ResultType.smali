.class public final enum Lio/senseai/kelvinsdk/RawData$ResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/senseai/kelvinsdk/RawData$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Text:Lio/senseai/kelvinsdk/RawData$ResultType;

.field public static final enum k:Lio/senseai/kelvinsdk/RawData$ResultType;

.field public static final enum r:Lio/senseai/kelvinsdk/RawData$ResultType;

.field public static final enum rsq:Lio/senseai/kelvinsdk/RawData$ResultType;

.field public static final enum ssdTot:Lio/senseai/kelvinsdk/RawData$ResultType;

.field public static final enum sum:Lio/senseai/kelvinsdk/RawData$ResultType;

.field private static final synthetic ˊ:[Lio/senseai/kelvinsdk/RawData$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "sum"

    invoke-direct {v0, v1, v3}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->sum:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 50
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "ssdTot"

    invoke-direct {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->ssdTot:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 51
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "rsq"

    invoke-direct {v0, v1, v5}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->rsq:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 52
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "k"

    invoke-direct {v0, v1, v6}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->k:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 53
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "r"

    invoke-direct {v0, v1, v7}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->r:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 54
    new-instance v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    const-string v1, "Text"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->Text:Lio/senseai/kelvinsdk/RawData$ResultType;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Lio/senseai/kelvinsdk/RawData$ResultType;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$ResultType;->sum:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lio/senseai/kelvinsdk/RawData$ResultType;->ssdTot:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lio/senseai/kelvinsdk/RawData$ResultType;->rsq:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lio/senseai/kelvinsdk/RawData$ResultType;->k:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lio/senseai/kelvinsdk/RawData$ResultType;->r:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/senseai/kelvinsdk/RawData$ResultType;->Text:Lio/senseai/kelvinsdk/RawData$ResultType;

    aput-object v2, v0, v1

    sput-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->ˊ:[Lio/senseai/kelvinsdk/RawData$ResultType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/RawData$ResultType;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/RawData$ResultType;

    return-object v0
.end method

.method public static values()[Lio/senseai/kelvinsdk/RawData$ResultType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lio/senseai/kelvinsdk/RawData$ResultType;->ˊ:[Lio/senseai/kelvinsdk/RawData$ResultType;

    invoke-virtual {v0}, [Lio/senseai/kelvinsdk/RawData$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/senseai/kelvinsdk/RawData$ResultType;

    return-object v0
.end method
