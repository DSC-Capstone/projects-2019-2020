.class Lcom/novioplan/pollennieuws/VideoListActivity$3;
.super Ljava/lang/Object;
.source "VideoListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/novioplan/pollennieuws/VideoListActivity$3;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$3;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$100(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$3;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$200(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$3;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$300(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$3;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$400(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    return-void
.end method
