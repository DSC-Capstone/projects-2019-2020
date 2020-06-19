.class public Ltt;
.super Lmp;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1829
    invoke-direct {p0, p1, p2}, Lmp;-><init>(II)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1830
    const v0, 0x800013

    iput v0, p0, Ltt;->a:I

    .line 1831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1825
    invoke-direct {p0, p1, p2}, Lmp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1826
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1860
    invoke-direct {p0, p1}, Lmp;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1861
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1853
    invoke-direct {p0, p1}, Lmp;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1856
    invoke-virtual {p0, p1}, Ltt;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1857
    return-void
.end method

.method public constructor <init>(Lmp;)V
    .locals 1

    .prologue
    .line 1849
    invoke-direct {p0, p1}, Lmp;-><init>(Lmp;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1850
    return-void
.end method

.method public constructor <init>(Ltt;)V
    .locals 1

    .prologue
    .line 1843
    invoke-direct {p0, p1}, Lmp;-><init>(Lmp;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    .line 1845
    iget v0, p1, Ltt;->b:I

    iput v0, p0, Ltt;->b:I

    .line 1846
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1864
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Ltt;->leftMargin:I

    .line 1865
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Ltt;->topMargin:I

    .line 1866
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Ltt;->rightMargin:I

    .line 1867
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Ltt;->bottomMargin:I

    .line 1868
    return-void
.end method
