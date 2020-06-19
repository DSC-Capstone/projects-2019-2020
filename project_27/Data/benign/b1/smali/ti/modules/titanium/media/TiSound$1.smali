.class Lti/modules/titanium/media/TiSound$1;
.super Ljava/util/TimerTask;
.source "TiSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiSound;->startProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiSound;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiSound;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v2, v2, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v2, v2, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v2, v2, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 482
    .local v1, "position":I
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 483
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "progress"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v2, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v2, v2, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "progress"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 486
    .end local v0    # "event":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "position":I
    :cond_0
    return-void
.end method
