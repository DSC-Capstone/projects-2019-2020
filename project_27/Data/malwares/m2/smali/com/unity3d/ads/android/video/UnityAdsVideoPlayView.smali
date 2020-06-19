.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:J

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

.field private m:Ljava/util/Timer;

.field private n:Landroid/widget/VideoView;

.field private o:Ljava/lang/String;

.field private p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

.field private q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

.field private r:Z

.field private s:Ljava/util/Map;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/media/MediaPlayer;

.field private x:Z

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 77
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 83
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 44
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 45
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 50
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 51
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 52
    iput-wide v4, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    .line 55
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 57
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    .line 59
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    .line 60
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    .line 63
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 64
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 65
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    .line 66
    iput-boolean v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    .line 71
    iput-object p2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 72
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e()V

    .line 73
    return-void
.end method

.method static synthetic A(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic B(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    return-wide v0
.end method

.method static synthetic C(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    return v0
.end method

.method static synthetic D(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    return-wide v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/unity3d/ads/android/video/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unity3d/ads/android/video/c;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    return-wide p1
.end method

.method static synthetic b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    .line 209
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 210
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackError()V

    .line 213
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoError(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 214
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 218
    new-instance v0, Lcom/unity3d/ads/android/video/e;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/e;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 228
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads/android/video/l;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/android/video/l;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;B)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 230
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 235
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m:Ljava/util/Timer;

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/high16 v6, -0x1000000

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 241
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->muteVideoSounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iput-boolean v5, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    .line 246
    :cond_0
    const-string v0, "Creating custom view"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setBackgroundColor(I)V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    .line 251
    new-instance v0, Lcom/unity3d/ads/android/video/f;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/android/video/f;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    .line 261
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 262
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 264
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 267
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/g;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/g;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 274
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/h;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/h;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 289
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 290
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0xc1c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 291
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 295
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 296
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    const-string v1, "Buffering..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/16 v1, 0xc1f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 303
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 306
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 307
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 308
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 312
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 313
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    const-string v1, "This video ends in "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 320
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 321
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 324
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    const/16 v2, 0x2711

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 326
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 327
    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    const-string v2, "seconds."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    const/16 v3, 0x2712

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 334
    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 335
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 343
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_DEVELOPER_INTERNAL_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 345
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 348
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 353
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    const-string v1, "INTERNAL UNITY TEST BUILD\nDO NOT USE IN PRODUCTION"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 359
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSkipDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    .line 361
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()V

    .line 364
    :cond_2
    new-instance v0, Lcom/unity3d/ads/android/video/i;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/i;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v0, Lcom/unity3d/ads/android/video/j;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/j;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 383
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->Muted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V

    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    new-instance v1, Lcom/unity3d/ads/android/video/k;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/k;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private static f()Z
    .locals 4

    .prologue
    .line 432
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->v:Z

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, -0x2

    .line 446
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 447
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0xbc2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 448
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 449
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 451
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 452
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 453
    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unity3d/ads/android/video/b;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/b;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 463
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You can skip this video in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 467
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->addView(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method static synthetic g(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x:Z

    return v0
.end method

.method private getSkipDuration()J
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v0

    .line 442
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 496
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 36
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Storing volume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p:Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 508
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    .line 513
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    return-void
.end method

.method static synthetic l(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    return-void
.end method

.method static synthetic m(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    return v0
.end method

.method static synthetic n(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t:Z

    return v0
.end method

.method static synthetic o(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;

    return-object v0
.end method

.method static synthetic p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->y:F

    return v0
.end method

.method static synthetic q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g()V

    return-void
.end method

.method static synthetic t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    const v1, 0x1ffffff

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    const-string v1, "Skip video"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h()V

    return-void
.end method

.method static synthetic v(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    return-void
.end method

.method static synthetic w(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    return-void
.end method

.method static synthetic y(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->e:J

    return-wide v0
.end method

.method static synthetic z(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j()V

    .line 144
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    .line 146
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 148
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 149
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 150
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 151
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->removeAllViews()V

    .line 155
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d:Landroid/widget/TextView;

    .line 158
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->h:Landroid/widget/RelativeLayout;

    .line 160
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a:Landroid/widget/RelativeLayout;

    .line 161
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    .line 163
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->g:Landroid/widget/TextView;

    .line 164
    iput-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->f:Landroid/widget/RelativeLayout;

    .line 165
    return-void
.end method

.method public getBufferingDuration()J
    .locals 4

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    .line 172
    :cond_0
    iget-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j:J

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 176
    .line 178
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 180
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 181
    if-gez v1, :cond_2

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->k:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hideVideo()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 135
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 576
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 577
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i()V

    .line 578
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 546
    .line 549
    packed-switch p1, :pswitch_data_0

    .line 571
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 551
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 553
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    .line 555
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-nez v0, :cond_1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 558
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getBufferingDuration()J

    move-result-wide v0

    .line 559
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 560
    const-string v3, "bufferingDuration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v0, "eventValue"

    const-string v1, "back"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsInstrumentation;->gaInstrumentationVideoAbort(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Ljava/util/Map;)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->l:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 568
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d()V

    .line 121
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/unity3d/ads/android/video/d;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/video/d;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r:Z

    .line 90
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playing video from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/ads/android/video/a;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/video/a;-><init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->u:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->i:J

    .line 114
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    const-string v0, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b()V

    goto :goto_0
.end method
