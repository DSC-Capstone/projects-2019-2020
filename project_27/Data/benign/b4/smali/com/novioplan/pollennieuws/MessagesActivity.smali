.class public Lcom/novioplan/pollennieuws/MessagesActivity;
.super Landroid/app/ListActivity;
.source "MessagesActivity.java"


# static fields
.field public static tag:Ljava/lang/String;

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private countryBtn:Landroid/widget/Button;

.field private countryView:Landroid/webkit/WebView;

.field private dateText:Ljava/lang/String;

.field dialogHUD:Landroid/app/ProgressDialog;

.field private gpsWaitCount:I

.field private greenBar:Landroid/widget/RelativeLayout;

.field initialHUD:Landroid/app/ProgressDialog;

.field private intensityImage:Landroid/widget/ImageView;

.field private logBtn:Landroid/widget/Button;

.field private logView:Landroid/widget/ListView;

.field private observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

.field parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

.field preferences:Landroid/content/SharedPreferences;

.field private regionBtn:Landroid/widget/Button;

.field private regionView:Landroid/webkit/WebView;

.field private reportBtn:Landroid/widget/Button;

.field private reportsAverage:Landroid/widget/TextView;

.field private reportsCount:Landroid/widget/TextView;

.field task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MessagesActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    .line 314
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/novioplan/pollennieuws/MessagesActivity;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 318
    new-instance v0, Lcom/novioplan/pollennieuws/MessagesActivity$7;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$7;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateRegionView()V

    return-void
.end method

.method static synthetic access$100(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateCountryView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/novioplan/pollennieuws/MessagesActivity;)Lcom/novioplan/pollennieuws/data/ObservationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->syncReports()V

    return-void
.end method

