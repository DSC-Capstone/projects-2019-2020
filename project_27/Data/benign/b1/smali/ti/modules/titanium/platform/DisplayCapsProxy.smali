.class public Lti/modules/titanium/platform/DisplayCapsProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "DisplayCapsProxy.java"


# instance fields
.field private final dm:Landroid/util/DisplayMetrics;

.field private softDisplay:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>()V

    .line 33
    return-void
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    .line 39
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    return-object v0
.end method


# virtual methods
.method public getDensity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 66
    const-string v0, "medium"

    monitor-exit v1

    :goto_0
    return-object v0

    .line 58
    :sswitch_0
    const-string v0, "high"

    monitor-exit v1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :sswitch_1
    :try_start_1
    const-string v0, "medium"

    monitor-exit v1

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v0, "xhigh"

    monitor-exit v1

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "low"

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDpi()F
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    monitor-exit v1

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogicalDensityFactor()F
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    monitor-exit v1

    return v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlatformHeight()I
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPlatformWidth()I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXdpi()F
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    monitor-exit v1

    return v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getYdpi()F
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    monitor-exit v1

    return v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
