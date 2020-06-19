.class public Lti/modules/titanium/ui/widget/TiUIScrollView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUIScrollView"

.field private static final SHOW_HORIZONTAL_SCROLL_INDICATOR:Ljava/lang/String; = "showHorizontalScrollIndicator"

.field private static final SHOW_VERTICAL_SCROLL_INDICATOR:Ljava/lang/String; = "showVerticalScrollIndicator"

.field public static final TYPE_HORIZONTAL:I = 0x1

.field public static final TYPE_VERTICAL:I


# instance fields
.field private offsetX:I

.field private offsetY:I

.field private setInitialOffset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 41
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    .line 342
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 343
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 344
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return v0
.end method

.method static synthetic access$002(Lti/modules/titanium/ui/widget/TiUIScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return p1
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 31
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 31
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    return v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 501
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 503
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->requestLayout()V

    .line 505
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 509
    :cond_0
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 473
    .local v0, "nativeView":Landroid/view/View;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$300(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 476
    :goto_0
    return-object v1

    .restart local v0    # "nativeView":Landroid/view/View;
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 383
    const/4 v8, 0x0

    .line 384
    .local v8, "showHorizontalScrollBar":Z
    const/4 v9, 0x0

    .line 386
    .local v9, "showVerticalScrollBar":Z
    const-string v13, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 387
    const-string v13, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    .line 389
    :cond_0
    const-string v13, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 390
    const-string v13, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v9

    .line 393
    :cond_1
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 394
    const-string v13, "TiUIScrollView"

    const-string v14, "Both scroll bars cannot be shown. Defaulting to vertical shown"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v8, 0x0

    .line 398
    :cond_2
    const-string v13, "contentOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 399
    const-string v13, "contentOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 400
    .local v6, "offset":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 403
    .end local v6    # "offset":Ljava/lang/Object;
    :cond_3
    const/4 v10, 0x0

    .line 404
    .local v10, "type":I
    const/4 v4, 0x0

    .line 406
    .local v4, "deduced":Z
    const-string v13, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "contentWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 407
    const-string v13, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 408
    .local v12, "width":Ljava/lang/Object;
    const-string v13, "contentWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 409
    .local v3, "contentWidth":Ljava/lang/Object;
    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    if-eqz v9, :cond_5

    .line 410
    :cond_4
    const/4 v10, 0x0

    .line 411
    const/4 v4, 0x1

    .line 415
    .end local v3    # "contentWidth":Ljava/lang/Object;
    .end local v12    # "width":Ljava/lang/Object;
    :cond_5
    const-string v13, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "contentHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 416
    const-string v13, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 417
    .local v5, "height":Ljava/lang/Object;
    const-string v13, "contentHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 418
    .local v2, "contentHeight":Ljava/lang/Object;
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v8, :cond_7

    .line 419
    :cond_6
    const/4 v10, 0x1

    .line 420
    const/4 v4, 0x1

    .line 425
    .end local v2    # "contentHeight":Ljava/lang/Object;
    .end local v5    # "height":Ljava/lang/Object;
    :cond_7
    const-string v13, "scrollType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 426
    const-string v13, "scrollType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 427
    .local v7, "scrollType":Ljava/lang/Object;
    const-string v13, "vertical"

    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 428
    const/4 v10, 0x0

    .line 439
    .end local v7    # "scrollType":Ljava/lang/Object;
    :cond_8
    :goto_0
    const/4 v11, 0x0

    .line 440
    .local v11, "view":Landroid/view/View;
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 441
    .local v1, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v13, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "vertical"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 442
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 446
    :cond_9
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 455
    sget-boolean v13, Lti/modules/titanium/ui/widget/TiUIScrollView;->DBG:Z

    if-eqz v13, :cond_a

    .line 456
    const-string v13, "TiUIScrollView"

    const-string v14, "creating vertical scroll view"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_a
    new-instance v11, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v11    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 460
    .restart local v11    # "view":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setNativeView(Landroid/view/View;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 467
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 468
    return-void

    .line 429
    .end local v1    # "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .end local v11    # "view":Landroid/view/View;
    .restart local v7    # "scrollType":Ljava/lang/Object;
    :cond_b
    const-string v13, "horizontal"

    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 430
    const/4 v10, 0x1

    goto :goto_0

    .line 432
    :cond_c
    const-string v13, "TiUIScrollView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scrollType value \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' is invalid. Only \'vertical\' and \'horizontal\' are supported."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    .end local v7    # "scrollType":Ljava/lang/Object;
    :cond_d
    if-nez v4, :cond_8

    if-nez v10, :cond_8

    .line 435
    const-string v13, "TiUIScrollView"

    const-string v14, "Scroll direction could not be determined based on the provided view properties. Default VERTICAL scroll direction being used. Use the \'scrollType\' property to explicitly set the scrolling direction."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    .restart local v1    # "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .restart local v11    # "view":Landroid/view/View;
    :cond_e
    const-string v13, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "horizontal"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 444
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto/16 :goto_1

    .line 448
    :pswitch_0
    sget-boolean v13, Lti/modules/titanium/ui/widget/TiUIScrollView;->DBG:Z

    if-eqz v13, :cond_f

    .line 449
    const-string v13, "TiUIScrollView"

    const-string v14, "creating horizontal scroll view"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_f
    new-instance v11, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v11    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 452
    .restart local v11    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 370
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->DBG:Z

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "TiUIScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    const-string v0, "contentOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 375
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 377
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 378
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 516
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 518
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 519
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 520
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 525
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 483
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->computeScroll()V

    .line 484
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 489
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 490
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .line 491
    .local v0, "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->fullScroll(I)Z

    .line 496
    .end local v0    # "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 493
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .line 494
    .local v0, "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method public setContentOffset(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 348
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 349
    .local v0, "offset":Lorg/appcelerator/kroll/KrollDict;
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 350
    iput p2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 351
    const-string v1, "x"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "y"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "contentOffset"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public setContentOffset(Ljava/lang/Object;)V
    .locals 3
    .param p1, "hashMap"    # Ljava/lang/Object;

    .prologue
    .line 358
    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 359
    check-cast v0, Ljava/util/HashMap;

    .line 360
    .local v0, "contentOffset":Ljava/util/HashMap;
    const-string v1, "x"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 361
    const-string v1, "y"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 365
    .end local v0    # "contentOffset":Ljava/util/HashMap;
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v1, "TiUIScrollView"

    const-string v2, "contentOffset must be an instance of HashMap"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
