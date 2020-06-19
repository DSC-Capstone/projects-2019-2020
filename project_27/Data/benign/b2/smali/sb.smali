.class public Lsb;
.super Lox;
.source "SourceFile"


# instance fields
.field final synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lok;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 673
    iput-object p1, p0, Lsb;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 674
    sget v5, Lnb;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lox;-><init>(Landroid/content/Context;Lok;Landroid/view/View;ZI)V

    .line 675
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lsb;->a(I)V

    .line 676
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Lsc;

    invoke-virtual {p0, v0}, Lsb;->a(Lpa;)V

    .line 677
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 681
    invoke-super {p0}, Lox;->onDismiss()V

    .line 682
    iget-object v0, p0, Lsb;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Lok;

    move-result-object v0

    invoke-virtual {v0}, Lok;->close()V

    .line 683
    iget-object v0, p0, Lsb;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Lsb;)Lsb;

    .line 684
    return-void
.end method
