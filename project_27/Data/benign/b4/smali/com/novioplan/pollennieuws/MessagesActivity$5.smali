.class Lcom/novioplan/pollennieuws/MessagesActivity$5;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/MessagesActivity;->setupViews()V
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
    .line 281
    iput-object p1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$200(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$300(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$400(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$500(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$600(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$700(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$5;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$800(Lcom/novioplan/pollennieuws/MessagesActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 292
    return-void
.end method
