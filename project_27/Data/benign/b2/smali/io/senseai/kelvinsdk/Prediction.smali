.class final Lio/senseai/kelvinsdk/Prediction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ˊ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ˋ:[D

.field private static ˎ:D

.field private static ˏ:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [D

    sput-object v0, Lio/senseai/kelvinsdk/Prediction;->ˋ:[D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic ˊ(D)D
    .locals 0

    .prologue
    .line 24
    sput-wide p0, Lio/senseai/kelvinsdk/Prediction;->ˎ:D

    return-wide p0
.end method

.method static synthetic ˊ()[D
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/senseai/kelvinsdk/Prediction;->ˋ:[D

    return-object v0
.end method

.method static synthetic ˋ()D
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Lio/senseai/kelvinsdk/Prediction;->ˎ:D

    return-wide v0
.end method

.method static synthetic ˋ(D)D
    .locals 0

    .prologue
    .line 24
    sput-wide p0, Lio/senseai/kelvinsdk/Prediction;->ˏ:D

    return-wide p0
.end method

.method static synthetic ˎ()D
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Lio/senseai/kelvinsdk/Prediction;->ˏ:D

    return-wide v0
.end method
