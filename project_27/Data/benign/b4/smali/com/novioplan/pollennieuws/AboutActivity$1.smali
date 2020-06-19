.class Lcom/novioplan/pollennieuws/AboutActivity$1;
.super Landroid/webkit/WebViewClient;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/AboutActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/AboutActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-object v8, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-static {v8}, Lcom/novioplan/pollennieuws/AboutActivity;->access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->goForIt()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 74
    .local v5, "request":Landroid/net/Uri;
    const-string v8, "tel"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    const-string v7, "stel:"

    const-string v8, "tel:"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "newUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Lcom/novioplan/pollennieuws/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v4    # "newUrl":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-static {v7}, Lcom/novioplan/pollennieuws/AboutActivity;->access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v7

    invoke-virtual {v7, v6, v6}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->setCheckForPermission(ZZ)V

    .line 114
    .end local v5    # "request":Landroid/net/Uri;
    :goto_1
    return v6

    .line 77
    .restart local v5    # "request":Landroid/net/Uri;
    :cond_0
    const-string v8, "mailto"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v2, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .local v2, "email":Landroid/content/Intent;
    const-string v8, "android.intent.extra.SUBJECT"

    const-string v9, "Opermerkingvanuit de Pollennieuws app"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v8, "femailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "newEmail":Ljava/lang/String;
    const-string v8, "android.intent.extra.EMAIL"

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v6

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v7, "plain/text"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v7, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    const-string v8, "Send your email with:"

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/novioplan/pollennieuws/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    .end local v2    # "email":Landroid/content/Intent;
    .end local v3    # "newEmail":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Lcom/novioplan/pollennieuws/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v5    # "request":Landroid/net/Uri;
    :cond_2
    iget-object v8, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-static {v8}, Lcom/novioplan/pollennieuws/AboutActivity;->access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->doneChecking()Z

    move-result v8

    if-nez v8, :cond_3

    .line 91
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "Are you sure you want to do this?"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v8, "Nee"

    new-instance v9, Lcom/novioplan/pollennieuws/AboutActivity$1$2;

    invoke-direct {v9, p0}, Lcom/novioplan/pollennieuws/AboutActivity$1$2;-><init>(Lcom/novioplan/pollennieuws/AboutActivity$1;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v8, "Ja"

    new-instance v9, Lcom/novioplan/pollennieuws/AboutActivity$1$1;

    invoke-direct {v9, p0, p2}, Lcom/novioplan/pollennieuws/AboutActivity$1$1;-><init>(Lcom/novioplan/pollennieuws/AboutActivity$1;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v6, "Leaving app"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v6, v7

    .line 111
    goto/16 :goto_1

    .line 113
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v8, p0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-static {v8}, Lcom/novioplan/pollennieuws/AboutActivity;->access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v8

    invoke-virtual {v8, v6, v6}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->setCheckForPermission(ZZ)V

    move v6, v7

    .line 114
    goto/16 :goto_1
.end method
