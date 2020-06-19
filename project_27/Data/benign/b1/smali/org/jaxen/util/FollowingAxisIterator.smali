.class public Lorg/jaxen/util/FollowingAxisIterator;
.super Ljava/lang/Object;
.source "FollowingAxisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private currentSibling:Ljava/util/Iterator;

.field private navigator:Lorg/jaxen/Navigator;

.field private siblings:Ljava/util/Iterator;


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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 88
    invoke-interface {p2, p1}, Lorg/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    .line 89
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    .line 90
    return-void
.end method

.method private goForward()Z
    .locals 3

    .prologue
    .line 94
    :cond_0
    iget-object v1, p0, Lorg/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-direct {p0}, Lorg/jaxen/util/FollowingAxisIterator;->goUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "nextSibling":Ljava/lang/Object;
    new-instance v1, Lorg/jaxen/util/DescendantOrSelfAxisIterator;

    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-direct {v1, v0, v2}, Lorg/jaxen/util/DescendantOrSelfAxisIterator;-><init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V

    iput-object v1, p0, Lorg/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    .line 106
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private goUp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v3, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v3, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v3, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v1, p0, Lorg/jaxen/util/FollowingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v2, p0, Lorg/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v1, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v1, v0}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 150
    :cond_0
    iget-object v0, p0, Lorg/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0}, Lorg/jaxen/util/FollowingAxisIterator;->goForward()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/jaxen/util/FollowingAxisIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

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
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
