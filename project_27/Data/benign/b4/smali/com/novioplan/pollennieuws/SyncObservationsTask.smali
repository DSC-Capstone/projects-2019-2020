.class public Lcom/novioplan/pollennieuws/SyncObservationsTask;
.super Landroid/os/AsyncTask;
.source "SyncObservationsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/novioplan/pollennieuws/PollennieuwsApplication;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field static doneProcessing:Z

.field private static status:Ljava/lang/String;

.field static stillProcessing:Z

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "SyncObservationsTask"

    sput-object v0, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    .line 28
    const-string v0, "OK"

    sput-object v0, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/novioplan/pollennieuws/SyncObservationsTask;->doneProcessing:Z

    .line 30
    sput-boolean v1, Lcom/novioplan/pollennieuws/SyncObservationsTask;->stillProcessing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static buildUrl(Lcom/novioplan/pollennieuws/data/ObservationData;)Ljava/lang/String;
    .locals 10
    .param p0, "obs"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    const/4 v9, 0x2

    .line 92
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 94
    .local v1, "dateObj":Ljava/sql/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "dateFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "newDateStr":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "timeFormater":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "newTimeStr":Ljava/lang/String;
    const-string v5, ""

    .line 100
    .local v5, "url":Ljava/lang/String;
    const-string v6, "SyncObservationsTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleted:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSyncDate()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.floravannederland.nl/owp/pollennieuws-reports_sync.php?action=del&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/novioplan/pollennieuws/SyncObservationsTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getUniqueID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&syncID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    :goto_0
    const-string v6, " "

    const-string v7, "&nbsp;"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    sget-object v6, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v5

    .line 108
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.floravannederland.nl/owp/pollennieuws-reports_sync.php?action=add&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/novioplan/pollennieuws/SyncObservationsTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v7}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getUniqueID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "false"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "false"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "false"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "false"

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&s6="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "false"

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLat()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&long="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzLon()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&geoCountry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    :goto_7
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_8

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&geoMunicipality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&v=3.2.1&p=Android&geoProvince=Onbekend&geoCity=Onbekend&geoNeighborhood=Onbekend"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 108
    :cond_1
    const-string v6, "true"

    goto/16 :goto_1

    :cond_2
    const-string v6, "true"

    goto/16 :goto_2

    :cond_3
    const-string v6, "true"

    goto/16 :goto_3

    :cond_4
    const-string v6, "true"

    goto/16 :goto_4

    :cond_5
    const-string v6, "true"

    goto/16 :goto_5

    :cond_6
    const-string v6, "true"

    goto/16 :goto_6

    .line 124
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&geoCountry=Nederland"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 131
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&geoMunicipality=Onbekend"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/SyncObservationsTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 36
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    const-string v11, "doInBackground"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    const-string v11, "checking for un-synced observations"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    aget-object v8, p1, v10

    sput-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 39
    const/4 v3, 0x0

    .line 42
    .local v3, "obsToSync":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getUnSyncedObservation()Lcom/novioplan/pollennieuws/data/ObservationData;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 46
    :cond_1
    invoke-static {v3}, Lcom/novioplan/pollennieuws/SyncObservationsTask;->buildUrl(Lcom/novioplan/pollennieuws/data/ObservationData;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "s":Ljava/lang/String;
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sync url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v5}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "responseStr":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 52
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, "serverResponse":Lorg/json/JSONObject;
    const-string v8, "syncStatus"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;

    .line 54
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sync server status is ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;

    const-string v11, "success"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 56
    const-string v8, "syncID"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "serverId":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzServerId(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSyncDate(J)V

    .line 60
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSynced(I)V

    .line 61
    invoke-static {v3}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->updateObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)I

    move-result v1

    .line 62
    .local v1, "i":I
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sync/db update status = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "i":I
    .end local v6    # "serverId":Ljava/lang/String;
    .end local v7    # "serverResponse":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    move v8, v9

    :goto_1
    sget-boolean v11, Lcom/novioplan/pollennieuws/SyncObservationsTask;->doneProcessing:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v8, v11

    if-nez v8, :cond_1

    .line 70
    .end local v4    # "responseStr":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_0

    .line 80
    :goto_2
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;

    return-object v8

    .line 66
    .restart local v4    # "responseStr":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    const-string v11, "request response is null!"

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v4    # "responseStr":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "jsone":Lorg/json/JSONException;
    :try_start_2
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v8, "FAIL"

    sput-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 77
    .end local v2    # "jsone":Lorg/json/JSONException;
    :catchall_0
    move-exception v8

    throw v8

    .restart local v4    # "responseStr":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 68
    goto :goto_1

    .line 74
    .end local v4    # "responseStr":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v8, "FAIL"

    sput-object v8, Lcom/novioplan/pollennieuws/SyncObservationsTask;->status:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/SyncObservationsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/novioplan/pollennieuws/SyncObservationsTask;->tag:Ljava/lang/String;

    const-string v1, "completing background task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
