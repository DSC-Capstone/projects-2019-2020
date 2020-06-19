.class final Lio/senseai/kelvinsdk/KelvinInit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/senseai/kelvinsdk/ˋ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/senseai/kelvinsdk/\u02cb",
        "<",
        "Lio/senseai/kelvinsdk/Session;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˊ()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ()Z

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-string v1, "KelvinInit.ACTION_SESSION_FAILED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v1, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 123
    return-void
.end method

.method public final ˊ(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    invoke-static {}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ()Z

    .line 95
    instance-of v1, p1, Lio/senseai/kelvinsdk/DeviceNotSupportedException;

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :goto_0
    sget-object v1, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 108
    return-void

    .line 97
    :cond_0
    instance-of v1, p1, Lio/senseai/kelvinsdk/DeviceLimitReachedException;

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "KelvinInit.ACTION_DEVICE_LIMIT_REACHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 100
    :cond_1
    sget-object v1, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    :cond_2
    const-string v1, "KelvinInit.ACTION_SESSION_FAILED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 104
    :cond_3
    const-string v1, "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final synthetic ˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1112
    sget-object v0, Lio/senseai/kelvinsdk/KelvinInit;->LOG_TAG:Ljava/lang/String;

    const-string v1, "finished fetching session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ()Z

    .line 1114
    const-string v0, "MeasurementService.ACTION_GETTING_INSTANCE"

    invoke-static {v0}, Lio/senseai/kelvinsdk/KelvinInit;->ˊ(Ljava/lang/String;)V

    .line 90
    return-void
.end method
