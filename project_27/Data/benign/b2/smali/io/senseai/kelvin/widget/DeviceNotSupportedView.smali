.class public Lio/senseai/kelvin/widget/DeviceNotSupportedView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lio/senseai/kelvin/widget/DeviceNotSupportedView;->a()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lio/senseai/kelvin/widget/DeviceNotSupportedView;->a()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lio/senseai/kelvin/widget/DeviceNotSupportedView;->a()V

    .line 25
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/DeviceNotSupportedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030021

    invoke-static {v0, v1, p0}, Lio/senseai/kelvin/widget/DeviceNotSupportedView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    return-void
.end method
