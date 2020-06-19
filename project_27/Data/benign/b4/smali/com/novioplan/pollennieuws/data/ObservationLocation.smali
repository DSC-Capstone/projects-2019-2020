.class public Lcom/novioplan/pollennieuws/data/ObservationLocation;
.super Ljava/lang/Object;
.source "ObservationLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private id:I

.field private zCity:Ljava/lang/String;

.field private zDate:J

.field private zEnt:I

.field private zLat:F

.field private zLon:F

.field private zOpt:I

.field private zState:Ljava/lang/String;

.field private zSubAdministrativeArea:Ljava/lang/String;

.field private zSubLocality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "ObservationLocation"

    sput-object v0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zEnt:I

    .line 30
    iput p2, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zOpt:I

    .line 31
    iput-wide p3, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zDate:J

    .line 32
    iput p5, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLat:F

    .line 33
    iput p6, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLon:F

    .line 34
    iput-object p7, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zCity:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zState:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubAdministrativeArea:Ljava/lang/String;

    .line 37
    iput-object p10, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubLocality:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->id:I

    return v0
.end method

.method public getzCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zCity:Ljava/lang/String;

    return-object v0
.end method

.method public getzDate()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zDate:J

    return-wide v0
.end method

.method public getzEnt()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zEnt:I

    return v0
.end method

.method public getzLat()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLat:F

    return v0
.end method

.method public getzLon()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLon:F

    return v0
.end method

.method public getzOpt()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zOpt:I

    return v0
.end method

.method public getzState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zState:Ljava/lang/String;

    return-object v0
.end method

.method public getzSubAdministrativeArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubAdministrativeArea:Ljava/lang/String;

    return-object v0
.end method

.method public getzSubLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubLocality:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->id:I

    .line 142
    return-void
.end method

.method public setzCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "zCity"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zCity:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setzDate(I)V
    .locals 2
    .param p1, "zDate"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zDate:J

    .line 71
    return-void
.end method

.method public setzEnt(I)V
    .locals 0
    .param p1, "zEnt"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zEnt:I

    .line 55
    return-void
.end method

.method public setzLat(F)V
    .locals 0
    .param p1, "zLat"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLat:F

    .line 79
    return-void
.end method

.method public setzLon(F)V
    .locals 0
    .param p1, "zLon"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLon:F

    .line 87
    return-void
.end method

.method public setzOpt(I)V
    .locals 0
    .param p1, "zOpt"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zOpt:I

    .line 63
    return-void
.end method

.method public setzState(Ljava/lang/String;)V
    .locals 0
    .param p1, "zState"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zState:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setzSubAdministrativeArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "zSubAdministrativeArea"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubAdministrativeArea:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setzSubLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "zSubLocality"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubLocality:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zEnt=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zEnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zOpt=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zOpt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zDate=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zLat=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zLon=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zLon:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zCity=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zState=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSubAdministrativeArea=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubAdministrativeArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSubLocality=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationLocation;->zSubLocality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    return-void
.end method
