.class public final Lio/senseai/kelvinsdk/LocationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_SET_MODE:Ljava/lang/String; = "ACTION_SET_MODE"

.field public static final ACTION_TAKE_LOCATION:Ljava/lang/String; = "ACTION_TAKE_LOCATION"

.field public static final KEY_ACCURACY:Ljava/lang/String; = "KEY_ACCURACY"

.field public static final KEY_ALTITUDE:Ljava/lang/String; = "KEY_ALTITUDE"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "KEY_LATITUDE"

.field public static final KEY_LOCATION_MODE:Ljava/lang/String; = "com.djh.locationofflinemodule.LocationService.KEY_LOCATION_MODE"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "KEY_LONGITUDE"


# instance fields
.field private ʻ:Landroid/os/Handler;

.field private ʼ:Lio/senseai/kelvinsdk/LocationService$1;

.field private ʽ:I

.field private ˊ:Landroid/content/Context;

.field private ˋ:Lio/senseai/kelvinsdk/LocationService$if;

.field private ˎ:Lio/senseai/kelvinsdk/ˏ;

.field private ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

.field private ᐝ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    sget-object v0, Lio/senseai/kelvinsdk/BaseLocationMode;->SLOW:Lio/senseai/kelvinsdk/BaseLocationMode;

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 48
    const v0, 0xdbba0

    iput v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    .line 185
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/ˏ;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˎ:Lio/senseai/kelvinsdk/ˏ;

    return-object v0
.end method

.method private ˊ()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    const-string v1, "com.djh.locationofflinemodule.LocationService.KEY_MODE"

    iget-object v2, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/BaseLocationMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method private ˊ(Lio/senseai/kelvinsdk/BaseLocationMode;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iput-object p1, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    .line 144
    invoke-direct {p0}, Lio/senseai/kelvinsdk/LocationService;->ˊ()V

    .line 147
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->SLOW:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-ne v0, v1, :cond_1

    .line 148
    const v0, 0xdbba0

    iput v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    .line 149
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-nez v0, :cond_0

    .line 150
    iput-boolean v3, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 4130
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-eqz v0, :cond_0

    .line 4133
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    iget v2, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->MEDIUM:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-ne v0, v1, :cond_2

    .line 154
    const v0, 0x493e0

    iput v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    .line 155
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-nez v0, :cond_0

    .line 156
    iput-boolean v3, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 5130
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-eqz v0, :cond_0

    .line 5133
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    iget v2, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-ne v0, v1, :cond_3

    .line 160
    iput-boolean v2, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 161
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-ne v0, v1, :cond_0

    .line 163
    iput-boolean v2, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 164
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/LocationService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6138
    invoke-static {p1}, Lio/senseai/kelvinsdk/BaseLocationMode;->fromName(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    .line 6139
    invoke-direct {p0, v0}, Lio/senseai/kelvinsdk/LocationService;->ˊ(Lio/senseai/kelvinsdk/BaseLocationMode;)V

    .line 18
    return-void
.end method

.method static synthetic ˋ(Lio/senseai/kelvinsdk/LocationService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ˎ(Lio/senseai/kelvinsdk/LocationService;)Lio/senseai/kelvinsdk/BaseLocationMode;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    return-object v0
.end method

.method static synthetic ˏ(Lio/senseai/kelvinsdk/LocationService;)V
    .locals 4

    .prologue
    .line 18
    .line 6130
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-eqz v0, :cond_0

    .line 6133
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    iget v2, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    .line 55
    new-instance v0, Lio/senseai/kelvinsdk/LocationService$1;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/LocationService$1;-><init>(Lio/senseai/kelvinsdk/LocationService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    .line 61
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ˋ:Lio/senseai/kelvinsdk/LocationService$if;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˎ:Lio/senseai/kelvinsdk/ˏ;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˎ:Lio/senseai/kelvinsdk/ˏ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ˏ;->ˋ()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 65
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˋ:Lio/senseai/kelvinsdk/LocationService$if;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lio/senseai/kelvinsdk/LocationService$if;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/LocationService$if;-><init>(Lio/senseai/kelvinsdk/LocationService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˋ:Lio/senseai/kelvinsdk/LocationService$if;

    .line 69
    :cond_0
    iput-boolean v4, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    .line 70
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.djh.locationofflinemodule.LocationService.KEY_LOCATION_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.djh.locationofflinemodule.LocationService.KEY_LOCATION_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    invoke-static {v0}, Lio/senseai/kelvinsdk/BaseLocationMode;->fromName(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    .line 1139
    invoke-direct {p0, v0}, Lio/senseai/kelvinsdk/LocationService;->ˊ(Lio/senseai/kelvinsdk/BaseLocationMode;)V

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ˋ:Lio/senseai/kelvinsdk/LocationService$if;

    iget-object v2, p0, Lio/senseai/kelvinsdk/LocationService;->ˋ:Lio/senseai/kelvinsdk/LocationService$if;

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/LocationService$if;->ˊ()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lay;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 84
    new-instance v0, Lio/senseai/kelvinsdk/ˏ;

    new-instance v1, Lio/senseai/kelvinsdk/LocationService$2;

    invoke-direct {v1, p0}, Lio/senseai/kelvinsdk/LocationService$2;-><init>(Lio/senseai/kelvinsdk/LocationService;)V

    invoke-direct {v0, v1, p0}, Lio/senseai/kelvinsdk/ˏ;-><init>(Lio/senseai/kelvinsdk/LocationService$2;Lio/senseai/kelvinsdk/LocationService;)V

    iput-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˎ:Lio/senseai/kelvinsdk/ˏ;

    .line 107
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->OFF:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˏ:Lio/senseai/kelvinsdk/BaseLocationMode;

    sget-object v1, Lio/senseai/kelvinsdk/BaseLocationMode;->EVERY_PREDICTION:Lio/senseai/kelvinsdk/BaseLocationMode;

    if-eq v0, v1, :cond_2

    .line 3130
    iget-boolean v0, p0, Lio/senseai/kelvinsdk/LocationService;->ᐝ:Z

    if-eqz v0, :cond_2

    .line 3133
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ʻ:Landroid/os/Handler;

    iget-object v1, p0, Lio/senseai/kelvinsdk/LocationService;->ʼ:Lio/senseai/kelvinsdk/LocationService$1;

    iget v2, p0, Lio/senseai/kelvinsdk/LocationService;->ʽ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_2
    return v4

    .line 1178
    :cond_3
    iget-object v0, p0, Lio/senseai/kelvinsdk/LocationService;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1179
    const-string v1, "com.djh.locationofflinemodule.LocationService.KEY_MODE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2138
    invoke-static {v0}, Lio/senseai/kelvinsdk/BaseLocationMode;->fromName(Ljava/lang/String;)Lio/senseai/kelvinsdk/BaseLocationMode;

    move-result-object v0

    .line 2139
    invoke-direct {p0, v0}, Lio/senseai/kelvinsdk/LocationService;->ˊ(Lio/senseai/kelvinsdk/BaseLocationMode;)V

    goto :goto_0
.end method
