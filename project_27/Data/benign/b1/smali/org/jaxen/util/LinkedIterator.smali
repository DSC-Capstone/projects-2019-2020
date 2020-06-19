.class public Lorg/jaxen/util/LinkedIterator;
.super Ljava/lang/Object;
.source "LinkedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private cur:I

.field private iterators:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    .line 69
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 1
    .param p1, "i"    # Ljava/util/Iterator;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "has":Z
    iget v1, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    iget-object v2, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v1, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    iget v2, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 84
    if-nez v0, :cond_0

    iget v1, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    iget-object v2, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget v1, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    .line 89
    invoke-virtual {p0}, Lorg/jaxen/util/LinkedIterator;->hasNext()Z

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/jaxen/util/LinkedIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/jaxen/util/LinkedIterator;->iterators:Ljava/util/List;

    iget v1, p0, Lorg/jaxen/util/LinkedIterator;->cur:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
