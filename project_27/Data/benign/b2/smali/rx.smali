.class public Lrx;
.super Loe;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lrx;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Loe;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Lrv;)V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lrx;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public a()Lsw;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lrx;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h(Landroid/support/v7/widget/ActionMenuPresenter;)Lrw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h(Landroid/support/v7/widget/ActionMenuPresenter;)Lrw;

    move-result-object v0

    invoke-virtual {v0}, Lrw;->c()Lsw;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
