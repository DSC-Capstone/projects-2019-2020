.class public Lti/modules/titanium/ui/TableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/TableViewProxy$RowResult;
    }
.end annotation


# static fields
.field public static final CLASSNAME_DEFAULT:Ljava/lang/String; = "__default__"

.field public static final CLASSNAME_HEADER:Ljava/lang/String; = "__header__"

.field public static final CLASSNAME_NORMAL:Ljava/lang/String; = "__normal__"

.field private static final DBG:Z

.field private static final INSERT_ROW_AFTER:I = 0x1

.field private static final INSERT_ROW_BEFORE:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TableViewProxy"

.field private static final MSG_APPEND_ROW:I = 0x1847

.field private static final MSG_DELETE_ROW:I = 0x1845

.field private static final MSG_INSERT_ROW:I = 0x1846

.field private static final MSG_SCROLL_TO_INDEX:I = 0x1843

.field private static final MSG_SCROLL_TO_TOP:I = 0x1848

.field private static final MSG_SET_DATA:I = 0x1844

.field private static final MSG_UPDATE_VIEW:I = 0x1842


# instance fields
.field private localSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TableViewProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 79
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewProxy;-><init>()V

    .line 80
    return-void
.end method

.method private addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 3
    .param p1, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;
    .param p2, "currentSection"    # Lti/modules/titanium/ui/TableViewSectionProxy;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz p2, :cond_0

    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 356
    .restart local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    :goto_0
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const-string v1, "headerTitle"

    const-string v2, "header"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_1
    const-string v1, "footer"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    const-string v1, "footerTitle"

    const-string v2, "footer"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_2
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->add(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 363
    return-object v0

    .line 354
    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method private handleAppendRow(Ljava/lang/Object;)V
    .locals 7
    .param p1, "rows"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 179
    .local v3, "rowList":[Ljava/lang/Object;
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 180
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "rows":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 185
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 186
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 187
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 203
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 204
    return-void

    .line 182
    .end local v5    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local p1    # "rows":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    .end local v3    # "rowList":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .restart local v3    # "rowList":[Ljava/lang/Object;
    goto :goto_0

    .line 189
    .end local p1    # "rows":Ljava/lang/Object;
    .restart local v5    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 190
    aget-object v6, v3, v1

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 192
    .local v4, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 193
    .local v2, "lastSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {p0, v4, v2}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 194
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 195
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4
    const-string v6, "section"

    invoke-virtual {v4, v6, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v6, "parent"

    invoke-virtual {v4, v6, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleDeleteRow(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 224
    .local v0, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v2, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->removeRowAt(I)V

    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 227
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 231
    return-void

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Non-existent row at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleInsertRowAfter(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 314
    .local v1, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 317
    .local v0, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v3, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 318
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 319
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 323
    return-void

    .line 321
    .end local v0    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of range. Non-existent row at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleInsertRowBefore(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 275
    if-gez p1, :cond_0

    .line 276
    const/4 p1, 0x0

    .line 279
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 280
    .local v2, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 282
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v3, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v3, v4, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 291
    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 292
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 293
    return-void

    .line 284
    .restart local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    .end local v2    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    aput-object v4, v0, v3

    .line 289
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleSetData([Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 424
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 426
    :cond_0
    return-void
.end method

.method private locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z
    .locals 10
    .param p1, "index"    # I
    .param p2, "rowResult"    # Lti/modules/titanium/ui/TableViewProxy$RowResult;

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "found":Z
    const/4 v4, 0x0

    .line 479
    .local v4, "rowCount":I
    const/4 v6, 0x0

    .line 481
    .local v6, "sectionIndex":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 482
    .local v5, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRowCount()D

    move-result-wide v8

    double-to-int v7, v8

    .line 483
    .local v7, "sectionRowCount":I
    add-int v8, v7, v4

    if-le v8, p1, :cond_1

    .line 484
    iput-object v5, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 485
    iput v6, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->sectionIndex:I

    .line 486
    invoke-virtual {v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v8

    sub-int v9, p1, v4

    aget-object v8, v8, v9

    iput-object v8, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->row:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 487
    sub-int v8, p1, v4

    iput v8, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 488
    const/4 v1, 0x1

    .line 497
    .end local v5    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v7    # "sectionRowCount":I
    :cond_0
    return v1

    .line 491
    .restart local v5    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local v7    # "sectionRowCount":I
    :cond_1
    add-int/2addr v4, v7

    .line 494
    add-int/lit8 v6, v6, 0x1

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 5
    .param p1, "row"    # Ljava/lang/Object;

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    instance-of v2, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 443
    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 444
    const-string v2, "rowData"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 466
    const-string v2, "TableViewProxy"

    const-string v3, "unable to create table view row proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v1, 0x0

    .line 472
    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :goto_1
    return-object v1

    .line 447
    .restart local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    const/4 v0, 0x0

    .line 448
    .local v0, "rowDict":Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 449
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 455
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 456
    new-instance v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .end local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>()V

    .line 457
    .restart local v1    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 459
    const-string v2, "className"

    const-string v3, "__normal__"

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string v2, "rowData"

    invoke-virtual {v1, v2, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 451
    :cond_3
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 452
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "rowDict":Lorg/appcelerator/kroll/KrollDict;
    move-object v2, p1

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0    # "rowDict":Lorg/appcelerator/kroll/KrollDict;
    goto :goto_2

    .line 471
    .end local v0    # "rowDict":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1
.end method


# virtual methods
.method public appendRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "rows"    # Ljava/lang/Object;
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1847

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    new-instance v0, Lti/modules/titanium/ui/widget/TiUITableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUITableView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public deleteRow(ILorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(I)V

    .line 219
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1845

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 587
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p3, p0, :cond_1

    .line 588
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 589
    .local v7, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 590
    .local v6, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    .end local v6    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 594
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 599
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 600
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p2, :cond_1

    if-ne p3, p0, :cond_1

    .line 601
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 602
    .local v7, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 603
    .local v6, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 601
    .end local v6    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 607
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public getData()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIndexByName(Ljava/lang/String;)I
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v5, -0x1

    .line 237
    .local v5, "index":I
    const/4 v4, 0x0

    .line 238
    .local v4, "idx":I
    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v10, v0, v3

    .line 240
    .local v10, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v9, v1, v2

    .line 241
    .local v9, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "rname":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 243
    move v5, v4

    .line 248
    .end local v8    # "rname":Ljava/lang/String;
    .end local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    const/4 v11, -0x1

    if-le v5, v11, :cond_3

    .line 253
    .end local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return v5

    .line 246
    .restart local v1    # "arr$":[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v2    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "rname":Ljava/lang/String;
    .restart local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v10    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v8    # "rname":Ljava/lang/String;
    .end local v9    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0
.end method

.method public getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 329
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v1
.end method

.method public getSectionsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 335
    .local v0, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .restart local v0    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    iput-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 339
    :cond_0
    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/TiUITableView;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUITableView;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "data":[Ljava/lang/Object;
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 89
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "o":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 90
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 97
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 531
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1842

    if-ne v3, v5, :cond_0

    .line 532
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 533
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 578
    :goto_0
    return v3

    .line 535
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1843

    if-ne v3, v5, :cond_1

    .line 536
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToIndex(I)V

    move v3, v4

    .line 537
    goto :goto_0

    .line 538
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1844

    if-ne v3, v5, :cond_2

    .line 539
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 540
    .local v2, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 541
    .local v0, "data":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 543
    goto :goto_0

    .line 544
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1846

    if-ne v3, v5, :cond_4

    .line 545
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 547
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    .line 548
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 553
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    :goto_2
    move v3, v4

    .line 558
    goto :goto_0

    .line 551
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 559
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1847

    if-ne v3, v5, :cond_5

    .line 560
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 561
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 563
    goto :goto_0

    .line 564
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1845

    if-ne v3, v5, :cond_6

    .line 565
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 567
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_1
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(I)V

    .line 568
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v3, v4

    .line 572
    goto/16 :goto_0

    .line 569
    :catch_1
    move-exception v1

    .line 570
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 573
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1848

    if-ne v3, v5, :cond_7

    .line 574
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToTop(I)V

    move v3, v4

    .line 575
    goto/16 :goto_0

    .line 578
    :cond_7
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public insertRowAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 309
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1846

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public insertRowBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 259
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    .line 270
    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1846

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "asyncResult":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0    # "asyncResult":Ljava/lang/Object;
    throw v0
.end method

.method public processData([Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 368
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 369
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v6, "headerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 374
    .restart local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 375
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v6, "headerTitle"

    const-string v7, "headerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_0
    const-string v6, "footerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    if-nez v1, :cond_1

    .line 380
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 381
    .restart local v1    # "currentSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 382
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1
    const-string v6, "footerTitle"

    const-string v7, "footerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 388
    aget-object v3, p1, v2

    .line 389
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-nez v6, :cond_3

    instance-of v6, v3, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v6, :cond_6

    .line 390
    :cond_3
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 391
    .local v4, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {p0, v4, v1}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 392
    .local v0, "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 393
    :cond_4
    move-object v1, v0

    .line 394
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v0    # "addedToSection":Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v4    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_6
    instance-of v6, v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v6, :cond_5

    move-object v1, v3

    .line 397
    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 398
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 402
    .end local v3    # "o":Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 114
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 116
    .local v1, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->releaseViews()V

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 513
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1843

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 516
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 517
    return-void
.end method

.method public scrollToTop(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 522
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1848

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 525
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 526
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 103
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 105
    .local v1, "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "section":Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public setData([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 407
    move-object v0, p1

    .line 408
    .local v0, "data":[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 409
    aget-object v1, p1, v2

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 411
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1844

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateRow(Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "row"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v2, -0x1

    .line 137
    .local v2, "rowIndex":I
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_2

    .line 138
    new-instance v4, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 139
    .local v4, "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "row":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 140
    invoke-direct {p0, v2, v4}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    .line 141
    iget-object v5, v4, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 155
    .end local v4    # "rr":Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 156
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 157
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v7

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 158
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 160
    :cond_1
    return-void

    .line 142
    .restart local p1    # "row":Ljava/lang/Object;
    :cond_2
    instance-of v7, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v6

    .line 144
    .local v6, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 145
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/ui/TableViewSectionProxy;

    iget-object v3, v7, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 146
    .local v3, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 147
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_3

    .line 148
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    check-cast v5, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 149
    .restart local v5    # "sectionProxy":Lti/modules/titanium/ui/TableViewSectionProxy;
    move v2, v1

    .line 150
    goto :goto_0

    .line 146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1842

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method
