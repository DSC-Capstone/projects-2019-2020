.class public final Lio/senseai/kelvinsdk/KelvinInit;
.super Lio/senseai/kelvinsdk/iF;
.source "SourceFile"


# static fields
.field public static final ACTION_DEVICE_LIMIT_REACHED:Ljava/lang/String; = "KelvinInit.ACTION_DEVICE_LIMIT_REACHED"

.field public static final ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION:Ljava/lang/String; = "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

.field public static final ACTION_PIN_RETRIEVAL_FAILED:Ljava/lang/String; = "KelvinInit.ACTION_PIN_RETRIEVAL_FAILED"

.field public static final ACTION_PIN_RETRIEVED:Ljava/lang/String; = "KelvinInit.ACTION_PIN_RETRIEVED"

.field public static final ACTION_PREDICTION_AVAILABLE:Ljava/lang/String; = "KelvinInit.ACTION_PREDICTION_AVAILABLE"

.field public static final ACTION_PREDICTION_NOT_AVAILABLE:Ljava/lang/String; = "KelvinInit.ACTION_PREDICTION_NOT_AVAILABLE"

.field public static final ACTION_SESSION_FAILED_EXCEPTION:Ljava/lang/String; = "KelvinInit.ACTION_SESSION_FAILED_EXCEPTION"

.field public static final KEY_PIN:Ljava/lang/String; = "KelvinInit.KEY_PIN"

.field public static final KEY_TEMPERATURE:Ljava/lang/String; = "KelvinInit.KEY_TEMPERATURE"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static ˊ:Z


# instance fields
.field private ˋ:Lio/senseai/kelvinsdk/OperatingMode;

