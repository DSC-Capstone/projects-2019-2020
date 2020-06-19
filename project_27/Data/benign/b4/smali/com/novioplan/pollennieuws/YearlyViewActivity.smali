.class public Lcom/novioplan/pollennieuws/YearlyViewActivity;
.super Landroid/app/Activity;
.source "YearlyViewActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private dateText:Ljava/lang/String;

.field private detector:Landroid/view/GestureDetector;

.field dialogHUD:Landroid/app/ProgressDialog;

.field private gestureDistance:F

.field private gpsWaitCount:I

.field initialHUD:Landroid/app/ProgressDialog;

.field maxYear:I

.field minYear:I

.field private observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

.field parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

.field preferences:Landroid/content/SharedPreferences;

.field showingSymptoms:Z

.field private year:I

.field private yearlyView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "YearlyViewActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/16 v0, 0x7dc

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    .line 51
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->minYear:I

    .line 52
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->maxYear:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->showingSymptoms:Z

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/YearlyViewActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    return-void
.end method

.method static synthetic access$100(Lcom/novioplan/pollennieuws/YearlyViewActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/YearlyViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->detector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 115
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->dateText:Ljava/lang/String;

    .line 118
    new-instance v3, Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    .line 119
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->sort()V

    .line 121
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 122
    .local v0, "last":I
    if-ltz v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3, v6}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 124
    .local v1, "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getYearValue()I

    move-result v3

    iput v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->minYear:I

    .line 126
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3, v0}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    check-cast v1, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 127
    .restart local v1    # "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getYearValue()I

    move-result v3

    iput v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->maxYear:I

    .line 130
    .end local v1    # "obj":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_0
    iget v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->maxYear:I

    iput v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    .line 133
    iput v6, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->gpsWaitCount:I

    .line 134
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->setupViews()V

    .line 136
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    .line 141
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/pollen-yeargraph-android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 147
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    return-void
.end method

