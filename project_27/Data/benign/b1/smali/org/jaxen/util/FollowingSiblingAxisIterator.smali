.class public Lorg/jaxen/util/FollowingSiblingAxisIterator;
.super Ljava/lang/Object;
.source "FollowingSiblingAxisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private navigator:Lorg/jaxen/Navigator;

.field private siblingIter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V
    .locals 0
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "navigator"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 87
    invoke-direct {p0}, Lorg/jaxen/util/FollowingSiblingAxisIterator;->init()V

    .line 88
    return-void
.end method

.method private init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v3, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "parent":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 96
    iget-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v2, v1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    .line 98
    :cond_0
    iget-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "eachChild":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    .end local v0    # "eachChild":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    sget-object v2, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v2, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
