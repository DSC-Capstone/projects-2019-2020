.class public Lorg/jaxen/util/DescendantAxisIterator;
.super Ljava/lang/Object;
.source "DescendantAxisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private children:Ljava/util/Iterator;

.field private navigator:Lorg/jaxen/Navigator;

.field private stack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "navigator"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p2, p1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jaxen/util/DescendantAxisIterator;-><init>(Lorg/jaxen/Navigator;Ljava/util/Iterator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/jaxen/Navigator;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "navigator"    # Lorg/jaxen/Navigator;
    .param p2, "iterator"    # Ljava/util/Iterator;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/util/DescendantAxisIterator;->stack:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lorg/jaxen/util/DescendantAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 90
    iput-object p2, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    .line 91
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 101
    :goto_0
    iget-object v0, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/jaxen/util/DescendantAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :goto_1
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/jaxen/util/DescendantAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jaxen/util/DescendantAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lorg/jaxen/util/DescendantAxisIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "node":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jaxen/util/DescendantAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, p0, Lorg/jaxen/util/DescendantAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v2, v1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/jaxen/util/DescendantAxisIterator;->children:Ljava/util/Iterator;

    .line 130
    return-object v1

    .line 132
    .end local v1    # "node":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v2, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v2, v0}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
