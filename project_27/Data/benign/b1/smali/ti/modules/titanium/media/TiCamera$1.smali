.class Lti/modules/titanium/media/TiCamera$1;
.super Ljava/lang/Object;
.source "TiCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/TiCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiCamera;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiCamera;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lti/modules/titanium/media/TiCamera$1;->this$0:Lti/modules/titanium/media/TiCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "TiCamera"

    const-string v1, "Pretend you heard a \'click\' sound"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
