.class public Lti/modules/titanium/media/AudioPlayerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AudioPlayerProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "AudioPlayerProxy"

.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/AudioPlayerProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 54
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;-><init>()V

    .line 55
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "allow":Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->release()V

    .line 149
    return-void
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 163
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    const-string v2, "url"

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_1
    sget-boolean v2, Lti/modules/titanium/media/AudioPlayerProxy;->DBG:Z

    if-eqz v2, :cond_2

    .line 80
    const-string v2, "AudioPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating audio player proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    return-void

    .line 69
    :cond_3
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 71
    .local v0, "fp":Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "url":Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 61
    const-string v0, "volume"

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 109
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 100
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 103
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 203
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 193
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 185
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 177
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 132
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 135
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 124
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 127
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 140
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 144
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->play()V

    .line 119
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 154
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 157
    :cond_0
    return-void
.end method
