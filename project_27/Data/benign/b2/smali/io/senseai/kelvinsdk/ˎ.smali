.class abstract Lio/senseai/kelvinsdk/ˎ;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/senseai/kelvinsdk/ˎ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LOG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/ˎ;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/ˎ;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1068
    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    .line 1069
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v1

    .line 1070
    if-eqz v1, :cond_2

    .line 1072
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/DeviceObject;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0, p1}, Lio/senseai/kelvinsdk/ˎ;->startServices(Landroid/content/Context;)V

    .line 1093
    :goto_0
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ˎ;->releaseWakelock()V

    .line 12
    return-void

    .line 1080
    :cond_0
    invoke-static {p1}, Lio/senseai/kelvinsdk/ʻ;->ʼ(Landroid/content/Context;)V

    .line 1081
    invoke-static {p1}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    goto :goto_0

    .line 1085
    :cond_1
    invoke-static {p1}, Lio/senseai/kelvinsdk/ʻ;->ʼ(Landroid/content/Context;)V

    .line 1086
    invoke-static {p1}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    goto :goto_0

    .line 1090
    :cond_2
    invoke-static {p1}, Lio/senseai/kelvinsdk/ʻ;->ʼ(Landroid/content/Context;)V

    .line 1091
    invoke-static {p1}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 19
    iput-object p1, p0, Lio/senseai/kelvinsdk/ˎ;->mIntent:Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʼ()Lio/senseai/kelvinsdk/Session;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/senseai/kelvinsdk/If;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;

    move-result-object v1

    new-instance v2, Lio/senseai/kelvinsdk/ˎ$1;

    invoke-direct {v2, p0}, Lio/senseai/kelvinsdk/ˎ$1;-><init>(Lio/senseai/kelvinsdk/ˎ;)V

    invoke-virtual {v1, v0, v2}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V

    .line 35
    :cond_0
    :goto_0
    const/4 v0, 0x3

    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ˎ;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/If;->ˋ(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/ˎ;->releaseWakelock()V

    goto :goto_0
.end method

.method public abstract releaseWakelock()V
.end method

.method public abstract startServices(Landroid/content/Context;)V
.end method
