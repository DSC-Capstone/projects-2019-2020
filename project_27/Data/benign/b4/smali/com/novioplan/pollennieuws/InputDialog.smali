.class public Lcom/novioplan/pollennieuws/InputDialog;
.super Landroid/app/Activity;
.source "InputDialog.java"


# static fields
.field public static tag:Ljava/lang/String;

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private cancelBtn:Landroid/widget/ImageButton;

.field database:Landroid/database/sqlite/SQLiteDatabase;

.field private dateTxt:Landroid/widget/TextView;

.field private gpsWaitCount:I

.field private hayValue:I

.field private hoestenBtn:Landroid/widget/Button;

.field private hooiSeekBar:Landroid/widget/SeekBar;

.field private isHoesten:Z

.field private isNeus:Z

.field private isOgen:Z

.field private isPiepen:Z

.field private isSlapen:Z

.field private isVerm:Z

.field private locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

.field private municipality:Landroid/widget/TextView;

.field private neusBtn:Landroid/widget/Button;

.field private observation:Lcom/novioplan/pollennieuws/data/ObservationData;

.field private ogenBtn:Landroid/widget/Button;

.field private piepenBtn:Landroid/widget/Button;

.field private seekbarProgress:I

.field private slapenBtn:Landroid/widget/Button;

.field private storeBtn:Landroid/widget/Button;

.field task:Ljava/lang/Runnable;

.field private valueImage:Landroid/widget/ImageView;

.field private valueTxt:Landroid/widget/TextView;

.field private vermBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "InputDialog"

    sput-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    .line 267
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/novioplan/pollennieuws/InputDialog;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 271
    new-instance v0, Lcom/novioplan/pollennieuws/InputDialog$10;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/InputDialog$10;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novioplan/pollennieuws/InputDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->seekbarProgress:I

    return v0
.end method

