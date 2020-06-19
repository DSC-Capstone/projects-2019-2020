.class public Lti/modules/titanium/media/TiSound;
.super Ljava/lang/Object;
.source "TiSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field private static final DBG:Z

.field public static final EVENT_CHANGE:Ljava/lang/String; = "change"

.field public static final EVENT_COMPLETE:Ljava/lang/String; = "complete"

.field public static final EVENT_COMPLETE_JSON:Ljava/lang/String; = "{ type : \'complete\' }"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field private static final LCAT:Ljava/lang/String; = "TiSound"

.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_BUFFERING_DESC:Ljava/lang/String; = "buffering"

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_INITIALIZED_DESC:Ljava/lang/String; = "initialized"

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSED_DESC:Ljava/lang/String; = "paused"

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PLAYING_DESC:Ljava/lang/String; = "playing"

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STARTING_DESC:Ljava/lang/String; = "starting"

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPED_DESC:Ljava/lang/String; = "stopped"

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_STOPPING_DESC:Ljava/lang/String; = "stopping"

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_DATA_DESC:Ljava/lang/String; = "waiting for data"

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8

.field public static final STATE_WAITING_FOR_QUEUE_DESC:Ljava/lang/String; = "waiting for queue"


# instance fields
.field private looping:Z

.field protected mp:Landroid/media/MediaPlayer;

.field private paused:Z

.field protected playOnResume:Z

.field protected progressTimer:Ljava/util/Timer;

.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;

.field protected remote:Z

.field protected volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/TiSound;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 65
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 76
    iput-object p1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 77
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 78
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 79
    return-void
.end method

