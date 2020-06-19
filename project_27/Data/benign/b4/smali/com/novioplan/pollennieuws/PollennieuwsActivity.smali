.class public Lcom/novioplan/pollennieuws/PollennieuwsActivity;
.super Landroid/app/TabActivity;
.source "PollennieuwsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;,
        Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;
    }
.end annotation


# static fields
.field static mTabHost:Landroid/widget/TabHost;

.field public static tag:Ljava/lang/String;


# instance fields
.field public JSONNeedsUpdate:Z

.field app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private childAct:Lcom/novioplan/pollennieuws/MessagesActivity;

.field private currentLat:Ljava/lang/String;

.field currentLocation:Landroid/location/Location;

.field private currentLon:Ljava/lang/String;

.field private geoTime:J

.field isDownloadingJSON:Z

.field public jsonTask:Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;

.field private listener:Landroid/location/LocationListener;

.field locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

.field mFrameLayout:Landroid/widget/FrameLayout;

.field manager:Landroid/location/LocationManager;

.field private minDistance:F

.field private minTime:I

.field private recordedLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "PollennieuwsActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->isDownloadingJSON:Z

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->minTime:I

    .line 48
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->minDistance:F

    .line 53
    new-instance v0, Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-direct {v0}, Lcom/novioplan/pollennieuws/data/LocationData;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    .line 320
    new-instance v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$3;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->listener:Landroid/location/LocationListener;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->recordedLocation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/novioplan/pollennieuws/PollennieuwsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/PollennieuwsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->recordedLocation:Z

    return p1
.end method

.method private emulatorLocationTest()V
    .locals 5

    .prologue
    .line 217
    sget-object v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v2, "running emulatorLocationTest..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "51.45204799"

    iput-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    .line 225
    const-string v1, "5.455505848"

    iput-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    .line 227
    sget-object v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "with lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lon = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/novioplan/pollennieuws/data/LocationData;->setzLon(F)V

    .line 232
    iget-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/novioplan/pollennieuws/data/LocationData;->setzLat(F)V

    .line 233
    new-instance v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    .line 234
    .local v0, "task":Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://maps.googleapis.com/maps/api/geocode/json?latlng="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sensor=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-void
.end method

.method private setupTabViews()V
    .locals 14

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v11

    sput-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 88
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "ctx":Landroid/content/Context;
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "tab1"

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 91
    .local v2, "tab1Spec":Landroid/widget/TabHost$TabSpec;
    const-string v11, "Verwachting"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020035

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v11, Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-direct {v1, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "tab1Intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 94
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 98
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "tab2"

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 99
    .local v4, "tab2Spec":Landroid/widget/TabHost$TabSpec;
    const-string v11, "Meldingen"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020037

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 101
    new-instance v3, Landroid/content/Intent;

    const-class v11, Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-direct {v3, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v3, "tab2Intent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 103
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 106
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "tab3"

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 107
    .local v6, "tab3Spec":Landroid/widget/TabHost$TabSpec;
    const-string v11, "Nieuws"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 108
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-direct {v5, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v5, "tab3Intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 110
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 113
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "tab4"

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 114
    .local v8, "tab4Spec":Landroid/widget/TabHost$TabSpec;
    const-string v11, "Kalender"

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02003b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 115
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v7, "tab4Intent":Landroid/content/Intent;
    invoke-virtual {v8, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 117
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 121
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v12, "tab5"

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    .line 122
    .local v10, "tab5Spec":Landroid/widget/TabHost$TabSpec;
    const-string v11, "Over..."

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02003d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 123
    new-instance v9, Landroid/content/Intent;

    const-class v11, Lcom/novioplan/pollennieuws/Tab5Activity;

    invoke-direct {v9, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v9, "tab5Intent":Landroid/content/Intent;
    invoke-virtual {v10, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 125
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v11, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    sget-object v11, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public fetchJSONStrings()V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    .line 134
    .local v0, "task":Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0, v6}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->requestWindowFeature(I)Z

    .line 67
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "tgpref"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 71
    .local v3, "tgpref":Z
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "tgpref"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    .line 75
    .local v2, "prefs":Lcom/urbanairship/push/PushPreferences;
    sget-object v5, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "sound on"

    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)V

    .line 79
    iput-boolean v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->JSONNeedsUpdate:Z

    .line 80
    new-instance v4, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;

    invoke-direct {v4, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    iput-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->jsonTask:Lcom/novioplan/pollennieuws/PollennieuwsActivity$DownloadJSONTask;

    .line 81
    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    .line 82
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 83
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->setupTabViews()V

    .line 84
    return-void

    .line 75
    :cond_0
    const-string v4, "sound off"

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 339
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 340
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 139
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 142
    sget-object v0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v2, "TabHost OnResume..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "No Network Available"

    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 146
    .local v8, "toast":Landroid/widget/Toast;
    const/16 v0, 0x30

    const/16 v2, 0xfa

    invoke-virtual {v8, v0, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 147
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 154
    .end local v8    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iput-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    .line 157
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v4, v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    .line 158
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-string v0, "Locatie"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const-string v0, "Om optimaal gebruik te maken van de app is GPS toegang gewenst. Zonder GPS werkt de app ook, maar uw meldingen zullen dan geen locatie gegevens bevatten. Op dit moment staat uw GPS uit, wilt u deze nu activeren?"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    const-string v0, "Ja"

    new-instance v2, Lcom/novioplan/pollennieuws/PollennieuwsActivity$1;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$1;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const-string v0, "Annuleer"

    new-instance v2, Lcom/novioplan/pollennieuws/PollennieuwsActivity$2;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$2;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->updateLocation()V

    .line 180
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 181
    .local v7, "crit":Landroid/location/Criteria;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 182
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, v7, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "best":Ljava/lang/String;
    iget-object v0, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->manager:Landroid/location/LocationManager;

    iget v2, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->minTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->minDistance:F

    iget-object v5, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 186
    return-void
.end method

.method public updateLocation()V
    .locals 8

    .prologue
    .line 188
    const-string v3, "PollennieuwsActivity"

    const-string v4, "updateLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    if-nez v3, :cond_1

    .line 191
    const-string v3, ""

    iput-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    .line 192
    const-string v3, ""

    iput-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    .line 195
    sget-object v3, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->tag:Ljava/lang/String;

    const-string v4, "still waiting on a GPS Location"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->geoTime:J

    sub-long v0, v4, v6

    .line 198
    .local v0, "age":J
    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    .line 199
    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    .line 202
    iget-boolean v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->recordedLocation:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->minTime:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 203
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->geoTime:J

    .line 204
    new-instance v3, Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-direct {v3}, Lcom/novioplan/pollennieuws/data/LocationData;-><init>()V

    iput-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    .line 205
    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    iget-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLon:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/novioplan/pollennieuws/data/LocationData;->setzLon(F)V

    .line 206
    iget-object v3, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    iget-object v4, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLat:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/novioplan/pollennieuws/data/LocationData;->setzLat(F)V

    .line 207
    new-instance v2, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;-><init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V

    .line 208
    .local v2, "task":Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://maps.googleapis.com/maps/api/geocode/json?latlng="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sensor=true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/PollennieuwsActivity$ReverseGeoCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
