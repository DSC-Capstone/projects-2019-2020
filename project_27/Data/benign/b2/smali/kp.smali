.class Lkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lkm;


# direct methods
.method private constructor <init>(Lkm;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lkp;->a:Lkm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkm;Lkn;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lkp;-><init>(Lkm;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0}, Lkm;->a(Lkm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0}, Lkm;->b(Lkm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0, v2}, Lkm;->a(Lkm;Z)Z

    .line 693
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0}, Lkm;->c(Lkm;)Lko;

    move-result-object v0

    invoke-virtual {v0}, Lko;->a()V

    .line 696
    :cond_1
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0}, Lkm;->c(Lkm;)Lko;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lko;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lkp;->a:Lkm;

    invoke-static {v1}, Lkm;->d(Lkm;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 698
    :cond_2
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0, v2}, Lkm;->b(Lkm;Z)Z

    goto :goto_0

    .line 702
    :cond_3
    iget-object v1, p0, Lkp;->a:Lkm;

    invoke-static {v1}, Lkm;->e(Lkm;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Lkp;->a:Lkm;

    invoke-static {v1, v2}, Lkm;->c(Lkm;Z)Z

    .line 704
    iget-object v1, p0, Lkp;->a:Lkm;

    invoke-static {v1}, Lkm;->f(Lkm;)V

    .line 707
    :cond_4
    invoke-virtual {v0}, Lko;->d()V

    .line 709
    invoke-virtual {v0}, Lko;->g()I

    move-result v1

    .line 710
    invoke-virtual {v0}, Lko;->h()I

    move-result v0

    .line 711
    iget-object v2, p0, Lkp;->a:Lkm;

    invoke-virtual {v2, v1, v0}, Lkm;->a(II)V

    .line 714
    iget-object v0, p0, Lkp;->a:Lkm;

    invoke-static {v0}, Lkm;->g(Lkm;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lgm;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
