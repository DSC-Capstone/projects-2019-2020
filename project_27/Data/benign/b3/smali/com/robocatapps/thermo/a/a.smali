.class public Lcom/robocatapps/thermo/a/a;
.super La/a/a/c;


# static fields
.field static final a:[La/a/a/i;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [La/a/a/i;

    const-string v1, "temperature_history"

    invoke-static {v1}, Lcom/robocatapps/thermo/a/a;->a(Ljava/lang/String;)La/a/a/i;

    move-result-object v1

    const-string v2, "_id"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    const-string v4, "PRIMARY KEY"

    invoke-virtual {v1, v2, v3, v4}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;Ljava/lang/String;)La/a/a/i;

    move-result-object v1

    const-string v2, "lat"

    sget-object v3, La/a/a/j;->c:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "lon"

    sget-object v3, La/a/a/j;->c:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "temp"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "feelslike"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "time"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "location_id"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "location_history"

    invoke-static {v1}, Lcom/robocatapps/thermo/a/a;->a(Ljava/lang/String;)La/a/a/i;

    move-result-object v1

    const-string v2, "_id"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    const-string v4, "PRIMARY KEY"

    invoke-virtual {v1, v2, v3, v4}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;Ljava/lang/String;)La/a/a/i;

    move-result-object v1

    const-string v2, "time"

    sget-object v3, La/a/a/j;->b:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "country"

    sget-object v3, La/a/a/j;->d:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "city"

    sget-object v3, La/a/a/j;->d:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    const-string v2, "localized_location"

    sget-object v3, La/a/a/j;->d:La/a/a/j;

    invoke-virtual {v1, v2, v3}, La/a/a/i;->a(Ljava/lang/String;La/a/a/j;)La/a/a/i;

    move-result-object v1

    new-instance v2, La/a/a/f;

    const-string v3, "idx_location_time"

    invoke-direct {v2, v3}, La/a/a/f;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    sget-object v4, La/a/a/h;->b:La/a/a/h;

    invoke-virtual {v2, v3, v4}, La/a/a/f;->a(Ljava/lang/String;La/a/a/h;)La/a/a/f;

    move-result-object v2

    invoke-virtual {v1, v2}, La/a/a/i;->a(La/a/a/f;)La/a/a/i;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/robocatapps/thermo/a/a;->a:[La/a/a/i;

    const-string v0, "SELECT %s, %s FROM %s ORDER BY %s DESC LIMIT 1"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "localized_location"

    aput-object v2, v1, v6

    const-string v2, "location_history"

    aput-object v2, v1, v7

    const-string v2, "time"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/a/a;->b:Ljava/lang/String;

    const-string v0, "SELECT %s FROM %s WHERE %s BETWEEN ? AND ?"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "temp"

    aput-object v2, v1, v5

    const-string v2, "temperature_history"

    aput-object v2, v1, v6

    const-string v2, "time"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/robocatapps/thermo/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Location;)J
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "country"

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "city"

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "localized_location"

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "location_history"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Location;Z)J
    .locals 5

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    const-string v1, "Country cannot be null or empty."

    invoke-static {v0, v1}, Lcom/google/a/a/j;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/robocatapps/thermo/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLocationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lcom/robocatapps/thermo/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Location;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/robocatapps/thermo/model/Observation;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "time"

    iget-wide v2, p0, Lcom/robocatapps/thermo/model/Observation;->observationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "lat"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Observation;->location:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "lon"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Observation;->location:Lcom/robocatapps/thermo/model/Location;

    invoke-virtual {v2}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "temp"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Observation;->temperature:Lcom/robocatapps/thermo/model/Temperature;

    iget v2, v2, Lcom/robocatapps/thermo/model/Temperature;->celsius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "feelslike"

    iget-object v2, p0, Lcom/robocatapps/thermo/model/Observation;->temperature:Lcom/robocatapps/thermo/model/Temperature;

    iget v2, v2, Lcom/robocatapps/thermo/model/Temperature;->feelsCelsius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Observation;)Z
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/robocatapps/thermo/model/Observation;->location:Lcom/robocatapps/thermo/model/Location;

    invoke-static {p0, v0, v2}, Lcom/robocatapps/thermo/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Location;Z)J

    move-result-wide v0

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    iget-object v0, p1, Lcom/robocatapps/thermo/model/Observation;->location:Lcom/robocatapps/thermo/model/Location;

    invoke-static {p0, v0}, Lcom/robocatapps/thermo/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/robocatapps/thermo/model/Location;)J

    move-result-wide v0

    :cond_0
    invoke-static {p1}, Lcom/robocatapps/thermo/a/a;->a(Lcom/robocatapps/thermo/model/Observation;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "location_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "temperature_history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
