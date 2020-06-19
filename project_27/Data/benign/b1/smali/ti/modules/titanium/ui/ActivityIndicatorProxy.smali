.class public Lti/modules/titanium/ui/ActivityIndicatorProxy;
.super Lti/modules/titanium/ui/TiDialogProxy;
.source "ActivityIndicatorProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lti/modules/titanium/ui/TiDialogProxy;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 40
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 62
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 63
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 64
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 54
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 55
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    return-void
.end method
