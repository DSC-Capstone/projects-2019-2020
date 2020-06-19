.class public Lcom/novioplan/pollennieuws/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private aboutView:Landroid/webkit/WebView;

.field private app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field private urlToLoad:Ljava/lang/String;

.field public webClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "AboutActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/AboutActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->urlToLoad:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/novioplan/pollennieuws/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/novioplan/pollennieuws/AboutActivity$1;-><init>(Lcom/novioplan/pollennieuws/AboutActivity;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->webClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/AboutActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    return-object v0
.end method

.method private setupWebView()V
    .locals 2

    .prologue
    .line 48
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->aboutView:Landroid/webkit/WebView;

    .line 49
    sget-object v0, Lcom/novioplan/pollennieuws/AboutActivity;->tag:Ljava/lang/String;

    const-string v1, "loading web view"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->aboutView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/AboutActivity;->urlToLoad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->aboutView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->aboutView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 54
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->aboutView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/AboutActivity;->webClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/AboutActivity;->requestWindowFeature(I)Z

    .line 37
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/AboutActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->URL_TO_LOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->URL_TO_LOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->urlToLoad:Ljava/lang/String;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/novioplan/pollennieuws/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 43
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/AboutActivity;->setupWebView()V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
