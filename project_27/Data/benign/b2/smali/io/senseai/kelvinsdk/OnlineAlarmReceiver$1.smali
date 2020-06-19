.class final Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/SysFsCrawler$Listener;


# instance fields
.field private synthetic ˊ:Landroid/content/Context;

.field private synthetic ˋ:Lio/senseai/kelvinsdk/ᐝ;

.field private synthetic ˎ:Lio/senseai/kelvinsdk/OnlineAlarmReceiver;


# direct methods
.method constructor <init>(Lio/senseai/kelvinsdk/OnlineAlarmReceiver;Landroid/content/Context;Lio/senseai/kelvinsdk/ᐝ;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˎ:Lio/senseai/kelvinsdk/OnlineAlarmReceiver;

    iput-object p2, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˊ:Landroid/content/Context;

    iput-object p3, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˋ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFileFailed()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lio/senseai/kelvinsdk/ˊ;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Can\'t find valid file. Not starting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˋ:Lio/senseai/kelvinsdk/ᐝ;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ι()V

    .line 42
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ʼ(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public final onFileValidated()V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lio/senseai/kelvinsdk/ˊ;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Found valid file. Starting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lio/senseai/kelvinsdk/OnlineAlarmReceiver$1;->ˊ:Landroid/content/Context;

    const-string v1, "MeasurementService.ACTION_SETTING_MODE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method
