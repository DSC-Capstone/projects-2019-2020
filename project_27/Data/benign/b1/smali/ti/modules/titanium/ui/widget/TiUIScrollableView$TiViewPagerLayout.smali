.class public Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiViewPagerLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 412
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .line 413
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusable(Z)V

    .line 415
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusableInTouchMode(Z)V

    .line 416
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setDescendantFocusability(I)V

    .line 417
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 436
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 437
    const/4 v0, 0x1

    .line 438
    goto :goto_0

    .line 441
    :pswitch_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->moveNext()V

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 434
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 423
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 426
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