.method static synthetic access$1000(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->vermBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/novioplan/pollennieuws/InputDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->seekbarProgress:I

    return p1
.end method

.method static synthetic access$1100(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isSlapen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isSlapen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->slapenBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isPiepen:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isPiepen:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->piepenBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isHoesten:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isHoesten:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hoestenBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/novioplan/pollennieuws/InputDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->setViewValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/novioplan/pollennieuws/InputDialog;I)I
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/novioplan/pollennieuws/InputDialog;->convertSeekbarValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/novioplan/pollennieuws/InputDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/novioplan/pollennieuws/InputDialog;->setHayValues(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isOgen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isOgen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->ogenBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isNeus:Z

    return v0
.end method

.method static synthetic access$702(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isNeus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->neusBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/novioplan/pollennieuws/InputDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->isVerm:Z

    return v0
.end method

.method static synthetic access$902(Lcom/novioplan/pollennieuws/InputDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/InputDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novioplan/pollennieuws/InputDialog;->isVerm:Z

    return p1
.end method

.method private convertSeekbarValue(I)I
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 391
    add-int/lit8 v0, p1, 0xa

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getCurrentFormattedDateTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM yyyy @ hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private locationNotAvailable()V
    .locals 4

    .prologue
    .line 331
    const-string v1, "InputDialog"

    const-string v2, "location not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    const-string v2, "GPS Location Not Available"

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 334
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 335
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method

.method private setHayValues(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 344
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHayValues: val = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    add-int/lit8 p1, p1, -0x1

    .line 346
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    const/4 v0, 0x5

    if-gt p1, v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 358
    :cond_3
    const/4 v0, 0x6

    if-lt p1, v0, :cond_4

    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 362
    :cond_4
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setViewValues()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->dateTxt:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueTxt:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->hooiSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->ogenBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->neusBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->vermBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->slapenBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->piepenBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->hoestenBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v1, "InputDialog"

    const-string v2, "setViewValues"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    if-nez v1, :cond_2

    .line 287
    const-string v1, "InputDialog"

    const-string v2, "setViewValues0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->dateTxt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getCurrentFormattedDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueTxt:Landroid/widget/TextView;

    iget v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    invoke-direct {p0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->setHayValues(I)V

    .line 292
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->municipality:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    sget-object v1, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewValues: hayValue = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v1

    if-nez v1, :cond_4

    .line 297
    const-string v1, "InputDialog"

    const-string v2, "setViewValues1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v0, 0xc8

    .line 300
    .local v0, "waitTime":I
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    .line 301
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    if-lt v1, v5, :cond_3

    .line 302
    iput v4, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    .line 303
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->locationNotAvailable()V

    goto :goto_0

    .line 307
    :cond_3
    sget-object v1, Lcom/novioplan/pollennieuws/InputDialog;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->task:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 311
    .end local v0    # "waitTime":I
    :cond_4
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 312
    const-string v1, "InputDialog"

    const-string v2, "setViewValues2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v0, 0xc8

    .line 315
    .restart local v0    # "waitTime":I
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    .line 316
    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    if-lt v1, v5, :cond_5

    .line 317
    iput v4, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    .line 318
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->locationNotAvailable()V

    goto/16 :goto_0

    .line 321
    :cond_5
    const-string v1, "InputDialog"

    const-string v2, "setViewValues3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v1, Lcom/novioplan/pollennieuws/InputDialog;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->task:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .line 327
    .end local v0    # "waitTime":I
    :cond_6
    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->municipality:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    .line 101
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$1;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$1;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->dateTxt:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueTxt:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueImage:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->municipality:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hooiSeekBar:Landroid/widget/SeekBar;

    .line 113
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hooiSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$2;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$2;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 137
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->ogenBtn:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->ogenBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$3;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$3;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->neusBtn:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->neusBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$4;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$4;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->vermBtn:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->vermBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$5;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$5;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->slapenBtn:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->slapenBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$6;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$6;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->piepenBtn:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->piepenBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$7;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$7;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hoestenBtn:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hoestenBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$8;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$8;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/InputDialog$9;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/InputDialog$9;-><init>(Lcom/novioplan/pollennieuws/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/InputDialog;->requestWindowFeature(I)Z

    .line 88
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/InputDialog;->setContentView(I)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->gpsWaitCount:I

    .line 90
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 92
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    .line 93
    iget v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    .line 94
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: hayValue = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->setupViews()V

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 387
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 372
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    .line 373
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->hooiSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 374
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: hayValue = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->hayValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/InputDialog;->setViewValues()V

    .line 376
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog;->storeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    :cond_1
    return-void
.end method

.method protected saveLocalObservationData()V
    .locals 11

    .prologue
    const/16 v10, 0xbb8

    const/16 v9, 0x12c

    const/16 v8, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-direct {v2}, Lcom/novioplan/pollennieuws/data/ObservationData;-><init>()V

    iput-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDate(J)V

    .line 231
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->valueTxt:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzIntensity(I)V

    .line 232
    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->isOgen:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom1(I)V

    .line 233
    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->isNeus:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom2(I)V

    .line 234
    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->isVerm:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom3(I)V

    .line 235
    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->isSlapen:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom4(I)V

    .line 236
    iget-object v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->isPiepen:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom5(I)V

    .line 237
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-boolean v5, p0, Lcom/novioplan/pollennieuws/InputDialog;->isHoesten:Z

    if-eqz v5, :cond_7

    :goto_5
    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSymptom6(I)V

    .line 238
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v2, v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDeleted(I)V

    .line 240
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getLocationObservaton()Lcom/novioplan/pollennieuws/data/LocationData;

    move-result-object v2

    iput-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    .line 241
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->getzNeighborhood()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzNeighborhood(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->getzSubAdministrativeArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCity(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->getzCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzCountry(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzProvince(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLat()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLat(F)V

    .line 249
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/InputDialog;->locationObs:Lcom/novioplan/pollennieuws/data/LocationData;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/data/LocationData;->getzLon()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzLon(F)V

    .line 254
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/novioplan/pollennieuws/InputDialog;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-static {v2}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->addObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->finish()V

    .line 260
    const-string v2, "Notitie succesvol toegevoegd"

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 261
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v8, v4, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 262
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 265
    :goto_6
    return-void

    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_2
    move v2, v4

    .line 232
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 233
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 234
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 235
    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 236
    goto :goto_4

    :cond_7
    move v3, v4

    .line 237
    goto :goto_5

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->finish()V

    .line 260
    const-string v2, "Notitie succesvol toegevoegd"

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 261
    .restart local v1    # "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v8, v4, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 262
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "toast":Landroid/widget/Toast;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/InputDialog;->finish()V

    .line 260
    const-string v3, "Notitie succesvol toegevoegd"

    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 261
    .restart local v1    # "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v8, v4, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 262
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 263
    throw v2
.end method
