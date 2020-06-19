.class public Lio/senseai/kelvin/widget/TemperatureView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lio/senseai/kelvinsdk/Temperature;

.field private b:Lbpn;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lbpn;->a:Lbpn;

    iput-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    .line 27
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, Lbpn;->a:Lbpn;

    iput-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    .line 32
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    sget-object v0, Lbpn;->a:Lbpn;

    iput-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    .line 37
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->a()V

    .line 38
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setWillNotDraw(Z)V

    .line 62
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030022

    invoke-static {v0, v1, p0}, Lio/senseai/kelvin/widget/TemperatureView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    const v0, 0x7f0d0063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->c:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0d0064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->d:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->b()V

    .line 68
    invoke-virtual {p0, p0}, Lio/senseai/kelvin/widget/TemperatureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lbpv;->a:[I

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    invoke-virtual {v1}, Lbpn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    sget-object v0, Lbpv;->a:[I

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    invoke-virtual {v1}, Lbpn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 102
    :goto_1
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Temperature;->getTempF()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/Temperature;->getTempK()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->c:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :pswitch_4
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :pswitch_5
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getDisplayUnits()Lbpn;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    return-object v0
.end method

.method public getTemperature()Lio/senseai/kelvinsdk/Temperature;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lbpv;->a:[I

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    invoke-virtual {v1}, Lbpn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-static {v0, v1}, Lboy;->a(Landroid/content/Context;Lio/senseai/kelvinsdk/Temperature;)V

    .line 119
    return-void

    .line 108
    :pswitch_0
    sget-object v0, Lbpn;->c:Lbpn;

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v0, Lbpn;->a:Lbpn;

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    goto :goto_0

    .line 114
    :pswitch_2
    sget-object v0, Lbpn;->b:Lbpn;

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbpr;->a(Landroid/content/Context;)Lbpn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/widget/TemperatureView;->setDisplayUnits(Lbpn;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setDisplayUnits(Lbpn;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lio/senseai/kelvin/widget/TemperatureView;->b:Lbpn;

    .line 55
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TemperatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbpr;->a(Landroid/content/Context;Lbpn;)V

    .line 56
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->b()V

    .line 57
    return-void
.end method

.method public setTemperature(Lio/senseai/kelvinsdk/Temperature;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lio/senseai/kelvin/widget/TemperatureView;->a:Lio/senseai/kelvinsdk/Temperature;

    .line 46
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TemperatureView;->b()V

    .line 47
    return-void
.end method
