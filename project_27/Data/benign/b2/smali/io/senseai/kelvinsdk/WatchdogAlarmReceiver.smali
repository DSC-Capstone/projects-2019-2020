.class public Lio/senseai/kelvinsdk/WatchdogAlarmReceiver;
.super Lio/senseai/kelvinsdk/ˊ;
.source "SourceFile"


# static fields
.field public static final ACTION_WATCHDOG:Ljava/lang/String; = "ACTION_WATCHDOG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/senseai/kelvinsdk/ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lio/senseai/kelvinsdk/ˊ;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public startServices(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    const-string v0, "ACTION_WATCHDOG"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