.method private showAnnoyingAlert()V
    .locals 5

    .prologue
    .line 320
    iget-object v2, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some available Location Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/novioplan/pollennieuws/YearlyViewActivity$4;

    invoke-direct {v4, p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity$4;-><init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    const-string v2, "Annoying Alert"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 336
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 339
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private showInitialGraphAlert()V
    .locals 6

    .prologue
    .line 382
    sget-object v3, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v4, "initial graph alert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Reeds gedane meldingen kunt u hier \noverzichtelijk terug zien.\n\nSwipe links en rechts om reeds gedane \nmeldingen door de jaren in te zien."

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/novioplan/pollennieuws/YearlyViewActivity$5;

    invoke-direct {v5, p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity$5;-><init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const-string v3, "Jaaroverzicht"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 395
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 396
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "initialGraphAlertShown"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 402
    return-void
.end method

.method private symptomsString([I)Ljava/lang/String;
    .locals 9
    .param p1, "symptoms"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symptomsString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x6

    .line 246
    .local v1, "n":I
    const/4 v4, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 247
    .local v2, "order":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 248
    aget-object v4, v2, v0

    aput v0, v4, v7

    .line 249
    aget-object v4, v2, v0

    aget v5, p1, v0

    aput v5, v4, v8

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symptomsString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "created order array"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v4, Lcom/novioplan/pollennieuws/YearlyViewActivity$3;

    invoke-direct {v4, p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity$3;-><init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symptomsString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sorted order array"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v3, ""

    .line 264
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 266
    if-eqz v0, :cond_1

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symptomsString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/novioplan/pollennieuws/data/Constants;->SYMPTOMS:[Ljava/lang/String;

    aget-object v6, v2, v0

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 274
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".symptomsString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "built result string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v3
.end method

.method private syncReports()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method private updateyearlyView()V
    .locals 11

    .prologue
    .line 192
    sget-object v8, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v9, "updateYearlyView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:setTitleYear(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "url":Ljava/lang/String;
    sget-object v8, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v8, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    invoke-virtual {v8, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 200
    const/16 v8, 0xc

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "month_01"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "month_02"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "month_03"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "month_04"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "month_05"

    aput-object v9, v5, v8

    const/4 v8, 0x5

    const-string v9, "month_06"

    aput-object v9, v5, v8

    const/4 v8, 0x6

    const-string v9, "month_07"

    aput-object v9, v5, v8

    const/4 v8, 0x7

    const-string v9, "month_08"

    aput-object v9, v5, v8

    const/16 v8, 0x8

    const-string v9, "month_09"

    aput-object v9, v5, v8

    const/16 v8, 0x9

    const-string v9, "month_10"

    aput-object v9, v5, v8

    const/16 v8, 0xa

    const-string v9, "month_11"

    aput-object v9, v5, v8

    const/16 v8, 0xb

    const-string v9, "month_12"

    aput-object v9, v5, v8

    .line 201
    .local v5, "monthStrings":[Ljava/lang/String;
    iget-object v8, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    iget v9, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    invoke-virtual {v8, v9}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->statsForYear(I)[[I

    move-result-object v0

    .line 202
    .local v0, "annualStats":[[I
    const/4 v2, 0x0

    .line 204
    .local v2, "maxMonthCount":I
    const/4 v6, 0x0

    .line 206
    .local v6, "totalCount":I
    const/4 v3, 0x0

    .local v3, "month":I
    :goto_0
    const/16 v8, 0xc

    if-ge v3, v8, :cond_2

    .line 208
    const/4 v4, 0x0

    .line 210
    .local v4, "monthCount":I
    const/4 v1, 0x0

    .local v1, "bin":I
    :goto_1
    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 212
    aget-object v8, v0, v3

    aget v8, v8, v1

    add-int/2addr v4, v8

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_0
    if-le v4, v2, :cond_1

    .line 217
    move v2, v4

    .line 220
    :cond_1
    add-int/2addr v6, v4

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "bin":I
    .end local v4    # "monthCount":I
    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 223
    :cond_3
    const/4 v3, 0x0

    :goto_2
    const/16 v8, 0xc

    if-ge v3, v8, :cond_4

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:setMonthReportScores(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x4

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    sget-object v8, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v8, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    invoke-virtual {v8, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 231
    :cond_4
    if-eqz v6, :cond_5

    iget-boolean v8, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->showingSymptoms:Z

    if-nez v8, :cond_6

    .line 232
    :cond_5
    const-string v7, "javascript:hideSymptomBox();"

    .line 236
    :goto_3
    sget-object v8, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v8, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    invoke-virtual {v8, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 241
    return-void

    .line 234
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:setSymptomBox("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    iget v10, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    invoke-virtual {v9, v10}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->symptomsForYear(I)[I

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->symptomsString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method


# virtual methods
.method public changeYear(Z)V
    .locals 2
    .param p1, "up"    # Z

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    sget-object v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v1, "change year up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    .line 166
    :goto_0
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    iget v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->maxYear:I

    if-le v0, v1, :cond_1

    .line 167
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->maxYear:I

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    .line 168
    sget-object v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v1, "year already at max"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    .line 180
    :goto_1
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v1, "change year down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    iget v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->minYear:I

    if-ge v0, v1, :cond_2

    .line 173
    iget v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->minYear:I

    iput v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->year:I

    .line 174
    sget-object v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v1, "year already at min"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    goto :goto_1

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    goto :goto_1
.end method

.method public getAverageForMonth(I)I
    .locals 5
    .param p1, "m"    # I

    .prologue
    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, "sum":I
    const/4 v0, 0x0

    .line 361
    .local v0, "count":I
    iget-object v4, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getObservationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 362
    .local v2, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 363
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v4

    if-nez v4, :cond_0

    .line 364
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v4

    add-int/2addr v3, v4

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v2    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    if-nez v0, :cond_2

    .line 370
    const/4 v4, 0x0

    .line 373
    :goto_1
    return v4

    :cond_2
    div-int v4, v3, v0

    goto :goto_1
.end method

.method public getAverageForMonth(Ljava/lang/String;)I
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->getAverageForMonth(I)I

    move-result v0

    return v0
.end method

.method public getCountPerMonth(I)I
    .locals 4
    .param p1, "m"    # I

    .prologue
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "obsList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/ObservationData;>;"
    iget-object v3, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getObservationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 346
    .local v1, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 347
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v1    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method

.method public getCountPerMonth(Ljava/lang/String;)I
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->getCountPerMonth(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 70
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->setContentView(I)V

    .line 72
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->detector:Landroid/view/GestureDetector;

    .line 73
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 74
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->preferences:Landroid/content/SharedPreferences;

    .line 78
    iget-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "initialGraphAlertShown"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, "tgpref":Z
    if-nez v0, :cond_0

    .line 80
    sget-object v1, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v2, "show the graph alert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->showInitialGraphAlert()V

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->initialize()V

    .line 88
    iget-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    new-instance v2, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;-><init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->yearlyView:Landroid/webkit/WebView;

    new-instance v2, Lcom/novioplan/pollennieuws/YearlyViewActivity$2;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity$2;-><init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void

    .line 83
    :cond_0
    sget-object v1, Lcom/novioplan/pollennieuws/YearlyViewActivity;->tag:Ljava/lang/String;

    const-string v2, "already showed the graph alert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 459
    const-string v0, "---onDoubleTap---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    const-string v0, "---onDoubleTapEvent---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    const-string v0, "---onDown---"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 424
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->changeYear(Z)V

    .line 429
    :goto_0
    const-string v0, "---onFling---"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v3

    .line 427
    :cond_0
    invoke-virtual {p0, v3}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->changeYear(Z)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 435
    const-string v0, "---onLongPress---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    .line 309
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    const-string v0, "---onShowPress---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    const-string v0, "---onSingleTapConfirmed---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 451
    const-string v0, "---onSingleTapUp---"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->showingSymptoms:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->showingSymptoms:Z

    .line 453
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->updateyearlyView()V

    .line 454
    return v1

    :cond_0
    move v0, v1

    .line 452
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 412
    const/4 v0, 0x1

    return v0
.end method
