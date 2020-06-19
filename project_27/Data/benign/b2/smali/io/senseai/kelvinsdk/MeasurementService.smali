.class abstract Lio/senseai/kelvinsdk/MeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final ACTION_CHANGE_MODE:Ljava/lang/String; = "MeasurementService.ACTION_CHANGE_MODE"

.field public static final ACTION_GETTING_INSTANCE:Ljava/lang/String; = "MeasurementService.ACTION_GETTING_INSTANCE"

.field public static final ACTION_MAKE_PREDICTION:Ljava/lang/String; = "MeasurementService.ACTION_MAKE_PREDICTION"

.field public static final ACTION_PARENT_BG:Ljava/lang/String; = "MeasurementService.ACTION_PARENT_BG"

.field public static final ACTION_SETTING_MODE:Ljava/lang/String; = "MeasurementService.ACTION_SETTING_MODE"

.field public static final ACTION_TAKE_LOCATION:Ljava/lang/String; = "ACTION_TAKE_LOCATION"

.field public static final KEY_MODE:Ljava/lang/String; = "MeasurementService.KEY_MODE"

.field public static final KEY_MODE_STRING:Ljava/lang/String; = "KEY_MODE_STRING"

.field public static final KEY_TEMPERATURE:Ljava/lang/String; = "MeasurementService.KEY_TEMPERATURE"

.field protected static mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

.field protected static mTimerPeriod:I

.field private static ˊ:J

.field private static ˋ:J

.field private static ˎ:J

.field private static final ˏ:Ljava/lang/String;

.field private static ٴ:I


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field protected mStartingIntent:Landroid/content/Intent;

.field private ʹ:I

.field private ʻ:Landroid/os/PowerManager$WakeLock;

.field private ʼ:Landroid/os/Handler;

.field private ʽ:Lio/senseai/kelvinsdk/MeasurementService$1;

.field private ʾ:Landroid/hardware/SensorManager;

.field private ʿ:Z

.field private ˈ:D

.field private ˉ:D

.field private ˌ:D

.field private ˍ:D

.field private ˑ:D

.field private ͺ:Lio/senseai/kelvinsdk/RawData;

.field private ՙ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;

.field private י:Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

.field private ـ:D

.field private ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

.field private ᐧ:D

.field private ᐨ:D

.field private ᴵ:Lio/senseai/kelvinsdk/ᐝ;

.field private ᵎ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ᵔ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

.field private ι:Landroid/os/PowerManager;

.field private ⁱ:Lio/senseai/kelvinsdk/MeasurementService$3;

.field private ﹳ:D

.field private ﹶ:Lio/senseai/kelvinsdk/MeasurementService$4;

