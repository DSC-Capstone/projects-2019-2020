.class public Lcom/google/ads/internal/AdVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/internal/AdVideoView$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/google/ads/internal/a;


# instance fields
.field public a:Landroid/widget/MediaController;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/internal/AdWebView;

.field private e:J

.field private final f:Landroid/widget/VideoView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/internal/AdWebView;)V
    .locals 4
    .param p1, "adActivity"    # Landroid/app/Activity;
    .param p2, "adWebView"    # Lcom/google/ads/internal/AdWebView;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/AdVideoView;->c:Ljava/lang/ref/WeakReference;

    .line 95
    iput-object p2, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    .line 98
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/internal/AdVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iput-object v3, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    .line 110
    iput-object v3, p0, Lcom/google/ads/internal/AdVideoView;->g:Ljava/lang/String;

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/AdVideoView;->e:J

    .line 114
    invoke-virtual {p0}, Lcom/google/ads/internal/AdVideoView;->a()V

    .line 116
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 117
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 118
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/ads/internal/AdVideoView$a;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/AdVideoView$a;-><init>(Lcom/google/ads/internal/AdVideoView;)V

    .line 126
    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView$a;->a()V

    .line 127
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 231
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'error\', \'what\': \'no_src\'}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 216
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 223
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 245
    return-void
.end method

.method f()V
    .locals 8

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 252
    iget-wide v2, p0, Lcom/google/ads/internal/AdVideoView;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 253
    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 254
    sget-object v3, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    iget-object v4, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    const-string v5, "onVideoEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\'event\': \'timeupdate\', \'time\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput-wide v0, p0, Lcom/google/ads/internal/AdVideoView;->e:J

    .line 259
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 186
    sget-object v0, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'ended\'}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video threw error! <what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'event\': \'error\', \'what\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'extra\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 206
    sget-object v1, Lcom/google/ads/internal/AdVideoView;->b:Lcom/google/ads/internal/a;

    iget-object v2, p0, Lcom/google/ads/internal/AdVideoView;->d:Lcom/google/ads/internal/AdWebView;

    const-string v3, "onVideoEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\'event\': \'canplaythrough\', \'duration\': \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setMediaControllerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 156
    if-nez v0, :cond_0

    .line 157
    const-string v0, "adActivity was null while trying to enable controls on a video."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    if-eqz p1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->f:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/ads/internal/AdVideoView;->g:Ljava/lang/String;

    .line 179
    return-void
.end method
