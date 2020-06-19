.class public Lti/modules/titanium/ui/ProgressBarProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ProgressBarProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/ui/ProgressBarProxy;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIProgressBar;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
