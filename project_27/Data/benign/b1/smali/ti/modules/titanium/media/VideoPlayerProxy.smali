.class public Lti/modules/titanium/media/VideoPlayerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "VideoPlayerProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field protected static final CONTROL_MSG_ACTIVITY_AVAILABLE:I = 0x65

.field protected static final CONTROL_MSG_CONFIG_CHANGED:I = 0x66

.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "VideoPlayerProxy"

.field private static final MSG_FIRST_ID:I = 0x4ba

.field private static final MSG_GET_PLAYBACK_TIME:I = 0x525

.field private static final MSG_HIDE_MEDIA_CONTROLLER:I = 0x528

.field private static final MSG_MEDIA_CONTROL_CHANGE:I = 0x522

.field private static final MSG_PAUSE:I = 0x521

.field private static final MSG_PLAY:I = 0x51f

.field private static final MSG_RELEASE:I = 0x527

.field private static final MSG_RELEASE_RESOURCES:I = 0x526

.field private static final MSG_SCALING_CHANGE:I = 0x523

.field private static final MSG_SET_PLAYBACK_TIME:I = 0x524

.field private static final MSG_SET_VIEW_FROM_ACTIVITY:I = 0x529

.field private static final MSG_STOP:I = 0x520

.field private static final PROPERTY_MOVIE_CONTROL_MODE:Ljava/lang/String; = "movieControlMode"

.field private static final PROPERTY_MOVIE_CONTROL_STYLE:Ljava/lang/String; = "movieControlStyle"

.field public static final PROPERTY_SEEK_TO_ON_RESUME:Ljava/lang/String; = "__seek_to_on_resume__"


# instance fields
.field private activityListeningTo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private loadState:I

.field protected mediaControlStyle:I

.field private playbackState:I

.field protected scalingMode:I

.field private videoActivityHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 68
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 70
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    .line 71
    iput v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 84
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/media/VideoPlayerProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/VideoPlayerProxy;)Lti/modules/titanium/media/TiUIVideoView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;

    .prologue
    .line 37
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/media/VideoPlayerProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/media/VideoPlayerProxy;
    .param p1, "x1"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    return-void
.end method

