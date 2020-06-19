.class public Lti/modules/titanium/ui/OptionDialogProxy;
.super Lti/modules/titanium/ui/TiDialogProxy;
.source "OptionDialogProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lti/modules/titanium/ui/TiDialogProxy;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 35
    invoke-direct {p0}, Lti/modules/titanium/ui/OptionDialogProxy;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIDialog;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 41
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 63
    invoke-virtual {p0}, Lti/modules/titanium/ui/OptionDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 64
    .local v0, "d":Lti/modules/titanium/ui/widget/TiUIDialog;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 65
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 55
    invoke-virtual {p0}, Lti/modules/titanium/ui/OptionDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 56
    .local v0, "d":Lti/modules/titanium/ui/widget/TiUIDialog;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIDialog;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 57
    return-void
.end method
