.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 497
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-boolean v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 499
    .local v1, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Lorg/appcelerator/kroll/KrollDict;

    invoke-static {v2, v1}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    .line 500
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 502
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iput-boolean v6, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 505
    .end local v1    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-boolean v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 508
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 509
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iput-boolean v6, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 527
    :cond_1
    instance-of v2, p1, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_3

    .line 528
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 532
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_3

    .line 533
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v3, "complete"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 536
    :cond_3
    return-void

    .line 512
    :cond_4
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 513
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 517
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 518
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 519
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 520
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 540
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 544
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 547
    :cond_0
    return-void
.end method