.method private setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 328
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const-string v1, ""

    .line 331
    .local v1, "stateDescription":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 361
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "stateDescription"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    sget-boolean v2, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v2, :cond_0

    .line 363
    const-string v2, "TiSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 367
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 371
    return-void

    .line 333
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :pswitch_0
    const-string v1, "buffering"

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    const-string v1, "initialized"

    .line 337
    goto :goto_0

    .line 339
    :pswitch_2
    const-string v1, "paused"

    .line 340
    goto :goto_0

    .line 342
    :pswitch_3
    const-string v1, "playing"

    .line 343
    goto :goto_0

    .line 345
    :pswitch_4
    const-string v1, "starting"

    .line 346
    goto :goto_0

    .line 348
    :pswitch_5
    const-string v1, "stopped"

    .line 349
    goto :goto_0

    .line 351
    :pswitch_6
    const-string v1, "stopping"

    .line 352
    goto :goto_0

    .line 354
    :pswitch_7
    const-string v1, "waiting for data"

    .line 355
    goto :goto_0

    .line 357
    :pswitch_8
    const-string v1, "waiting for queue"

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private startProgressTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    .line 469
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 476
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lti/modules/titanium/media/TiSound$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiSound$1;-><init>(Lti/modules/titanium/media/TiSound;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 488
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 473
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "duration":I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 288
    :cond_0
    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "time":I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    .line 89
    .local v7, "context":Landroid/content/Context;
    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 90
    .local v9, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 95
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v6, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 113
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 114
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 116
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 117
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 119
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 122
    iget v0, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 123
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setTime(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 96
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 97
    .local v8, "e":Ljava/io/IOException;
    :try_start_3
    const-string v0, "TiSound"

    const-string v1, "Error setting file descriptor: "

    invoke-static {v0, v1, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    if-eqz v6, :cond_0

    .line 100
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 126
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "path":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 127
    .local v10, "t":Ljava/lang/Throwable;
    const-string v0, "TiSound"

    const-string v1, "Issue while initializing : "

    invoke-static {v0, v1, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiSound;->setState(I)V

    goto :goto_1

    .line 99
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 100
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    throw v0

    .line 104
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 105
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 109
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "result":Z
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 149
    :cond_0
    return v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 528
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 531
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 462
    sget-boolean v0, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "TiSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 409
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 411
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 505
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "code":I
    const-string v2, "Unknown media error."

    .line 446
    .local v2, "msg":Ljava/lang/String;
    const/16 v3, 0x64

    if-ne p2, v3, :cond_0

    .line 447
    const-string v2, "Media server died"

    .line 449
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 451
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 452
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "error"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 456
    const/4 v3, 0x1

    return v3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 416
    const-string v1, "Unknown media issue."

    .line 418
    .local v1, "msg":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 433
    :goto_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 434
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "code"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "error"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 438
    const/4 v2, 0x1

    return v2

    .line 420
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    const-string v1, "Stream not interleaved or interleaved improperly."

    .line 421
    goto :goto_0

    .line 423
    :sswitch_1
    const-string v1, "Stream does not support seeking"

    .line 424
    goto :goto_0

    .line 426
    :sswitch_2
    const-string v1, "Unknown media issue"

    .line 427
    goto :goto_0

    .line 429
    :sswitch_3
    const-string v1, "Video is too complex for decoder, video lagging."

    goto :goto_0

    .line 418
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 515
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 520
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 525
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    sget-boolean v1, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "TiSound"

    const-string v2, "audio is playing, pause"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 163
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 165
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_2
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while pausing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 177
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->initialize()V

    .line 181
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 183
    sget-boolean v1, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "TiSound"

    const-string v2, "audio is not playing, starting."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    iget v1, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 187
    sget-boolean v1, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v1, :cond_2

    .line 188
    const-string v1, "TiSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play: Volume set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 191
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 193
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_3

    .line 194
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startProgressTimer()V

    .line 197
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_4
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while playing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->reset()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 536
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "volume"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    goto :goto_0
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p2, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 557
    .local v0, "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lti/modules/titanium/media/TiSound;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 559
    .end local v0    # "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 546
    const-string v0, "volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 231
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 232
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 234
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 236
    sget-boolean v1, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "TiSound"

    const-string v2, "Native resources released."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while releasing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 209
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_0

    .line 210
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 213
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 214
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 217
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while resetting : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 3
    .param p1, "loop"    # Z

    .prologue
    .line 249
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    if-eq p1, v1, :cond_1

    .line 250
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 253
    :cond_0
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->looping:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while configuring looping : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTime(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 306
    if-gez p1, :cond_0

    .line 307
    const/4 p1, 0x0

    .line 310
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 312
    .local v0, "duration":I
    if-le p1, v0, :cond_1

    .line 313
    move p1, v0

    .line 317
    :cond_1
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "duration":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    return-void

    .line 318
    .restart local v0    # "duration":I
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "TiSound"

    const-string v3, "Error calling seekTo() in an incorrect state. Ignoring."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 6
    .param p1, "volume"    # F

    .prologue
    const/4 v2, 0x0

    .line 263
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 264
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 265
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume less than 0.0. Volume set to 0.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 274
    iget v0, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 275
    .local v0, "scaledVolume":F
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 280
    .end local v0    # "scaledVolume":F
    :cond_0
    :goto_1
    return-void

    .line 266
    :cond_1
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 267
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 268
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "volume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume greater than 1.0. Volume set to 1.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Issue while setting volume : "

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 271
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput p1, p0, Lti/modules/titanium/media/TiSound;->volume:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 376
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    .line 378
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    :cond_0
    sget-boolean v2, Lti/modules/titanium/media/TiSound;->DBG:Z

    if-eqz v2, :cond_1

    .line 380
    const-string v2, "TiSound"

    const-string v3, "audio is playing, stop()"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 383
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 384
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 385
    iget-boolean v2, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v2, :cond_2

    .line 386
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :cond_2
    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 390
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 405
    :cond_4
    :goto_1
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TiSound"

    const-string v3, "Error while preparing audio after stop(). Ignoring."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 403
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 393
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TiSound"

    const-string v3, "Error while preparing audio after stop(). Ignoring."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
