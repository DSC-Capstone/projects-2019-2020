.class Lcom/novioplan/pollennieuws/MessagesActivity$2;
.super Landroid/webkit/WebViewClient;
.source "MessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/MessagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/MessagesActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "MessagesActivity"

    const-string v1, "country view finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$100(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    .line 139
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->dialogHUD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->dialogHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->initialHUD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$2;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->initialHUD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_1
    return-void
.end method
