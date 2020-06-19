.class public Lqz;
.super Ltb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrd;

.field final synthetic b:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Lrd;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lqz;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Lqz;->a:Lrd;

    invoke-direct {p0, p2}, Ltb;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lsw;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lqz;->a:Lrd;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lqz;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Lrg;

    move-result-object v0

    invoke-interface {v0}, Lrg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lqz;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Lrg;

    move-result-object v0

    invoke-interface {v0}, Lrg;->c()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
