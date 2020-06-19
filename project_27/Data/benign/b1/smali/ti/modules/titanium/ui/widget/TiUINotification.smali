.class public Lti/modules/titanium/ui/widget/TiUINotification;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUINotification.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUINotifier"


# instance fields
.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUINotification;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 28
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUINotification;->DBG:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "TiUINotifier"

    const-string v1, "Creating a notifier"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    .line 32
    return-void
.end method


# virtual methods
.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 102
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 103
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 38
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v2

    .line 39
    .local v2, "horizontalMargin":F
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v5

    .line 40
    .local v5, "verticalMargin":F
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    .line 41
    .local v3, "offsetX":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v4

    .line 42
    .local v4, "offsetY":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    .line 44
    .local v1, "gravity":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "duration"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "duration"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 47
    .local v0, "duration":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 51
    .end local v0    # "duration":I
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "horizontalMargin"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "horizontalMargin"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    .line 55
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "verticalMargin"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "verticalMargin"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v5

    .line 59
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6, v2, v5}, Landroid/widget/Toast;->setMargin(FF)V

    .line 61
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "offsetX"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "offsetX"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 65
    :cond_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "offsetY"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "offsetY"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    .line 71
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "gravity"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "gravity"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 75
    :cond_5
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v6, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 77
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 78
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 85
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 86
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUINotification;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 89
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUINotification;->DBG:Z

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "TiUINotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PropertyChanged - Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' changed to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 97
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUINotification;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUINotification;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method
