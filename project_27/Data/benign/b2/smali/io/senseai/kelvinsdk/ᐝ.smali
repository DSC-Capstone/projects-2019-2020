.class Lio/senseai/kelvinsdk/ᐝ;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final ˊ:Ljava/lang/String;

.field private static ˎ:Lio/senseai/kelvinsdk/ᐝ;


# instance fields
.field private ʻ:Landroid/hardware/SensorManager;

.field private ˋ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ˏ:Landroid/database/sqlite/SQLiteDatabase;

.field private ᐝ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˊ:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˎ:Lio/senseai/kelvinsdk/ᐝ;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "rawData.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˋ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    iput-object p1, p0, Lio/senseai/kelvinsdk/ᐝ;->ᐝ:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private declared-synchronized ˉ()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˋ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 90
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ᐝ;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static ˊ(Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/DeviceSpecificFile;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 952
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 953
    const-string v1, "dev_id"

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/DeviceObject;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v1, "filename"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v1, "scalar"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getScalar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    return-object v0
.end method

.method private ˊ(Landroid/database/Cursor;)Lauw;
    .locals 6

    .prologue
    .line 1001
    new-instance v1, Lauw;

    invoke-direct {v1}, Lauw;-><init>()V

    .line 1003
    const-string v0, "time"

    const-string v2, "timestamp_prediction"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1004
    const-string v0, "temperature"

    const-string v2, "temp_celsius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1005
    const-string v0, "temperature_accuracy"

    const-string v2, "temp_accuracy"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1007
    const-string v0, "lat"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 1008
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    .line 1009
    const-string v0, "lat"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1010
    const-string v0, "long"

    const-string v2, "long"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1011
    const-string v0, "altitude"

    const-string v2, "alt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1012
    const-string v0, "gps_accuracy"

    const-string v2, "acc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1015
    :cond_0
    const-string v0, "battery_level"

    const-string v2, "battery_level"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1017
    const-string v0, "timestamp_averages"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1018
    const-string v0, "average_charge_state"

    const-string v2, "charge_state"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1019
    const-string v0, "average_screen_state"

    const-string v2, "screen_state"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1021
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ᐝ:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1022
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1025
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 1026
    const-string v3, "average_sman_temp"

    const-string v4, "temp"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1028
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 1029
    const-string v3, "average_sman_amb_temp"

    const-string v4, "amb_temp"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1031
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 1032
    const-string v3, "average_sman_humidity"

    const-string v4, "humidity"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1034
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 1035
    const-string v3, "average_sman_light"

    const-string v4, "light"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1037
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 1038
    const-string v3, "average_sman_pressure"

    const-string v4, "pressure"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1040
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 1041
    const-string v3, "averge_sman_proximity"

    const-string v4, "proximity"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1043
    :cond_7
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1044
    const-string v0, "average_sman_mag_field_x"

    const-string v3, "mag_x"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1045
    const-string v0, "average_sman_mag_field_y"

    const-string v3, "mag_y"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1046
    const-string v0, "average_sman_mag_field_z"

    const-string v3, "mag_z"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lauw;->a(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 1051
    :cond_8
    return-object v1
.end method

.method public static ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˎ:Lio/senseai/kelvinsdk/ᐝ;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/senseai/kelvinsdk/ᐝ;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˎ:Lio/senseai/kelvinsdk/ᐝ;

    .line 46
    :cond_0
    sget-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˎ:Lio/senseai/kelvinsdk/ᐝ;

    return-object v0
.end method

.method private declared-synchronized ˌ()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˋ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ˍ()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 224
    const-string v2, "SELECT * FROM table_prediction"

    .line 226
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 233
    :cond_0
    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 238
    return v0

    .line 233
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method private ˑ()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 243
    const-string v2, "SELECT * FROM table_raw_data"

    .line 245
    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 258
    return v0

    .line 253
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method private ـ()Lio/senseai/kelvinsdk/DeviceObject;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 551
    const-string v0, "SELECT * FROM table_device_object"

    .line 556
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 557
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9795
    new-instance v2, Lio/senseai/kelvinsdk/DeviceObject;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/DeviceObject;-><init>()V

    .line 9796
    const-string v0, "dev_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceObject;->set_id(Ljava/lang/String;)V

    .line 9797
    const-string v0, "model"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceObject;->setModel(Ljava/lang/String;)V

    .line 9798
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceObject;->setName(Ljava/lang/String;)V

    .line 9799
    const-string v0, "os_version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceObject;->setOsVersion(Ljava/lang/String;)V

    .line 9800
    const-string v0, "type_code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/DeviceObject;->setTypeCode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    :cond_0
    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 566
    return-object v2

    .line 561
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 562
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 561
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private ᐧ()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 571
    const-string v0, "SELECT * FROM table_filename"

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 577
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10788
    :cond_0
    new-instance v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;-><init>()V

    .line 10789
    const-string v3, "filename"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->setFilename(Ljava/lang/String;)V

    .line 10790
    const-string v3, "scalar"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->setScalar(I)V

    .line 579
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 583
    :cond_1
    if-eqz v1, :cond_2

    .line 584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 588
    return-object v2

    .line 583
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method private ᐨ()Lio/senseai/kelvinsdk/HeatTransferConstant;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 593
    const-string v0, "SELECT * FROM table_heat_transfer"

    .line 598
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 599
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11781
    :cond_0
    new-instance v2, Lio/senseai/kelvinsdk/HeatTransferConstant;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/HeatTransferConstant;-><init>()V

    .line 11782
    const-string v0, "k"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/HeatTransferConstant;->setK(Ljava/lang/String;)V

    .line 11783
    const-string v0, "r"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/HeatTransferConstant;->setR(Ljava/lang/String;)V

    .line 602
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 605
    :cond_1
    if-eqz v1, :cond_2

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 610
    return-object v2

    .line 605
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 605
    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS table_raw_data(timestamp INTEGER PRIMARY KEY AUTOINCREMENT, cpu_freq REAL, cpu_load REAL, batt_volt REAL, batt_temp REAL, batt_temp_adc REAL, screen_state REAL, charging_state REAL, sman_temp REAL, sman_amb_temp REAL, sman_humidity REAL, sman_light REAL, sman_pressure REAL, sman_proximity REAL, sman_mag_field_x REAL, sman_mag_field_y REAL, sman_mag_field_z REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS table_prediction(key INTEGER PRIMARY KEY AUTOINCREMENT, timestamp_prediction INTEGER, temp_celsius REAL, lat REAL, long REAL, alt REAL,acc REAL, temp_accuracy REAL, battery_level REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE IF NOT EXISTS table_session(token TEXT, dev_id TEXT,api_key TEXT, portal_dev_id TEXT, android_uuid TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS table_device_object(dev_id TEXT, model TEXT, name TEXT, os_version TEXT, type_code TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "CREATE TABLE IF NOT EXISTS table_filename(dev_id TEXT, filename TEXT, scalar INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS table_heat_transfer(dev_id TEXT, r REAL, k REAL, type TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "CREATE TABLE IF NOT EXISTS table_configuration(master_switch INTEGER, collection_rate INTEGER, post_diagnostic_data INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE TABLE IF NOT EXISTS table_raw_data_filename(filename TEXT, data REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "CREATE TABLE IF NOT EXISTS table_averages(key INTEGER PRIMARY KEY AUTOINCREMENT,timestamp_averages INTEGER, charge_state REAL, temp REAL, amb_temp REAL, humidity REAL, light REAL, pressure REAL, proximity REAL, screen_state REAL,mag_x REAL, mag_y REAL, mag_z REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS table_count(count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS table_location(utc_time INTEGER, longitude REAL, latitude REAL, altitude REAL, accuracy REAL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "CREATE TABLE IF NOT EXISTS table_last_mode(data_mode TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    .line 73
    const-string v0, "DROP TABLE IF EXISTS table_raw_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "DROP TABLE IF EXISTS table_prediction"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "DROP TABLE IF EXISTS table_session"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "DROP TABLE IF EXISTS table_device_object"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "DROP TABLE IF EXISTS table_filename"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "DROP TABLE IF EXISTS table_heat_transfer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "DROP TABLE IF EXISTS table_configuration"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "DROP TABLE IF EXISTS table_raw_data_filename"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "DROP TABLE IF EXISTS table_averages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "DROP TABLE IF EXISTS table_count"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "DROP TABLE IF EXISTS table_location"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lio/senseai/kelvinsdk/ᐝ;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final ʻ()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 390
    .line 391
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 392
    const-string v2, "SELECT * FROM %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "table_averages"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 395
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 396
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 400
    :cond_0
    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 405
    return v0

    .line 400
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ʼ()Lio/senseai/kelvinsdk/Session;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 482
    const-string v0, "SELECT * FROM table_session"

    .line 486
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 487
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9772
    new-instance v2, Lio/senseai/kelvinsdk/Session;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/Session;-><init>()V

    .line 9773
    const-string v0, "token"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/Session;->setToken(Ljava/lang/String;)V

    .line 9774
    const-string v0, "api_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/Session;->setApiKey(Ljava/lang/String;)V

    .line 9775
    const-string v0, "portal_dev_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/Session;->setPortalDevId(Ljava/lang/String;)V

    .line 9776
    const-string v0, "android_uuid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/Session;->setAndroidUuid(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    :cond_0
    if-eqz v1, :cond_1

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 496
    return-object v2

    .line 491
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 491
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 501
    const-string v0, "SELECT * FROM table_session"

    .line 505
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 506
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "token"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 510
    :cond_0
    if-eqz v1, :cond_1

    .line 511
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 515
    return-object v2

    .line 510
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 511
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 510
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final ʾ()Lio/senseai/kelvinsdk/Configuration;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 614
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 615
    const-string v1, "SELECT * FROM table_configuration"

    .line 620
    :try_start_0
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 621
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11805
    new-instance v2, Lio/senseai/kelvinsdk/Configuration;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/Configuration;-><init>()V

    .line 11806
    const-string v4, "master_switch"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    move v4, v0

    :goto_0
    invoke-virtual {v2, v4}, Lio/senseai/kelvinsdk/Configuration;->setMaster_switch(Z)V

    .line 11807
    const-string v4, "collection_rate"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lio/senseai/kelvinsdk/Configuration;->setCollection_rate(I)V

    .line 11808
    const-string v4, "post_diagnostic_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lio/senseai/kelvinsdk/Configuration;->setPost_diagnostic_data(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 625
    :cond_0
    if-eqz v1, :cond_1

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 630
    return-object v2

    :cond_2
    move v4, v3

    .line 11806
    goto :goto_0

    :cond_3
    move v0, v3

    .line 11808
    goto :goto_1

    .line 625
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_4
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 625
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public final ʿ()Laur;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 647
    new-instance v0, Laur;

    invoke-direct {v0}, Laur;-><init>()V

    .line 650
    const-string v2, "SELECT * FROM (SELECT * FROM table_prediction LIMIT 50 OFFSET 0) AS a LEFT JOIN table_averages AS b ON a.timestamp_prediction = b.timestamp_averages"

    .line 663
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 664
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    :cond_0
    invoke-direct {p0, v1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/database/Cursor;)Lauw;

    move-result-object v2

    invoke-virtual {v0, v2}, Laur;->a(Laut;)V

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 670
    :cond_1
    if-eqz v1, :cond_2

    .line 671
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 675
    return-object v0

    .line 670
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 671
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ˈ()Lio/senseai/kelvinsdk/KelvinLocation;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 715
    const-string v0, "SELECT * FROM table_location"

    .line 717
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 718
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13758
    new-instance v2, Lio/senseai/kelvinsdk/KelvinLocation;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/KelvinLocation;-><init>()V

    .line 13759
    const-string v0, "utc_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/KelvinLocation;->setUtcTime(J)V

    .line 13760
    const-string v0, "longitude"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/KelvinLocation;->setLongitude(D)V

    .line 13761
    const-string v0, "latitude"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/KelvinLocation;->setLatitude(D)V

    .line 13762
    const-string v0, "altitude"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/KelvinLocation;->setAltitude(D)V

    .line 13763
    const-string v0, "accuracy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/KelvinLocation;->setAccuracy(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 722
    :cond_0
    if-eqz v1, :cond_1

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 728
    return-object v2

    .line 722
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 722
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final ˊ()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_raw_data"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_raw_data_filename"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 112
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 112
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ˊ(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 700
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 701
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12694
    :try_start_0
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 12695
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_location"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12696
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 704
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_location"

    const/4 v2, 0x0

    .line 12991
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 12992
    const-string v4, "utc_time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12993
    const-string v4, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 12994
    const-string v4, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 12995
    const-string v4, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 12996
    const-string v4, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 704
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 705
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/RawData;Lio/senseai/kelvinsdk/DeviceObject;II)V
    .locals 11

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 263
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 265
    invoke-virtual {p2}, Lio/senseai/kelvinsdk/DeviceObject;->getDeviceSpecificFiles()Ljava/util/List;

    move-result-object v2

    .line 267
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˎ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 269
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˑ()I

    move-result v1

    .line 271
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    if-le v1, p4, :cond_1

    .line 4294
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 4295
    const-string v1, "%s.ROWID = (SELECT MIN(%s.ROWID) FROM %s)"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "table_raw_data"

    aput-object v5, v4, v0

    const-string v5, "table_raw_data"

    aput-object v5, v4, v8

    const-string v5, "table_raw_data"

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4296
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "table_raw_data"

    invoke-virtual {v4, v5, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4297
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4301
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 4302
    const-string v4, "%s.ROWID = (SELECT MIN(%s.ROWID) FROM %s)"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "table_raw_data_filename"

    aput-object v6, v5, v0

    const-string v6, "table_raw_data_filename"

    aput-object v6, v5, v8

    const-string v6, "table_raw_data_filename"

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4303
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4304
    iget-object v5, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "table_raw_data_filename"

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4306
    :cond_0
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 5117
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 5118
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5120
    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_count"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5121
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5123
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5124
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 280
    :try_start_1
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "table_raw_data"

    const/4 v6, 0x0

    .line 5880
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5883
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5884
    const-string v1, "cpu_freq"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˏ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5885
    const-string v1, "cpu_load"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ᐝ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5886
    const-string v1, "batt_volt"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ʼ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5887
    const-string v1, "batt_temp"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ʽ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5888
    const-string v1, "batt_temp_adc"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ͺ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5889
    const-string v1, "screen_state"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ι()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5890
    const-string v1, "charging_state"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ʾ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5892
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ᐝ:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ʻ:Landroid/hardware/SensorManager;

    .line 5894
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ʻ:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 5896
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 5897
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v9, 0x7

    if-ne v1, v9, :cond_3

    .line 5898
    const-string v9, "sman_temp"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ʿ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5900
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v9, 0xd

    if-ne v1, v9, :cond_4

    .line 5901
    const-string v9, "sman_amb_temp"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˈ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5903
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v9, 0xc

    if-ne v1, v9, :cond_5

    .line 5904
    const-string v9, "sman_humidity"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˉ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5906
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v9, 0x5

    if-ne v1, v9, :cond_6

    .line 5907
    const-string v9, "sman_light"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˌ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5909
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v9, 0x6

    if-ne v1, v9, :cond_7

    .line 5910
    const-string v9, "sman_pressure"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˍ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5912
    :cond_7
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v9, 0x8

    if-ne v1, v9, :cond_8

    .line 5913
    const-string v9, "sman_proximity"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˑ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v7, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5915
    :cond_8
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 5916
    const-string v1, "sman_mag_field_x"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ـ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5917
    const-string v1, "sman_mag_field_y"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ᐧ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5918
    const-string v1, "sman_mag_field_z"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ᐨ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 288
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 5123
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5124
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 280
    :cond_9
    :try_start_2
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 283
    iget-object v2, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_raw_data_filename"

    const/4 v5, 0x0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/RawData;->ˋ()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 5978
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5979
    const-string v8, "filename"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5980
    const-string v6, "data"

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 283
    invoke-virtual {v2, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 285
    :cond_a
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_count"

    const/4 v2, 0x0

    .line 5985
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5986
    const-string v4, "count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 286
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 290
    return-void
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/Session;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 428
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8129
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 8130
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8132
    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_session"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8133
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_device_object"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8134
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_filename"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8135
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_heat_transfer"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8136
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_configuration"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8137
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8139
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 8140
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 8927
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8928
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8929
    const-string v3, "dev_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8933
    :goto_0
    const-string v3, "token"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8934
    const-string v3, "api_key"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8935
    const-string v3, "android_uuid"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getAndroidUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8936
    const-string v3, "portal_dev_id"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getPortalDevId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_session"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 434
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ᐝ;->ι()V

    .line 8969
    :goto_1
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getConfig()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v3

    .line 8970
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 8971
    const-string v5, "master_switch"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8972
    const-string v0, "collection_rate"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/Configuration;->getCollection_rate()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8973
    const-string v5, "post_diagnostic_data"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/Configuration;->isPost_diagnostic_data()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_configuration"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 452
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 455
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 456
    return-void

    .line 8139
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 8140
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 8931
    :cond_0
    :try_start_2
    const-string v3, "dev_id"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v4

    invoke-virtual {v4}, Lio/senseai/kelvinsdk/DeviceObject;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 454
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 455
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 8941
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8942
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v3

    .line 8943
    const-string v4, "dev_id"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8944
    const-string v4, "model"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8945
    const-string v4, "name"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8946
    const-string v4, "os_version"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8947
    const-string v4, "type_code"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_device_object"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 440
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getDeviceSpecificFiles()Ljava/util/List;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 443
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "table_filename"

    const/4 v6, 0x0

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v7

    invoke-static {v7, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/DeviceSpecificFile;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_4

    .line 8960
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8961
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Session;->getDevice()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v3

    .line 8962
    const-string v4, "dev_id"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8963
    const-string v4, "r"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getAmbient()Lio/senseai/kelvinsdk/HeatTransferConstant;

    move-result-object v5

    invoke-virtual {v5}, Lio/senseai/kelvinsdk/HeatTransferConstant;->getR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8964
    const-string v4, "k"

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/DeviceObject;->getAmbient()Lio/senseai/kelvinsdk/HeatTransferConstant;

    move-result-object v3

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/HeatTransferConstant;->getK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_heat_transfer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 8971
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 8973
    goto/16 :goto_3
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/Temperature;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˍ()I

    move-result v0

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_2

    .line 3200
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 3201
    const-string v0, "SELECT * FROM %s WHERE %s.ROWID = (SELECT MIN(%s.ROWID) FROM %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "table_prediction"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "table_prediction"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "table_prediction"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "table_prediction"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3205
    :try_start_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3206
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3207
    const-string v0, "timestamp_prediction"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3211
    :goto_0
    if-eqz v0, :cond_0

    .line 3212
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˋ(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3215
    :cond_0
    if-eqz v1, :cond_1

    .line 3216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3218
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 3858
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3859
    const-string v1, "timestamp_prediction"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3860
    const-string v1, "temp_celsius"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3861
    const-string v1, "lat"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3862
    const-string v1, "long"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3863
    const-string v1, "alt"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getAltitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3864
    const-string v1, "acc"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getGpsAccuracy()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3865
    const-string v1, "temp_accuracy"

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/Temperature;->getTemperatureAccuracy()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3867
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3868
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ᐝ:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 3870
    const-string v3, "level"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3871
    const-string v4, "scale"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3873
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    float-to-double v4, v1

    .line 3875
    const-string v1, "battery_level"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_prediction"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 196
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 197
    return-void

    .line 3215
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 3216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3218
    :cond_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 3215
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/Temperature;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 679
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 681
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 684
    :try_start_0
    invoke-virtual {p0, p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/Temperature;)V

    .line 12634
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 12635
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12637
    :try_start_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_averages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 12638
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12640
    :try_start_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 12641
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 686
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 689
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 690
    return-void

    .line 12640
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 12641
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 689
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/aux;)V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1145
    :try_start_0
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1147
    :try_start_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_last_mode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :try_start_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 2055
    invoke-virtual {p1}, Lio/senseai/kelvinsdk/aux;->name()Ljava/lang/String;

    move-result-object v0

    .line 2056
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2057
    const-string v2, "data_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_last_mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 164
    return-void

    .line 1149
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ˊ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    const-string v1, "api_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "portal_dev_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_session"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    :goto_0
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 424
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_session"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public final ˊ(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/senseai/kelvinsdk/DeviceSpecificFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 460
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 461
    sget-object v0, Lio/senseai/kelvinsdk/ᐝ;->ˊ:Ljava/lang/String;

    const-string v1, "deleting old file and inserting new files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 463
    sget-object v2, Lio/senseai/kelvinsdk/ᐝ;->ˊ:Ljava/lang/String;

    const-string v3, "file: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v1

    .line 466
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_filename"

    const-string v3, "dev_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->get_id()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 470
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_filename"

    const/4 v5, 0x0

    invoke-static {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/DeviceSpecificFile;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 475
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 476
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 473
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 476
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 477
    return-void
.end method

.method public final ˋ()Lio/senseai/kelvinsdk/aux;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    const-string v0, "SELECT * FROM %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "table_last_mode"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    .line 174
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2750
    const-string v0, "data_mode"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2751
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2752
    :cond_0
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 184
    return-object v0

    .line 2754
    :cond_3
    :try_start_1
    invoke-static {v0}, Lio/senseai/kelvinsdk/aux;->ˊ(Ljava/lang/String;)Lio/senseai/kelvinsdk/aux;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_4
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ˋ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 734
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 736
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 738
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 739
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_prediction"

    const-string v4, "timestamp_prediction = ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_averages"

    const-string v4, "timestamp_averages = ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 745
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 742
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 745
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 746
    return-void
.end method

.method public final ˎ()Lio/senseai/kelvinsdk/RawData;
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 310
    new-instance v2, Lio/senseai/kelvinsdk/RawData;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/RawData;-><init>()V

    .line 311
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ᐧ()Ljava/util/ArrayList;

    move-result-object v3

    .line 312
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 313
    const-string v0, "SELECT * FROM %s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "table_raw_data"

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    :try_start_0
    iget-object v4, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6813
    :cond_0
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "timestamp"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6814
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "cpu_freq"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6815
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "cpu_load"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6816
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "batt_volt"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6817
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "batt_temp"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6818
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "batt_temp_adc"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6819
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "screen_state"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6820
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "charging_state"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6822
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ᐝ:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ʻ:Landroid/hardware/SensorManager;

    .line 6824
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ʻ:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 6826
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 6827
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 6828
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_temp"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6830
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 6831
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_amb_temp"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6833
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 6834
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_humidity"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6836
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 6837
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_light"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6839
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 6840
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_pressure"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6842
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 6843
    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v6, "sman_proximity"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6845
    :cond_7
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 6846
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v5, "sman_mag_field_x"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6847
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v5, "sman_mag_field_y"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 6848
    sget-object v0, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v5, "sman_mag_field_z"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 341
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_8
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0

    .line 320
    :cond_9
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/DeviceSpecificFile;

    .line 327
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getScalar()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v6, "SELECT * FROM %s WHERE %s = \'%s\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "table_raw_data_filename"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "filename"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 330
    iget-object v7, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 334
    :cond_c
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceSpecificFile;->getFilename()Ljava/lang/String;

    move-result-object v6

    .line 6854
    const-string v7, "data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lio/senseai/kelvinsdk/RawData;->ˊ(Ljava/lang/String;Ljava/lang/Double;)V

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    .line 339
    :cond_d
    invoke-virtual {v2, v4, v5}, Lio/senseai/kelvinsdk/RawData;->ˊ(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    if-eqz v1, :cond_e

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_e
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 347
    return-object v2
.end method

.method public final ˏ()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 352
    const-string v2, "SELECT * FROM table_count"

    .line 354
    const/4 v0, 0x0

    .line 356
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 357
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7768
    const-string v0, "count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 361
    :cond_0
    if-eqz v1, :cond_1

    .line 362
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 367
    return v0

    .line 361
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 362
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ͺ()Lio/senseai/kelvinsdk/DeviceObject;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ـ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v1

    .line 520
    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-object v0

    .line 524
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ᐧ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/senseai/kelvinsdk/DeviceObject;->setDeviceSpecificFiles(Ljava/util/List;)V

    .line 526
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ᐨ()Lio/senseai/kelvinsdk/HeatTransferConstant;

    move-result-object v2

    .line 527
    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v1, v2}, Lio/senseai/kelvinsdk/DeviceObject;->setAmbient(Lio/senseai/kelvinsdk/HeatTransferConstant;)V

    move-object v0, v1

    .line 532
    goto :goto_0
.end method

.method public final ᐝ()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 371
    .line 372
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 373
    const-string v2, "SELECT * FROM %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "table_prediction"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    :try_start_0
    iget-object v3, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 381
    :cond_0
    if-eqz v1, :cond_1

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_1
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 386
    return v0

    .line 381
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_2
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method

.method public final ι()V
    .locals 4

    .prologue
    .line 536
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˉ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    .line 537
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 539
    :try_start_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_device_object"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_filename"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_heat_transfer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 545
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    .line 546
    return-void

    .line 544
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/ᐝ;->ˏ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 545
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˌ()V

    throw v0
.end method
