.class public Lti/modules/titanium/ui/widget/TiUIProgressBar;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIProgressBar.java"


# instance fields
.field private label:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 31
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 36
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 38
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->setNativeView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method private convertRange(DDDI)I
    .locals 4
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "value"    # D
    .param p7, "base"    # I

    .prologue
    .line 97
    sub-double v0, p3, p1

    div-double v0, p5, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getMax()D
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "max"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 80
    const-wide/16 v1, 0x0

    .line 83
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method

.method private getMin()D
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "min"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 71
    const-wide/16 v1, 0x0

    .line 74
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method

.method private getValue()D
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 89
    const-wide/16 v1, 0x0

    .line 92
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method


# virtual methods
.method public handleSetMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 109
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 52
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "message"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->handleSetMessage(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 56
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 63
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 66
    :cond_1
    return-void
.end method

.method public updateProgress()V
    .locals 9

    .prologue
    .line 102
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMin()D

    move-result-wide v1

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMax()D

    move-result-wide v3

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getValue()D

    move-result-wide v5

    const/16 v7, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->convertRange(DDDI)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    return-void
.end method
