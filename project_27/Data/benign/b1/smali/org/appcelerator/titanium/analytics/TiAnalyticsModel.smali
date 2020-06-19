.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiAnalyticsModel.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "tianalytics.db"

.field private static final DB_VERSION:I = 0x4

.field private static final LCAT:Ljava/lang/String; = "TiAnalyticsDb"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "tianalytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method

.method private doMigration_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 82
    const-string v0, "drop table if exists Events"

    .line 85
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY AUTOINCREMENT,   EventId TEXT,   Name TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   AppID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 100
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private doMigration_2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 104
    const-string v0, "create table Props (  _id INTEGER PRIMARY KEY,   Name TEXT,   Value TEXT );"

    .line 111
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "insert into Props(Name, Value) values (\'Enrolled\', \'0\')"

    .line 116
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private doMigration_3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    const-string v0, "drop table if exists Events"

    .line 125
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY AUTOINCREMENT,   EventId TEXT,   Type TEXT,   Event TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   AppGUID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 141
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    return-void
.end method


# virtual methods
.method public addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V
    .locals 8
    .param p1, "event"    # Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    const-string v3, "insert into Events(EventId, Type, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload) values(?,?,?,?,?,?,?,?,?)"

    .line 152
    .local v3, "sql":Ljava/lang/String;
    const/16 v6, 0x9

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createEventId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventEvent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x4

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x5

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x6

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x7

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->mustExpandPayload()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    const/16 v4, 0x8

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 163
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 152
    goto :goto_0

    .line 164
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "TiAnalyticsDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 167
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v4
.end method

.method public deleteEvents([I)V
    .locals 7
    .param p1, "records"    # [I

    .prologue
    .line 175
    array-length v4, p1

    if-lez v4, :cond_2

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "delete from Events where _id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 182
    if-lez v2, :cond_0

    .line 183
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 197
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 189
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "TiAnalyticsDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting events :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 192
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method

.method public getEventsAsJSON(I)Ljava/util/HashMap;
    .locals 13
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 231
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 233
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    const/4 v1, 0x0

    .line 234
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 236
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select _id, EventId, Type, Event, Timestamp, MID, SID, AppGUID, isJSON, Payload from Events  order by 1 limit "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "sql":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 247
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 248
    .local v6, "seq":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .local v4, "json":Lorg/json/JSONObject;
    const-string v10, "seq"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    const-string v10, "ver"

    const-string v11, "2"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v10, "id"

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v10, "type"

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v10, "event"

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v10, "ts"

    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v10, "mid"

    const/4 v11, 0x5

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v10, "sid"

    const/4 v11, 0x6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v10, "aguid"

    const/4 v11, 0x7

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const/16 v10, 0x8

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v3, v8

    .line 259
    .local v3, "isJSON":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 260
    const-string v10, "data"

    new-instance v11, Lorg/json/JSONObject;

    const/16 v12, 0x9

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 267
    .end local v3    # "isJSON":Z
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "seq":I
    .end local v7    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v8, "TiAnalyticsDb"

    const-string v9, "Error creating JSON."

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 280
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_3
    return-object v5

    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v6    # "seq":I
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_2
    move v3, v9

    .line 258
    goto :goto_1

    .line 262
    .restart local v3    # "isJSON":Z
    :cond_3
    :try_start_2
    const-string v10, "data"

    const/16 v11, 0x9

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 269
    .end local v3    # "isJSON":Z
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "seq":I
    .end local v7    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v8, "TiAnalyticsDb"

    const-string v9, "Error retrieving events to send as JSON: "

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    if-eqz v0, :cond_4

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_4
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 272
    .end local v2    # "e":Landroid/database/SQLException;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_6
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 272
    .end local v7    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_7

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_7
    if-eqz v1, :cond_8

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v8
.end method

.method public hasEvents()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 203
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 205
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    const-string v4, "select exists(select _id from Events)"

    .line 211
    .local v4, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 219
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_1
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 227
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 214
    goto :goto_0

    .line 216
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "TiAnalyticsDb"

    const-string v6, "Error determining if there are events to send: "

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    if-eqz v0, :cond_4

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_4
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 219
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_5
    if-eqz v1, :cond_6

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method public markEnrolled()V
    .locals 6

    .prologue
    .line 315
    const-string v2, "update Props set Value = \'1\' where Name = \'Enrolled\'"

    .line 319
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 321
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "TiAnalyticsDb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error marking enrolled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 326
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3
.end method

.method public needsEnrollEvent()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 284
    const/4 v3, 0x0

    .line 286
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 287
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 289
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 291
    const-string v4, "select Value from Props where Name = \'Enrolled\'"

    .line 295
    .local v4, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 303
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 311
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 298
    goto :goto_0

    .line 300
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "TiAnalyticsDb"

    const-string v6, "Error retrieving events to send as JSON: "

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v0, :cond_4

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_4
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 303
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_5
    if-eqz v1, :cond_6

    .line 307
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    const-string v1, "TiAnalyticsDb"

    const-string v2, "Creating Database tianalytics.db"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "create table Events (  _id INTEGER PRIMARY KEY,   EventId TEXT,   Name TEXT,   Timestamp TEXT,   MID TEXT,   SID TEXT,   isJSON INTEGER,   Payload TEXT );"

    .line 50
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 58
    const-string v1, "TiAnalyticsDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading Database from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    move v0, p2

    .line 61
    .local v0, "version":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing migration path version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const/4 v0, 0x2

    .line 66
    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    const/4 v0, 0x3

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->doMigration_3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    const/4 v0, 0x4

    .line 74
    goto :goto_0

    .line 79
    :cond_0
    return-void

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
