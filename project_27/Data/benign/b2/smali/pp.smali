.class public Lpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    .line 126
    iget-object v0, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lig;->b(F)Lig;

    move-result-object v1

    iget-object v2, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Liw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lig;->a(Liw;)Lig;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Lig;)Lig;

    .line 128
    iget-object v0, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Lgm;->j(Landroid/view/View;)Lig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lig;->b(F)Lig;

    move-result-object v1

    iget-object v2, p0, Lpp;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Liw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lig;->a(Liw;)Lig;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Lig;)Lig;

    .line 132
    :cond_0
    return-void
.end method
