.class public Lti/modules/titanium/media/SoundProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "SoundProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "SoundProxy"

.field public static final PROPERTY_VOLUME:Ljava/lang/String; = "volume"


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/SoundProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 49
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;-><init>()V

    .line 50
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "allow":Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 223
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->release()V

    .line 167
    return-void
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 180
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getDuration()I

    move-result v1

    .line 184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 213
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getTime()D
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 190
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getTime()I

    move-result v1

    .line 192
    .local v1, "time":I
    const-string v2, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    .end local v1    # "time":I
    :cond_0
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 61
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const-string v2, "url"

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/SoundProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_1
    sget-boolean v2, Lti/modules/titanium/media/SoundProxy;->DBG:Z

    if-eqz v2, :cond_2

    .line 74
    const-string v2, "SoundProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating sound proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    return-void

    .line 63
    :cond_3
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 65
    .local v0, "fp":Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "url":Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 55
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 56
    return-void
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 111
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isLooping()Z

    move-result v1

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 102
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 93
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 96
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
    .line 249
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 253
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 238
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 243
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 230
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 235
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 246
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 142
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 145
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 134
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 137
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 158
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 162
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 150
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->reset()V

    .line 153
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 119
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 120
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiSound;->setLooping(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/Object;)V
    .locals 4
    .param p1, "pos"    # Ljava/lang/Object;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 201
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_1

    .line 202
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 207
    .end local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_1
    const-string v1, "time"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/SoundProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->play()V

    .line 129
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 172
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 175
    :cond_0
    return-void
.end method
