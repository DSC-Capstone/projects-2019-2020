.class public Lcom/urbanairship/util/NotificationIDGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_RANGE:I = 0x32

.field private static final NEXT_ID_KEY:Ljava/lang/String; = "count"

.field private static final SHARED_PREFERENCES_FILE:Ljava/lang/String; = "com.urbanairship.notificationidgenerator"

.field private static range:I

.field private static start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    const/16 v0, 0x28

    sput v0, Lcom/urbanairship/util/NotificationIDGenerator;->range:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.notificationidgenerator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getRange()I
    .locals 1

    sget v0, Lcom/urbanairship/util/NotificationIDGenerator;->range:I

    return v0
.end method

.method public static getStart()I
    .locals 1

    sget v0, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    return v0
.end method

.method public static nextID()I
    .locals 3

    const-string v0, "count"

    sget v1, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    invoke-static {v0, v1}, Lcom/urbanairship/util/NotificationIDGenerator;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    sget v2, Lcom/urbanairship/util/NotificationIDGenerator;->range:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const-string v1, "Incrementing notification id count"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {v1, v0}, Lcom/urbanairship/util/NotificationIDGenerator;->putInt(Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "Resetting notification id count"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const-string v1, "count"

    sget v2, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    invoke-static {v1, v2}, Lcom/urbanairship/util/NotificationIDGenerator;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static putInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setRange(I)V
    .locals 2

    const/16 v0, 0x32

    if-le p0, v0, :cond_0

    const-string v1, "The maximum numer of notifications allowed is 50. Limiting alert id range to conform."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move p0, v0

    :cond_0
    const-string v0, "count"

    sget v1, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    invoke-static {v0, v1}, Lcom/urbanairship/util/NotificationIDGenerator;->putInt(Ljava/lang/String;I)V

    sput p0, Lcom/urbanairship/util/NotificationIDGenerator;->range:I

    return-void
.end method

.method public static setStart(I)V
    .locals 1

    const-string v0, "count"

    invoke-static {v0, p0}, Lcom/urbanairship/util/NotificationIDGenerator;->putInt(Ljava/lang/String;I)V

    sput p0, Lcom/urbanairship/util/NotificationIDGenerator;->start:I

    return-void
.end method
