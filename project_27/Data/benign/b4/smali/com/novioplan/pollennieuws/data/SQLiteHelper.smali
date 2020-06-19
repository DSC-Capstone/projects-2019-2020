.class public Lcom/novioplan/pollennieuws/data/SQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DB:Ljava/lang/String; = "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

.field public static final DB_NAME:Ljava/lang/String; = "LocalObservations.sqlite"

.field public static final OBSERVATION_LOCATION_TABLE:Ljava/lang/String; = "ZOBSERVATIONLOCATION"

.field public static final OBSERVATION_TABLE:Ljava/lang/String; = "ZOBSERVATION"

.field public static final VERSION:I = 0x0

.field public static final ZCITY:Ljava/lang/String; = "ZCITY"

.field public static final ZCOUNTRY:Ljava/lang/String; = "ZCOUNTRY"

.field public static final ZDATE:Ljava/lang/String; = "ZDATE"

.field public static final ZDELETED:Ljava/lang/String; = "ZDELETED"

.field public static final ZINTENSITY:Ljava/lang/String; = "ZINTENSITY"

.field public static final ZLAT:Ljava/lang/String; = "ZLAT"

.field public static final ZLON:Ljava/lang/String; = "ZLON"

.field public static final ZNEIGHBORHOOD:Ljava/lang/String; = "ZNEIGHBORHOOD"

.field public static final ZPROVINCE:Ljava/lang/String; = "ZPROVINCE"

.field public static final ZSERVERID:Ljava/lang/String; = "ZSERVERID"

.field public static final ZSTATE:Ljava/lang/String; = "ZSTATE"

.field public static final ZSUBADMINSTRATIVEAREA:Ljava/lang/String; = "ZSUBADMINSTRATIVEAREA"

.field public static final ZSUBLOCALITY:Ljava/lang/String; = "ZSUBLOCALITY"

.field public static final ZSYMPTOM1:Ljava/lang/String; = "ZSYMPTOM1"

.field public static final ZSYMPTOM2:Ljava/lang/String; = "ZSYMPTOM2"

.field public static final ZSYMPTOM3:Ljava/lang/String; = "ZSYMPTOM3"

.field public static final ZSYMPTOM4:Ljava/lang/String; = "ZSYMPTOM4"

.field public static final ZSYMPTOM5:Ljava/lang/String; = "ZSYMPTOM5"

.field public static final ZSYMPTOM6:Ljava/lang/String; = "ZSYMPTOM6"

.field public static final ZSYNCDATE:Ljava/lang/String; = "ZSYNCDATE"

.field public static final ZSYNCED:Ljava/lang/String; = "ZSYNCED"

.field public static final Z_ENT:Ljava/lang/String; = "Z_ENT"

.field public static final Z_OPT:Ljava/lang/String; = "Z_OPT"

.field public static final Z_PK:Ljava/lang/String; = "Z_PK"

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/novioplan/pollennieuws/data/SQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->$assertionsDisabled:Z

    .line 25
    const-string v0, "SQLiteHelper"

    sput-object v0, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "LocalObservations.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    return-void
.end method

