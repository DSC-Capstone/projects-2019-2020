.class public Lcom/novioplan/pollennieuws/KalenderActivity;
.super Landroid/app/ListActivity;
.source "KalenderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;
    }
.end annotation


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private listView:Landroid/widget/ListView;

.field private observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "KalenderActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/KalenderActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 193
    return-void
.end method

.method private getAverageForMonthA(I)I
    .locals 8
    .param p1, "m"    # I

    .prologue
    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "sum":I
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getObservationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 151
    .local v3, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getDayValue()I

    move-result v5

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v5

    if-nez v5, :cond_0

    .line 152
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v5

    add-int/2addr v4, v5

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    if-nez v1, :cond_2

    .line 157
    const/4 v0, 0x0

    .line 162
    :goto_1
    return v0

    .line 160
    :cond_2
    div-int v5, v4, v1

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 161
    .local v0, "average":I
    const-string v5, "KalendarActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "average a:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAverageForMonthB(I)I
    .locals 8
    .param p1, "m"    # I

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "sum":I
    const/4 v1, 0x0

    .line 168
    .local v1, "count":I
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getObservationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 169
    .local v3, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getDayValue()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v5

    if-nez v5, :cond_0

    .line 170
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v5

    add-int/2addr v4, v5

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    if-nez v1, :cond_2

    .line 175
    const/4 v0, 0x0

    .line 181
    :goto_1
    return v0

    .line 178
    :cond_2
    div-int v5, v4, v1

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 180
    .local v0, "average":I
    const-string v5, "KalendarActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "average b:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    .line 42
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/KalenderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->listView:Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/novioplan/pollennieuws/KalenderActivity$1;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/KalenderActivity$1;-><init>(Lcom/novioplan/pollennieuws/KalenderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    .line 100
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/pollen-calendar-android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;

    const v3, 0x1090003

    const v4, 0x7f090001

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/KalenderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;-><init>(Lcom/novioplan/pollennieuws/KalenderActivity;Landroid/content/Context;II[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/KalenderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 106
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/novioplan/pollennieuws/KalenderActivity$2;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/KalenderActivity$2;-><init>(Lcom/novioplan/pollennieuws/KalenderActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/pollen-calendar-android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/KalenderActivity;->updateIntensities()V

    .line 189
    return-void
.end method

.method public updateIntensities()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 119
    const-string v5, "KalendarActivity"

    const-string v6, "updateIntensities"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->setObservationList(Ljava/util/List;)V

    .line 122
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xc

    if-gt v0, v5, :cond_4

    .line 123
    const-string v5, "KalendarActivity"

    const-string v6, "update Intensity html"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->getAverageForMonthA(I)I

    move-result v1

    .line 126
    .local v1, "monthAaverage":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:setReportsBar(\'month"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v8, :cond_2

    const-string v5, "0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "a\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "urlA":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 128
    const-string v5, "KalendarActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "urlA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->getAverageForMonthB(I)I

    move-result v2

    .line 135
    .local v2, "monthBaverage":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:setReportsBar(\'month"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v8, :cond_3

    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "b\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "urlB":Ljava/lang/String;
    if-lez v2, :cond_1

    .line 137
    const-string v5, "KalendarActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "urlB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v2    # "monthBaverage":I
    .end local v3    # "urlA":Ljava/lang/String;
    .end local v4    # "urlB":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto/16 :goto_1

    .line 135
    .restart local v2    # "monthBaverage":I
    .restart local v3    # "urlA":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 145
    .end local v1    # "monthAaverage":I
    .end local v2    # "monthBaverage":I
    .end local v3    # "urlA":Ljava/lang/String;
    :cond_4
    return-void
.end method
