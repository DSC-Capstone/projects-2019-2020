.class public Lti/modules/titanium/ui/SwitchProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SwitchProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 37
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/SwitchProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v0, "style"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/SwitchProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 43
    invoke-direct {p0}, Lti/modules/titanium/ui/SwitchProxy;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUISwitch;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
