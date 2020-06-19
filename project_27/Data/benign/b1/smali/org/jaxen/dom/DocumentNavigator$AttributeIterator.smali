.class Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;
.super Ljava/lang/Object;
.source "DocumentNavigator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaxen/dom/DocumentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeIterator"
.end annotation


# instance fields
.field private lastAttribute:I

.field private map:Lorg/w3c/dom/NamedNodeMap;

.field private pos:I


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    const/4 v2, -0x1

    iput v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->lastAttribute:I

    .line 1001
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->map:Lorg/w3c/dom/NamedNodeMap;

    .line 1002
    const/4 v2, 0x0

    iput v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->pos:I

    .line 1003
    iget-object v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1004
    iget-object v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1005
    .local v1, "node":Lorg/w3c/dom/Node;
    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    iput v0, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->lastAttribute:I

    .line 1010
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 1003
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1014
    iget v0, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->pos:I

    iget v1, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->lastAttribute:I

    if-gt v0, v1, :cond_0

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
    .line 1019
    iget-object v1, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->map:Lorg/w3c/dom/NamedNodeMap;

    iget v2, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->pos:I

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1020
    .local v0, "attr":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1021
    :cond_0
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    invoke-virtual {p0}, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1026
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    :cond_1
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
