.class Lti/modules/titanium/ui/widget/TiUIScrollableView$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 77
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v0

    .line 78
    .local v0, "oldIndex":I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$002(Lti/modules/titanium/ui/widget/TiUIScrollableView;I)I

    .line 79
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 80
    if-ltz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireFocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireUnfocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 88
    if-ltz v0, :cond_1

    .line 93
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScroll(I)V

    .line 96
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 99
    :cond_2
    return-void
.end method
