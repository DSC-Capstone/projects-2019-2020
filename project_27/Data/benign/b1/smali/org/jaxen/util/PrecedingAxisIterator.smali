.class public Lorg/jaxen/util/PrecedingAxisIterator;
.super Ljava/lang/Object;
.source "PrecedingAxisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private ancestorOrSelf:Ljava/util/Iterator;

.field private childrenOrSelf:Ljava/util/ListIterator;

.field private navigator:Lorg/jaxen/Navigator;

.field private precedingSibling:Ljava/util/Iterator;

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
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lorg/jaxen/util/PrecedingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 110
    invoke-interface {p2, p1}, Lorg/jaxen/Navigator;->getAncestorOrSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    .line 111
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    .line 112
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    iput-object v0, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method private childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 4
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 161
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "reversed":Ljava/util/ArrayList;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-interface {v3, p1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "childAxisIterator":Ljava/util/Iterator;
    if-eqz v0, :cond_0

    .line 166
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "childAxisIterator":Ljava/util/Iterator;
    .end local v2    # "reversed":Ljava/util/ArrayList;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v3, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v3, v1}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v1    # "e":Lorg/jaxen/UnsupportedAxisException;
    .restart local v0    # "childAxisIterator":Ljava/util/Iterator;
    .restart local v2    # "reversed":Ljava/util/ArrayList;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;
    :try_end_1
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    .line 128
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    :goto_1
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    const/4 v3, 0x0

    .line 149
    :goto_2
    return v3

    .line 138
    :cond_0
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "contextNode":Ljava/lang/Object;
    new-instance v3, Lorg/jaxen/util/PrecedingSiblingAxisIterator;

    iget-object v4, p0, Lorg/jaxen/util/PrecedingAxisIterator;->navigator:Lorg/jaxen/Navigator;

    invoke-direct {v3, v0, v4}, Lorg/jaxen/util/PrecedingSiblingAxisIterator;-><init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V

    iput-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    .end local v0    # "contextNode":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v3, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v3, v1}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 141
    .end local v1    # "e":Lorg/jaxen/UnsupportedAxisException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "node":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v3

    iput-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    goto :goto_0

    .line 146
    .end local v2    # "node":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ListIterator;

    iput-object v3, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;
    :try_end_1
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/jaxen/util/PrecedingAxisIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 196
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lorg/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, v0}, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lorg/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    goto :goto_0

    .line 204
    :cond_1
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
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
