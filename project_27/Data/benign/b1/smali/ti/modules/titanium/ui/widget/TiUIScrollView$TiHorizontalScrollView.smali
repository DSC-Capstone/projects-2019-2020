.class Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiHorizontalScrollView"
.end annotation


# instance fields
.field private layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 284
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 285
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->setScrollBarStyle(I)V

    .line 287
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->setFillViewport(Z)V

    .line 288
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->setScrollContainer(Z)V

    .line 290
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-direct {v1, p1, p2, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    .line 291
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-super {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .prologue
    .line 279
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 303
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)I

    move-result v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollView;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->scrollTo(II)V

    .line 312
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$002(Lti/modules/titanium/ui/widget/TiUIScrollView;Z)Z

    .line 315
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setParentHeight(I)V

    .line 333
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setParentWidth(I)V

    .line 334
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 335
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 322
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 323
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "y"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(II)V

    .line 326
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "scroll"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 327
    return-void
.end method
