.class public Lcom/novioplan/pollennieuws/data/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static CHART_AVAILABLE_HEIGHT:Ljava/lang/String;

.field public static CHART_BOTTOM_PERCENTAGE:Ljava/lang/String;

.field public static CHART_SCORE_12_PIXELS:Ljava/lang/String;

.field public static CHART_SCORE_34_PIXELS:Ljava/lang/String;

.field public static CHART_SCORE_56_PIXELS:Ljava/lang/String;

.field public static CHART_SCORE_78_PIXELS:Ljava/lang/String;

.field public static CHART_SCORE_90_PIXELS:Ljava/lang/String;

.field public static CHART_TOP_PERCENTAGE:Ljava/lang/String;

.field public static COUNTRY_DATA_URL:Ljava/lang/String;

.field public static COUNTRY_STATS_URL:Ljava/lang/String;

.field public static FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

.field public static GEONAMES_LATITUDE_REPLACEMENT:Ljava/lang/String;

.field public static GEONAMES_LONGITUDE_REPLACEMENT:Ljava/lang/String;

.field public static GEONAMES_POSTAL_URL:Ljava/lang/String;

.field public static GEONAMES_USERNAME_REPLACEMENT:Ljava/lang/String;

.field public static JOURNAL_DATA_URL:Ljava/lang/String;

.field public static POLLEN_MAP_URL:Ljava/lang/String;

.field public static REGIONAL_DATA_URL:Ljava/lang/String;

.field public static REGION_STATS_URL:Ljava/lang/String;

.field public static REPORTS_SEEKBAR_PROGRESS:Ljava/lang/String;

.field public static STATS_AVERAGE_SCORE:Ljava/lang/String;

.field public static STATS_SYMPTOM_1_PERCENTAGE:Ljava/lang/String;

.field public static STATS_SYMPTOM_2_PERCENTAGE:Ljava/lang/String;

.field public static STATS_SYMPTOM_3_PERCENTAGE:Ljava/lang/String;

.field public static STATS_SYMPTOM_4_PERCENTAGE:Ljava/lang/String;

.field public static STATS_SYMPTOM_5_PERCENTAGE:Ljava/lang/String;

.field public static STATS_SYMPTOM_6_PERCENTAGE:Ljava/lang/String;

.field public static STATS_TITLE:Ljava/lang/String;

.field public static STATS_TOTAL_REPORTS:Ljava/lang/String;

.field public static SUBMIT_USER_DATA_URL:Ljava/lang/String;

.field public static SYMPTOMS:[Ljava/lang/String;

.field public static URL_TO_LOAD:Ljava/lang/String;

.field public static VIDEO_LIST_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const-string v0, "http://pollennieuws.nl/weerkaart/KaartNL_280-website.png"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->POLLEN_MAP_URL:Ljava/lang/String;

    .line 8
    const-string v0, "http://floravannederland.nl/owp/pollennieuws/feeds/pollen-journaal-app.php"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->JOURNAL_DATA_URL:Ljava/lang/String;

    .line 9
    const-string v0, "http://pollennieuws.nl/iphone/videolist.php"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->VIDEO_LIST_URL:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->SUBMIT_USER_DATA_URL:Ljava/lang/String;

    .line 11
    const-string v0, "http://www.floravannederland.nl/owp/pollennieuws-reports_read-json.php?"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->REGIONAL_DATA_URL:Ljava/lang/String;

    .line 12
    const-string v0, "http://www.floravannederland.nl/owp/pollennieuws-reports_read-json.php?country=Nederland&date="

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->COUNTRY_DATA_URL:Ljava/lang/String;

    .line 13
    const-string v0, "url"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->URL_TO_LOAD:Ljava/lang/String;

    .line 14
    const-string v0, "http://www.floravannederland.nl/owp/pollennieuws-reports_read-html.php?"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->REGION_STATS_URL:Ljava/lang/String;

    .line 15
    const-string v0, "http://www.floravannederland.nl/owp/pollennieuws-reports_read-html.php?"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->COUNTRY_STATS_URL:Ljava/lang/String;

    .line 18
    const-string v0, "{lat}"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->GEONAMES_LATITUDE_REPLACEMENT:Ljava/lang/String;

    .line 19
    const-string v0, "{lng}"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->GEONAMES_LONGITUDE_REPLACEMENT:Ljava/lang/String;

    .line 20
    const-string v0, "pollennieuws30"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->GEONAMES_USERNAME_REPLACEMENT:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.geonames.org/findNearestAddress?lat={lat}&lng={lng}&username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->GEONAMES_USERNAME_REPLACEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->GEONAMES_POSTAL_URL:Ljava/lang/String;

    .line 24
    const-string v0, "PROGRESS"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

    .line 25
    const-string v0, "PROGRESS"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->REPORTS_SEEKBAR_PROGRESS:Ljava/lang/String;

    .line 27
    const-string v0, "chartTopPercentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_TOP_PERCENTAGE:Ljava/lang/String;

    .line 28
    const-string v0, "chartBottomPercentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_BOTTOM_PERCENTAGE:Ljava/lang/String;

    .line 29
    const-string v0, "chartAvailableHeight"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_AVAILABLE_HEIGHT:Ljava/lang/String;

    .line 30
    const-string v0, "chartScore12Pixels"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_12_PIXELS:Ljava/lang/String;

    .line 31
    const-string v0, "chartScore34Pixels"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_34_PIXELS:Ljava/lang/String;

    .line 32
    const-string v0, "chartScore56Pixels"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_56_PIXELS:Ljava/lang/String;

    .line 33
    const-string v0, "chartScore78Pixels"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_78_PIXELS:Ljava/lang/String;

    .line 34
    const-string v0, "chartScore90Pixels"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_90_PIXELS:Ljava/lang/String;

    .line 35
    const-string v0, "statsTitle"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TITLE:Ljava/lang/String;

    .line 36
    const-string v0, "statsTotalReports"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TOTAL_REPORTS:Ljava/lang/String;

    .line 37
    const-string v0, "statsAverageScore"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_AVERAGE_SCORE:Ljava/lang/String;

    .line 38
    const-string v0, "statsSymptom1Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_1_PERCENTAGE:Ljava/lang/String;

    .line 39
    const-string v0, "statsSymptom2Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_2_PERCENTAGE:Ljava/lang/String;

    .line 40
    const-string v0, "statsSymptom3Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_3_PERCENTAGE:Ljava/lang/String;

    .line 41
    const-string v0, "statsSymptom4Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_4_PERCENTAGE:Ljava/lang/String;

    .line 42
    const-string v0, "statsSymptom5Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_5_PERCENTAGE:Ljava/lang/String;

    .line 43
    const-string v0, "statsSymptom6Percentage"

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_6_PERCENTAGE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ogen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "neus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "moe"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "slecht slapen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "benauwdheid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hoesten"

    aput-object v2, v0, v1

    sput-object v0, Lcom/novioplan/pollennieuws/data/Constants;->SYMPTOMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