.field private ˎ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lio/senseai/kelvinsdk/KelvinInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/KelvinInit;->LOG_TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Lio/senseai/kelvinsdk/iF;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    iput-object v0, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˋ:Lio/senseai/kelvinsdk/OperatingMode;

    .line 158
    iput-boolean v2, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    .line 39
    sput-object p1, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    :cond_0
    sget-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    if-nez v0, :cond_1

    .line 1088
    sput-boolean v1, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    .line 1090
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v0

    new-instance v1, Lio/senseai/kelvinsdk/KelvinInit$1;

    invoke-direct {v1}, Lio/senseai/kelvinsdk/KelvinInit$1;-><init>()V

    invoke-virtual {v0, p2, v1}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    .line 44
    if-nez v0, :cond_3

    .line 2087
    sget-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    if-nez v0, :cond_1

    .line 2088
    sput-boolean v1, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    .line 2090
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v0

    new-instance v1, Lio/senseai/kelvinsdk/KelvinInit$1;

    invoke-direct {v1}, Lio/senseai/kelvinsdk/KelvinInit$1;-><init>()V

    invoke-virtual {v0, p2, v1}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    goto :goto_0

    .line 47
    :cond_3
    sput-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mDeviceObject:Lio/senseai/kelvinsdk/DeviceObject;

    .line 48
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    const-string v1, "MeasurementService.ACTION_GETTING_INSTANCE"

    invoke-static {v0, v1, v2}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/senseai/kelvinsdk/KelvinInit;
    .locals 4

    .prologue
    .line 57
    const-class v1, Lio/senseai/kelvinsdk/KelvinInit;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_1
    :try_start_1
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1, p2}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;

    if-nez v0, :cond_3

    .line 65
    new-instance v0, Lio/senseai/kelvinsdk/KelvinInit;

    invoke-direct {v0, p0, p2}, Lio/senseai/kelvinsdk/KelvinInit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;

    .line 79
    :cond_2
    :goto_0
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :cond_3
    :try_start_2
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3087
    :cond_4
    sget-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    if-nez v0, :cond_2

    .line 3088
    const/4 v0, 0x1

    sput-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    .line 3090
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v0

    new-instance v2, Lio/senseai/kelvinsdk/KelvinInit$1;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/KelvinInit$1;-><init>()V

    invoke-virtual {v0, p2, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    goto :goto_0

    .line 71
    :cond_5
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    .line 72
    if-nez v0, :cond_6

    .line 4087
    sget-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    if-nez v0, :cond_2

    .line 4088
    const/4 v0, 0x1

    sput-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    .line 4090
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v0

    new-instance v2, Lio/senseai/kelvinsdk/KelvinInit$1;

    invoke-direct {v2}, Lio/senseai/kelvinsdk/KelvinInit$1;-><init>()V

    invoke-virtual {v0, p2, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    goto :goto_0

    .line 75
    :cond_6
    const-string v0, "MeasurementService.ACTION_GETTING_INSTANCE"

    .line 4129
    sget-object v2, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static ˊ(Lio/senseai/kelvinsdk/aux;)Lio/senseai/kelvinsdk/OperatingMode;
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    sget-object v1, Lio/senseai/kelvinsdk/KelvinInit$3;->ˊ:[I

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/aux;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 242
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    sget-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

    goto :goto_0

    .line 235
    :pswitch_1
    sget-object v0, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_SLOW:Lio/senseai/kelvinsdk/OperatingMode;

    goto :goto_0

    .line 239
    :pswitch_2
    sget-object v0, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/KelvinInit;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lio/senseai/kelvinsdk/KelvinInit;->ˋ()V

    return-void
.end method

.method static synthetic ˊ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6129
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    return-void
.end method

.method static synthetic ˊ()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lio/senseai/kelvinsdk/KelvinInit;->ˊ:Z

    return v0
.end method

.method private ˋ()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʻ(Landroid/content/Context;)V

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    const-class v3, Lio/senseai/kelvinsdk/OnlineService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 223
    const-string v0, "MeasurementService.ACTION_SETTING_MODE"

    .line 5129
    sget-object v1, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 224
    iput-boolean v4, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    goto :goto_0
.end method

.method static synthetic ˋ(Lio/senseai/kelvinsdk/KelvinInit;)Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    return v0
.end method


# virtual methods
.method public final getDataCollectionMode()Lio/senseai/kelvinsdk/OperatingMode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 246
    sget-object v1, Lio/senseai/kelvinsdk/KelvinInit;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    sget-object v1, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-static {v1}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ(Lio/senseai/kelvinsdk/aux;)Lio/senseai/kelvinsdk/OperatingMode;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPin()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    sget-object v1, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v1

    new-instance v2, Lio/senseai/kelvinsdk/KelvinInit$2;

    invoke-direct {v2, p0, v0}, Lio/senseai/kelvinsdk/KelvinInit$2;-><init>(Lio/senseai/kelvinsdk/KelvinInit;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/KelvinInit$2;)V

    .line 156
    return-void
.end method

.method public final bridge synthetic getPredictionNow()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lio/senseai/kelvinsdk/iF;->getPredictionNow()V

    return-void
.end method

.method public final setDataMode(Lio/senseai/kelvinsdk/OperatingMode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    .line 163
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ᐝ(Landroid/content/Context;)V

    .line 165
    if-nez p1, :cond_1

    .line 166
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʻ(Landroid/content/Context;)V

    .line 168
    iput-boolean v1, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    invoke-static {v0}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ(Lio/senseai/kelvinsdk/aux;)Lio/senseai/kelvinsdk/OperatingMode;

    move-result-object v0

    .line 175
    if-ne v0, p1, :cond_2

    .line 177
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʻ(Landroid/content/Context;)V

    .line 178
    iput-boolean v1, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˎ:Z

    goto :goto_0

    .line 183
    :cond_2
    iput-object p1, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˋ:Lio/senseai/kelvinsdk/OperatingMode;

    .line 184
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/senseai/kelvinsdk/KelvinInit;->ˋ:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-static {v0, v1}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Lio/senseai/kelvinsdk/OperatingMode;)V

    .line 186
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->mDeviceObject:Lio/senseai/kelvinsdk/DeviceObject;

    if-nez v0, :cond_3

    .line 188
    new-instance v0, Lio/senseai/kelvinsdk/KelvinInit$ˊ;

    new-instance v1, Lio/senseai/kelvinsdk/KelvinInit$if;

    invoke-direct {v1, p0}, Lio/senseai/kelvinsdk/KelvinInit$if;-><init>(Lio/senseai/kelvinsdk/KelvinInit;)V

    invoke-direct {v0, p0, v1}, Lio/senseai/kelvinsdk/KelvinInit$ˊ;-><init>(Lio/senseai/kelvinsdk/KelvinInit;Lio/senseai/kelvinsdk/KelvinInit$if;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-direct {p0}, Lio/senseai/kelvinsdk/KelvinInit;->ˋ()V

    goto :goto_0
.end method
