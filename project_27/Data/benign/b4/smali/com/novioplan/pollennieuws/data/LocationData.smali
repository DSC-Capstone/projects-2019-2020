.class public Lcom/novioplan/pollennieuws/data/LocationData;
.super Ljava/lang/Object;
.source "LocationData.java"


# instance fields
.field private observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

.field private zCountry:Ljava/lang/String;

.field private zNeighborhood:Ljava/lang/String;

.field private zProvince:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-direct {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    .line 19
    return-void
.end method

.method public constructor <init>(IIJFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "zEnt"    # I
    .param p2, "zOpt"    # I
    .param p3, "zDate"    # J
    .param p5, "zLat"    # F
    .param p6, "zLon"    # F
    .param p7, "zCity"    # Ljava/lang/String;
    .param p8, "zState"    # Ljava/lang/String;
    .param p9, "zSubAdministrativeArea"    # Ljava/lang/String;
    .param p10, "zSubLocality"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Lcom/novioplan/pollennieuws/data/ObservationLocation;

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/novioplan/pollennieuws/data/ObservationLocation;-><init>(IIJFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    .line 25
    return-void
.end method


# virtual methods
.method public getObservationLocation()Lcom/novioplan/pollennieuws/data/ObservationLocation;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    return-object v0
.end method

.method public getzCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getzCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "Nederland"

    return-object v0
.end method

.method public getzDate()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getzEnt()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzEnt()I

    move-result v0

    return v0
.end method

.method public getzLat()F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzLat()F

    move-result v0

    return v0
.end method

.method public getzLon()F
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzLon()F

    move-result v0

    return v0
.end method

.method public getzNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->zNeighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getzOpt()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzOpt()I

    move-result v0

    return v0
.end method

.method public getzProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->zProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getzState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getzSubAdministrativeArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getzSubLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzSubLocality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setObservationLocation(Lcom/novioplan/pollennieuws/data/ObservationLocation;)V
    .locals 0
    .param p1, "observationLocation"    # Lcom/novioplan/pollennieuws/data/ObservationLocation;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    .line 33
    return-void
.end method

.method public setzCity(Ljava/lang/String;)V
    .locals 1
    .param p1, "zCity"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzCity(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setzCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "zCountry"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/LocationData;->zCountry:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setzDate(I)V
    .locals 1
    .param p1, "zDate"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzDate(I)V

    .line 58
    return-void
.end method

.method public setzEnt(I)V
    .locals 1
    .param p1, "zEnt"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzEnt(I)V

    .line 42
    return-void
.end method

.method public setzLat(F)V
    .locals 1
    .param p1, "zLat"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzLat(F)V

    .line 66
    return-void
.end method

.method public setzLon(F)V
    .locals 1
    .param p1, "zLon"    # F

    .prologue
    .line 73
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzLon(F)V

    .line 74
    return-void
.end method

.method public setzNeighborhood(Ljava/lang/String;)V
    .locals 0
    .param p1, "zNeighborhood"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/LocationData;->zNeighborhood:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setzOpt(I)V
    .locals 1
    .param p1, "zOpt"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzOpt(I)V

    .line 50
    return-void
.end method

.method public setzProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "zProvince"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/LocationData;->zProvince:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setzState(Ljava/lang/String;)V
    .locals 1
    .param p1, "zState"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzState(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setzSubAdministrativeArea(Ljava/lang/String;)V
    .locals 1
    .param p1, "zSubAdministrativeArea"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzSubAdministrativeArea(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setzSubLocality(Ljava/lang/String;)V
    .locals 1
    .param p1, "zSubLocality"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/LocationData;->observationLocation:Lcom/novioplan/pollennieuws/data/ObservationLocation;

    invoke-virtual {v0, p1}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setzSubLocality(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lat=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLat()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] lon=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLon()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] country=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/LocationData;->getzCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], subAdministrativeArea=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], city=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/LocationData;->getzCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
