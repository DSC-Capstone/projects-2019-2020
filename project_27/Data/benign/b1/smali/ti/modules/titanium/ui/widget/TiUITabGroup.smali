.class public Lti/modules/titanium/ui/widget/TiUITabGroup;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITabGroup.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUITabGroup"


# instance fields
.field private currentTabID:I

.field private previousTabID:I

.field private tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUITabGroup;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lti/modules/titanium/ui/TiTabActivity;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Lti/modules/titanium/ui/TiTabActivity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    .line 43
    invoke-virtual {p2}, Lti/modules/titanium/ui/TiTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    .line 47
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 49
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 50
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p2}, Lti/modules/titanium/ui/TiTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 52
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "bgColor":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 59
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUITabGroup;->setNativeView(Landroid/view/View;)V

    .line 60
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#ff1a1a1a"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUITabGroup;

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Lti/modules/titanium/ui/TabProxy;)V
    .locals 4
    .param p1, "tab"    # Landroid/widget/TabHost$TabSpec;
    .param p2, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 69
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 71
    const/4 v1, 0x1

    .line 72
    .local v1, "visibilityPerProxy":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "visible"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "visible"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    :cond_0
    if-eqz v1, :cond_3

    .line 76
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 81
    .end local v1    # "visibilityPerProxy":Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 82
    .local v0, "tabCount":I
    if-lez v0, :cond_2

    .line 83
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lti/modules/titanium/ui/widget/TiUITabGroup$1;

    invoke-direct {v3, p0, v0, p2}, Lti/modules/titanium/ui/widget/TiUITabGroup$1;-><init>(Lti/modules/titanium/ui/widget/TiUITabGroup;ILti/modules/titanium/ui/TabProxy;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_2
    return-void

    .line 78
    .end local v0    # "tabCount":I
    .restart local v1    # "visibilityPerProxy":Z
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeActiveTab(Ljava/lang/Object;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "index":Ljava/lang/Integer;
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 166
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 169
    .local v1, "len":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v1, :cond_1

    .line 171
    const-string v4, "TiUITabGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bounds. Attempt to set active tab to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". There are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tabs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    .line 186
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v1    # "len":I
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v0    # "index":Ljava/lang/Integer;
    .restart local v1    # "len":I
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 176
    .end local v1    # "len":I
    :cond_2
    instance-of v4, p1, Lti/modules/titanium/ui/TabProxy;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 177
    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    .line 178
    .local v2, "tab":Lti/modules/titanium/ui/TabProxy;
    const-string v4, "tag"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "tag":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 180
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v2    # "tab":Lti/modules/titanium/ui/TabProxy;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_3
    const-string v4, "TiUITabGroup"

    const-string v5, "Attempt to set active tab using a non-supported argument. Ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActiveTab()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/TabGroupProxy;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TabGroupProxy;->buildFocusEvent(II)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method public newTab(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TabGroupProxy;

    .line 126
    .local v2, "tabGroupProxy":Lti/modules/titanium/ui/TabGroupProxy;
    const/4 v1, 0x0

    .line 127
    .local v1, "previousTab":Lti/modules/titanium/ui/TabProxy;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    .line 129
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUITabGroup;->DBG:Z

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "TiUITabGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tab change from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-virtual {v2}, Lti/modules/titanium/ui/TabGroupProxy;->getTabList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 134
    .local v0, "currentTab":Lti/modules/titanium/ui/TabProxy;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "activeTab"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 139
    invoke-virtual {v2}, Lti/modules/titanium/ui/TabGroupProxy;->getTabList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousTab":Lti/modules/titanium/ui/TabProxy;
    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 142
    .restart local v1    # "previousTab":Lti/modules/titanium/ui/TabProxy;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_2

    .line 144
    if-eqz v1, :cond_2

    .line 145
    const-string v3, "blur"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, v3, v4}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v3

    const-string v4, "blur"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 150
    :cond_2
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    invoke-virtual {v2, v3, v4}, Lti/modules/titanium/ui/TabGroupProxy;->buildFocusEvent(II)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    .line 152
    const-string v3, "focus"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabChangeEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, v3, v4}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0}, Lti/modules/titanium/ui/TabProxy;->getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v3

    const-string v4, "focus"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 157
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->currentTabID:I

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->previousTabID:I

    .line 159
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 200
    const-string v0, "activeTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public setActiveTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 102
    :cond_0
    return-void
.end method
