.class public Lti/modules/titanium/media/TiUICameraPreview;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUICameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUICameraPreview"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private overlayLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    iput-object p2, p0, Lti/modules/titanium/media/TiUICameraPreview;->camera:Landroid/hardware/Camera;

    .line 34
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "preview":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 37
    .local v1, "previewHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 42
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "previewLayout":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lti/modules/titanium/media/TiUICameraPreview;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/media/TiUICameraPreview;->overlayLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 51
    iget-object v3, p0, Lti/modules/titanium/media/TiUICameraPreview;->overlayLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v2}, Lti/modules/titanium/media/TiUICameraPreview;->setNativeView(Landroid/view/View;)V

    .line 55
    const-string v3, "CameraTest"

    const-string v4, "Camera started"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "overlayItem"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "overlayItemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lti/modules/titanium/media/TiUICameraPreview;->overlayLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v0    # "overlayItemView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 59
    const-string v0, "TiUICameraPreview"

    const-string v1, "starting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lti/modules/titanium/media/TiUICameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 61
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 64
    const-string v1, "TiUICameraPreview"

    const-string v2, "opening camera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    const-string v1, "TiUICameraPreview"

    const-string v2, "setting preview display"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lti/modules/titanium/media/TiUICameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/media/TiUICameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiUICameraPreview;->camera:Landroid/hardware/Camera;

    .line 83
    return-void
.end method
