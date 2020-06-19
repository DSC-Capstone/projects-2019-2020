.class public Lti/modules/titanium/media/TiCamera;
.super Ljava/lang/Object;
.source "TiCamera.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiCamera"

.field private static camera:Landroid/hardware/Camera;


# instance fields
.field jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field rawCallback:Landroid/hardware/Camera$PictureCallback;

.field shutterCallback:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lti/modules/titanium/media/TiCamera$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$1;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 48
    new-instance v0, Lti/modules/titanium/media/TiCamera$2;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$2;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 56
    new-instance v0, Lti/modules/titanium/media/TiCamera$3;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCamera$3;-><init>(Lti/modules/titanium/media/TiCamera;)V

    iput-object v0, p0, Lti/modules/titanium/media/TiCamera;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 27
    sget-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "TiCamera"

    const-string v1, "camera created"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lti/modules/titanium/media/TiCamera;->camera:Landroid/hardware/Camera;

    return-object v0
.end method
