.class public Lorg/appcelerator/titanium/util/TiAnimationPair;
.super Ljava/lang/Object;
.source "TiAnimationPair.java"


# instance fields
.field in:Landroid/view/animation/Animation;

.field out:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/widget/ViewAnimator;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/ViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 20
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 21
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 25
    return-void
.end method
