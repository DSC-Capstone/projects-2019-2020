.class Lcom/novioplan/pollennieuws/InputDialog$8;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/InputDialog;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/InputDialog;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/InputDialog;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/InputDialog;->access$1500(Lcom/novioplan/pollennieuws/InputDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/InputDialog;->access$1600(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$1502(Lcom/novioplan/pollennieuws/InputDialog;Z)Z

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/InputDialog;->access$1600(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/InputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$8;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$1502(Lcom/novioplan/pollennieuws/InputDialog;Z)Z

    goto :goto_0
.end method
