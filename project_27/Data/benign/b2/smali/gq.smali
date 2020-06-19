.class Lgq;
.super Lgp;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0}, Lgp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 993
    invoke-static {p1, p2, p3}, Lha;->a(III)I

    move-result v0

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 969
    invoke-static {}, Lha;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1017
    invoke-static {p1, p2}, Lha;->a(Landroid/view/View;F)V

    .line 1018
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 977
    invoke-static {p1, p2, p3}, Lha;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 978
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lgq;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lgq;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 990
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1113
    invoke-static {p1, p2}, Lha;->a(Landroid/view/View;Z)V

    .line 1114
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1021
    invoke-static {p1, p2}, Lha;->b(Landroid/view/View;F)V

    .line 1022
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1118
    invoke-static {p1, p2}, Lha;->b(Landroid/view/View;Z)V

    .line 1119
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1025
    invoke-static {p1, p2}, Lha;->c(Landroid/view/View;F)V

    .line 1026
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 981
    invoke-static {p1}, Lha;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1053
    invoke-static {p1, p2}, Lha;->d(Landroid/view/View;F)V

    .line 1054
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1005
    invoke-static {p1}, Lha;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1013
    invoke-static {p1}, Lha;->c(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1108
    invoke-static {p1}, Lha;->d(Landroid/view/View;)V

    .line 1109
    return-void
.end method
