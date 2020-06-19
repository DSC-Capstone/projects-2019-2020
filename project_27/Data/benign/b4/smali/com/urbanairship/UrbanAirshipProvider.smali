.class public Lcom/urbanairship/UrbanAirshipProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;,
        Lcom/urbanairship/UrbanAirshipProvider$RichPush;,
        Lcom/urbanairship/UrbanAirshipProvider$Preferences;,
        Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_NAME_KEY:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final DB_CHANGE_ACTION_KEY:Ljava/lang/String; = "com.urbanairship.DB_CHANGE_ACTION"

.field public static final DB_CHANGE_KEYS_KEY:Ljava/lang/String; = "com.urbanairship.DB_CHANGE_KEYS"

.field public static final DELETE_ACTION:Ljava/lang/String; = "delete"

.field public static final INSERT_ACTION:Ljava/lang/String; = "insert"

.field public static final KEYS_DELIMITER:Ljava/lang/String; = "|"

.field private static final KEYS_LOCATION:I = 0x1

.field private static final MATCHER:Landroid/content/UriMatcher;

.field private static final MAX_RETRIES:I = 0x2

.field private static final MULTIPLE_SUFFIX:Ljava/lang/String; = "vnd.urbanairship.cursor.dir/"

.field private static final PREFERENCES_URI_TYPE:I = 0x2

.field private static final PREFERENCE_URI_TYPE:I = 0x3

.field public static final REPLACE_ACTION:Ljava/lang/String; = "replace"

.field private static final RICHPUSH_MESSAGES_URI_TYPE:I = 0x0

.field private static final RICHPUSH_MESSAGE_URI_TYPE:I = 0x1

.field private static final ROW_ID_KEY:Ljava/lang/String; = "row_id"

.field private static final SINGLE_SUFFIX:Ljava/lang/String; = "vnd.urbanairship.cursor.item/"

.field public static final UPDATE_ACTION:Ljava/lang/String; = "update"

.field private static authorityString:Ljava/lang/String;


# instance fields
.field private prefs:Lcom/urbanairship/UrbanAirshipProvider$Preferences;

.field private rp:Lcom/urbanairship/UrbanAirshipProvider$RichPush;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getAuthorityString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->authorityString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->authorityString:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->authorityString:Ljava/lang/String;

    return-object v0
.end method

.method private getKeys(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPreferencesContentUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRichPushContentUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/richpush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 4

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getAuthorityString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 16

    invoke-virtual/range {p0 .. p1}, Lcom/urbanairship/UrbanAirshipProvider;->getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v7

    move-object/from16 v0, p2

    array-length v2, v0

    new-array v8, v2, [Ljava/lang/String;

    invoke-virtual {v7}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getInsertHelper(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_1

    :try_start_0
    aget-object v11, p2, v6

    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    invoke-virtual {v7, v10, v11}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-nez v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    const/4 v14, 0x2

    if-lt v4, v14, :cond_6

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    if-nez v4, :cond_5

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    if-nez v3, :cond_3

    const-string v4, "insert"

    invoke-virtual {v7, v8, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notify([Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    return v2

    :cond_5
    :try_start_1
    const-string v4, "row_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v7}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getNotificationColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    const-string v4, "row_id"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SQLConstraintException in bulkInsert, bailing."

    invoke-static {v4, v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "Unexpected exception in bulkInsert, bailing"

    invoke-static {v4, v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :cond_6
    move v4, v5

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, "1"

    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getKeys(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete"

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notify([Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 3

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->rp:Lcom/urbanairship/UrbanAirshipProvider$RichPush;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->prefs:Lcom/urbanairship/UrbanAirshipProvider$Preferences;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.urbanairship.cursor.dir/richpush"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.urbanairship.cursor.item/richpush"

    goto :goto_0

    :pswitch_2
    const-string v0, "vnd.urbanairship.cursor.dir/preference"

    goto :goto_0

    :pswitch_3
    const-string v0, "vnd.urbanairship.cursor.item/preference"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v7

    move-wide v2, v4

    move v1, v6

    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v7}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v0, "row_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    const/4 v8, 0x2

    if-lt v1, v8, :cond_2

    :cond_0
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getNotificationColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "row_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v6

    const-string v2, "insert"

    invoke-virtual {v7, v1, v2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notify([Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/UrbanAirshipProvider$RichPush;-><init>(Lcom/urbanairship/UrbanAirshipProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->rp:Lcom/urbanairship/UrbanAirshipProvider$RichPush;

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/UrbanAirshipProvider$Preferences;-><init>(Lcom/urbanairship/UrbanAirshipProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->prefs:Lcom/urbanairship/UrbanAirshipProvider$Preferences;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    invoke-virtual {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v10, v2

    :goto_1
    if-nez v10, :cond_2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    add-int/lit8 v9, v1, 0x1

    :try_start_0
    invoke-virtual {v11}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    move v10, v1

    move v1, v9

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ge v9, v1, :cond_1

    const-string v1, "Retrying query."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    move v1, v9

    goto :goto_1

    :cond_2
    move-object v0, v8

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->rp:Lcom/urbanairship/UrbanAirshipProvider$RichPush;

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;->close()V

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->prefs:Lcom/urbanairship/UrbanAirshipProvider$Preferences;

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;->close()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getDatabaseModel(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return v0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_0

    if-ge v1, v8, :cond_0

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->getKeys(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    const-string v6, "update"

    invoke-virtual {v4, v0, v6}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notify([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update Failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    if-ge v2, v8, :cond_2

    const-string v0, "Retrying update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