.method static synthetic access$200(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->greenBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/MessagesActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->setGreenBar()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->dateText:Ljava/lang/String;

    .line 157
    new-instance v1, Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    .line 158
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->sort()V

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->gpsWaitCount:I

    .line 161
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->setupViews()V

    .line 162
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryBtn:Landroid/widget/Button;

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    return-void
.end method

.method private locationNotAvailable()V
    .locals 4

    .prologue
    .line 329
    const-string v1, "MessagesActivity"

    const-string v2, "***** 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "GPS Location Not Available"

    const/16 v2, 0x7d0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 332
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 333
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    return-void
.end method

.method private setGreenBar()V
    .locals 9

    .prologue
    const v8, 0x7f02004c

    const/16 v7, 0xc

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "month":I
    :goto_0
    if-gt v2, v7, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/MessagesActivity;->getCountPerMonth(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    if-lez v1, :cond_2

    .line 171
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "weightedSum":I
    const/4 v2, 0x0

    :goto_1
    if-gt v2, v7, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/MessagesActivity;->getAverageForMonth(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/MessagesActivity;->getCountPerMonth(I)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_1
    div-int v0, v3, v1

    .line 178
    .local v0, "average":I
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsAverage:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 205
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    .end local v0    # "average":I
    .end local v3    # "weightedSum":I
    :goto_2
    return-void

    .line 184
    .restart local v0    # "average":I
    .restart local v3    # "weightedSum":I
    :pswitch_0
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 188
    :pswitch_1
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 192
    :pswitch_2
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 197
    :pswitch_3
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 201
    :pswitch_4
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 209
    .end local v0    # "average":I
    .end local v3    # "weightedSum":I
    :cond_2
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsCount:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsAverage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 214
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    .line 215
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    .line 217
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/pollen-stats-android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/html/pollen-stats-android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 220
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logBtn:Landroid/widget/Button;

    .line 221
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionBtn:Landroid/widget/Button;

    .line 222
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryBtn:Landroid/widget/Button;

    .line 223
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportBtn:Landroid/widget/Button;

    .line 224
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsAverage:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportsCount:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->intensityImage:Landroid/widget/ImageView;

    .line 227
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->greenBar:Landroid/widget/RelativeLayout;

    .line 229
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->setGreenBar()V

    .line 231
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 234
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 238
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateRegionView()V

    .line 239
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateCountryView()V

    .line 240
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 244
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logView:Landroid/widget/ListView;

    .line 245
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->greenBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/MessagesActivity$3;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$3;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/MessagesActivity$4;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$4;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/MessagesActivity$5;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$5;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->reportBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/MessagesActivity$6;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$6;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method private showInitialListAlert()V
    .locals 6

    .prologue
    .line 511
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Om uw meldingen in een grafiek te zien drukt u op de menu knop."

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/novioplan/pollennieuws/MessagesActivity$8;

    invoke-direct {v5, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$8;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    const-string v3, "Jaaroverzicht"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 525
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 526
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "initialListAlertShown"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 534
    return-void
.end method

.method private syncReports()V
    .locals 6

    .prologue
    .line 309
    new-instance v0, Lcom/novioplan/pollennieuws/SyncObservationsTask;

    invoke-direct {v0}, Lcom/novioplan/pollennieuws/SyncObservationsTask;-><init>()V

    .line 310
    .local v0, "syncTask":Lcom/novioplan/pollennieuws/SyncObservationsTask;
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/novioplan/pollennieuws/SyncObservationsTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    .line 311
    sget-object v1, Lcom/novioplan/pollennieuws/MessagesActivity;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 312
    return-void
.end method

.method private updateCountryView()V
    .locals 23

    .prologue
    .line 343
    sget-object v21, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v22, "updateCountyView"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSON()Lorg/json/JSONObject;

    move-result-object v10

    .line 346
    .local v10, "obj":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    .line 396
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v21, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v22, "updateCountyView got obj"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_0
    const-string v21, "MessagesActivity"

    const-string v22, "updateCountyView: inside try"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_TOP_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 357
    .local v8, "ctp":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_AVAILABLE_HEIGHT:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 358
    .local v2, "cah":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_12_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 359
    .local v3, "cs12p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_34_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, "cs34p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_56_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 361
    .local v5, "cs56p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_78_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 362
    .local v6, "cs78p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_90_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 363
    .local v7, "cs90p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_1_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 364
    .local v11, "s1p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_2_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "s2p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_3_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 366
    .local v13, "s3p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_4_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 367
    .local v14, "s4p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_5_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 368
    .local v15, "s5p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_6_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 369
    .local v16, "s6p":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TOTAL_REPORTS:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 370
    .local v19, "stp":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_AVERAGE_SCORE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 371
    .local v17, "sas":I
    sget-object v21, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TITLE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 374
    .local v18, "st":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setChartBarHeights("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 375
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 377
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setStatsSymptomPercentages("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 380
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setChartTopPercentage("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 383
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setStatsTotalReports("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setStatsAverageScore("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 389
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "javascript:setStatsTitle(\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\");"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 392
    .end local v2    # "cah":I
    .end local v3    # "cs12p":I
    .end local v4    # "cs34p":I
    .end local v5    # "cs56p":I
    .end local v6    # "cs78p":I
    .end local v7    # "cs90p":I
    .end local v8    # "ctp":I
    .end local v11    # "s1p":I
    .end local v12    # "s2p":I
    .end local v13    # "s3p":I
    .end local v14    # "s4p":I
    .end local v15    # "s5p":I
    .end local v16    # "s6p":I
    .end local v17    # "sas":I
    .end local v18    # "st":Ljava/lang/String;
    .end local v19    # "stp":I
    .end local v20    # "url":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 393
    .local v9, "e":Lorg/json/JSONException;
    sget-object v21, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateRegionView()V
    .locals 27

    .prologue
    .line 398
    sget-object v24, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v25, "updateRegionoView"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->regionJSON()Lorg/json/JSONObject;

    move-result-object v12

    .line 401
    .local v12, "obj":Lorg/json/JSONObject;
    sget-object v24, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v25, "updateRegionView got obj"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-nez v12, :cond_0

    .line 405
    const-string v24, "Proberen om uw regionale locatie informatie op te halen..."

    const/16 v25, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    .line 406
    .local v22, "toast":Landroid/widget/Toast;
    const/16 v24, 0x30

    const/16 v25, 0x0

    const/16 v26, 0xfa

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 407
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 410
    const-string v23, "javascript:setStatsTitle(\"Onbekend\");"

    .line 411
    .local v23, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 460
    .end local v22    # "toast":Landroid/widget/Toast;
    .end local v23    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 416
    :cond_0
    :try_start_0
    const-string v24, "MessagesActivity"

    const-string v25, "updateRegionView: inside try"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_TOP_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 421
    .local v10, "ctp":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_AVAILABLE_HEIGHT:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 422
    .local v4, "cah":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_12_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 423
    .local v5, "cs12p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_34_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 424
    .local v6, "cs34p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_56_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 425
    .local v7, "cs56p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_78_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 426
    .local v8, "cs78p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->CHART_SCORE_90_PIXELS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 427
    .local v9, "cs90p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_1_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 428
    .local v13, "s1p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_2_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 429
    .local v14, "s2p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_3_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 430
    .local v15, "s3p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_4_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 431
    .local v16, "s4p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_5_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 432
    .local v17, "s5p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_SYMPTOM_6_PERCENTAGE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 433
    .local v18, "s6p":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TOTAL_REPORTS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 434
    .local v21, "stp":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_AVERAGE_SCORE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 435
    .local v19, "sas":I
    sget-object v24, Lcom/novioplan/pollennieuws/data/Constants;->STATS_TITLE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 438
    .local v20, "st":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setChartBarHeights("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 439
    .restart local v23    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 441
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setStatsSymptomPercentages("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 444
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setChartTopPercentage("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 447
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setStatsTotalReports("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 450
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setStatsAverageScore("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 453
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "javascript:setStatsTitle(\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\");"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 456
    .end local v4    # "cah":I
    .end local v5    # "cs12p":I
    .end local v6    # "cs34p":I
    .end local v7    # "cs56p":I
    .end local v8    # "cs78p":I
    .end local v9    # "cs90p":I
    .end local v10    # "ctp":I
    .end local v13    # "s1p":I
    .end local v14    # "s2p":I
    .end local v15    # "s3p":I
    .end local v16    # "s4p":I
    .end local v17    # "s5p":I
    .end local v18    # "s6p":I
    .end local v19    # "sas":I
    .end local v20    # "st":Ljava/lang/String;
    .end local v21    # "stp":I
    .end local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 457
    .local v11, "e":Lorg/json/JSONException;
    sget-object v24, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getAverageForMonth(I)I
    .locals 5
    .param p1, "m"    # I

    .prologue
    .line 595
    const/4 v3, 0x0

    .line 596
    .local v3, "sum":I
    const/4 v0, 0x0

    .line 597
    .local v0, "count":I
    iget-object v4, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

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

    .line 598
    .local v2, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 599
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDeleted()I

    move-result v4

    if-nez v4, :cond_0

    .line 600
    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v4

    add-int/2addr v3, v4

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v2    # "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    :cond_1
    if-nez v0, :cond_2

    .line 606
    const/4 v4, 0x0

    .line 609
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
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getAverageForMonth(I)I

    move-result v0

    return v0
.end method

.method public getCountPerMonth(I)I
    .locals 4
    .param p1, "m"    # I

    .prologue
    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v2, "obsList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/ObservationData;>;"
    iget-object v3, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

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

    .line 582
    .local v1, "obs":Lcom/novioplan/pollennieuws/data/ObservationData;
    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getMonthValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 583
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
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
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getCountPerMonth(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 104
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->preferences:Landroid/content/SharedPreferences;

    .line 108
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "initialListAlertShown"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    .local v0, "tgpref":Z
    if-nez v0, :cond_0

    .line 110
    sget-object v1, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v2, "show the list alert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->showInitialListAlert()V

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->initialize()V

    .line 119
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    new-instance v2, Lcom/novioplan/pollennieuws/MessagesActivity$1;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$1;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 134
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    new-instance v2, Lcom/novioplan/pollennieuws/MessagesActivity$2;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$2;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 151
    return-void

    .line 113
    :cond_0
    sget-object v1, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v2, "already showed the list alert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 538
    iget-object v3, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v3, p3}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 540
    .local v2, "observation":Lcom/novioplan/pollennieuws/data/ObservationData;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Wilt u deze melding verwijderen?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Ja"

    new-instance v5, Lcom/novioplan/pollennieuws/MessagesActivity$10;

    invoke-direct {v5, p0, v2}, Lcom/novioplan/pollennieuws/MessagesActivity$10;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;Lcom/novioplan/pollennieuws/data/ObservationData;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Nee"

    new-instance v5, Lcom/novioplan/pollennieuws/MessagesActivity$9;

    invoke-direct {v5, p0}, Lcom/novioplan/pollennieuws/MessagesActivity$9;-><init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 574
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 577
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090054

    if-ne v1, v2, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 464
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 469
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 471
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->greenBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->countryBtn:Landroid/widget/Button;

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 475
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->regionBtn:Landroid/widget/Button;

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 476
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->logBtn:Landroid/widget/Button;

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 479
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 480
    const-string v2, "No Network Available"

    const/16 v3, 0x1388

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 481
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x30

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 482
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 489
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    const-string v2, "MessagesActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->dialogHUD:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->dialogHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    if-eqz v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->setObservationList(Ljava/util/List;)V

    .line 497
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->sort()V

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->setGreenBar()V

    .line 502
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->dateText:Ljava/lang/String;

    .line 504
    return-void

    .line 485
    .end local v0    # "postFormater":Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->syncReports()V

    .line 486
    iget-object v2, p0, Lcom/novioplan/pollennieuws/MessagesActivity;->parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->fetchJSONStrings()V

    goto :goto_0
.end method

.method public updateJSONViews()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v1, "update json views"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateCountryView()V

    .line 339
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/MessagesActivity;->updateRegionView()V

    .line 341
    return-void
.end method
