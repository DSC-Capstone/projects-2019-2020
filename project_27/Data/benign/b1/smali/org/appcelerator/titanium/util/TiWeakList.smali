.class public Lorg/appcelerator/titanium/util/TiWeakList;
.super Ljava/util/ArrayList;
.source "TiWeakList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected synchronizedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isSynchronized"    # Z

    .prologue
    .line 27
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    check-cast p1, Ljava/lang/ref/WeakReference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/ref/WeakReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    .local p1, "o":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 67
    :goto_0
    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->findRef(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->findRef(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected findRef(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 52
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 56
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nonNull()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList$1;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiWeakList$1;-><init>(Lorg/appcelerator/titanium/util/TiWeakList;)V

    return-object v0
.end method

.method public nonNullIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;-><init>(Lorg/appcelerator/titanium/util/TiWeakList;I)V

    return-object v0
.end method

.method public refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z
    .locals 3
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    .local p1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->removeRef(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->removeRef(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeRef(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 87
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 89
    const/4 v2, 0x1

    .line 92
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public synchronizedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList;, "Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    return-object v0
.end method
