.class public Lio/senseai/kelvinsdk/Temperature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/senseai/kelvinsdk/Temperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ʻ:Ljava/lang/Double;

.field private ʼ:Ljava/lang/Double;

.field private ʽ:Ljava/lang/Double;

.field private ˊ:Ljava/lang/Double;

.field private ˋ:Ljava/lang/Double;

.field private ˎ:Ljava/lang/Double;

.field private ˏ:Ljava/lang/Double;

.field private ͺ:J

.field private ᐝ:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lio/senseai/kelvinsdk/Temperature$1;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/Temperature$1;-><init>()V

    sput-object v0, Lio/senseai/kelvinsdk/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide v2, 0x408f380000000000L    # 999.0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    .line 9
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    .line 10
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide v2, 0x408f380000000000L    # 999.0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    .line 9
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    .line 10
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/Temperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide v2, 0x408f380000000000L    # 999.0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    .line 9
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    .line 10
    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    .line 26
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/Temperature;->ˊ(Ljava/lang/Double;)V

    .line 27
    return-void
.end method

.method private ˊ(Ljava/lang/Double;)V
    .locals 4

    .prologue
    .line 69
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    .line 70
    const-wide v0, 0x4071126666666666L    # 273.15

    iget-object v2, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    .line 71
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    return-object v0
.end method

.method public getGpsAccuracy()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    return-object v0
.end method

.method public getTempC()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    return-object v0
.end method

.method public getTempF()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    return-object v0
.end method

.method public getTempK()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    return-object v0
.end method

.method public getTemperatureAccuracy()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    return-wide v0
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    .line 112
    return-void
.end method

.method public setGpsAccuracy(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    .line 116
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    .line 104
    return-void
.end method

.method public setLocation(Lio/senseai/kelvinsdk/KelvinLocation;)V
    .locals 2

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/KelvinLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/Temperature;->setLatitude(Ljava/lang/Double;)V

    .line 59
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/KelvinLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/Temperature;->setLongitude(Ljava/lang/Double;)V

    .line 60
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/KelvinLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/Temperature;->setAltitude(Ljava/lang/Double;)V

    .line 61
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/KelvinLocation;->getAccuracy()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/Temperature;->setGpsAccuracy(Ljava/lang/Double;)V

    goto :goto_0
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    .line 108
    return-void
.end method

.method public setTemp(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/Temperature;->ˊ(Ljava/lang/Double;)V

    .line 66
    return-void
.end method

.method public setTemperatureAccuracy(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    .line 124
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 119
    iput-wide p1, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    .line 120
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˊ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 134
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˋ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 135
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˎ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 136
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ˏ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 137
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ᐝ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 138
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʻ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 139
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʼ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 140
    iget-object v0, p0, Lio/senseai/kelvinsdk/Temperature;->ʽ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 141
    iget-wide v0, p0, Lio/senseai/kelvinsdk/Temperature;->ͺ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    return-void
.end method
