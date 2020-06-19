.class Lcom/novioplan/pollennieuws/YearlyViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "YearlyViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/YearlyViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->access$000(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V

    .line 92
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->dialogHUD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->dialogHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->initialHUD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$1;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/YearlyViewActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    :cond_1
    return-void
.end method
