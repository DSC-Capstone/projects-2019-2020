.class public Lti/modules/titanium/ui/widget/tableview/TableViewModel;
.super Ljava/lang/Object;
.source "TableViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    }
.end annotation


# static fields
.field private static final DUMP:Z = false

.field private static final LCAT:Ljava/lang/String; = "TableViewModel"


# instance fields
.field private dirty:Z

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private viewModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 59
    return-void
.end method

.method public static classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;
    .locals 2
    .param p0, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 75
    const-string v1, "className"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string v0, "__default__"

    .line 79
    :cond_0
    return-object v0
.end method

.method private itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .param p1, "index"    # I
    .param p2, "proxy"    # Lti/modules/titanium/ui/TableViewSectionProxy;
    .param p3, "headerText"    # Ljava/lang/String;
    .param p4, "footerText"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 84
    .local v0, "newItem":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const-string v1, "__header__"

    iput-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 85
    if-eqz p3, :cond_1

    .line 86
    iput-object p3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    iput-object p2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 92
    return-object v0

    .line 87
    :cond_1
    if-eqz p4, :cond_0

    .line 88
    iput-object p4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->footerText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getRowCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRowHeight(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "defaultHeight"    # I

    .prologue
    .line 165
    move v2, p2

    .line 167
    .local v2, "rowHeight":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 168
    .local v0, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "rowHeight"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "rh":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 173
    :cond_0
    return v2
.end method

.method public getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v0
.end method

.method public getViewIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 149
    const/4 v2, -0x1

    .line 151
    .local v2, "position":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 153
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 154
    .local v1, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget v3, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    if-ne p1, v3, :cond_1

    .line 155
    move v2, v0

    .line 161
    .end local v0    # "i":I
    .end local v1    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_0
    return v2

    .line 152
    .restart local v0    # "i":I
    .restart local v1    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getViewModel()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-boolean v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    if-eqz v13, :cond_4

    .line 110
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 111
    const/4 v11, 0x0

    .line 112
    .local v11, "sectionIndex":I
    const/4 v6, 0x0

    .line 113
    .local v6, "indexInSection":I
    const/4 v5, 0x0

    .line 114
    .local v5, "index":I
    iget-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v13}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v12

    .line 115
    .local v12, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v12, :cond_4

    .line 116
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 117
    .local v10, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v13, "headerTitle"

    invoke-virtual {v10, v13}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "headerTitle":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 119
    iget-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {p0, v5, v10, v2, v14}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v9, v0, v4

    .line 122
    .local v9, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    new-instance v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    invoke-direct {v7, p0, v5}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 123
    .local v7, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iput v11, v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    .line 124
    iput v6, v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->indexInSection:I

    .line 125
    iput-object v9, v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 126
    invoke-virtual {v9}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v13

    const-string v14, "rowData"

    invoke-virtual {v13, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    .line 127
    invoke-static {v9}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 129
    iget-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    .end local v7    # "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    const-string v13, "footerTitle"

    invoke-virtual {v10, v13}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "footerTitle":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 136
    iget-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {p0, v5, v10, v14, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 140
    const/4 v6, 0x0

    .line 141
    goto :goto_0

    .line 142
    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v1    # "footerTitle":Ljava/lang/String;
    .end local v2    # "headerTitle":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 145
    .end local v5    # "index":I
    .end local v6    # "indexInSection":I
    .end local v11    # "sectionIndex":I
    .end local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_4
    iget-object v13, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    return-object v13
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 71
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 72
    return-void
.end method

.method public setDirty()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 178
    return-void
.end method
