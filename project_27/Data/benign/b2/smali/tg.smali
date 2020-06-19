.class Ltg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lsw;


# direct methods
.method private constructor <init>(Lsw;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Ltg;->a:Lsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsw;Lsx;)V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Ltg;-><init>(Lsw;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1755
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ltg;->a:Lsw;

    invoke-virtual {v0}, Lsw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltg;->a:Lsw;

    invoke-static {v0}, Lsw;->b(Lsw;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Ltg;->a:Lsw;

    invoke-static {v0}, Lsw;->d(Lsw;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltg;->a:Lsw;

    invoke-static {v1}, Lsw;->c(Lsw;)Lti;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v0, p0, Ltg;->a:Lsw;

    invoke-static {v0}, Lsw;->c(Lsw;)Lti;

    move-result-object v0

    invoke-virtual {v0}, Lti;->run()V

    .line 1763
    :cond_0
    return-void
.end method
