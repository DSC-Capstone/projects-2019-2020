.class public Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISpinnerColumn.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUISpinnerColumn"


# instance fields
.field private suppressItemSelected:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 38
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    .line 39
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->preselectRow()V

    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 41
    return-void
.end method

.method private preselectRow()V
    .locals 4

    .prologue
    .line 45
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    instance-of v3, v3, Lti/modules/titanium/ui/PickerProxy;

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/PickerProxy;->getPreselectedRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 47
    .local v1, "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 58
    .end local v1    # "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v1    # "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/PickerColumnProxy;->getThisColumnIndex()I

    move-result v0

    .line 51
    .local v0, "columnIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 53
    .local v2, "rowIndex":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->selectRow(I)V

    goto :goto_0
.end method

.method private setFontProperties()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 82
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v10, Lkankan/wheel/widget/WheelView;

    .line 83
    .local v10, "view":Lkankan/wheel/widget/WheelView;
    const/4 v3, 0x0

    .line 84
    .local v3, "fontFamily":Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, "fontSize":Ljava/lang/Float;
    const/4 v6, 0x0

    .line 86
    .local v6, "fontWeight":Ljava/lang/String;
    const/4 v8, 0x0

    .line 88
    .local v8, "typeface":Landroid/graphics/Typeface;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 89
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/util/HashMap;

    if-eqz v13, :cond_2

    .line 90
    const-string v13, "font"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 91
    .local v2, "font":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "fontSize"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 92
    const-string v13, "fontSize"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "sFontSize":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    .end local v4    # "fontSize":Ljava/lang/Float;
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v4, v13}, Ljava/lang/Float;-><init>(F)V

    .line 95
    .end local v7    # "sFontSize":Ljava/lang/String;
    .restart local v4    # "fontSize":Ljava/lang/Float;
    :cond_0
    const-string v13, "fontFamily"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 96
    const-string v13, "fontFamily"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_1
    const-string v13, "fontWeight"

    invoke-virtual {v2, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 99
    const-string v13, "fontWeight"

    invoke-static {v2, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .end local v2    # "font":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-string v13, "font-family"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 103
    const-string v13, "font-family"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_3
    const-string v13, "font-size"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 106
    const-string v13, "font-size"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .restart local v7    # "sFontSize":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    .end local v4    # "fontSize":Ljava/lang/Float;
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v4, v13}, Ljava/lang/Float;-><init>(F)V

    .line 109
    .end local v7    # "sFontSize":Ljava/lang/String;
    .restart local v4    # "fontSize":Ljava/lang/Float;
    :cond_4
    const-string v13, "font-weight"

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 110
    const-string v13, "font-weight"

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    :cond_5
    if-eqz v3, :cond_6

    .line 113
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 115
    :cond_6
    const/4 v9, 0x0

    .line 116
    .local v9, "typefaceWeight":Ljava/lang/Integer;
    if-eqz v6, :cond_7

    .line 117
    new-instance v9, Ljava/lang/Integer;

    .end local v9    # "typefaceWeight":Ljava/lang/Integer;
    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v9, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 120
    .restart local v9    # "typefaceWeight":Ljava/lang/Integer;
    :cond_7
    const/4 v1, 0x0

    .line 121
    .local v1, "dirty":Z
    if-eqz v8, :cond_9

    .line 122
    if-nez v1, :cond_8

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    :cond_8
    move v1, v12

    .line 123
    :goto_0
    invoke-virtual {v10, v8}, Lkankan/wheel/widget/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_9
    if-eqz v9, :cond_b

    .line 126
    if-nez v1, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTypefaceWeight()I

    move-result v14

    if-eq v13, v14, :cond_10

    :cond_a
    move v1, v12

    .line 127
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lkankan/wheel/widget/WheelView;->setTypefaceWeight(I)V

    .line 129
    :cond_b
    if-eqz v4, :cond_d

    .line 130
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 131
    .local v5, "fontSizeInt":I
    if-nez v1, :cond_c

    invoke-virtual {v10}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v13

    if-eq v5, v13, :cond_11

    :cond_c
    move v1, v12

    .line 132
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 134
    .end local v5    # "fontSizeInt":I
    :cond_d
    if-eqz v1, :cond_e

    .line 135
    iget-object v11, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v11, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v11}, Lti/modules/titanium/ui/PickerColumnProxy;->parentShouldRequestLayout()V

    .line 137
    :cond_e
    return-void

    :cond_f
    move v1, v11

    .line 122
    goto :goto_0

    :cond_10
    move v1, v11

    .line 126
    goto :goto_1

    .restart local v5    # "fontSizeInt":I
    :cond_11
    move v1, v11

    .line 131
    goto :goto_2
