.class public Lrz;
.super Landroid/support/v7/internal/widget/TintImageView;
.source "SourceFile"

# interfaces
.implements Lsf;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    iput-object p1, p0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 588
    const/4 v0, 0x0

    sget v1, Lnb;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 585
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lrz;->b:[F

    .line 590
    invoke-virtual {p0, v2}, Lrz;->setClickable(Z)V

    .line 591
    invoke-virtual {p0, v2}, Lrz;->setFocusable(Z)V

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrz;->setVisibility(I)V

    .line 593
    invoke-virtual {p0, v2}, Lrz;->setEnabled(Z)V

    .line 595
    new-instance v0, Lsa;

    invoke-direct {v0, p0, p0, p1}, Lsa;-><init>(Lrz;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lrz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 628
    invoke-super {p0}, Landroid/support/v7/internal/widget/TintImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return v1

    .line 632
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrz;->playSoundEffect(I)V

    .line 633
    iget-object v0, p0, Lrz;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8

    .prologue
    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/TintImageView;->setFrame(IIII)Z

    move-result v0

    .line 652
    invoke-virtual {p0}, Lrz;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Lrz;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 654
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {p0}, Lrz;->getWidth()I

    move-result v1

    .line 656
    invoke-virtual {p0}, Lrz;->getHeight()I

    move-result v3

    .line 657
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 658
    invoke-virtual {p0}, Lrz;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lrz;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 659
    invoke-virtual {p0}, Lrz;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lrz;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 660
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 661
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 662
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Lbe;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 666
    :cond_0
    return v0
.end method
