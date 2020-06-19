.class public Lti/modules/titanium/ui/widget/picker/TiUINativePicker;
.super Lti/modules/titanium/ui/widget/picker/TiUIPicker;
.source "TiUINativePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUINativePicker"


# instance fields
.field private firstSelectedFired:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 38
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "spinner":Landroid/widget/Spinner;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->setNativeView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 41
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->preselectRows()V

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 43
    return-void
.end method

.method private preselectRows()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getPickerProxy()Lti/modules/titanium/ui/PickerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/PickerProxy;->getPreselectedRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 48
    .local v1, "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v3, Landroid/widget/Spinner;

    .line 52
    .local v3, "spinner":Landroid/widget/Spinner;
    if-eqz v3, :cond_0

    .line 54
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 57
    .local v2, "rowIndex":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 55
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->selectRow(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 63
    .end local v0    # "i":I
    .end local v2    # "rowIndex":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    throw v4

    .line 63
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 163
    return-void
.end method

.method protected fireSelectionChange(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->fireSelectionChange(II)V

    .line 200
    return-void
.end method

.method public getSelectedRowIndex(I)I
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "TiUINativePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to get selected row from out-of-bounds columnIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public onColumnAdded(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 172
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 175
    :cond_0
    return-void
.end method

.method public onColumnModelChanged(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 186
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 189
    :cond_0
    return-void
.end method

.method public onColumnRemoved(I)V
    .locals 1
    .param p1, "oldColumnIndex"    # I

    .prologue
    .line 179
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 182
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->fireSelectionChange(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRowChanged(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 193
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 196
    :cond_0
    return-void
.end method

.method protected refreshNativeView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 99
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 100
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v5, Landroid/widget/Spinner;

    .line 101
    .local v5, "spinner":Landroid/widget/Spinner;
    if-nez v5, :cond_0

    .line 140
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 106
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getSelectedRowIndex(I)I

    move-result v2

    .line 107
    .local v2, "rememberSelectedRow":I
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1090008

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getPickerProxy()Lti/modules/titanium/ui/PickerProxy;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    .local v1, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v1, :cond_1

    .line 137
    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 138
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lti/modules/titanium/ui/PickerColumnProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 115
    .local v3, "rowArray":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v3, :cond_2

    array-length v7, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_3

    .line 137
    :cond_2
    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 138
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 118
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v4, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1090008

    invoke-direct {v0, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 128
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    if-ltz v2, :cond_4

    .line 131
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v2, v8}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->selectRow(IIZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_4
    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 138
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 134
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    .end local v1    # "column":Lti/modules/titanium/ui/PickerColumnProxy;
    .end local v2    # "rememberSelectedRow":I
    .end local v3    # "rowArray":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    :catch_0
    move-exception v6

    .line 135
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "TiUINativePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to refresh native spinner control: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 138
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 137
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 138
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    throw v7
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 168
    return-void
.end method

.method public selectRow(IIZ)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v2, "TiUINativePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only one column is supported. Ignoring request to set selected row of column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    .line 77
    .local v1, "view":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 78
    .local v0, "rowCount":I
    if-ltz p2, :cond_1

    if-lt p2, v0, :cond_2

    .line 79
    :cond_1
    const-string v2, "TiUINativePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring request to select out-of-bounds row index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0
.end method
