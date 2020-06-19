.class public Lcom/urbanairship/UrbanAirshipProvider$RichPush;
.super Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/UrbanAirshipProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RichPush"
.end annotation


# static fields
.field public static final COLUMN_NAME_DELETED:Ljava/lang/String; = "deleted"

.field public static final COLUMN_NAME_EXTRA:Ljava/lang/String; = "extra"

.field public static final COLUMN_NAME_MESSAGE_BODY_URL:Ljava/lang/String; = "message_body_url"

.field public static final COLUMN_NAME_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final COLUMN_NAME_MESSAGE_READ_URL:Ljava/lang/String; = "message_read_url"

.field public static final COLUMN_NAME_MESSAGE_URL:Ljava/lang/String; = "message_url"

.field public static final COLUMN_NAME_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_NAME_UNREAD:Ljava/lang/String; = "unread"

.field public static final COLUMN_NAME_UNREAD_ORIG:Ljava/lang/String; = "unread_orig"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.urbanairship.cursor.item/richpush"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.urbanairship.cursor.dir/richpush"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ua_richpush.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final NOTIFICATION_ACTION:Ljava/lang/String; = "com.urbanairship.richpush.DB_CHANGE"

.field private static final SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS richpush (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id TEXT UNIQUE, message_url TEXT, message_body_url TEXT, message_read_url TEXT, title TEXT, extra TEXT, unread INTEGER, unread_orig INTEGER, deleted INTEGER, timestamp TEXT);"

.field private static final TABLE_NAME:Ljava/lang/String; = "richpush"


# instance fields
.field protected COLUMN_NAME_DELETED_INDEX:I

.field protected COLUMN_NAME_EXTRA_INDEX:I

.field protected COLUMN_NAME_MESSAGE_BODY_URL_INDEX:I

.field protected COLUMN_NAME_MESSAGE_ID_INDEX:I

.field protected COLUMN_NAME_MESSAGE_READ_URL_INDEX:I

.field protected COLUMN_NAME_MESSAGE_URL_INDEX:I

.field protected COLUMN_NAME_TITLE_INDEX:I

.field protected COLUMN_NAME_UNREAD_INDEX:I

.field protected COLUMN_NAME_UNREAD_ORIG_INDEX:I

.field final synthetic this$0:Lcom/urbanairship/UrbanAirshipProvider;


# direct methods
.method public constructor <init>(Lcom/urbanairship/UrbanAirshipProvider;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->this$0:Lcom/urbanairship/UrbanAirshipProvider;

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/UrbanAirshipProvider;)V

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    const-string v1, "ua_richpush.db"

    const/4 v2, 0x1

    const-string v3, "CREATE TABLE IF NOT EXISTS richpush (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id TEXT UNIQUE, message_url TEXT, message_body_url TEXT, message_read_url TEXT, title TEXT, extra TEXT, unread INTEGER, unread_orig INTEGER, deleted INTEGER, timestamp TEXT);"

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    return-void
.end method

.method private buildNotificationIntent([Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.richpush.DB_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.DB_CHANGE_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.DB_CHANGE_KEYS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_ID_INDEX:I

    const-string v1, "message_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_URL_INDEX:I

    const-string v1, "message_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_BODY_URL_INDEX:I

    const-string v1, "message_body_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_READ_URL_INDEX:I

    const-string v1, "message_read_url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_TITLE_INDEX:I

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_EXTRA_INDEX:I

    const-string v1, "extra"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_UNREAD_INDEX:I

    const-string v1, "unread"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IZ)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_UNREAD_ORIG_INDEX:I

    const-string v1, "unread_orig"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IZ)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_DELETED_INDEX:I

    const-string v1, "deleted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IZ)V

    return-void
.end method

.method public findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_ID_INDEX:I

    const-string v0, "message_url"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_URL_INDEX:I

    const-string v0, "message_body_url"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_BODY_URL_INDEX:I

    const-string v0, "message_read_url"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_MESSAGE_READ_URL_INDEX:I

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_TITLE_INDEX:I

    const-string v0, "extra"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_EXTRA_INDEX:I

    const-string v0, "unread"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_UNREAD_INDEX:I

    const-string v0, "unread_orig"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_UNREAD_ORIG_INDEX:I

    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->COLUMN_NAME_DELETED_INDEX:I

    return-void
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getRichPushContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "message_id"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "richpush"

    return-object v0
.end method

.method public notify([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notify([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->this$0:Lcom/urbanairship/UrbanAirshipProvider;

    invoke-virtual {v0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/UrbanAirshipProvider$RichPush;->buildNotificationIntent([Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
