.class public abstract Lti/modules/titanium/ui/widget/picker/TiUIPicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIPicker.java"


# instance fields
.field public batchModelChange:Z

.field protected suppressChangeEvent:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 18
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->suppressChangeEvent:Z

    .line 19
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected getPickerProxy()Lti/modules/titanium/ui/PickerProxy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    return-object v0
.end method

.method public abstract getSelectedRowIndex(I)I
.end method

.method public onColumnAdded(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onColumnModelChanged(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onColumnRemoved(I)V
    .locals 0
    .param p1, "oldColumnIndex"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onModelReplaced()V
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->refreshNativeView()V

    .line 36
    :cond_0
    return-void
.end method

.method public onRowChanged(II)V
    .locals 0
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 45
    return-void
.end method

.method protected abstract refreshNativeView()V
.end method

.method public abstract selectRow(IIZ)V
.end method

.method public selectRows(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "selectionIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    .local v0, "colnum":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    .local v1, "rownum":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->selectRow(IIZ)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
