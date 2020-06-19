.class public Lcom/urbanairship/UrbanAirshipProvider$Preferences;
.super Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/UrbanAirshipProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Preferences"
.end annotation


# static fields
.field public static final COLUMN_NAME_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.urbanairship.cursor.item/preference"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.urbanairship.cursor.dir/preference"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ua_preferences.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);"

.field private static final TABLE_NAME:Ljava/lang/String; = "preferences"


# instance fields
.field protected COLUMN_NAME_VALUE_INDEX:I

.field final synthetic this$0:Lcom/urbanairship/UrbanAirshipProvider;


# direct methods
.method public constructor <init>(Lcom/urbanairship/UrbanAirshipProvider;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;->this$0:Lcom/urbanairship/UrbanAirshipProvider;

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/UrbanAirshipProvider;)V

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    const-string v1, "ua_preferences.db"

    const/4 v2, 0x1

    const-string v3, "CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);"

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;->dbHelper:Lcom/urbanairship/UrbanAirshipProvider$DatabaseHelper;

    return-void
.end method


# virtual methods
.method public bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->bindValuesToInsertHelper(Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/ContentValues;)V

    iget v0, p0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;->COLUMN_NAME_VALUE_INDEX:I

    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    return-void
.end method

.method public findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->findColumnIndexes(Landroid/database/DatabaseUtils$InsertHelper;)V

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/UrbanAirshipProvider$Preferences;->COLUMN_NAME_VALUE_INDEX:I

    return-void
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "preferences"

    return-object v0
.end method