.method public static addObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)I
    .locals 11
    .param p0, "obs"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    const/4 v10, 0x0

    .line 190
    sget-boolean v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 191
    :cond_0
    const-string v5, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v6, 0x0

    invoke-static {v5, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 193
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "Z_ENT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzEnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v5, "Z_OPT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzOpt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v5, "ZDELETED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v5, "ZINTENSITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v5, "ZSYMPTOM1"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v5, "ZSYMPTOM2"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v5, "ZSYMPTOM3"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v5, "ZSYMPTOM4"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v5, "ZSYMPTOM5"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v5, "ZSYMPTOM6"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v5, "ZSYNCED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSynced()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(addObservation)zDate(long) = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v5, "ZDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 207
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(addObservation)zDate(double) = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v5, "ZLAT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 209
    const-string v5, "ZLON"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLon()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 210
    const-string v5, "ZSYNCDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSyncDate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 211
    const-string v5, "ZCITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v5, "ZCOUNTRY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v5, "ZNEIGHBORHOOD"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzNeighborhood()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "ZPROVINCE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v5, "ZSERVERID"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v5, "ZOBSERVATION"

    invoke-virtual {v0, v5, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 218
    .local v2, "id":J
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new ObservationData id = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 220
    new-instance v1, Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "intId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/novioplan/pollennieuws/data/ObservationData;->setId(I)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5
.end method

.method public static addObservationLocation(Lcom/novioplan/pollennieuws/data/ObservationLocation;)V
    .locals 9
    .param p0, "loc"    # Lcom/novioplan/pollennieuws/data/ObservationLocation;

    .prologue
    const/4 v8, 0x0

    .line 260
    sget-boolean v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 261
    :cond_0
    const-string v5, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v6, 0x0

    invoke-static {v5, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "Z_ENT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzEnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v5, "Z_OPT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzOpt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v5, "ZDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v5, "ZLAT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzLat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 269
    const-string v5, "ZLON"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzLon()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 270
    const-string v5, "ZCITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v5, "ZSTATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "ZSUBADMINSTRATIVEAREA"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v5, "ZSUBLOCALITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->getzSubLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v5, "ZOBSERVATIONLOCATION"

    invoke-virtual {v0, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 276
    .local v2, "id":J
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new ObservationLocation id = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v1, Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "intId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/novioplan/pollennieuws/data/ObservationLocation;->setId(I)V

    .line 280
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 281
    return-void
.end method

.method public static copyDataBase(Landroid/content/Context;)V
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 296
    :try_start_0
    sget-object v7, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v8, "copying/creating new db"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "LocalObservations.sqlite"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 298
    .local v2, "input":Ljava/io/InputStream;
    const-string v5, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    .line 299
    .local v5, "outPutFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 300
    .local v6, "output":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 302
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_0

    .line 303
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 308
    .end local v0    # "buffer":[B
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "outPutFileName":Ljava/lang/String;
    .end local v6    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 309
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No DataBase copied over["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 310
    sget-object v7, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 305
    .restart local v0    # "buffer":[B
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "outPutFileName":Ljava/lang/String;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 306
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 311
    .end local v0    # "buffer":[B
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "outPutFileName":Ljava/lang/String;
    .end local v6    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getObservations()Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/novioplan/pollennieuws/data/ObservationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const-string v5, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 339
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v27, "observations":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/ObservationData;>;"
    const/16 v26, 0x0

    .line 342
    .local v26, "observationCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "ZOBSERVATION"

    const/16 v6, 0x15

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Z_PK"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Z_ENT"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Z_OPT"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "ZDELETED"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "ZINTENSITY"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "ZSYMPTOM1"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "ZSYMPTOM2"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "ZSYMPTOM3"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "ZSYMPTOM4"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "ZSYMPTOM5"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "ZSYMPTOM6"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "ZSYNCED"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "ZDATE"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "ZLAT"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "ZLON"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "ZSYNCDATE"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "ZCITY"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "ZCOUNTRY"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "ZNEIGHBORHOOD"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "ZPROVINCE"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "ZSERVERID"

    aput-object v8, v6, v7

    const-string v7, "ZDELETED=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 350
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 353
    const/4 v14, 0x0

    .line 356
    .local v14, "countPrinted":I
    :cond_0
    new-instance v25, Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-direct/range {v25 .. v25}, Lcom/novioplan/pollennieuws/data/ObservationData;-><init>()V

    .line 357
    .local v25, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 358
    .local v29, "pk":I
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setId(I)V

    .line 360
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 362
    .local v20, "ent":I
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzEnt(I)V

    .line 363
    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 365
    .local v28, "opt":I
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzOpt(I)V

    .line 366
    const/4 v5, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 368
    .local v18, "deleted":I
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDeleted(I)V

    .line 369
    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 371
    .local v21, "intensity":I
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzIntensity(I)V

    .line 373
    const/4 v5, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 375
    .local v32, "symptom1":I
    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom1(I)V

    .line 376
    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 378
    .local v33, "symptom2":I
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom2(I)V

    .line 379
    const/4 v5, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 381
    .local v34, "symptom3":I
    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom3(I)V

    .line 382
    const/16 v5, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 384
    .local v35, "symptom4":I
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom4(I)V

    .line 385
    const/16 v5, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 387
    .local v36, "symptom5":I
    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom5(I)V

    .line 388
    const/16 v5, 0xa

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 390
    .local v37, "symptom6":I
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom6(I)V

    .line 391
    const/16 v5, 0xb

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 393
    .local v40, "synced":I
    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSynced(I)V

    .line 397
    const/16 v5, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 399
    .local v16, "date":J
    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDate(J)V

    .line 401
    const/16 v5, 0xd

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    .line 403
    .local v22, "lat":F
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLat(F)V

    .line 404
    const/16 v5, 0xe

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v23

    .line 406
    .local v23, "lon":F
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLon(F)V

    .line 408
    const/16 v5, 0xf

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 410
    .local v38, "syncdate":J
    move-object/from16 v0, v25

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSyncDate(J)V

    .line 412
    const/16 v5, 0x10

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 414
    .local v13, "city":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCity(Ljava/lang/String;)V

    .line 415
    const/16 v5, 0x11

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 417
    .local v15, "country":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCountry(Ljava/lang/String;)V

    .line 418
    const/16 v5, 0x12

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 420
    .local v24, "neighborhood":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzNeighborhood(Ljava/lang/String;)V

    .line 421
    const/16 v5, 0x13

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 423
    .local v30, "province":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzProvince(Ljava/lang/String;)V

    .line 424
    const/16 v5, 0x14

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 426
    .local v31, "serverid":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzServerId(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v14, v14, 0x1

    .line 431
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 437
    .end local v13    # "city":Ljava/lang/String;
    .end local v14    # "countPrinted":I
    .end local v15    # "country":Ljava/lang/String;
    .end local v16    # "date":J
    .end local v18    # "deleted":I
    .end local v20    # "ent":I
    .end local v21    # "intensity":I
    .end local v22    # "lat":F
    .end local v23    # "lon":F
    .end local v24    # "neighborhood":Ljava/lang/String;
    .end local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .end local v28    # "opt":I
    .end local v29    # "pk":I
    .end local v30    # "province":Ljava/lang/String;
    .end local v31    # "serverid":Ljava/lang/String;
    .end local v32    # "symptom1":I
    .end local v33    # "symptom2":I
    .end local v34    # "symptom3":I
    .end local v35    # "symptom4":I
    .end local v36    # "symptom5":I
    .end local v37    # "symptom6":I
    .end local v38    # "syncdate":J
    .end local v40    # "synced":I
    :cond_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 438
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 440
    :goto_0
    return-object v27

    .line 433
    :catch_0
    move-exception v19

    .line 434
    .local v19, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 438
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 437
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 438
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
.end method

.method public static getUnSyncedObservation()Lcom/novioplan/pollennieuws/data/ObservationData;
    .locals 41

    .prologue
    .line 77
    const-string v5, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 79
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v24, 0x0

    .line 80
    .local v24, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    const/16 v26, 0x0

    .line 81
    .local v26, "observationCursor":Landroid/database/Cursor;
    const/16 v29, -0x1

    .line 83
    .local v29, "prevId":I
    :try_start_0
    const-string v5, "ZOBSERVATION"

    const/16 v6, 0x15

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Z_PK"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Z_ENT"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Z_OPT"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "ZDELETED"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "ZINTENSITY"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "ZSYMPTOM1"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "ZSYMPTOM2"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "ZSYMPTOM3"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "ZSYMPTOM4"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "ZSYMPTOM5"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "ZSYMPTOM6"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "ZSYNCED"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "ZDATE"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "ZLAT"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "ZLON"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "ZSYNCDATE"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "ZCITY"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "ZCOUNTRY"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "ZNEIGHBORHOOD"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "ZPROVINCE"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "ZSERVERID"

    aput-object v8, v6, v7

    const-string v7, "ZSYNCED=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "1"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 91
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    move-object/from16 v25, v24

    .line 95
    .end local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .local v25, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :try_start_1
    new-instance v24, Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-direct/range {v24 .. v24}, Lcom/novioplan/pollennieuws/data/ObservationData;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .end local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .restart local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 98
    .local v28, "pk":I
    move/from16 v0, v29

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 99
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v6, "** Tried to sync the previous report again **"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    const/4 v5, 0x0

    .line 180
    if-eqz v26, :cond_1

    .line 181
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    .end local v28    # "pk":I
    :goto_0
    return-object v5

    .line 102
    .restart local v28    # "pk":I
    :cond_2
    move/from16 v29, v28

    .line 103
    :try_start_3
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setId(I)V

    .line 106
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 108
    .local v19, "ent":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzEnt(I)V

    .line 109
    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 111
    .local v27, "opt":I
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzOpt(I)V

    .line 112
    const/4 v5, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 114
    .local v15, "deleted":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDeleted(I)V

    .line 115
    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 117
    .local v20, "intensity":I
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzIntensity(I)V

    .line 119
    const/4 v5, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 121
    .local v32, "symptom1":I
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom1(I)V

    .line 122
    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 124
    .local v33, "symptom2":I
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom2(I)V

    .line 125
    const/4 v5, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 127
    .local v34, "symptom3":I
    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom3(I)V

    .line 128
    const/16 v5, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 130
    .local v35, "symptom4":I
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom4(I)V

    .line 131
    const/16 v5, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 133
    .local v36, "symptom5":I
    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom5(I)V

    .line 134
    const/16 v5, 0xa

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 136
    .local v37, "symptom6":I
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom6(I)V

    .line 137
    const/16 v5, 0xb

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 139
    .local v40, "synced":I
    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSynced(I)V

    .line 141
    const/16 v5, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 143
    .local v16, "date":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDate(J)V

    .line 145
    const/16 v5, 0xd

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    .line 147
    .local v21, "lat":F
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLat(F)V

    .line 148
    const/16 v5, 0xe

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    .line 150
    .local v22, "lon":F
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLon(F)V

    .line 152
    const/16 v5, 0xf

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 154
    .local v38, "syncdate":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSyncDate(J)V

    .line 156
    const/16 v5, 0x10

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, "city":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCity(Ljava/lang/String;)V

    .line 159
    const/16 v5, 0x11

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "country":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCountry(Ljava/lang/String;)V

    .line 162
    const/16 v5, 0x12

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 164
    .local v23, "neighborhood":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzNeighborhood(Ljava/lang/String;)V

    .line 165
    const/16 v5, 0x13

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 167
    .local v30, "province":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzProvince(Ljava/lang/String;)V

    .line 168
    const/16 v5, 0x14

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 170
    .local v31, "serverid":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzServerId(Ljava/lang/String;)V

    .line 172
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found an un-synced observation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/novioplan/pollennieuws/data/ObservationData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 180
    .end local v13    # "city":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "deleted":I
    .end local v16    # "date":J
    .end local v19    # "ent":I
    .end local v20    # "intensity":I
    .end local v21    # "lat":F
    .end local v22    # "lon":F
    .end local v23    # "neighborhood":Ljava/lang/String;
    .end local v27    # "opt":I
    .end local v28    # "pk":I
    .end local v30    # "province":Ljava/lang/String;
    .end local v31    # "serverid":Ljava/lang/String;
    .end local v32    # "symptom1":I
    .end local v33    # "symptom2":I
    .end local v34    # "symptom3":I
    .end local v35    # "symptom4":I
    .end local v36    # "symptom5":I
    .end local v37    # "symptom6":I
    .end local v38    # "syncdate":J
    .end local v40    # "synced":I
    :goto_1
    if-eqz v26, :cond_3

    .line 181
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_2
    move-object/from16 v5, v24

    .line 185
    goto/16 :goto_0

    .line 175
    :cond_4
    :try_start_4
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v6, "loadObservations: no un-synced observations were found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v18

    .line 178
    .local v18, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    if-eqz v26, :cond_5

    .line 181
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 180
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v26, :cond_6

    .line 181
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 180
    .end local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .restart local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :catchall_1
    move-exception v5

    move-object/from16 v24, v25

    .end local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .restart local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    goto :goto_4

    .line 177
    .end local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .restart local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :catch_1
    move-exception v18

    move-object/from16 v24, v25

    .end local v25    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    .restart local v24    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    goto :goto_3
.end method

.method public static updateLog(Lcom/novioplan/pollennieuws/data/ObservationData;)I
    .locals 10
    .param p0, "obs"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 444
    sget-boolean v4, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 445
    :cond_0
    sget-object v4, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLog...delete observation ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v4, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 448
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "Z_ENT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzEnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v4, "Z_OPT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzOpt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v4, "ZDELETED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v4, "ZINTENSITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v4, "ZSYMPTOM1"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v4, "ZSYMPTOM2"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v4, "ZSYMPTOM3"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v4, "ZSYMPTOM4"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v4, "ZSYMPTOM5"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v4, "ZSYMPTOM6"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v4, "ZSYNCED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSynced()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v4, "ZDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    const-string v4, "ZLAT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 462
    const-string v4, "ZLON"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLon()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 463
    const-string v4, "ZSYNCDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSyncDate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 464
    const-string v4, "ZCITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v4, "ZCOUNTRY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v4, "ZNEIGHBORHOOD"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzNeighborhood()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "ZPROVINCE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzProvince()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "ZSERVERID"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v4, "%s = ?"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "Z_PK"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "where":Ljava/lang/String;
    const-string v4, "ZOBSERVATION"

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 474
    return v1
.end method

.method public static updateObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)I
    .locals 10
    .param p0, "obs"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    sget-boolean v4, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 227
    :cond_0
    const-string v4, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "Z_ENT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzEnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v4, "Z_OPT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzOpt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v4, "ZDELETED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v4, "ZINTENSITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v4, "ZSYMPTOM1"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v4, "ZSYMPTOM2"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v4, "ZSYMPTOM3"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v4, "ZSYMPTOM4"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v4, "ZSYMPTOM5"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v4, "ZSYMPTOM6"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v4, "ZSYNCED"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSynced()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    sget-object v4, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(updateObservation)zDate = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v4, "ZDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string v4, "ZLAT"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 244
    const-string v4, "ZLON"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLon()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 245
    const-string v4, "ZSYNCDATE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSyncDate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 246
    const-string v4, "ZCITY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "ZCOUNTRY"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v4, "ZNEIGHBORHOOD"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzNeighborhood()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v4, "ZPROVINCE"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzProvince()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "ZSERVERID"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "%s = ?"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "Z_PK"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "where":Ljava/lang/String;
    const-string v4, "ZOBSERVATION"

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 256
    return v1
.end method

.method public static verifyDB(Landroid/content/Context;)V
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "/data/data/com.novioplan.pollennieuws/LocalObservations.sqlite"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    sget-object v3, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v4, "db already exists!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v2

    .line 325
    .local v2, "sqle":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {p0}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->copyDataBase(Landroid/content/Context;)V

    .line 326
    sget-object v3, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 327
    .end local v2    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 285
    sget-object v0, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v1, "onCreate... not being used"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 290
    sget-object v0, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->tag:Ljava/lang/String;

    const-string v1, "onUpgrade... not being used"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method
