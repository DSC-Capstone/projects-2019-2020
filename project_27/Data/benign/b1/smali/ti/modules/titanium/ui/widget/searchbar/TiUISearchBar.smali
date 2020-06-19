.class public Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
.super Lti/modules/titanium/ui/widget/TiUIText;
.source "TiUISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;
    }
.end annotation


# instance fields
.field protected cancelBtn:Landroid/widget/ImageButton;

.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0xf

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 34
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    .line 39
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    .line 40
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isFocusable()Z

    .line 41
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setId(I)V

    .line 42
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const v4, 0x108002c

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 44
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 45
    .local v2, "scale":F
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 46
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 47
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    new-instance v4, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;

    invoke-direct {v4, p0, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 64
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 66
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v1, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setNativeView(Landroid/view/View;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 88
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 95
    const-string v1, "showCancel"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string v1, "showCancel"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "showCancel":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 101
    .end local v0    # "showCancel":Z
    :cond_0
    :goto_1
    return-void

    .line 97
    .restart local v0    # "showCancel":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 98
    .end local v0    # "showCancel":Z
    :cond_2
    const-string v1, "barColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    const-string v2, "barColor"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 106
    const-string v1, "showCancel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "showCancel":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    .end local v0    # "showCancel":Z
    :goto_1
    return-void

    .line 108
    .restart local v0    # "showCancel":Z
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 109
    .end local v0    # "showCancel":Z
    :cond_1
    const-string v1, "barColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .prologue
    .line 117
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 118
    return-void
.end method
