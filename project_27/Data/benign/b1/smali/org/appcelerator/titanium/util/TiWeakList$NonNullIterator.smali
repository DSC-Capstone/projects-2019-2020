.class public Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;
.super Ljava/lang/Object;
.source "TiWeakList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiWeakList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NonNullIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected index:I

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiWeakList;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiWeakList;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 112
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 114
    return-void
.end method


# virtual methods
.method protected getNextIndex()I
    .locals 4

    .prologue
    .line 118
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v2

    .line 119
    .local v2, "size":I
    iget v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 120
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 121
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    .end local v0    # "i":I
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :goto_1
    return v0

    .line 119
    .restart local v0    # "i":I
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v2

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v3

    if-ltz v3, :cond_1

    :goto_0
    monitor-exit v2

    .line 135
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v2, v1, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v0

    .line 144
    .local v0, "nextIndex":I
    if-gez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 147
    .end local v0    # "nextIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    .restart local v0    # "nextIndex":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :try_start_1
    iput v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 146
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    return-object v1

    .line 149
    .end local v0    # "nextIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v0

    .line 150
    .restart local v0    # "nextIndex":I
    if-gez v0, :cond_2

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 151
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 152
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 158
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    .line 161
    monitor-exit v1

    .line 165
    :goto_0
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
