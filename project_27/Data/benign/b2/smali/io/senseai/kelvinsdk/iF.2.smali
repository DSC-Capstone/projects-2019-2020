.class abstract Lio/senseai/kelvinsdk/iF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static mContext:Landroid/content/Context;

.field protected static mDeviceObject:Lio/senseai/kelvinsdk/DeviceObject;

.field protected static mInstance:Lio/senseai/kelvinsdk/KelvinInit;


# instance fields
.field protected mLocationServiceIntent:Landroid/content/Intent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sput-object p1, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getPredictionNow()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mDeviceObject:Lio/senseai/kelvinsdk/DeviceObject;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lio/senseai/kelvinsdk/iF;->mInstance:Lio/senseai/kelvinsdk/KelvinInit;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string v1, "MeasurementService.ACTION_MAKE_PREDICTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    sget-object v1, Lio/senseai/kelvinsdk/iF;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
