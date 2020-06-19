.class public Lti/modules/titanium/media/TiCameraActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiCameraActivity"

.field private static camera:Landroid/hardware/Camera;

.field public static cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

.field static jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field public static overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field static rawCallback:Landroid/hardware/Camera$PictureCallback;

.field static shutterCallback:Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private preview:Landroid/view/SurfaceView;

.field private previewLayout:Landroid/widget/FrameLayout;

.field private storageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 35
    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 121
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$1;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$1;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 127
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$2;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$2;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 132
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$3;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$3;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/TiCameraActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/TiCameraActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->storageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static takePicture()V
    .locals 4

    .prologue
    .line 116
    const-string v0, "TiCameraActivity"

    const-string v1, "Taking picture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->storageUri:Landroid/net/Uri;

    .line 45
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    .line 46
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 47
    .local v0, "previewHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 51
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 52
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 55
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setRequestedOrientation(I)V

    .line 58
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 102
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 106
    :try_start_0
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 107
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    sput-object v3, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiCameraActivity"

    const-string v2, "camera is not open, unable to release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 91
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 93
    sput-object p0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 94
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 62
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 63
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 66
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    sput-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 69
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 70
    .local v0, "cameraParams":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 71
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 72
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 75
    :try_start_0
    const-string v3, "TiCameraActivity"

    const-string v4, "setting preview display"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "previewHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 85
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 87
    return-void
.end method
