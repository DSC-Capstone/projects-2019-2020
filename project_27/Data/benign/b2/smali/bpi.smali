.class Lbpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lio/senseai/kelvinsdk/Temperature;

.field final synthetic b:Lbpe;


# direct methods
.method constructor <init>(Lbpe;Lio/senseai/kelvinsdk/Temperature;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lbpi;->b:Lbpe;

    iput-object p2, p0, Lbpi;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lbpi;->b:Lbpe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbpe;->a(Lbpe;Z)Z

    .line 321
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-virtual {v0}, Lbpe;->q()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->e(Lbpe;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 326
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->e(Lbpe;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->f(Lbpe;)V

    .line 328
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->g(Lbpe;)V

    .line 331
    iget-object v0, p0, Lbpi;->a:Lio/senseai/kelvinsdk/Temperature;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->d(Lbpe;)Lio/senseai/kelvin/widget/TemperatureView;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/TemperatureView;->getTemperature()Lio/senseai/kelvinsdk/Temperature;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->d(Lbpe;)Lio/senseai/kelvin/widget/TemperatureView;

    move-result-object v0

    iget-object v1, p0, Lbpi;->a:Lio/senseai/kelvinsdk/Temperature;

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/TemperatureView;->setTemperature(Lio/senseai/kelvinsdk/Temperature;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->h(Lbpe;)Lbpl;

    move-result-object v0

    invoke-interface {v0}, Lbpl;->h()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lbpi;->b:Lbpe;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbpe;->a(Lbpe;Z)Z

    .line 312
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->d(Lbpe;)Lio/senseai/kelvin/widget/TemperatureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/TemperatureView;->setTemperature(Lio/senseai/kelvinsdk/Temperature;)V

    .line 313
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->e(Lbpe;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->e(Lbpe;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 315
    iget-object v0, p0, Lbpi;->b:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/ProgressGradientView;->setVisibility(I)V

    .line 316
    return-void
.end method
