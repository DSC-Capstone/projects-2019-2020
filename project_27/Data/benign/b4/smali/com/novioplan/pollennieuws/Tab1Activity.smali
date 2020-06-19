.class public Lcom/novioplan/pollennieuws/Tab1Activity;
.super Landroid/app/Activity;
.source "Tab1Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;
    }
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private bmImage:Landroid/graphics/drawable/Drawable;

.field private dateTxt:Landroid/widget/TextView;

.field private hayValueNum:Landroid/widget/TextView;

.field private hayValueTxt:Landroid/widget/TextView;

.field private hayView:Landroid/widget/RelativeLayout;

.field private imgView:Landroid/widget/ImageView;

.field private initialHUD:Landroid/app/ProgressDialog;

.field private isRunning:Z

.field lastDownload:J

.field private mImage:Landroid/graphics/drawable/Drawable;

.field newDateStr:Ljava/lang/String;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekbarProgress:I

.field syncTask:Lcom/novioplan/pollennieuws/SyncObservationsTask;

.field timeForNextDownload:J

.field timeToWaitForNextDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Tab1Activity"

    sput-object v0, Lcom/novioplan/pollennieuws/Tab1Activity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->timeToWaitForNextDownload:J

    .line 58
    iput-wide v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->timeForNextDownload:J

    .line 59
    iput-wide v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->lastDownload:J

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekbarProgress:I

    return v0
.end method

.method static synthetic access$1000(Lcom/novioplan/pollennieuws/Tab1Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->isRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/novioplan/pollennieuws/Tab1Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->isRunning:Z

    return p1
.end method

.method static synthetic access$102(Lcom/novioplan/pollennieuws/Tab1Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekbarProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayValueNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayValueTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/novioplan/pollennieuws/Tab1Activity;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->mImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->imgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/novioplan/pollennieuws/Tab1Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->bmImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/novioplan/pollennieuws/Tab1Activity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    return-object v0
.end method

.method static synthetic access$900(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/Tab1Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->initialHUD:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static getTextColor(I)Ljava/lang/String;
    .locals 1
    .param p0, "hayValue"    # I

    .prologue
    .line 276
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 278
    const-string v0, "#9fcf0f"

    .line 296
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    .line 282
    const-string v0, "#ffff0f"

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x5

    if-lt p0, v0, :cond_2

    const/4 v0, 0x6

    if-gt p0, v0, :cond_2

    .line 286
    const-string v0, "#ff9f0f"

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x7

    if-lt p0, v0, :cond_3

    const/16 v0, 0x8

    if-gt p0, v0, :cond_3

    .line 290
    const-string v0, "#cf3f3f"

    goto :goto_0

    .line 292
    :cond_3
    const/16 v0, 0x9

    if-lt p0, v0, :cond_4

    const/16 v0, 0xa

    if-gt p0, v0, :cond_4

    .line 294
    const-string v0, "#9f3fcf"

    goto :goto_0

    .line 296
    :cond_4
    const-string v0, "#00000000"

    goto :goto_0
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/novioplan/pollennieuws/Tab1Activity;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setImageUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->forecastIsCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iput-boolean v5, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->isRunning:Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, ""

    const-string v2, "Laden..."

    invoke-static {p0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->initialHUD:Landroid/app/ProgressDialog;

    .line 172
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 181
    new-instance v0, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;-><init>(Lcom/novioplan/pollennieuws/Tab1Activity;)V

    .line 182
    .local v0, "task":Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    .line 76
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->imgView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/Tab1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->bmImage:Landroid/graphics/drawable/Drawable;

    .line 80
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->dateTxt:Landroid/widget/TextView;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->newDateStr:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->dateTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->newDateStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayValueNum:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayValueTxt:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->hayView:Landroid/widget/RelativeLayout;

    .line 91
    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekBar:Landroid/widget/SeekBar;

    .line 92
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/novioplan/pollennieuws/Tab1Activity$1;

    invoke-direct {v2, p0}, Lcom/novioplan/pollennieuws/Tab1Activity$1;-><init>(Lcom/novioplan/pollennieuws/Tab1Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    if-nez p2, :cond_0

    .line 272
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->requestWindowFeature(I)Z

    .line 69
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/Tab1Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 71
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->forcastNeedsUpdate()V

    .line 72
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/Tab1Activity;->setupViews()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    const-string v2, "No Network Available"

    const/16 v3, 0x1388

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 194
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x30

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 195
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->imgView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->isRunning:Z

    if-nez v2, :cond_0

    .line 203
    iput-boolean v5, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->isRunning:Z

    .line 204
    sget-object v2, Lcom/novioplan/pollennieuws/data/Constants;->POLLEN_MAP_URL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/novioplan/pollennieuws/Tab1Activity;->setImageUrl(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 209
    :cond_1
    return-void

    .line 197
    :cond_2
    new-instance v0, Lcom/novioplan/pollennieuws/SyncObservationsTask;

    invoke-direct {v0}, Lcom/novioplan/pollennieuws/SyncObservationsTask;-><init>()V

    .line 198
    .local v0, "syncTask":Lcom/novioplan/pollennieuws/SyncObservationsTask;
    new-array v3, v5, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/Tab1Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/novioplan/pollennieuws/SyncObservationsTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    goto :goto_0
.end method
