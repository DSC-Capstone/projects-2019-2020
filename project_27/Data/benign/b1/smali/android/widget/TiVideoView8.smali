.class public Landroid/widget/TiVideoView8;
.super Landroid/view/SurfaceView;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final DBG:Z

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TiVideoView8"


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScalingMode:I

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Landroid/widget/TiVideoView8;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 100
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 101
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 104
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 105
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 465
    new-instance v0, Landroid/widget/TiVideoView8$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$1;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 476
    new-instance v0, Landroid/widget/TiVideoView8$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$2;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 546
    new-instance v0, Landroid/widget/TiVideoView8$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$3;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 560
    new-instance v0, Landroid/widget/TiVideoView8$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$4;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 581
    new-instance v0, Landroid/widget/TiVideoView8$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$5;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 626
    new-instance v0, Landroid/widget/TiVideoView8$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$6;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 126
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TiVideoView8;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 100
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 101
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 104
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 105
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 465
    new-instance v0, Landroid/widget/TiVideoView8$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$1;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 476
    new-instance v0, Landroid/widget/TiVideoView8$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$2;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 546
    new-instance v0, Landroid/widget/TiVideoView8$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$3;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 560
    new-instance v0, Landroid/widget/TiVideoView8$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$4;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 581
    new-instance v0, Landroid/widget/TiVideoView8$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$5;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 626
    new-instance v0, Landroid/widget/TiVideoView8$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$6;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 138
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/widget/TiVideoView8;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/TiVideoView8;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TiVideoView8;

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/TiVideoView8;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 459
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 460
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 461
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 463
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 459
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    iput v2, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    .line 291
    iput v2, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    .line 292
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 294
    invoke-virtual {p0, v3}, Landroid/widget/TiVideoView8;->setFocusable(Z)V

    .line 295
    invoke-virtual {p0, v3}, Landroid/widget/TiVideoView8;->setFocusableInTouchMode(Z)V

    .line 296
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->requestFocus()Z

    .line 297
    iput v2, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 298
    iput v2, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 299
    return-void
.end method

