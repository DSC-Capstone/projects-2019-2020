.class Lnq;
.super Lix;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnp;


# direct methods
.method constructor <init>(Lnp;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lnq;->a:Lnp;

    invoke-direct {p0}, Lix;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->a(Lnp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->b(Lnp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->b(Lnp;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lgm;->b(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->c(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Lgm;->b(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->d(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->e(Lnp;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->d(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->c(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->c(Lnp;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Lnq;->a:Lnp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnp;->a(Lnp;Loa;)Loa;

    .line 148
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-virtual {v0}, Lnp;->c()V

    .line 149
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->f(Lnp;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lnq;->a:Lnp;

    invoke-static {v0}, Lnp;->f(Lnp;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Lgm;->l(Landroid/view/View;)V

    .line 152
    :cond_2
    return-void
.end method