.method private control(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 229
    sget-boolean v2, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    if-eqz v2, :cond_0

    .line 230
    const-string v2, "VideoPlayerProxy"

    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->getActionName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 239
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_2

    .line 240
    const-string v2, "VideoPlayerProxy"

    const-string v3, "Player action ignored; player has not been created."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    .line 246
    .local v1, "vv":Lti/modules/titanium/media/TiUIVideoView;
    packed-switch p1, :pswitch_data_0

    .line 257
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown player action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :pswitch_0
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->play()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->stop()V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->pause()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createControlHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxy$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/VideoPlayerProxy$1;-><init>(Lti/modules/titanium/media/VideoPlayerProxy;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method private firePlaybackState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 530
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    .line 531
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 532
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "playbackState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v1, "playbackState"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 534
    return-void
.end method

.method private getActionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 627
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 621
    :pswitch_0
    const-string v0, "play"

    goto :goto_0

    .line 623
    :pswitch_1
    const-string v0, "pause"

    goto :goto_0

    .line 625
    :pswitch_2
    const-string v0, "stop"

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getVideoView()Lti/modules/titanium/media/TiUIVideoView;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/media/TiUIVideoView;

    return-object v0
.end method

.method private launchVideoActivity(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "backgroundColor"

    const-string v2, "backgroundColor"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->createControlHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->videoActivityHandler:Landroid/os/Handler;

    .line 172
    const-string v1, "messenger"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lti/modules/titanium/media/VideoPlayerProxy;->videoActivityHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method private setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 1
    .param p1, "layout"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    .line 120
    new-instance v0, Lti/modules/titanium/media/TiUIVideoView;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiUIVideoView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 121
    .local v0, "tiView":Lti/modules/titanium/media/TiUIVideoView;
    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 122
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiUIVideoView;->setVideoViewFromActivityLayout(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 123
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 124
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 484
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lti/modules/titanium/media/TiUIVideoView;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiUIVideoView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public fireComplete(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 551
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 552
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "complete"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public fireLoadState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 538
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    .line 539
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 540
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "loadState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "currentPlaybackTime"

    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getCurrentPlaybackTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "loadstate"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string v1, "duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    const-string v1, "playableDuration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    :cond_0
    return-void
.end method

.method public getCurrentPlaybackTime()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_0

    .line 495
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->getCurrentPlaybackTime()I

    move-result v1

    .line 506
    :cond_0
    :goto_0
    return v1

    .line 498
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x525

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 500
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLoadState()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->loadState:I

    return v0
.end method

.method public getMediaControlStyle()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    return v0
.end method

.method public getMovieControlMode()I
    .locals 2

    .prologue
    .line 430
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v0

    return v0
.end method

.method public getMovieControlStyle()I
    .locals 2

    .prologue
    .line 450
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->playbackState:I

    return v0
.end method

.method public getPlaying()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->isPlaying()Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalingMode()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 131
    const-string v6, "mediaControlStyle"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "mcStyle":Ljava/lang/Object;
    const-string v6, "movieControlMode"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "mcModeDeprecated":Ljava/lang/Object;
    const-string v6, "movieControlStyle"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    .local v4, "mcStyleDeprecated":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 135
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 144
    :cond_0
    :goto_0
    const-string v6, "scalingMode"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 145
    .local v5, "sMode":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 146
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, "fullscreen":Z
    const-string v6, "fullscreen"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, "fullscreenObj":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 156
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    :cond_2
    if-eqz v0, :cond_3

    .line 160
    invoke-direct {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->launchVideoActivity(Lorg/appcelerator/kroll/KrollDict;)V

    .line 162
    :cond_3
    return-void

    .line 136
    .end local v0    # "fullscreen":Z
    .end local v1    # "fullscreenObj":Ljava/lang/Object;
    .end local v5    # "sMode":Ljava/lang/Object;
    :cond_4
    if-eqz v2, :cond_5

    .line 137
    const-string v6, "VideoPlayerProxy"

    const-string v7, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    goto :goto_0

    .line 139
    :cond_5
    if-eqz v4, :cond_0

    .line 140
    const-string v6, "VideoPlayerProxy"

    const-string v7, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 341
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x51f

    if-lt v2, v3, :cond_1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x521

    if-gt v2, v3, :cond_1

    .line 342
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 343
    const/4 v0, 0x1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    const/4 v0, 0x0

    .line 347
    .local v0, "handled":Z
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    .line 348
    .local v1, "vv":Lti/modules/titanium/media/TiUIVideoView;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 401
    :goto_1
    if-nez v0, :cond_0

    .line 402
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 350
    :pswitch_0
    if-eqz v1, :cond_2

    .line 351
    iget v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    .line 353
    :cond_2
    const/4 v0, 0x1

    .line 354
    goto :goto_1

    .line 356
    :pswitch_1
    if-eqz v1, :cond_3

    .line 357
    iget v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->setScalingMode(I)V

    .line 359
    :cond_3
    const/4 v0, 0x1

    .line 360
    goto :goto_1

    .line 362
    :pswitch_2
    if-eqz v1, :cond_4

    .line 363
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiUIVideoView;->seek(I)V

    .line 365
    :cond_4
    const/4 v0, 0x1

    .line 366
    goto :goto_1

    .line 368
    :pswitch_3
    if-eqz v1, :cond_5

    .line 369
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->getCurrentPlaybackTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 373
    :goto_2
    const/4 v0, 0x1

    .line 374
    goto :goto_1

    .line 371
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 376
    :pswitch_4
    if-eqz v1, :cond_6

    .line 377
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 379
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 380
    const/4 v0, 0x1

    .line 381
    goto :goto_1

    .line 383
    :pswitch_5
    if-eqz v1, :cond_7

    .line 384
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->release()V

    .line 386
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x1

    .line 388
    goto :goto_1

    .line 390
    :pswitch_6
    if-eqz v1, :cond_8

    .line 391
    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->hideMediaController()V

    .line 393
    :cond_8
    const/4 v0, 0x1

    .line 394
    goto :goto_1

    .line 396
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x522
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 331
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getPlaying()Z

    move-result v0

    .line 669
    .local v0, "wasPlaying":Z
    if-nez v0, :cond_0

    .line 671
    const-string v2, "__seek_to_on_resume__"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    const-string v2, "__seek_to_on_resume__"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 673
    :goto_0
    const-string v2, "__seek_to_on_resume__"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 678
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/TiUIVideoView;->release()V

    .line 684
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 685
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 687
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 672
    goto :goto_0

    .line 681
    :cond_4
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x527

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 647
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const-string v1, "__seek_to_on_resume__"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getCurrentPlaybackTime()I

    move-result v0

    .line 654
    .local v0, "seekToOnResume":I
    const-string v1, "__seek_to_on_resume__"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->pause()V

    goto :goto_0
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 594
    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 595
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 596
    return-void
.end method

.method public onPlaybackError(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 600
    const-string v1, "Unknown"

    .line 601
    .local v1, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 609
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 610
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 611
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "error"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 613
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 614
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 615
    return-void

    .line 603
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    const-string v1, "Not valid for progressive playback"

    .line 604
    goto :goto_0

    .line 606
    :sswitch_1
    const-string v1, "Server died"

    goto :goto_0

    .line 601
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPlaybackPaused()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 584
    return-void
.end method

.method public onPlaybackReady(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 558
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 559
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    const-string v2, "playableDuration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v2, "endPlaybackTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v2, "initialPlaybackTime"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    const-string v2, "initialPlaybackTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    :cond_0
    const-string v2, "durationAvailable"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 567
    const-string v2, "preload"

    invoke-virtual {p0, v2, v4}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 568
    const-string v2, "load"

    invoke-virtual {p0, v2, v4}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 569
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 570
    const-string v2, "autoplay"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 571
    .local v0, "autoplay":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->play()V

    .line 574
    :cond_2
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 579
    return-void
.end method

.method public onPlaybackStopped()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->firePlaybackState(I)V

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->fireComplete(I)V

    .line 590
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 637
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 642
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 632
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 663
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x521

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 282
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x51f

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 266
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 293
    sget-boolean v0, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "VideoPlayerProxy"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x526

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 91
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 93
    .local v0, "oldActivity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_3

    .line 94
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "oldActivity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 98
    :cond_0
    :goto_0
    iput-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 100
    :cond_1
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 101
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 102
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    .line 107
    :cond_2
    :goto_1
    return-void

    .line 95
    .restart local v0    # "oldActivity":Landroid/app/Activity;
    :cond_3
    instance-of v1, v0, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lti/modules/titanium/media/TiVideoActivity;

    .end local v0    # "oldActivity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lti/modules/titanium/media/TiVideoActivity;->setOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    goto :goto_0

    .line 103
    :cond_4
    instance-of v1, p1, Lti/modules/titanium/media/TiVideoActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 104
    check-cast v1, Lti/modules/titanium/media/TiVideoActivity;

    invoke-virtual {v1, p0}, Lti/modules/titanium/media/TiVideoActivity;->setOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 105
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityListeningTo:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method public setCurrentPlaybackTime(I)V
    .locals 4
    .param p1, "milliseconds"    # I

    .prologue
    .line 513
    sget-boolean v1, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 514
    const-string v1, "VideoPlayerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPlaybackTime("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 518
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->seek(I)V

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 523
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setMediaControlStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 416
    iget v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 417
    .local v0, "alert":Z
    :goto_0
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->mediaControlStyle:I

    .line 418
    if-eqz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 419
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    .line 425
    :cond_0
    :goto_1
    return-void

    .line 416
    .end local v0    # "alert":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    .restart local v0    # "alert":Z
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x522

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public setMovieControlMode(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 437
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlMode is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setMediaControlStyle(I)V

    .line 439
    return-void
.end method

.method public setMovieControlStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 457
    const-string v0, "VideoPlayerProxy"

    const-string v1, "movieControlStyle is deprecated.  Use mediaControlStyle instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->setMediaControlStyle(I)V

    .line 459
    return-void
.end method

.method public setScalingMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 470
    iget v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 471
    .local v0, "alert":Z
    :goto_0
    iput p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->scalingMode:I

    .line 472
    if-eqz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 473
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lti/modules/titanium/media/TiUIVideoView;->setScalingMode(I)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 470
    .end local v0    # "alert":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    .restart local v0    # "alert":Z
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x523

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public start()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->play()V

    .line 275
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x520

    invoke-direct {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->control(I)V

    .line 288
    return-void
.end method
