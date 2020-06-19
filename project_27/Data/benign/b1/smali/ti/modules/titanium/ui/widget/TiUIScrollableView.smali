.class public Lti/modules/titanium/ui/widget/TiUIScrollableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;,
        Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_LEFT:I = 0xc8

.field private static final PAGE_RIGHT:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TiUIScrollableView"


# instance fields
.field private final mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

.field private final mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private mCurIndex:I

.field private final mPager:Landroid/support/v4/view/ViewPager;

.field private final mPagingControl:Landroid/widget/RelativeLayout;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/ScrollableViewProxy;)V
    .locals 4
    .param p1, "proxy"    # Lti/modules/titanium/ui/ScrollableViewProxy;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    .line 53
    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    .line 56
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    .line 58
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;

    invoke-direct {v1, p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 59
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setNativeView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 35
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method static synthetic access$002(Lti/modules/titanium/ui/widget/TiUIScrollableView;I)I
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return p1
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 35
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 117
    .local v0, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 118
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 119
    return-object v0
.end method

.method private buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x50

    const/4 v5, -0x2

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 126
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 128
    new-instance v1, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v1, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "left":Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v1, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 130
    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 131
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 132
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 133
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v3, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v3, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, "right":Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/TiArrowView;->setLeft(Z)V

    .line 145
    invoke-virtual {v3, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 146
    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 147
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 148
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 149
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    return-object v0
.end method

.method private buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    .prologue
    .line 69
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 101
    return-object v0
.end method

.method private clearViewsList()V
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 291
    .local v1, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_1

    .line 293
    .end local v1    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private move(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 259
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 260
    :cond_0
    const-string v0, "TiUIScrollableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to move to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored, as it is out-of-bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private shouldShowPager()Z
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "showPagingControl"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "showPagingControl":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 213
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hidePager()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public moveNext()V
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 250
    return-void
.end method

.method public movePrevious()V
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 255
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v2, 0x0

    .line 168
    const-string v1, "views"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "views"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 172
    :cond_0
    const-string v1, "currentPage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    const-string v1, "currentPage"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "page":I
    if-lez v0, :cond_2

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 183
    .end local v0    # "page":I
    :goto_0
    const-string v1, "showPagingControl"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "showPagingControl"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 189
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 191
    return-void

    .line 177
    .restart local v0    # "page":I
    :cond_2
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    goto :goto_0

    .line 180
    .end local v0    # "page":I
    :cond_3
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 197
    const-string v1, "currentPage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 209
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "showPagingControl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    .local v0, "show":Z
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    goto :goto_0

    .line 207
    .end local v0    # "show":Z
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 324
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 326
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 325
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 331
    .local v2, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_1

    .line 333
    .end local v2    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 335
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 336
    return-void
.end method

.method public removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 219
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 268
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 269
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    .restart local p1    # "view":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->scrollTo(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 5
    .param p1, "viewsObject"    # Ljava/lang/Object;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "changed":Z
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->clearViewsList()V

    .line 301
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 302
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "viewsObject":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 303
    .local v3, "views":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 304
    aget-object v4, v3, v1

    instance-of v4, v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_0

    .line 305
    aget-object v2, v3, v1

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 306
    .local v2, "tv":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v0, 0x1

    .line 303
    .end local v2    # "tv":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    .end local v3    # "views":[Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_2

    .line 312
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_2
    return-void
.end method

.method public showPager()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->setPagerTimeout()V

    .line 240
    return-void

    :cond_3
    move v1, v3

    .line 230
    goto :goto_0
.end method
