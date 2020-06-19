.class public Lti/modules/titanium/ui/SliderProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SliderProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/SliderProxy;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISlider;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUISlider;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
