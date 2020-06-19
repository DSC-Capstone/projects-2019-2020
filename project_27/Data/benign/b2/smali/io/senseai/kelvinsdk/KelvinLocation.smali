.class public Lio/senseai/kelvinsdk/KelvinLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ˊ:J

.field private ˋ:D

.field private ˎ:D

.field private ˏ:D

.field private ᐝ:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ᐝ:D

    return-wide v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˏ:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˋ:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˎ:D

    return-wide v0
.end method

.method public getUtcTime()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˊ:J

    return-wide v0
.end method

.method public setAccuracy(D)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ᐝ:D

    .line 51
    return-void
.end method

.method public setAltitude(D)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˏ:D

    .line 43
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˋ:D

    .line 27
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˎ:D

    .line 35
    return-void
.end method

.method public setUtcTime(J)V
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lio/senseai/kelvinsdk/KelvinLocation;->ˊ:J

    .line 19
    return-void
.end method