.end method


# virtual methods
.method public forceRequestLayout()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v0, v0, Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->fullLayoutReset()V

    .line 219
    :cond_0
    return-void
.end method

.method public getSelectedRowIndex()I
    .locals 2

    .prologue
    .line 207
    const/4 v0, -0x1

    .line 208
    .local v0, "result":I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v1, v1, Lkankan/wheel/widget/WheelView;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v1, Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v0

    .line 211
    :cond_0
    return v0
.end method

.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 1
    .param p1, "view"    # Lkankan/wheel/widget/WheelView;
    .param p2, "index"    # I

    .prologue
    .line 199
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/PickerColumnProxy;->onItemSelected(I)V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 63
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyStartingWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setFontProperties()V

    .line 66
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    new-instance v1, Ljava/lang/Integer;

    const-string v2, "color"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setTextColor(I)V

    .line 69
    :cond_1
    const-string v0, "visibleItems"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const-string v1, "visibleItems"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    .line 74
    :goto_0
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const-string v1, "selectionIndicator"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setShowSelectionIndicator(Z)V

    .line 77
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    .line 78
    return-void

    .line 72
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 143
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setFontProperties()V

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    new-instance v1, Ljava/lang/Integer;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setTextColor(I)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v0, "visibleItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setShowSelectionIndicator(Z)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public refreshNativeView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, "view":Lkankan/wheel/widget/WheelView;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v6, v6, Lkankan/wheel/widget/WheelView;

    if-eqz v6, :cond_1

    .line 161
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    .end local v5    # "view":Lkankan/wheel/widget/WheelView;
    check-cast v5, Lkankan/wheel/widget/WheelView;

    .line 168
    .restart local v5    # "view":Lkankan/wheel/widget/WheelView;
    :goto_0
    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    .line 169
    .local v4, "selectedRow":I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v6, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v6}, Lti/modules/titanium/ui/PickerColumnProxy;->getRows()[Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v3

    .line 170
    .local v3, "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    if-nez v3, :cond_2

    move v2, v7

    .line 171
    .local v2, "rowCount":I
    :goto_1
    if-lt v4, v2, :cond_0

    .line 172
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 173
    if-lez v2, :cond_3

    .line 174
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 178
    :goto_2
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->suppressItemSelected:Z

    .line 180
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;

    invoke-direct {v0, v3}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;-><init>([Ljava/lang/Object;)V

    .line 181
    .local v0, "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    invoke-virtual {v5, v0}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 182
    return-void

    .line 163
    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
    .end local v2    # "rowCount":I
    .end local v3    # "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    .end local v4    # "selectedRow":I
    :cond_1
    new-instance v5, Lkankan/wheel/widget/WheelView;

    .end local v5    # "view":Lkankan/wheel/widget/WheelView;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v5    # "view":Lkankan/wheel/widget/WheelView;
    new-instance v1, Ljava/lang/Float;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getDefaultFontSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    .line 165
    .local v1, "defaultFontSize":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 166
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->setNativeView(Landroid/view/View;)V

    goto :goto_0

    .line 170
    .end local v1    # "defaultFontSize":Ljava/lang/Float;
    .restart local v3    # "rows":[Lti/modules/titanium/ui/PickerRowProxy;
    .restart local v4    # "selectedRow":I
    :cond_2
    array-length v2, v3

    goto :goto_1

    .line 176
    .restart local v2    # "rowCount":I
    :cond_3
    invoke-virtual {v5, v7}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public selectRow(I)V
    .locals 4
    .param p1, "rowIndex"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    instance-of v1, v1, Lkankan/wheel/widget/WheelView;

    if-eqz v1, :cond_1

    .line 187
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->nativeView:Landroid/view/View;

    check-cast v0, Lkankan/wheel/widget/WheelView;

    .line 188
    .local v0, "view":Lkankan/wheel/widget/WheelView;
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 189
    :cond_0
    const-string v1, "TiUISpinnerColumn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to select out-of-bound row index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "view":Lkankan/wheel/widget/WheelView;
    :cond_1
    :goto_0
    return-void

    .line 192
    .restart local v0    # "view":Lkankan/wheel/widget/WheelView;
    :cond_2
    invoke-virtual {v0, p1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0
.end method