.field private ﾞ:Lio/senseai/kelvinsdk/Temperature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˊ:J

    .line 28
    const-wide/16 v0, 0x1e0

    sput-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˋ:J

    .line 29
    const-wide/16 v0, 0x28

    sput-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/senseai/kelvinsdk/MeasurementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WAKELOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/MeasurementService;->ˏ:Ljava/lang/String;

    .line 70
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    sput-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    .line 75
    const/4 v0, 0x3

    sput v0, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    .line 82
    const v0, 0xdbba0

    sput v0, Lio/senseai/kelvinsdk/MeasurementService;->mTimerPeriod:I

    .line 92
    const-string v0, "kelvinNDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    iput-boolean v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 59
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˈ:D

    .line 60
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˉ:D

    .line 61
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˌ:D

    .line 62
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˍ:D

    .line 63
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˑ:D

    .line 64
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ـ:D

    .line 65
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐧ:D

    .line 66
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐨ:D

    .line 67
    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﹳ:D

    .line 68
    new-instance v0, Lio/senseai/kelvinsdk/Temperature;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/Temperature;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    .line 71
    iput v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    .line 553
    new-instance v0, Lio/senseai/kelvinsdk/MeasurementService$3;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/MeasurementService$3;-><init>(Lio/senseai/kelvinsdk/MeasurementService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ⁱ:Lio/senseai/kelvinsdk/MeasurementService$3;

    .line 576
    new-instance v0, Lio/senseai/kelvinsdk/MeasurementService$4;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/MeasurementService$4;-><init>(Lio/senseai/kelvinsdk/MeasurementService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﹶ:Lio/senseai/kelvinsdk/MeasurementService$4;

    .line 709
    return-void
.end method

.method private native chargingstateJNI()I
.end method

.method private native cpuLoadJNI()I
.end method

.method private native scanFileJNI(Ljava/lang/String;)I
.end method

.method private ʻ()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 293
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 294
    const/4 v1, 0x1

    sget-object v2, Lio/senseai/kelvinsdk/MeasurementService;->ˏ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    .line 295
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static synthetic ʻ(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 2

    .prologue
    .line 10527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10528
    const-string v1, "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10529
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 23
    return-void
.end method

.method private ʼ()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x28

    const/4 v2, 0x1

    .line 344
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_1

    .line 346
    sput-wide v6, Lio/senseai/kelvinsdk/MeasurementService;->ˊ:J

    .line 347
    sput-wide v4, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    .line 348
    sput v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    .line 349
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʽ()V

    .line 350
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_2

    .line 353
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˊ:J

    .line 354
    sput-wide v4, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    .line 355
    const/4 v0, 0x3

    sput v0, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    .line 356
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʽ()V

    .line 357
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ()V

    goto :goto_0

    .line 358
    :cond_2
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_3

    .line 360
    sput-wide v6, Lio/senseai/kelvinsdk/MeasurementService;->ˊ:J

    .line 361
    const-wide/16 v0, 0xf0

    sput-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    .line 362
    sput v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    .line 363
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Configuration;->getCollection_rate()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lio/senseai/kelvinsdk/MeasurementService;->mTimerPeriod:I

    .line 365
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʽ()V

    .line 366
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->resetAlarm()V

    .line 367
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ()V

    goto :goto_0

    .line 368
    :cond_3
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˏ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_0

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 4636
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method static synthetic ʼ(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 9

    .prologue
    .line 23
    .line 11515
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/RawData;->ˊ()I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 11516
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    if-eqz v0, :cond_1

    .line 11517
    new-instance v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    iget-object v5, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v6, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v6}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    iget-object v8, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﹶ:Lio/senseai/kelvinsdk/MeasurementService$4;

    invoke-direct/range {v0 .. v8}, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;-><init>(Landroid/content/Context;DLio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/RawData;DLio/senseai/kelvinsdk/MeasurementService$TempResultListener;)V

    .line 11519
    :goto_1
    return-void

    .line 11517
    :cond_0
    iget-object v6, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v6}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    .line 11527
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11528
    const-string v1, "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11529
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    goto :goto_1

    .line 12527
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12528
    const-string v1, "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12529
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private ʽ()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 627
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 628
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 629
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 630
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 631
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 632
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget v2, Lio/senseai/kelvinsdk/MeasurementService;->ٴ:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 633
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/MeasurementService;D)V
    .locals 7

    .prologue
    .line 23
    .line 9541
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ՙ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;

    if-nez v0, :cond_0

    .line 9542
    new-instance v1, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    new-instance v6, Lio/senseai/kelvinsdk/MeasurementService$2;

    invoke-direct {v6, p0}, Lio/senseai/kelvinsdk/MeasurementService$2;-><init>(Lio/senseai/kelvinsdk/MeasurementService;)V

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;-><init>(Landroid/content/Context;Lio/senseai/kelvinsdk/RawData;DLio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc$Listener;)V

    iput-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ՙ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;

    :goto_0
    return-void

    .line 9549
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ՙ:Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;

    invoke-virtual {v0, p1, p2}, Lio/senseai/kelvinsdk/Prediction$DiagnosticDataCalc;->doCalc(D)V

    goto :goto_0
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/MeasurementService;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    return v0
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/Temperature;)Z
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˋ(Lio/senseai/kelvinsdk/Temperature;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˋ(Lio/senseai/kelvinsdk/MeasurementService;)V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    .line 23
    .line 5377
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->timestamp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5378
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_load:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->cpuLoadJNI()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5379
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->cpu_freq:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v4}, Lio/senseai/kelvinsdk/MeasurementService;->scanFileJNI(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5380
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_volt:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "/sys/class/power_supply/battery/voltage_now"

    invoke-direct {p0, v4}, Lio/senseai/kelvinsdk/MeasurementService;->scanFileJNI(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5381
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v4}, Lio/senseai/kelvinsdk/MeasurementService;->scanFileJNI(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5382
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->batt_temp_adc:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    const-string v4, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-direct {p0, v4}, Lio/senseai/kelvinsdk/MeasurementService;->scanFileJNI(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5383
    iget-object v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v5, Lio/senseai/kelvinsdk/RawData$FileHeaders;->screen_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    .line 5654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 5655
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ι:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v0, v2

    .line 5383
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5384
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->charging_state:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->chargingstateJNI()I

    move-result v4

    int-to-double v4, v4

    const-wide v12, 0x4050c00000000000L    # 67.0

    cmpl-double v4, v4, v12

    if-nez v4, :cond_a

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5386
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    .line 5388
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 5390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 5391
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 5392
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˈ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5394
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 5395
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˉ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5397
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 5398
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_humidity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˌ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5400
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 5401
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_light:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˍ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5403
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 5404
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_pressure:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˑ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5406
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 5407
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v3, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_proximity:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ـ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5409
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 5410
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_x:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐧ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5411
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_y:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐨ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    .line 5412
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    sget-object v2, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_mag_field_z:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    iget-wide v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﹳ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/senseai/kelvinsdk/RawData;->ˊ(Lio/senseai/kelvinsdk/RawData$FileHeaders;Ljava/lang/Double;)V

    goto/16 :goto_2

    :cond_7
    move-wide v0, v6

    .line 5658
    goto/16 :goto_0

    .line 5661
    :cond_8
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ι:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide v0, v2

    .line 5662
    goto/16 :goto_0

    :cond_9
    move-wide v0, v6

    .line 5664
    goto/16 :goto_0

    :cond_a
    move-wide v2, v6

    .line 5384
    goto/16 :goto_1

    :cond_b
    move v2, v9

    .line 5416
    :goto_3
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 5417
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_temp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lio/senseai/kelvinsdk/RawData$FileHeaders;->sman_ambTemp:Lio/senseai/kelvinsdk/RawData$FileHeaders;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData$FileHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 5418
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/senseai/kelvinsdk/MeasurementService;->scanFileJNI(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v12, v1

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lio/senseai/kelvinsdk/RawData;->ˊ(Ljava/lang/String;Ljava/lang/Double;)V

    .line 5416
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 5423
    :cond_d
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_11

    .line 5424
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    iget v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    const/16 v4, 0xf0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/RawData;Lio/senseai/kelvinsdk/DeviceObject;II)V

    .line 5430
    :cond_e
    :goto_4
    iget v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    int-to-long v0, v0

    sget-wide v2, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    .line 5433
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/RawData;->ˎ()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/RawData;->ˎ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 6533
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->י:Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

    if-nez v0, :cond_14

    .line 6534
    new-instance v0, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    iget-object v5, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v8, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v8}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_13

    :goto_5
    iget-object v8, p0, Lio/senseai/kelvinsdk/MeasurementService;->ⁱ:Lio/senseai/kelvinsdk/MeasurementService$3;

    invoke-direct/range {v0 .. v8}, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;-><init>(Landroid/content/Context;DLio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/RawData;DLio/senseai/kelvinsdk/MeasurementService$TempResultListener;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->י:Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

    .line 5435
    :goto_6
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-static {v0}, Lio/senseai/kelvinsdk/MeasurementService;->ˋ(Lio/senseai/kelvinsdk/Temperature;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5436
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    const-string v1, "KelvinInit.ACTION_PREDICTION_AVAILABLE"

    invoke-virtual {p0, v0, v1}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ(Lio/senseai/kelvinsdk/Temperature;Ljava/lang/String;)V

    .line 5438
    :cond_f
    iput v9, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    .line 5440
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_16

    .line 5444
    iput-boolean v9, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 5445
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʼ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʽ:Lio/senseai/kelvinsdk/MeasurementService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7304
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_10

    .line 7305
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7306
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7636
    :cond_10
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5448
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->stopSelf()V

    .line 5460
    :goto_7
    return-void

    .line 5425
    :cond_11
    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    if-eq v0, v1, :cond_12

    sget-object v0, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    sget-object v1, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v1, :cond_e

    .line 5426
    :cond_12
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    iget v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/RawData;Lio/senseai/kelvinsdk/DeviceObject;II)V

    goto/16 :goto_4

    .line 6534
    :cond_13
    iget-object v6, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v6}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_5

    .line 6536
    :cond_14
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->י:Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_15

    :goto_8
    invoke-virtual {v0, v6, v7, v2, v3}, Lio/senseai/kelvinsdk/Prediction$TemperaturePredictionCalc;->doCalc(DD)V

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_8

    .line 8467
    :cond_16
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    .line 8468
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    .line 8469
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    if-eqz v1, :cond_1c

    .line 8475
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 8476
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 8478
    :goto_9
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 8479
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8481
    :goto_a
    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    .line 8482
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v11

    .line 8491
    :goto_b
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 8492
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    .line 8497
    :goto_c
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->getScalars()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 8498
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/DeviceObject;->getScalars()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    .line 8503
    :goto_d
    if-eqz v0, :cond_17

    .line 8505
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/RawData;->ˋ()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8507
    :cond_17
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData;->ˊ(Ljava/util/List;Ljava/util/List;)V

    move v0, v11

    .line 5450
    :goto_e
    if-eqz v0, :cond_1d

    .line 5452
    iput-boolean v11, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 5453
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    goto/16 :goto_7

    .line 8485
    :cond_18
    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    move v0, v11

    .line 8486
    goto :goto_b

    .line 8487
    :cond_19
    if-eqz v1, :cond_1f

    if-nez v0, :cond_1f

    move v0, v11

    .line 8488
    goto :goto_b

    .line 8494
    :cond_1a
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_c

    .line 8500
    :cond_1b
    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_d

    :cond_1c
    move v0, v9

    .line 8510
    goto :goto_e

    .line 5455
    :cond_1d
    iput-boolean v9, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 5456
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    goto/16 :goto_7

    .line 5461
    :cond_1e
    iget v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    .line 5462
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    goto/16 :goto_7

    :cond_1f
    move v0, v9

    goto :goto_b

    :cond_20
    move-object v0, v10

    goto :goto_a

    :cond_21
    move-object v1, v10

    goto/16 :goto_9
.end method

.method private static ˋ(Lio/senseai/kelvinsdk/Temperature;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 594
    if-nez p0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTempF()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTempK()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTemperatureAccuracy()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getGpsAccuracy()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 602
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic ˎ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/Temperature;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﾞ:Lio/senseai/kelvinsdk/Temperature;

    return-object v0
.end method

.method static synthetic ˏ(Lio/senseai/kelvinsdk/MeasurementService;)Lio/senseai/kelvinsdk/ᐝ;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    return-object v0
.end method

.method private ͺ()V
    .locals 4

    .prologue
    .line 640
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->shutDownService()V

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->shutDownService()V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʼ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʽ:Lio/senseai/kelvinsdk/MeasurementService$1;

    sget-wide v2, Lio/senseai/kelvinsdk/MeasurementService;->ˊ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic ᐝ(Lio/senseai/kelvinsdk/MeasurementService;)D
    .locals 4

    .prologue
    .line 8606
    sget-wide v0, Lio/senseai/kelvinsdk/MeasurementService;->ˎ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 8607
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 8609
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/RawData;->ˊ()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lio/senseai/kelvinsdk/MeasurementService;->ˋ:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 23
    goto :goto_0
.end method

.method private ᐝ()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʾ()Lio/senseai/kelvinsdk/Configuration;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Configuration;->isMaster_switch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 259
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    :cond_2
    iput-boolean v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 267
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    goto :goto_0

    .line 269
    :cond_3
    iput-boolean v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 270
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ͺ()V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʻ()V

    .line 106
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʼ:Landroid/os/Handler;

    .line 108
    new-instance v0, Lio/senseai/kelvinsdk/MeasurementService$1;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/MeasurementService$1;-><init>(Lio/senseai/kelvinsdk/MeasurementService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʽ:Lio/senseai/kelvinsdk/MeasurementService$1;

    .line 117
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ι:Landroid/os/PowerManager;

    .line 118
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʾ:Landroid/hardware/SensorManager;

    .line 120
    new-instance v0, Lio/senseai/kelvinsdk/RawData;

    invoke-direct {v0}, Lio/senseai/kelvinsdk/RawData;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    .line 121
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    .line 122
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    .line 123
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getFilenames()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    .line 125
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵢ:Lio/senseai/kelvinsdk/DeviceObject;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getScalars()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵎ:Ljava/util/List;

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᵔ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lio/senseai/kelvinsdk/RawData;->ˊ(Ljava/util/List;Ljava/util/List;)V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->shutDownService()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->shutDownService()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/BroadcastReceiver;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 286
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʼ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʽ:Lio/senseai/kelvinsdk/MeasurementService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3304
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3305
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 289
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 672
    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_0
    :pswitch_0
    return-void

    .line 674
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˈ:D

    goto :goto_0

    .line 678
    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˉ:D

    goto :goto_0

    .line 682
    :pswitch_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˌ:D

    goto :goto_0

    .line 686
    :pswitch_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˍ:D

    goto :goto_0

    .line 690
    :pswitch_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ˑ:D

    goto :goto_0

    .line 694
    :pswitch_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ـ:D

    goto :goto_0

    .line 698
    :pswitch_7
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐧ:D

    .line 699
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐨ:D

    .line 700
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ﹳ:D

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʻ()V

    .line 143
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʽ()V

    .line 144
    iput-object p1, p0, Lio/senseai/kelvinsdk/MeasurementService;->mStartingIntent:Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lio/senseai/kelvinsdk/MeasurementService$if;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/MeasurementService$if;-><init>(Lio/senseai/kelvinsdk/MeasurementService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    .line 148
    invoke-static {p0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᐝ:Lio/senseai/kelvinsdk/MeasurementService$if;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/MeasurementService$if;->ˊ()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lay;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_2
    :goto_1
    invoke-static {p0}, Lio/senseai/kelvinsdk/ʻ;->ʻ(Landroid/content/Context;)V

    .line 250
    return v1

    .line 154
    :sswitch_0
    const-string v3, "MeasurementService.ACTION_SETTING_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "MeasurementService.ACTION_GETTING_INSTANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "ACTION_REBOOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "ACTION_WATCHDOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˎ()V

    .line 157
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 160
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/aux;->name()Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-static {v0}, Lio/senseai/kelvinsdk/aux;->ˊ(Ljava/lang/String;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    .line 1328
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 171
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto :goto_1

    .line 182
    :pswitch_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 183
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˋ()V

    .line 2323
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto :goto_1

    .line 189
    :pswitch_3
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    if-nez v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ()Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 196
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    .line 210
    :cond_3
    :goto_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mStartingIntent:Landroid/content/Intent;

    invoke-static {v0}, Lio/senseai/kelvinsdk/WatchdogAlarmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 201
    :cond_4
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    .line 202
    sget-object v2, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    if-eq v0, v2, :cond_5

    sget-object v2, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v2, :cond_3

    .line 203
    :cond_5
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 204
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto :goto_2

    .line 216
    :cond_6
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    .line 218
    sget-object v2, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    if-eq v0, v2, :cond_7

    sget-object v2, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v2, :cond_8

    .line 220
    :cond_7
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˏ()I

    move-result v2

    .line 222
    iget-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v3}, Lio/senseai/kelvinsdk/ᐝ;->ˎ()Lio/senseai/kelvinsdk/RawData;

    move-result-object v3

    iput-object v3, p0, Lio/senseai/kelvinsdk/MeasurementService;->ͺ:Lio/senseai/kelvinsdk/RawData;

    .line 227
    iput v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    .line 228
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto/16 :goto_1

    .line 229
    :cond_8
    sget-object v2, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne v0, v2, :cond_2

    .line 231
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˏ()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    iget-object v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˏ()I

    move-result v2

    .line 235
    const/16 v3, 0xf0

    if-ge v2, v3, :cond_2

    .line 237
    iput v2, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʹ:I

    .line 238
    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto/16 :goto_1

    .line 242
    :cond_9
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ᴵ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ()V

    .line 243
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->resetAlarm()V

    .line 244
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    goto/16 :goto_1

    .line 154
    :sswitch_data_0
    .sparse-switch
        -0x6a9d303a -> :sswitch_0
        -0x503e5232 -> :sswitch_2
        0x17e525f6 -> :sswitch_3
        0x3792f2c4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method abstract resetAlarm()V
.end method

.method protected setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    if-ne p1, v0, :cond_0

    .line 333
    sput-object p1, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    .line 334
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->resetAlarm()V

    .line 335
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʼ()V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ()V

    .line 338
    sput-object p1, Lio/senseai/kelvinsdk/MeasurementService;->mDataCollectionMode:Lio/senseai/kelvinsdk/aux;

    .line 339
    invoke-direct {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ʼ()V

    goto :goto_0
.end method

.method protected shutDownService()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʿ:Z

    .line 314
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˏ(Landroid/content/Context;)V

    .line 315
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˏ:Lio/senseai/kelvinsdk/aux;

    invoke-virtual {p0, v0}, Lio/senseai/kelvinsdk/MeasurementService;->setDataCollectionMode(Lio/senseai/kelvinsdk/aux;)V

    .line 316
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->ˊ()V

    .line 4304
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 4305
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4306
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->ʻ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 318
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/MeasurementService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 319
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/MeasurementService;->stopSelf()V

    .line 320
    return-void
.end method

.method abstract ˊ()V
.end method

.method abstract ˊ(Lio/senseai/kelvinsdk/Temperature;Ljava/lang/String;)V
.end method

.method abstract ˋ()V
.end method

.method abstract ˎ()V
.end method

.method abstract ˏ()Z
.end method
