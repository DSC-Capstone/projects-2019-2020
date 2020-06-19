.class public abstract Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiWindowProxy"

.field private static final MSG_CLOSE:I = 0x137

.field private static final MSG_FIRST_ID:I = 0xd2

.field protected static final MSG_LAST_ID:I = 0x4b9

.field private static final MSG_OPEN:I = 0x136

.field private static waitingForOpen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiWindowProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected focused:Z

.field protected fullscreen:Z

.field protected inTab:Z

.field protected modal:Z

.field protected opened:Z

.field protected opening:Z

.field protected orientationModes:[I

.field protected postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

.field protected restoreFullscreen:Z

.field protected tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->inTab:Z

    .line 84
    return-void
.end method

.method public static getWaitingForOpen()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 154
    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v2, :cond_0

    .line 178
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    .line 156
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "options":Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 159
    .local v0, "animation":Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_3

    .line 160
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 161
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 172
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 163
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_1

    .line 164
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 165
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 169
    :cond_3
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 177
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x137

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeFromActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    .line 187
    const-string v0, "closeFromActivity"

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 188
    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->activity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows are created during open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 403
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertConfigToTiOrientationMode(I)I

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 408
    :cond_0
    const-string v1, "TiWindowProxy"

    const-string v2, "unable to get orientation, activity not found for window"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrientationModes()[I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    return-object v0
.end method

.method public getTabGroupProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getWindowPixelFormat()I
    .locals 2

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "pixelFormat":I
    const-string v1, "windowPixelFormat"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "windowPixelFormat"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 421
    :cond_0
    return v0
.end method

.method protected abstract handleClose(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method protected abstract handleGetActivity()Landroid/app/Activity;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 97
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 98
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 99
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 100
    goto :goto_0

    .line 103
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 104
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 105
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 106
    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method protected handlePostOpen()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 394
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 396
    :cond_1
    return-void
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    if-eqz v2, :cond_1

    .line 149
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "options":Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 124
    .local v0, "animation":Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_5

    .line 125
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 126
    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 140
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 142
    iput-boolean v4, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    goto :goto_0

    .line 128
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 129
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 131
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_2

    .line 132
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 133
    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_5
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1    # "options":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 146
    .end local p1    # "arg":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x136

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-boolean v4, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    goto :goto_0
.end method

.method public setLeftNavButton(Ljava/lang/Object;)V
    .locals 2
    .param p1, "button"    # Ljava/lang/Object;

    .prologue
    .line 239
    const-string v0, "TiWindowProxy"

    const-string v1, "setLeftNavButton not supported in Android"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public setOrientationModes([I)V
    .locals 11
    .param p1, "modes"    # [I

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x9

    .line 245
    const/4 v1, -0x1

    .line 246
    .local v1, "activityOrientationMode":I
    const/4 v4, 0x0

    .line 247
    .local v4, "hasPortrait":Z
    const/4 v5, 0x0

    .line 248
    .local v5, "hasPortraitReverse":Z
    const/4 v2, 0x0

    .line 249
    .local v2, "hasLandscape":Z
    const/4 v3, 0x0

    .line 252
    .local v3, "hasLandscapeReverse":Z
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 254
    if-eqz p1, :cond_13

    .line 257
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 259
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 261
    const/4 v4, 0x1

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 263
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 265
    const/4 v5, 0x1

    goto :goto_1

    .line 267
    :cond_2
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 269
    const/4 v2, 0x1

    goto :goto_1

    .line 271
    :cond_3
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 273
    const/4 v3, 0x1

    goto :goto_1

    .line 278
    :cond_4
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-nez v7, :cond_7

    .line 280
    const/4 v1, 0x4

    .line 333
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 334
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 336
    if-eq v1, v10, :cond_12

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 357
    .end local v6    # "i":I
    :cond_6
    :goto_3
    return-void

    .line 282
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "i":I
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 284
    :cond_9
    const/4 v1, 0x4

    goto :goto_2

    .line 286
    :cond_a
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 292
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_b

    .line 294
    const/4 v1, 0x7

    goto :goto_2

    .line 298
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 301
    :cond_c
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 307
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_d

    .line 309
    const/4 v1, 0x6

    goto :goto_2

    .line 313
    :cond_d
    const/4 v1, 0x0

    goto :goto_2

    .line 316
    :cond_e
    if-eqz v4, :cond_f

    .line 318
    const/4 v1, 0x1

    goto :goto_2

    .line 320
    :cond_f
    if-eqz v5, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_10

    .line 322
    const/16 v1, 0x9

    goto :goto_2

    .line 324
    :cond_10
    if-eqz v2, :cond_11

    .line 326
    const/4 v1, 0x0

    goto :goto_2

    .line 328
    :cond_11
    if-eqz v3, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_5

    .line 330
    const/16 v1, 0x8

    goto :goto_2

    .line 342
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_12
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 348
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "i":I
    :cond_13
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 349
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 351
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_6

    move-object v7, v0

    .line 353
    check-cast v7, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getOriginalOrientationMode()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method public setPostOpenListener(Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    .line 222
    return-void
.end method

.method public setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "tabGroupProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 210
    return-void
.end method

.method public setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "tabProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 196
    return-void
.end method

.method public setWindowPixelFormat(I)V
    .locals 3
    .param p1, "pixelFormat"    # I

    .prologue
    .line 427
    const-string v0, "windowPixelFormat"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 428
    return-void
.end method

.method public updateOrientation()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 234
    return-void
.end method
