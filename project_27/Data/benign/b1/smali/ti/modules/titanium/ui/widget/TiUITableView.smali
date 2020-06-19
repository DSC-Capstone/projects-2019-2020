.class public Lti/modules/titanium/ui/widget/TiUITableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TitaniumTableView"


# instance fields
.field protected tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUITableView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 43
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 44
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    return-object v0
.end method

.method public onClick(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    return-void
.end method

.method public onLongClick(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 2
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "longclick"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/16 v13, 0x66

    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 97
    new-instance v8, Lti/modules/titanium/ui/widget/tableview/TiTableView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v7, Lti/modules/titanium/ui/TableViewProxy;

    invoke-direct {v8, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v8, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 98
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_0

    .line 100
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 103
    :cond_0
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 104
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V

    .line 106
    const-string v7, "search"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 109
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 111
    const-string v7, "search"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 112
    .local v6, "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    .line 113
    .local v5, "searchBar":Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v5, v7}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    .line 114
    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getNativeView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setId(I)V

    .line 116
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v3, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    const-string v7, "height"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const-string v7, "height"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    .line 129
    .local v4, "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    :goto_0
    invoke-virtual {v4, v2}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getNativeView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .restart local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    const/4 v7, 0x3

    invoke-virtual {v3, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    .line 146
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v5    # "searchBar":Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .end local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_1
    const-string v7, "filterAttribute"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 147
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v8, "filterAttribute"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    .line 154
    :goto_2
    const/4 v1, 0x1

    .line 155
    .local v1, "filterCaseInsensitive":Z
    const-string v7, "filterCaseInsensitive"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 156
    const-string v7, "filterCaseInsensitive"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    .line 158
    :cond_1
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterCaseInsensitive(Z)V

    .line 159
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 160
    return-void

    .line 127
    .end local v1    # "filterCaseInsensitive":Z
    .restart local v2    # "layout":Landroid/widget/RelativeLayout;
    .restart local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "searchBar":Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .restart local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    const-string v7, "52dp"

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    .restart local v4    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    goto :goto_0

    .line 143
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v5    # "searchBar":Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .end local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_3
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "filterAttribute"

    const-string v9, "title"

    invoke-virtual {v7, v8, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 151
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 191
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUITableView;->DBG:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "TitaniumTableView"

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

    .line 194
    :cond_0
    const-string v0, "separatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->release()V

    .line 179
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 181
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 184
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    .line 185
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 186
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 77
    return-void
.end method

.method public scrollToTop(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 82
    return-void
.end method

.method public setModelDirty()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->setDirty()V

    .line 62
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 72
    return-void
.end method
