.class public Lcom/novioplan/pollennieuws/VideoListActivity;
.super Landroid/app/ListActivity;
.source "VideoListActivity.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field initialHUD:Landroid/app/ProgressDialog;

.field private journalBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field task:Lcom/novioplan/pollennieuws/DownloadVideosTask;

.field private videoBtn:Landroid/widget/Button;

.field private web:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "VideoListActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/VideoListActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/VideoListActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/VideoListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/VideoListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/VideoListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/VideoListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->journalBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/VideoListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->videoBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    new-instance v0, Lcom/novioplan/pollennieuws/DownloadVideosTask;

    invoke-direct {v0}, Lcom/novioplan/pollennieuws/DownloadVideosTask;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->task:Lcom/novioplan/pollennieuws/DownloadVideosTask;

    .line 57
    const-string v0, ""

    const-string v1, "Laden..."

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    .line 58
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    new-instance v0, Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getMovieList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    .line 60
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->listView:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getMovieList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->setVideoList(Ljava/util/List;)V

    .line 64
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/VideoListActivity;->setupViews()V

    .line 65
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 68
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->journalBtn:Landroid/widget/Button;

    .line 69
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->videoBtn:Landroid/widget/Button;

    .line 71
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    .line 72
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 74
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    new-instance v1, Lcom/novioplan/pollennieuws/VideoListActivity$1;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/VideoListActivity$1;-><init>(Lcom/novioplan/pollennieuws/VideoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 101
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->journalBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->journalBtn:Landroid/widget/Button;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->videoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->videoBtn:Landroid/widget/Button;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->journalBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/VideoListActivity$2;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/VideoListActivity$2;-><init>(Lcom/novioplan/pollennieuws/VideoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->videoBtn:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/VideoListActivity$3;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/VideoListActivity$3;-><init>(Lcom/novioplan/pollennieuws/VideoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/VideoListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 52
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/VideoListActivity;->initialize()V

    .line 53
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 139
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 140
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    invoke-virtual {v2, p3}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/data/VideoData;

    .line 141
    .local v1, "video":Lcom/novioplan/pollennieuws/data/VideoData;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/novioplan/pollennieuws/VideoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "URL"

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/VideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x1388

    const/16 v5, 0xfa

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 148
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 151
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->journalIsCurrent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 153
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    const-string v1, "No Network Available"

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 155
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->videosListIsCurrent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->isNetworkReachable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    const-string v1, "No Network Available"

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 170
    .restart local v0    # "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_1
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->adapter:Lcom/novioplan/pollennieuws/data/VideoListAdapter;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {v2}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->getMovieList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/novioplan/pollennieuws/data/VideoListAdapter;->setVideoList(Ljava/util/List;)V

    .line 183
    :cond_1
    return-void

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 160
    iget-object v1, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->web:Landroid/webkit/WebView;

    sget-object v2, Lcom/novioplan/pollennieuws/data/Constants;->JOURNAL_DATA_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/novioplan/pollennieuws/VideoListActivity;->task:Lcom/novioplan/pollennieuws/DownloadVideosTask;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/VideoListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/novioplan/pollennieuws/DownloadVideosTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    goto :goto_1
.end method
