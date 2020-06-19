.class public abstract Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/UrbanAirshipProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DatabaseModel"
.end annotation


# instance fields
.field protected COLUMN_NAME_KEY_INDEX:I

.field protected COLUMN_NAME_TIMESTAMP_INDEX:I

.field protected dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

.field final synthetic this$0:Lcom/urbanairship/UrbanAirshipProvider;


# direct methods
.method public constructor <init>(Lcom/urbanairship/UrbanAirshipProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->this$0:Lcom/urbanairship/UrbanAirshipProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V
    .locals 2

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_KEY_INDEX:I

    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_TIMESTAMP_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_TIMESTAMP_INDEX:I

    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V
    .locals 1

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_KEY_INDEX:I

    :try_start_0
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_TIMESTAMP_INDEX:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Timestamp column not used, setting to -1."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->COLUMN_NAME_TIMESTAMP_INDEX:I

    goto :goto_0
.end method

.method public abstract getBaseUri()Landroid/net/Uri;
.end method

.method public getInsertHelper(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 2

    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNotificationColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v4, :cond_0

    const-string v2, "Error opening readable database. Retrying..."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v4, :cond_0

    const-string v2, "Error opening writable database. Retrying..."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public notify([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/urbanairship/util/UAStringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying of change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->this$0:Lcom/urbanairship/UrbanAirshipProvider;

    invoke-virtual {v1}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
