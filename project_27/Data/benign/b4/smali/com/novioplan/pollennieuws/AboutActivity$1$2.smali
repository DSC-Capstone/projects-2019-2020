.class Lcom/novioplan/pollennieuws/AboutActivity$1$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/AboutActivity$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novioplan/pollennieuws/AboutActivity$1;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/AboutActivity$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/novioplan/pollennieuws/AboutActivity$1$2;->this$1:Lcom/novioplan/pollennieuws/AboutActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/novioplan/pollennieuws/AboutActivity$1$2;->this$1:Lcom/novioplan/pollennieuws/AboutActivity$1;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/AboutActivity$1;->this$0:Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/AboutActivity;->access$000(Lcom/novioplan/pollennieuws/AboutActivity;)Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->setCheckForPermission(ZZ)V

    .line 98
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 99
    return-void
.end method
