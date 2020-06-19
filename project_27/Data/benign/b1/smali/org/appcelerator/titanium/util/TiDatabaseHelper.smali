.class public Lorg/appcelerator/titanium/util/TiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiDatabaseHelper.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiDbHelper"

.field private static final name:Ljava/lang/String; = "Titanium"

.field private static final version:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "Titanium"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public deletePlatformParam(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v2, "delete from platform where name = ?"

    .line 57
    .local v2, "platformSQL":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 61
    .local v1, "platformInsertStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    return-void

    .line 67
    .end local v1    # "platformInsertStatement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v2, "select value from platform where name = ?"

    .line 73
    .local v2, "platformSQL":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 77
    .local v3, "platformSelectStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-nez v4, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    .end local v3    # "platformSelectStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "result":Ljava/lang/String;
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 97
    .restart local v3    # "platformSelectStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object p2, v4

    goto :goto_0

    .line 86
    .end local v3    # "platformSelectStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    const-string v5, "TiDbHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No value in database for platform key: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' returning supplied default \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 91
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "TiDbHelper"

    const-string v6, "Problem retrieving data from platform: "

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    const-string v0, "create table platform(name TEXT,value TEXT)"

    .line 104
    .local v0, "platformSQL":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 108
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 111
    return-void
.end method

.method public setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v2, "insert into platform values (?,?)"

    .line 35
    .local v2, "platformSQL":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 39
    .local v1, "platformInsertStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 40
    const/4 v3, 0x2

    invoke-virtual {v1, v3, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    return-void

    .line 46
    .end local v1    # "platformInsertStatement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->deletePlatformParam(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
