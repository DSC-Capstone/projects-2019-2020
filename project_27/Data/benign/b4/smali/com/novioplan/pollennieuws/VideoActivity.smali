.class public Lcom/novioplan/pollennieuws/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private controller:Landroid/widget/MediaController;

.field private video:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "VideoActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/VideoActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 28
    sget-object v2, Lcom/novioplan/pollennieuws/VideoActivity;->tag:Ljava/lang/String;

    const-string v3, "No URL available for video playback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 34
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->controller:Landroid/widget/MediaController;

    .line 35
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/VideoActivity;->controller:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 36
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 38
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/VideoActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    sget-object v2, Lcom/novioplan/pollennieuws/VideoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/VideoActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 58
    return-void
.end method