.method private openVideo()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 383
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v8, "i":Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    invoke-virtual {p0, v11}, Landroid/widget/TiVideoView8;->release(Z)V

    .line 398
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 399
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 400
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 402
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 403
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 404
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    .line 408
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    const/4 v6, 0x0

    .line 412
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 414
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-eqz v6, :cond_2

    .line 417
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 423
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 424
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 425
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 426
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 429
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 430
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v7

    .line 432
    .local v7, "ex":Ljava/io/IOException;
    const-string v0, "TiVideoView8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    iput v10, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 434
    iput v10, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 435
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v12, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 416
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 417
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 437
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    .line 438
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "TiVideoView8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    iput v10, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 440
    iput v10, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 441
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v12, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 421
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_4
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->setDataSource()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private setDataSource()V
    .locals 11

    .prologue
    .line 344
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_1

    const-string v8, "http"

    iget-object v9, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "https"

    iget-object v9, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 350
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rtsp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 375
    :cond_1
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 379
    :goto_1
    return-void

    .line 353
    :cond_2
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 355
    .local v1, "cn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 356
    const-string v8, "Location"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 358
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "host":Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 360
    .local v5, "port":I
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "scheme":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    .line 362
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 364
    if-nez v6, :cond_3

    .line 365
    const-string v6, "http"

    .line 367
    :cond_3
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    move-object v0, v3

    .line 368
    .local v0, "authority":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "cn":Ljava/net/HttpURLConnection;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "TiVideoView8"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting video data source: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cn":Ljava/net/HttpURLConnection;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v5    # "port":I
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 849
    iget v0, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    if-lez v0, :cond_0

    .line 814
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 820
    :goto_0
    return v0

    .line 816
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 817
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    goto :goto_0

    .line 819
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 820
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 856
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureVideo(IIII)V
    .locals 15
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .prologue
    .line 184
    sget-boolean v12, Landroid/widget/TiVideoView8;->DBG:Z

    if-eqz v12, :cond_0

    .line 185
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "******* mVideoWidth: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mVideoHeight: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " width: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->getDefaultSize(II)I

    move-result v11

    .line 190
    .local v11, "width":I
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->getDefaultSize(II)I

    move-result v5

    .line 191
    .local v5, "height":I
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 193
    iget v12, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    packed-switch v12, :pswitch_data_0

    .line 222
    :cond_1
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "model":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v12, "SPH-P100"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 224
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 225
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 226
    .local v3, "d":Landroid/view/Display;
    if-eqz v3, :cond_3

    .line 227
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 228
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    sget v12, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    iget v13, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v12, v13, :cond_3

    .line 230
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 231
    .local v7, "maxScaledWidth":I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v6, v12

    .line 233
    .local v6, "maxScaledHeight":I
    int-to-float v12, v11

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    int-to-float v13, v7

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 234
    move v10, v11

    .line 235
    .local v10, "oldWidth":I
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 236
    sget-boolean v12, Landroid/widget/TiVideoView8;->DBG:Z

    if-eqz v12, :cond_2

    .line 237
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOO WIDE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changed to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v10    # "oldWidth":I
    :cond_2
    int-to-float v12, v5

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    int-to-float v13, v6

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 241
    move v9, v5

    .line 242
    .local v9, "oldHeight":I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 243
    sget-boolean v12, Landroid/widget/TiVideoView8;->DBG:Z

    if-eqz v12, :cond_3

    .line 244
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOO HIGH: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changed to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "d":Landroid/view/Display;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "maxScaledHeight":I
    .end local v7    # "maxScaledWidth":I
    .end local v9    # "oldHeight":I
    :cond_3
    sget-boolean v12, Landroid/widget/TiVideoView8;->DBG:Z

    if-eqz v12, :cond_4

    .line 251
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x78

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4
    invoke-virtual {p0, v11, v5}, Landroid/widget/TiVideoView8;->setMeasuredDimension(II)V

    .line 254
    return-void

    .line 195
    .end local v8    # "model":Ljava/lang/String;
    :pswitch_0
    move/from16 v11, p1

    .line 196
    move/from16 v5, p2

    .line 197
    goto/16 :goto_0

    .line 200
    :pswitch_1
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-le v12, v13, :cond_5

    .line 201
    mul-int v12, v5, p1

    div-int v11, v12, p2

    goto/16 :goto_0

    .line 202
    :cond_5
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-ge v12, v13, :cond_1

    .line 203
    mul-int v12, v11, p2

    div-int v5, v12, p1

    goto/16 :goto_0

    .line 208
    :pswitch_2
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-le v12, v13, :cond_6

    .line 209
    mul-int v12, v11, p2

    div-int v5, v12, p1

    goto/16 :goto_0

    .line 210
    :cond_6
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-ge v12, v13, :cond_1

    .line 211
    mul-int v12, v5, p1

    div-int v11, v12, p2

    goto/16 :goto_0

    .line 216
    :pswitch_3
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 217
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 709
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 712
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 713
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 714
    :cond_0
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->pause()V

    .line 716
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 730
    :goto_1
    return v1

    .line 709
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 718
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->start()V

    .line 719
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 722
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 723
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->pause()V

    .line 724
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 730
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 726
    :cond_5
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 176
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    iget v1, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/widget/TiVideoView8;->measureVideo(IIII)V

    .line 177
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 180
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    .line 694
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    .line 703
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 757
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 760
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 762
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v0}, Lti/modules/titanium/media/TiPlaybackListener;->onPausePlayback()V

    .line 767
    :cond_0
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 768
    return-void
.end method

.method public release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 679
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 681
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 682
    if-eqz p1, :cond_0

    .line 683
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 686
    :cond_0
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 258
    move v0, p1

    .line 259
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 260
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 262
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 285
    :goto_0
    return v0

    .line 268
    :sswitch_0
    move v0, p1

    .line 269
    goto :goto_0

    .line 277
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 278
    goto :goto_0

    .line 282
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iput p1, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 451
    :cond_0
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    .line 452
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->attachMediaController()V

    .line 453
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 609
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 610
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 623
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 624
    return-void
.end method

.method public setOnPlaybackListener(Lti/modules/titanium/media/TiPlaybackListener;)V
    .locals 0
    .param p1, "tiPlaybackListener"    # Lti/modules/titanium/media/TiPlaybackListener;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    .line 145
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 597
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 598
    return-void
.end method

.method public setScalingMode(I)V
    .locals 0
    .param p1, "scalingMode"    # I

    .prologue
    .line 877
    iput p1, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 878
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 304
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 309
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    .line 317
    iput-object p2, p0, Landroid/widget/TiVideoView8;->mHeaders:Ljava/util/Map;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    .line 319
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->openVideo()V

    .line 320
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->requestLayout()V

    .line 321
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->invalidate()V

    .line 322
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 744
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 746
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 748
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v0}, Lti/modules/titanium/media/TiPlaybackListener;->onStartPlayback()V

    .line 752
    :cond_0
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 753
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 329
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v0}, Lti/modules/titanium/media/TiPlaybackListener;->onStopPlayback()V

    .line 332
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 334
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 335
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 337
    :cond_1
    return-void
.end method
