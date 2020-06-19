.class public Lti/modules/titanium/media/CameraPreviewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "CameraPreviewProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "CameraPreviewProxy"


# instance fields
.field private camera:Landroid/hardware/Camera;


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
    invoke-direct {p0}, Lti/modules/titanium/media/CameraPreviewProxy;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    new-instance v0, Lti/modules/titanium/media/TiUICameraPreview;

    iget-object v1, p0, Lti/modules/titanium/media/CameraPreviewProxy;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/media/TiUICameraPreview;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/hardware/Camera;)V

    return-object v0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 42
    iput-object p1, p0, Lti/modules/titanium/media/CameraPreviewProxy;->camera:Landroid/hardware/Camera;

    .line 43
    return-void
.end method
