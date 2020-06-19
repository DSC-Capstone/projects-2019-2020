.class public Lio/senseai/kelvinsdk/OnlineRebootBroadcastReceiver;
.super Lio/senseai/kelvinsdk/Aux;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lio/senseai/kelvinsdk/OnlineRebootBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/OnlineRebootBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/senseai/kelvinsdk/Aux;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/RebootFetchSessionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-static {p1, v0}, Lio/senseai/kelvinsdk/OnlineRebootBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    return-void
.end method

.method public bridge synthetic onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lio/senseai/kelvinsdk/Aux;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
