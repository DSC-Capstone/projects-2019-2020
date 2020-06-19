.class public Lti/modules/titanium/ui/ButtonBarProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ButtonBarProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 31
    invoke-direct {p0}, Lti/modules/titanium/ui/ButtonBarProxy;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    const-string v0, "ButtonBarProxy"

    const-string v1, "Ti.UI.createButtonBar() is deprecated starting 1.8.1 and will be removed in 1.9.0. Any usage of this will result in an application crash"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
