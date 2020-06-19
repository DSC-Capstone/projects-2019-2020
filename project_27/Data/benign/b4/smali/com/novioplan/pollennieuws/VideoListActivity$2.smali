.class Lcom/novioplan/pollennieuws/VideoListActivity$2;
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
    .line 115
    iput-object p1, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$100(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$200(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$100(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$100(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$300(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/novioplan/pollennieuws/VideoListActivity$2;->this$0:Lcom/novioplan/pollennieuws/VideoListActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/VideoListActivity;->access$400(Lcom/novioplan/pollennieuws/VideoListActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    return-void
.end method
