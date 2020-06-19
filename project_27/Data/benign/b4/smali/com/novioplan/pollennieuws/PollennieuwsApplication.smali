.class public Lcom/novioplan/pollennieuws/PollennieuwsApplication;
.super Landroid/app/Application;
.source "PollennieuwsApplication.java"


# static fields
.field private static final MINIMUM_LOADING_INTERVAL:J = 0x36ee80L

.field private static final PREF_UNIQUE_ID:Ljava/lang/String; = "PREF_UNIQUE_ID"

.field public static tag:Ljava/lang/String;

.field private static uniqueID:Ljava/lang/String;


# instance fields
.field public countryJSONstring:Ljava/lang/String;

.field private doneChecking:Z

.field private goForIt:Z

.field public lastForecastLoad:J

.field public lastJournalLoad:J

.field public lastVideosListLoad:J

.field locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

.field private movieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field public regionJSONstring:Ljava/lang/String;

.field private reloadVideos:Z

.field private screenHeight:I

.field private screenWidth:I

.field private tab5WebClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PollennieuwsApplication"

    sput-object v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->movieList:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tab5WebClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-class v3, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 152
    const-string v2, "PREF_UNIQUE_ID"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "PREF_UNIQUE_ID"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    .line 155
    sget-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 156
    sget-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    const-string v4, "creating uniqueID"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    .line 158
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PREF_UNIQUE_ID"

    sget-object v4, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    sget-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uniqueID = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public countryJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSONstring:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "obj":Lorg/json/JSONObject;
    .local v2, "obj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 133
    .end local v2    # "obj":Lorg/json/JSONObject;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryJSON exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\njson string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSONstring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doneChecking()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->doneChecking:Z

    return v0
.end method

.method public forcastNeedsUpdate()V
    .locals 2

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastForecastLoad:J

    .line 307
    return-void
.end method

.method public forecastIsCurrent()Z
    .locals 10

    .prologue
    .line 256
    iget-wide v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastForecastLoad:J

    .line 257
    .local v2, "lastTime":J
    const/4 v4, 0x1

    .line 258
    .local v4, "result":Z
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 259
    const/4 v4, 0x0

    .line 267
    :cond_0
    :goto_0
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forecastIsCurrent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v4

    .line 261
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 262
    .local v0, "currentTime":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 263
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    return-object v0
.end method

.method public getMovieList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->movieList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenWidth:I

    return v0
.end method

.method public getTab5WebClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tab5WebClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->uniqueID:Ljava/lang/String;

    goto :goto_0
.end method

.method public goForIt()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->goForIt:Z

    return v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 113
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 114
    .local v0, "d":Landroid/view/Display;
    const-string v1, ""

    iput-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSONstring:Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenHeight:I

    .line 121
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenWidth:I

    .line 123
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->verifyDB(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public isNetworkReachable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 220
    .local v1, "mManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 221
    .local v0, "current":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isReloadVideos()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->reloadVideos:Z

    return v0
.end method

.method public journalIsCurrent()Z
    .locals 10

    .prologue
    .line 290
    iget-wide v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastJournalLoad:J

    .line 291
    .local v2, "lastTime":J
    const/4 v4, 0x1

    .line 292
    .local v4, "result":Z
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 293
    const/4 v4, 0x0

    .line 301
    :cond_0
    :goto_0
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "journalIsCurrent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v4

    .line 295
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 296
    .local v0, "currentTime":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 297
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 70
    invoke-static {p0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;)V

    .line 74
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 77
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    const-class v4, Lcom/novioplan/pollennieuws/IntentReceiver;

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/PushManager;->setIntentReceiver(Ljava/lang/Class;)V

    .line 80
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    .line 82
    .local v2, "prefs":Lcom/urbanairship/push/PushPreferences;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)V

    .line 85
    new-instance v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;

    invoke-direct {v1}, Lcom/urbanairship/push/CustomPushNotificationBuilder;-><init>()V

    .line 89
    .local v1, "nb":Lcom/urbanairship/push/CustomPushNotificationBuilder;
    const v3, 0x7f030007

    iput v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layout:I

    .line 90
    const v3, 0x7f020034

    iput v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconDrawableId:I

    .line 91
    const v3, 0x7f090039

    iput v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutIconId:I

    .line 92
    const v3, 0x7f09003a

    iput v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutSubjectId:I

    .line 93
    const v3, 0x7f09003b

    iput v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->layoutMessageId:I

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/urbanairship/push/CustomPushNotificationBuilder;->soundUri:Landroid/net/Uri;

    .line 99
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/PushManager;->setNotificationBuilder(Lcom/urbanairship/push/PushNotificationBuilder;)V

    .line 105
    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "lPushId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "My Application onCreate - App APID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->initialize()V

    .line 110
    return-void
.end method

.method public regionJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    sget-object v3, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "region strting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "obj":Lorg/json/JSONObject;
    .local v2, "obj":Lorg/json/JSONObject;
    move-object v1, v2

    .line 144
    .end local v2    # "obj":Lorg/json/JSONObject;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regionJSON exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\njson string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSONstring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCheckForPermission(ZZ)V
    .locals 0
    .param p1, "doneChecking"    # Z
    .param p2, "goForit"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->doneChecking:Z

    .line 245
    iput-boolean p2, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->goForIt:Z

    .line 246
    return-void
.end method

.method public setLocationObservaton(Lcom/novioplan/pollennieuws/data/LocationData;)V
    .locals 0
    .param p1, "locationObs"    # Lcom/novioplan/pollennieuws/data/LocationData;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    .line 173
    return-void
.end method

.method public setMovieList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novioplan/pollennieuws/data/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "movieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->movieList:Ljava/util/ArrayList;

    .line 189
    iget v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenHeight:I

    invoke-static {v0}, Lcom/novioplan/pollennieuws/data/VideoData;->setDeviceScreenHeight(I)V

    .line 190
    iget v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenWidth:I

    invoke-static {v0}, Lcom/novioplan/pollennieuws/data/VideoData;->setDeviceScreenWidth(I)V

    .line 191
    return-void
.end method

.method public setReloadVideos(Z)V
    .locals 0
    .param p1, "reloadVideos"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->reloadVideos:Z

    .line 199
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenHeight:I

    .line 207
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->screenWidth:I

    .line 215
    return-void
.end method

.method public setTab5WebClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "tab5WebClient"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tab5WebClient:Landroid/webkit/WebViewClient;

    .line 233
    return-void
.end method

.method public videosListIsCurrent()Z
    .locals 10

    .prologue
    .line 273
    iget-wide v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastVideosListLoad:J

    .line 274
    .local v2, "lastTime":J
    const/4 v4, 0x1

    .line 275
    .local v4, "result":Z
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 276
    const/4 v4, 0x0

    .line 284
    :cond_0
    :goto_0
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videosListIsCurrent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v4

    .line 278
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 279
    .local v0, "currentTime":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 280
    const/4 v4, 0x0

    goto :goto_0
.end method
