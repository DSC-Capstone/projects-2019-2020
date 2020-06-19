.class Lbpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lbpe;


# direct methods
.method constructor <init>(Lbpe;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lbpj;->a:Lbpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lbpj;->a:Lbpe;

    invoke-virtual {v0}, Lbpe;->q()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lbpj;->a:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/ProgressGradientView;->clearAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lbpj;->a:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->setVisibility(I)V

    .line 359
    return-void
.end method
