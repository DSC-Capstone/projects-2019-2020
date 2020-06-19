.class public Lts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz;


# instance fields
.field a:Lok;

.field public b:Loo;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1906
    iput-object p1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Ltp;)V
    .locals 0

    .prologue
    .line 1906
    invoke-direct {p0, p1}, Lts;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lok;)V
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lts;->a:Lok;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lts;->b:Loo;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lts;->a:Lok;

    iget-object v1, p0, Lts;->b:Loo;

    invoke-virtual {v0, v1}, Lok;->d(Loo;)Z

    .line 1916
    :cond_0
    iput-object p2, p0, Lts;->a:Lok;

    .line 1917
    return-void
.end method

.method public a(Lok;Z)V
    .locals 0

    .prologue
    .line 1959
    return-void
.end method

.method public a(Lok;Loo;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1968
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 1969
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 1970
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1972
    :cond_0
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Loo;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1973
    iput-object p2, p0, Lts;->b:Loo;

    .line 1974
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 1975
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->i()Ltt;

    move-result-object v0

    .line 1976
    const v1, 0x800003

    iget-object v2, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Ltt;->a:I

    .line 1977
    const/4 v1, 0x2

    iput v1, v0, Ltt;->b:I

    .line 1978
    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1982
    :cond_1
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1983
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1984
    invoke-virtual {p2, v3}, Loo;->e(Z)V

    .line 1986
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Lru;

    if-eqz v0, :cond_2

    .line 1987
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Lru;

    invoke-interface {v0}, Lru;->a()V

    .line 1990
    :cond_2
    return v3
.end method

.method public a(Lpf;)Z
    .locals 1

    .prologue
    .line 1954
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1927
    iget-object v1, p0, Lts;->b:Loo;

    if-eqz v1, :cond_1

    .line 1930
    iget-object v1, p0, Lts;->a:Lok;

    if-eqz v1, :cond_0

    .line 1931
    iget-object v1, p0, Lts;->a:Lok;

    invoke-virtual {v1}, Lok;->size()I

    move-result v2

    move v1, v0

    .line 1932
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1933
    iget-object v3, p0, Lts;->a:Lok;

    invoke-virtual {v3, v1}, Lok;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1934
    iget-object v4, p0, Lts;->b:Loo;

    if-ne v3, v4, :cond_2

    .line 1935
    const/4 v0, 0x1

    .line 1941
    :cond_0
    if-nez v0, :cond_1

    .line 1943
    iget-object v0, p0, Lts;->a:Lok;

    iget-object v1, p0, Lts;->b:Loo;

    invoke-virtual {p0, v0, v1}, Lts;->b(Lok;Loo;)Z

    .line 1946
    :cond_1
    return-void

    .line 1932
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1963
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lok;Loo;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1997
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Lru;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Lru;

    invoke-interface {v0}, Lru;->b()V

    .line 2001
    :cond_0
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2002
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2003
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2005
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 2006
    iput-object v3, p0, Lts;->b:Loo;

    .line 2007
    iget-object v0, p0, Lts;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2008
    invoke-virtual {p2, v2}, Loo;->e(Z)V

    .line 2010
    const/4 v0, 0x1

    return v0
.end method
