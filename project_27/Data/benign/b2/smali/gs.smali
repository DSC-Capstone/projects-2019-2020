.class Lgs;
.super Lgr;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Lgr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1215
    invoke-static {p1, p2, p3, p4, p5}, Lhc;->a(Landroid/view/View;IIII)V

    .line 1216
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1219
    invoke-static {p1, p2}, Lhc;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1220
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1223
    invoke-static {p1, p2, p3, p4}, Lhc;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1224
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1211
    invoke-static {p1}, Lhc;->a(Landroid/view/View;)V

    .line 1212
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1227
    invoke-static {p1}, Lhc;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1235
    const/4 p2, 0x2

    .line 1237
    :cond_0
    invoke-static {p1, p2}, Lhc;->a(Landroid/view/View;I)V

    .line 1238
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1264
    invoke-static {p1}, Lhc;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1269
    invoke-static {p1}, Lhc;->d(Landroid/view/View;)V

    .line 1270
    return-void
.end method

.method public m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1274
    invoke-static {p1}, Lhc;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
