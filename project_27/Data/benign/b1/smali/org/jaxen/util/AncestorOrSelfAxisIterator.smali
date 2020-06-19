.class public Lorg/jaxen/util/AncestorOrSelfAxisIterator;
.super Ljava/lang/Object;
.source "AncestorOrSelfAxisIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private navigator:Lorg/jaxen/Navigator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaxen/Navigator;)V
    .locals 0
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "navigator"    # Lorg/jaxen/Navigator;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->navigator:Lorg/jaxen/Navigator;

    .line 86
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v1, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    .line 116
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->navigator:Lorg/jaxen/Navigator;

    iget-object v3, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    .line 117
    return-object v1

    .line 119
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Exhausted ancestor-or-self axis"

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/jaxen/UnsupportedAxisException;
    new-instance v2, Lorg/jaxen/JaxenRuntimeException;

    invoke-direct {v2, v0}, Lorg/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
