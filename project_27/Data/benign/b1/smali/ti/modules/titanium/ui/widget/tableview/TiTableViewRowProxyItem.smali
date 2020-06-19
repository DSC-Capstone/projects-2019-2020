.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewRowProxyItem.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TitaniumTableViewItem"

.field private static final LEFT_MARGIN:I = 0x5

.field private static final RIGHT_MARGIN:I = 0x7

.field private static filteredProperties:[Ljava/lang/String;


# instance fields
.field private content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private height:Lorg/appcelerator/titanium/TiDimension;

.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private leftImage:Landroid/widget/ImageView;

.field private rightImage:Landroid/widget/ImageView;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorSource:Ljava/lang/Object;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    .line 391
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "backgroundImage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "backgroundColor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backgroundSelectedImage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "backgroundSelectedColor"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 55
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->handler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method private filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 396
    if-nez p1, :cond_1

    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 404
    :cond_0
    return-object v0

    .line 398
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 399
    .local v0, "filtered":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 400
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 4
    .param p1, "index"    # I
    .param p2, "titleView"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p3, "newViewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 92
    sget-boolean v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "TitaniumTableViewItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was added an old style row, reusing the title TiUILabel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/LabelProxy;

    invoke-direct {v0}, Lti/modules/titanium/ui/LabelProxy;-><init>()V

    .line 96
    .local v0, "label":Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/LabelProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 97
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 98
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 99
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 101
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method protected applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "i":I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 164
    .local v0, "childProxies":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 165
    .local v2, "childView":Lorg/appcelerator/titanium/view/TiUIView;
    aget-object v1, v0, v3

    .line 166
    .local v1, "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 167
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 168
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 170
    goto :goto_0

    .line 171
    .end local v1    # "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2    # "childView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method

.method protected clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p1, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 154
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .local v0, "arr$":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 155
    .local v1, "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 156
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "childProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method protected getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 417
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .line 418
    .local v2, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 419
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "path":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 429
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 424
    :cond_1
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    .line 426
    .local v0, "color":I
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;

    invoke-direct {v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;-><init>(I)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hasSelector()Z
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 410
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 411
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v2, "backgroundSelectedImage"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "backgroundSelectedColor"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected hasView(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 4
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v2

    .line 288
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 289
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-ne v1, p1, :cond_2

    .line 290
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 354
    move/from16 v2, p2

    .line 355
    .local v2, "contentLeft":I
    move/from16 v3, p4

    .line 356
    .local v3, "contentRight":I
    sub-int p5, p5, p3

    .line 357
    const/16 p3, 0x0

    .line 359
    sub-int v5, p5, p3

    .line 361
    .local v5, "height":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 362
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 363
    .local v9, "w":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 364
    .local v4, "h":I
    const/4 v6, 0x5

    .line 366
    .local v6, "leftMargin":I
    add-int v10, v9, v6

    add-int/2addr v2, v10

    .line 367
    sub-int v10, v5, v4

    div-int/lit8 v7, v10, 0x2

    .line 368
    .local v7, "offset":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    add-int v11, p2, v6

    add-int v12, p3, v7

    add-int v13, p2, v6

    add-int/2addr v13, v9

    add-int v14, p3, v7

    add-int/2addr v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 371
    .end local v4    # "h":I
    .end local v6    # "leftMargin":I
    .end local v7    # "offset":I
    .end local v9    # "w":I
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 372
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 373
    .restart local v9    # "w":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 374
    .restart local v4    # "h":I
    const/4 v8, 0x7

    .line 376
    .local v8, "rightMargin":I
    add-int v10, v9, v8

    sub-int/2addr v3, v10

    .line 377
    sub-int v10, v5, v4

    div-int/lit8 v7, v10, 0x2

    .line 378
    .restart local v7    # "offset":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    sub-int v11, p4, v9

    sub-int/2addr v11, v8

    add-int v12, p3, v7

    sub-int v13, p4, v8

    add-int v14, p3, v7

    add-int/2addr v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 386
    .end local v4    # "h":I
    .end local v7    # "offset":I
    .end local v8    # "rightMargin":I
    .end local v9    # "w":I
    :cond_1
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v10, :cond_2

    .line 387
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v10, v2, v0, v3, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->layout(IIII)V

    .line 389
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 299
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 300
    .local v13, "w":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 301
    .local v14, "wMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 302
    .local v4, "h":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 303
    .local v5, "hMode":I
    const/4 v6, 0x0

    .line 305
    .local v6, "imageHMargin":I
    const/4 v8, 0x0

    .line 306
    .local v8, "leftImageWidth":I
    const/4 v7, 0x0

    .line 307
    .local v7, "leftImageHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 311
    add-int/lit8 v6, v6, 0x5

    .line 314
    :cond_0
    const/4 v11, 0x0

    .line 315
    .local v11, "rightImageWidth":I
    const/4 v10, 0x0

    .line 316
    .local v10, "rightImageHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 320
    add-int/lit8 v6, v6, 0x7

    .line 323
    :cond_1
    sub-int v15, v13, v8

    sub-int/2addr v15, v11

    sub-int v3, v15, v6

    .line 326
    .local v3, "adjustedWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v15, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 328
    if-nez v5, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v15, v15, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v15, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v15}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v12

    .line 330
    .local v12, "table":Lti/modules/titanium/ui/TableViewProxy;
    const/4 v9, -0x1

    .line 331
    .local v9, "minRowHeight":I
    if-eqz v12, :cond_2

    const-string v15, "minRowHeight"

    invoke-virtual {v12, v15}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 332
    const-string v15, "minRowHeight"

    invoke-virtual {v12, v15}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x7

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v9

    .line 335
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    if-nez v15, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v15}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight()I

    move-result v15

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 337
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 341
    :goto_0
    sget-boolean v15, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    if-eqz v15, :cond_3

    .line 342
    const-string v15, "TitaniumTableViewItem"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Row content measure ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 348
    .end local v9    # "minRowHeight":I
    .end local v12    # "table":Lti/modules/titanium/ui/TableViewProxy;
    :cond_4
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setMeasuredDimension(II)V

    .line 349
    return-void

    .line 339
    .restart local v9    # "minRowHeight":I
    .restart local v12    # "table":Lti/modules/titanium/ui/TableViewProxy;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0
.end method

.method protected refreshControls()V
    .locals 9

    .prologue
    .line 108
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    .local v3, "proxies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 111
    .local v2, "len":I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 123
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_9

    .line 124
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_7

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/TiUIView;

    move-object v6, v7

    .line 125
    .local v6, "view":Lorg/appcelerator/titanium/view/TiUIView;
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 126
    .local v4, "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v7

    instance-of v7, v7, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_1

    .line 127
    invoke-virtual {p0, v0, v6, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 130
    :cond_1
    if-nez v6, :cond_2

    .line 133
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    .line 134
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 135
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_8

    .line 136
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    :goto_3
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 143
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v6, v4}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 144
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 145
    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 147
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "i":I
    .end local v4    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v2, :cond_0

    .line 114
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiUIView;

    .line 115
    .restart local v6    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 116
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 117
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 120
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 124
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v0    # "i":I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 138
    .restart local v4    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .restart local v6    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 150
    .end local v4    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v6    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_9
    return-void
.end method

.method protected refreshOldStyleRow()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const/4 v6, 0x0

    .line 175
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 176
    .local v1, "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v4, "touchEnabled"

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    const-string v4, "touchEnabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 181
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    new-instance v5, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v5, v1}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiUILabel;

    .line 184
    .local v2, "t":Lti/modules/titanium/ui/widget/TiUILabel;
    invoke-virtual {v2, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 185
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/TiUILabel;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 186
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 187
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 188
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 189
    .local v0, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v4, v7, v8, v6}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 190
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    const/4 v5, 0x2

    invoke-direct {v4, v7, v8, v5}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 191
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 192
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .end local v0    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-super {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->release()V

    .line 435
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 437
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    goto :goto_0

    .line 439
    .end local v1    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 441
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 443
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 445
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 446
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 447
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 449
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 450
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 451
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 454
    :cond_4
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 11
    .param p1, "rp"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "newSelectorSource":Ljava/lang/Object;
    const-string v6, "backgroundSelectedImage"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 201
    const-string v6, "backgroundSelectedImage"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 205
    .end local v2    # "newSelectorSource":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 206
    :cond_1
    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_2
    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    .line 209
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 210
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->enableCustomSelector()V

    .line 213
    :cond_3
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setBackgroundFromProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 215
    const/4 v0, 0x1

    .line 217
    .local v0, "clearRightImage":Z
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    .line 218
    .local v4, "props":Ljava/util/HashMap;
    const-string v6, "hasCheck"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    const-string v6, "hasCheck"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 220
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_4

    .line 221
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 223
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    const/4 v0, 0x0

    .line 228
    :cond_5
    const-string v6, "hasChild"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 229
    const-string v6, "hasChild"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 230
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_6

    .line 231
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    :cond_6
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const/4 v0, 0x0

    .line 238
    :cond_7
    const-string v6, "rightImage"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 239
    const-string v6, "rightImage"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p1, v8, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8

    .line 243
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const/4 v0, 0x0

    .line 249
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_9

    .line 250
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :cond_9
    const-string v6, "leftImage"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 256
    const-string v6, "leftImage"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .restart local v3    # "path":Ljava/lang/String;
    invoke-virtual {p1, v8, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "url":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    .line 261
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_a
    :goto_1
    const-string v6, "height"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 270
    const-string v6, "height"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 271
    const-string v6, "height"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 275
    :cond_b
    const-string v6, "layout"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 276
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v7, "layout"

    invoke-static {v4, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 279
    :cond_c
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 280
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshControls()V

    .line 284
    :goto_2
    return-void

    .line 202
    .end local v0    # "clearRightImage":Z
    .end local v4    # "props":Ljava/util/HashMap;
    .restart local v2    # "newSelectorSource":Ljava/lang/Object;
    :cond_d
    const-string v6, "backgroundSelectedColor"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    const-string v6, "backgroundSelectedColor"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 265
    .end local v2    # "newSelectorSource":Ljava/lang/Object;
    .restart local v0    # "clearRightImage":Z
    .restart local v4    # "props":Ljava/util/HashMap;
    :cond_e
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 282
    :cond_f
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshOldStyleRow()V

    goto :goto_2
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .param p1, "item"    # Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .prologue
    .line 81
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 83
    .local v0, "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V

    .line 84
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 85
    return-void
.end method
