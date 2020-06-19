.class Lcom/novioplan/pollennieuws/MessagesActivity$6;
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
    .line 295
    iput-object p1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$6;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$6;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    const-class v2, Lcom/novioplan/pollennieuws/InputDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$6;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-virtual {v1, v0}, Lcom/novioplan/pollennieuws/MessagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method
