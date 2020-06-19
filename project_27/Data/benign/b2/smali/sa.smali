.class Lsa;
.super Ltb;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field final synthetic b:Lrz;


# direct methods
.method constructor <init>(Lrz;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lsa;->b:Lrz;

    iput-object p3, p0, Lsa;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Ltb;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lsw;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lsa;->b:Lrz;

    iget-object v0, v0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Lsb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsa;->b:Lrz;

    iget-object v0, v0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Lsb;

    move-result-object v0

    invoke-virtual {v0}, Lsb;->c()Lsw;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lsa;->b:Lrz;

    iget-object v0, v0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lsa;->b:Lrz;

    iget-object v0, v0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Landroid/support/v7/widget/ActionMenuPresenter;)Lry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Lsa;->b:Lrz;

    iget-object v0, v0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    .line 621
    const/4 v0, 0x1

    goto :goto_0
.end method
