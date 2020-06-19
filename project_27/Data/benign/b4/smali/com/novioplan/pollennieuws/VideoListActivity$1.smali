.class Lcom/novioplan/pollennieuws/VideoListActivity$1;
.super Landroid/webkit/WebViewClient;
.source "VideoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/VideoListActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/VideoListActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/novioplan/pollennieuws/VideoListActivity$1;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "VideoListActivity"

    const-string v1, "finished loading Journal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$1;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$000(Lcom/novioplan/pollennieuws/VideoListActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastJournalLoad:J

    .line 92
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$1;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$1;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, ".mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "some other supported type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$1;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/VideoListActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
