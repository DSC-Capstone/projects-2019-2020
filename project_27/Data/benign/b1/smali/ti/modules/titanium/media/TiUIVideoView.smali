.class public Lti/modules/titanium/media/TiUIVideoView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lti/modules/titanium/media/TiPlaybackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIView"


# instance fields
.field private mediaController:Landroid/widget/MediaController;

.field private videoView:Landroid/widget/TiVideoView8;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    return-void
.end method

.method private getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/media/VideoPlayerProxy;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 63
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiUIVideoView;->setNativeView(Landroid/view/View;)V

    .line 67
    .end local v0    # "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 68
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 69
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 70
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnPlaybackListener(Lti/modules/titanium/media/TiPlaybackListener;)V

    .line 71
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    new-instance v2, Lti/modules/titanium/media/TiUIVideoView$1;

    invoke-direct {v2, p0}, Lti/modules/titanium/media/TiUIVideoView$1;-><init>(Lti/modules/titanium/media/TiUIVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getCurrentPlaybackTime()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public hideMediaController()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 214
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 305
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackComplete()V

    .line 306
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 311
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackError(I)V

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public onPausePlayback()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackPaused()V

    .line 325
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 299
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackReady(I)V

    .line 300
    return-void
.end method

.method public onStartPlayback()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackStarted()V

    .line 319
    return-void
.end method

.method public onStopPlayback()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackStopped()V

    .line 331
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 218
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "TiUIView"

    const-string v2, "play() ignored, already playing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "urlObj":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 231
    const-string v1, "TiUIView"

    const-string v2, "play() ignored, no url set."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 235
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v3, 0x0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 236
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 239
    .end local v0    # "urlObj":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->start()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 105
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TiVideoView8;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 107
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->initView()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 111
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_1

    .line 135
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 117
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 119
    const-string v1, "contentURL"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    const-string v1, "TiUIView"

    const-string v2, "contentURL is deprecated, use url instead"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 127
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 131
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getScalingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    .line 134
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "contentURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 146
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v1, 0x0

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 147
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 148
    const-string v0, "contentURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "TiUIView"

    const-string v1, "contentURL is deprecated, use url instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "url"

    invoke-virtual {p4, v0, p3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "scalingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 291
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 292
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 293
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    .line 294
    return-void
.end method

.method public releaseVideoView()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->release(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TiUIView"

    const-string v2, "Exception while releasing video resources"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0, p1}, Landroid/widget/TiVideoView8;->seekTo(I)V

    goto :goto_0
.end method

.method public seekIfNeeded()V
    .locals 6

    .prologue
    .line 83
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    .local v1, "seekTo":I
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "initialPlaybackTime"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "initialPlaybackTime":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 89
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 92
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "__seek_to_on_resume__"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "seekToOnResume":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 94
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 95
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "__seek_to_on_resume__"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_3
    if-lez v1, :cond_0

    .line 98
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v3, v1}, Landroid/widget/TiVideoView8;->seekTo(I)V

    goto :goto_0
.end method

.method public setMediaControlStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    .line 184
    .local v0, "showController":Z
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_1
    if-eqz v0, :cond_3

    .line 197
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    .line 198
    new-instance v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    .line 200
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 201
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 203
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 188
    :pswitch_0
    const/4 v0, 0x1

    .line 189
    goto :goto_1

    .line 192
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 205
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setScalingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0, p1}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    goto :goto_0
.end method

.method public setVideoViewFromActivityLayout(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 3
    .param p1, "layout"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/TiUIVideoView;->setNativeView(Landroid/view/View;)V

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/TiVideoView8;

    if-eqz v2, :cond_1

    .line 53
    check-cast v0, Landroid/widget/TiVideoView8;

    .end local v0    # "child":Landroid/view/View;
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 57
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->initView()V

    .line 58
    return-void

    .line 50
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->stopPlayback()V

    goto :goto_0
.end method
