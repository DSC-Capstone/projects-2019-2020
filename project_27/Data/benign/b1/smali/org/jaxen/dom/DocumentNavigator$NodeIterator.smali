.class abstract Lorg/jaxen/dom/DocumentNavigator$NodeIterator;
.super Ljava/lang/Object;
.source "DocumentNavigator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaxen/dom/DocumentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NodeIterator"
.end annotation


# instance fields
.field private node:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lorg/jaxen/dom/DocumentNavigator;


# direct methods
.method public constructor <init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p2, "contextNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 899
    iput-object p1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->this$0:Lorg/jaxen/dom/DocumentNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    invoke-virtual {p0, p2}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    .line 901
    :goto_0
    iget-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->isXPathNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    goto :goto_0

    .line 904
    :cond_0
    return-void
.end method

.method private isXPathNode(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x1

    .line 964
    if-nez p1, :cond_0

    .line 974
    :goto_0
    return v0

    .line 966
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 972
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 966
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract getFirstNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
.end method

.method protected abstract getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 913
    iget-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 914
    :cond_0
    iget-object v0, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    .line 915
    .local v0, "ret":Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    .line 916
    :goto_0
    iget-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    invoke-direct {p0, v1}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->isXPathNode(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    iget-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->getNextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$NodeIterator;->node:Lorg/w3c/dom/Node;

    goto :goto_0

    .line 919
    :cond_1
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 924
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
