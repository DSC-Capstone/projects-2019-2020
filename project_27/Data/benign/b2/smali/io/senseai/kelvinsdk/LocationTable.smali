.class public Lio/senseai/kelvinsdk/LocationTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLUMN_ACCURACY:Ljava/lang/String; = "accuracy"

.field public static final COLUMN_ALTITUDE:Ljava/lang/String; = "altitude"

.field public static final COLUMN_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final COLUMN_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final COLUMN_UTC_TIME:Ljava/lang/String; = "utc_time"

.field public static final CREATE_TABLE_LOCATION:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS table_location(utc_time INTEGER, longitude REAL, latitude REAL, altitude REAL, accuracy REAL)"

.field public static final TABLE_LOCATION:Ljava/lang/String; = "table_location"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
