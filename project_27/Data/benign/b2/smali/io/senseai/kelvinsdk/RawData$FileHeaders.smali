.class public final enum Lio/senseai/kelvinsdk/RawData$FileHeaders;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/senseai/kelvinsdk/RawData$FileHeaders;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field public static final enum timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

.field private static final synthetic ˊ:[Lio/senseai/kelvinsdk/RawData$FileHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "timestamp"

    invoke-direct {v0, v1, v3}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 21
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "cpu_freq"

    invoke-direct {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 22
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "cpu_load"

    invoke-direct {v0, v1, v5}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 23
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "batt_volt"

    invoke-direct {v0, v1, v6}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 24
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "batt_temp"

    invoke-direct {v0, v1, v7}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 25
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "batt_temp_adc"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 26
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "screen_state"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 27
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "charging_state"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 28
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_temp"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 29
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_ambTemp"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 30
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_humidity"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 31
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_light"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 32
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_pressure"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 33
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_proximity"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 34
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_mag_field_x"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 35
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_mag_field_y"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 36
    new-instance v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v1, "sman_mag_field_z"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData$FileHeaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [Lio/senseai/kelvinsdk/RawData$FileHeaders;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v1, v0, v3

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v1, v0, v4

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v1, v0, v5

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v1, v0, v6

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    aput-object v2, v0, v1

    sput-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->ˊ:[Lio/senseai/kelvinsdk/RawData$FileHeaders;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/senseai/kelvinsdk/RawData$FileHeaders;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;

    return-object v0
.end method

.method public static values()[Lio/senseai/kelvinsdk/RawData$FileHeaders;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->ˊ:[Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v0}, [Lio/senseai/kelvinsdk/RawData$FileHeaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/senseai/kelvinsdk/RawData$FileHeaders;

    return-object v0
.end method
