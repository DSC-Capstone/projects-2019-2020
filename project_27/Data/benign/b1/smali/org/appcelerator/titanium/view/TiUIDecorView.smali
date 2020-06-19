.class public Lorg/appcelerator/titanium/view/TiUIDecorView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDecorView.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/DecorViewProxy;)V
    .locals 1
    .param p1, "decorViewProxy"    # Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 18
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIDecorView;->setNativeView(Landroid/view/View;)V

    .line 19
    return-void
.end method
