.class public Lti/modules/titanium/ui/NotificationProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "NotificationProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 28
    invoke-direct {p0}, Lti/modules/titanium/ui/NotificationProxy;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    new-instance v0, Lti/modules/titanium/ui/widget/TiUINotification;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUINotification;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 41
    invoke-virtual {p0}, Lti/modules/titanium/ui/NotificationProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUINotification;

    .line 42
    .local v0, "n":Lti/modules/titanium/ui/widget/TiUINotification;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUINotification;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 43
    return-void
.end method
