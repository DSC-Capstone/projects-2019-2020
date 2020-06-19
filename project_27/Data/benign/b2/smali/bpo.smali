.class public Lbpo;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Lbpp;


# direct methods
.method public constructor <init>(Lbpp;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lbpo;->a:Landroid/content/IntentFilter;

    .line 25
    iget-object v0, p0, Lbpo;->a:Landroid/content/IntentFilter;

    const-string v1, "actionOnError"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lbpo;->a:Landroid/content/IntentFilter;

    const-string v1, "actionOnPredictionMade"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lbpo;->a:Landroid/content/IntentFilter;

    const-string v1, "actionOnPinSuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lbpo;->b:Lbpp;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbpo;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 34
    if-nez p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lbpo;->b:Lbpp;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "keyException"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 45
    iget-object v1, p0, Lbpo;->b:Lbpp;

    invoke-interface {v1, v0}, Lbpp;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 40
    :sswitch_0
    const-string v2, "actionOnError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "actionOnPredictionMade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "actionOnPinSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 49
    :pswitch_1
    iget-object v0, p0, Lbpo;->b:Lbpp;

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "keyTemperature"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvinsdk/Temperature;

    .line 52
    iget-object v1, p0, Lbpo;->b:Lbpp;

    invoke-interface {v1, v0}, Lbpp;->a(Lio/senseai/kelvinsdk/Temperature;)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lbpo;->b:Lbpp;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyPin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lbpo;->b:Lbpp;

    invoke-interface {v1, v0}, Lbpp;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x2497853 -> :sswitch_0
        0x4150b543 -> :sswitch_2
        0x5350e059 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
