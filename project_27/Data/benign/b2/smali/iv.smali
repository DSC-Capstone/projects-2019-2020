.class final Liv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Liy;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Liy;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Liv;->a:Liy;

    iput-object p2, p0, Liv;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Liv;->a:Liy;

    iget-object v1, p0, Liv;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Liy;->a(Landroid/view/View;)V

    .line 29
    return-void
.end method
