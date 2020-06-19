.class public Lsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lsc;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Lrv;)V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lsc;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public a(Lok;Z)V
    .locals 2

    .prologue
    .line 736
    instance-of v0, p1, Lpf;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 737
    check-cast v0, Lpf;

    invoke-virtual {v0}, Lpf;->p()Lok;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->a(Z)V

    .line 739
    :cond_0
    iget-object v0, p0, Lsc;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Lpa;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_1

    .line 741
    invoke-interface {v0, p1, p2}, Lpa;->a(Lok;Z)V

    .line 743
    :cond_1
    return-void
.end method

.method public a(Lok;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 727
    if-nez p1, :cond_0

    .line 731
    :goto_0
    return v1

    .line 729
    :cond_0
    iget-object v2, p0, Lsc;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Lpf;

    invoke-virtual {v0}, Lpf;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 730
    iget-object v0, p0, Lsc;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Lpa;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lpa;->a(Lok;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
