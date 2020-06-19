.class public Lcom/novioplan/pollennieuws/data/ObservationData;
.super Ljava/lang/Object;
.source "ObservationData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/novioplan/pollennieuws/data/ObservationData;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static tag:Ljava/lang/String;


# instance fields
.field private day:I

.field private id:I

.field private month:I

.field private stringMonthToIntMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private year:I

.field private zCity:Ljava/lang/String;

.field private zCountry:Ljava/lang/String;

.field private zDate:J

.field private zDeleted:I

.field private zEnt:I

.field private zIntensity:I

.field private zLat:F

.field private zLon:F

.field private zNeighborhood:Ljava/lang/String;

.field private zOpt:I

.field private zProvince:Ljava/lang/String;

.field private zServerId:Ljava/lang/String;

.field private zSymptom1:I

.field private zSymptom2:I

.field private zSymptom3:I

.field private zSymptom4:I

.field private zSymptom5:I

.field private zSymptom6:I

.field private zSyncDate:J

.field private zSynced:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/novioplan/pollennieuws/data/ObservationData;->$assertionsDisabled:Z

    .line 16
    const-string v0, "ObservationData"

    sput-object v0, Lcom/novioplan/pollennieuws/data/ObservationData;->tag:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    .line 41
    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->month:I

    .line 42
    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->day:I

    .line 43
    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->year:I

    .line 47
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->initializeMonthConversionMap()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIJFFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "zEnt"    # I
    .param p2, "zOpt"    # I
    .param p3, "zDeleted"    # I
    .param p4, "zIntensity"    # I
    .param p5, "zSymptom1"    # I
    .param p6, "zSymptom2"    # I
    .param p7, "zSymptom3"    # I
    .param p8, "zSymptom4"    # I
    .param p9, "zSymptom5"    # I
    .param p10, "zSymptom6"    # I
    .param p11, "zSynced"    # I
    .param p12, "zDate"    # J
    .param p14, "zLat"    # F
    .param p15, "zLon"    # F
    .param p16, "zSyncDate"    # J
    .param p18, "zCity"    # Ljava/lang/String;
    .param p19, "zCountry"    # Ljava/lang/String;
    .param p20, "zNeighborhood"    # Ljava/lang/String;
    .param p21, "zProvince"    # Ljava/lang/String;
    .param p22, "zServerId"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x0

    iput v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->month:I

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->day:I

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->year:I

    .line 71
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zEnt:I

    .line 72
    iput p2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zOpt:I

    .line 73
    iput p3, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    .line 74
    iput p4, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zIntensity:I

    .line 75
    iput p5, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom1:I

    .line 76
    iput p6, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom2:I

    .line 77
    iput p7, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom3:I

    .line 78
    iput p8, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom4:I

    .line 79
    iput p9, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom5:I

    .line 80
    iput p10, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom6:I

    .line 81
    iput p11, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSynced:I

    .line 82
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    .line 83
    move/from16 v0, p14

    iput v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLat:F

    .line 84
    move/from16 v0, p15

    iput v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLon:F

    .line 85
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSyncDate:J

    .line 86
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCity:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCountry:Ljava/lang/String;

    .line 88
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zNeighborhood:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zProvince:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zServerId:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->initializeMonthConversionMap()V

    .line 93
    return-void
.end method

.method private initializeMonthConversionMap()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Jan"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Feb"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Mar"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Apr"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "May"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Jun"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Jul"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Aug"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Sep"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Oct"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Nov"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->stringMonthToIntMap:Ljava/util/Map;

    const-string v1, "Dec"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private setDayValue()V
    .locals 6

    .prologue
    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "formatterDateDay":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/Integer;

    new-instance v2, Ljava/sql/Date;

    iget-wide v4, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->day:I

    .line 326
    return-void
.end method

.method private setMonthValue()V
    .locals 6

    .prologue
    .line 319
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "formatterDateMonth":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/Integer;

    new-instance v2, Ljava/sql/Date;

    iget-wide v4, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->month:I

    .line 321
    return-void
.end method

