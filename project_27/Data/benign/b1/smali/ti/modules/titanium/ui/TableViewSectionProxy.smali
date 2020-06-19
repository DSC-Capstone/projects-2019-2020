.class public Lti/modules/titanium/ui/TableViewSectionProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewSectionProxy.java"


# instance fields
.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewRowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 31
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 70
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowCount()D
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getRows()[Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 116
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 118
    .local v1, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->releaseViews()V

    goto :goto_0

    .line 121
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public remove(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 80
    :cond_0
    return-void
.end method

.method public removeRowAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public rowAtIndex(I)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 87
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lti/modules/titanium/ui/TableViewRowProxy;
    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 90
    .restart local v0    # "result":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 43
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 45
    .local v1, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 48
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "[object TableViewSectionProxy]"

    return-object v0
.end method

.method public updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
