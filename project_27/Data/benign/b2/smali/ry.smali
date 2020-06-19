.class public Lry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Lsb;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Lsb;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lry;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lry;->b:Lsb;

    .line 751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lry;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Lok;

    move-result-object v0

    invoke-virtual {v0}, Lok;->f()V

    .line 755
    iget-object v0, p0, Lry;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g(Landroid/support/v7/widget/ActionMenuPresenter;)Lpb;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lry;->b:Lsb;

    invoke-virtual {v0}, Lsb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lry;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Lry;->b:Lsb;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Lsb;)Lsb;

    .line 759
    :cond_0
    iget-object v0, p0, Lry;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Lry;)Lry;

    .line 760
    return-void
.end method