.method private setYearValue()V
    .locals 6

    .prologue
    .line 329
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "formatterDateYear":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/Integer;

    new-instance v2, Ljava/sql/Date;

    iget-wide v4, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->year:I

    .line 331
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/novioplan/pollennieuws/data/ObservationData;)I
    .locals 4
    .param p1, "another"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    .line 308
    sget-boolean v0, Lcom/novioplan/pollennieuws/data/ObservationData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 310
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 312
    const/4 v0, -0x1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/novioplan/pollennieuws/data/ObservationData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->compareTo(Lcom/novioplan/pollennieuws/data/ObservationData;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getDayValue()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->day:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->id:I

    return v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->month:I

    return v0
.end method

.method public getYearValue()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->year:I

    return v0
.end method

.method public getzCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCity:Ljava/lang/String;

    return-object v0
.end method

.method public getzCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getzDate()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    return-wide v0
.end method

.method public getzDeleted()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    return v0
.end method

.method public getzEnt()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zEnt:I

    return v0
.end method

.method public getzIntensity()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zIntensity:I

    return v0
.end method

.method public getzLat()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLat:F

    return v0
.end method

.method public getzLon()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLon:F

    return v0
.end method

.method public getzNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zNeighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getzOpt()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zOpt:I

    return v0
.end method

.method public getzProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getzServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getzSymptom1()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom1:I

    return v0
.end method

.method public getzSymptom2()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom2:I

    return v0
.end method

.method public getzSymptom3()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom3:I

    return v0
.end method

.method public getzSymptom4()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom4:I

    return v0
.end method

.method public getzSymptom5()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom5:I

    return v0
.end method

.method public getzSymptom6()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom6:I

    return v0
.end method

.method public getzSyncDate()F
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSyncDate:J

    long-to-float v0, v0

    return v0
.end method

.method public getzSynced()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSynced:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->id:I

    .line 298
    return-void
.end method

.method public setzCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "zCity"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCity:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setzCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "zCountry"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCountry:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setzDate(J)V
    .locals 3
    .param p1, "zDate"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    .line 197
    sget-object v0, Lcom/novioplan/pollennieuws/data/ObservationData;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observation date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->setMonthValue()V

    .line 199
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->setDayValue()V

    .line 200
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->setYearValue()V

    .line 201
    return-void
.end method

.method public setzDeleted(I)V
    .locals 0
    .param p1, "zDeleted"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    .line 125
    return-void
.end method

.method public setzEnt(I)V
    .locals 0
    .param p1, "zEnt"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zEnt:I

    .line 109
    return-void
.end method

.method public setzIntensity(I)V
    .locals 0
    .param p1, "zIntensity"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zIntensity:I

    .line 133
    return-void
.end method

.method public setzLat(F)V
    .locals 0
    .param p1, "zLat"    # F

    .prologue
    .line 208
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLat:F

    .line 209
    return-void
.end method

.method public setzLon(F)V
    .locals 0
    .param p1, "zLon"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLon:F

    .line 217
    return-void
.end method

.method public setzNeighborhood(Ljava/lang/String;)V
    .locals 0
    .param p1, "zNeighborhood"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zNeighborhood:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setzOpt(I)V
    .locals 0
    .param p1, "zOpt"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zOpt:I

    .line 117
    return-void
.end method

.method public setzProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "zProvince"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zProvince:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setzServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zServerId"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zServerId:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setzSymptom1(I)V
    .locals 0
    .param p1, "zSymptom1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom1:I

    .line 141
    return-void
.end method

.method public setzSymptom2(I)V
    .locals 0
    .param p1, "zSymptom2"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom2:I

    .line 149
    return-void
.end method

.method public setzSymptom3(I)V
    .locals 0
    .param p1, "zSymptom3"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom3:I

    .line 157
    return-void
.end method

.method public setzSymptom4(I)V
    .locals 0
    .param p1, "zSymptom4"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom4:I

    .line 165
    return-void
.end method

.method public setzSymptom5(I)V
    .locals 0
    .param p1, "zSymptom5"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom5:I

    .line 173
    return-void
.end method

.method public setzSymptom6(I)V
    .locals 0
    .param p1, "zSymptom6"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom6:I

    .line 181
    return-void
.end method

.method public setzSyncDate(J)V
    .locals 1
    .param p1, "zSyncDate"    # J

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSyncDate:J

    .line 225
    return-void
.end method

.method public setzSynced(I)V
    .locals 0
    .param p1, "zSynced"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSynced:I

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zEnt=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zEnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zOpt=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zOpt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zDeleted=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zIntensity=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom1=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom2=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom3=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom4=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom5=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSymptom6=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSymptom6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSynced=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSynced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zDate=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zLat=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zLon=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zLon:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zSyncDate=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zSyncDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zCity=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zCountry=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zNeighborhood=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zNeighborhood:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zProvince=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zProvince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zServerId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/data/ObservationData;->zServerId:Ljava/lang/String;

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
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 101
    return-void
.end method
