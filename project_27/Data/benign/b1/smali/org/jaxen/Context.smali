.class public Lorg/jaxen/Context;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x20240388da254e0fL


# instance fields
.field private contextSupport:Lorg/jaxen/ContextSupport;

.field private nodeSet:Ljava/util/List;

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>(Lorg/jaxen/ContextSupport;)V
    .locals 2
    .param p1, "contextSupport"    # Lorg/jaxen/ContextSupport;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/jaxen/Context;->contextSupport:Lorg/jaxen/ContextSupport;

    .line 100
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/jaxen/Context;->nodeSet:Ljava/util/List;

    .line 101
    iput v1, p0, Lorg/jaxen/Context;->size:I

    .line 102
    iput v1, p0, Lorg/jaxen/Context;->position:I

    .line 103
    return-void
.end method


# virtual methods
.method public duplicate()Lorg/jaxen/Context;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 273
    .local v0, "dupe":Lorg/jaxen/Context;
    invoke-virtual {p0}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, "thisNodeSet":Ljava/util/List;
    if-eqz v2, :cond_0

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v1, "dupeNodeSet":Ljava/util/List;
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {v0, v1}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 280
    iget v3, p0, Lorg/jaxen/Context;->position:I

    invoke-virtual {v0, v3}, Lorg/jaxen/Context;->setPosition(I)V

    .line 283
    .end local v1    # "dupeNodeSet":Ljava/util/List;
    :cond_0
    return-object v0
.end method

.method public getContextSupport()Lorg/jaxen/ContextSupport;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jaxen/Context;->contextSupport:Lorg/jaxen/ContextSupport;

    return-object v0
.end method

.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/jaxen/ContextSupport;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;

    move-result-object v0

    return-object v0
.end method

.method public getNavigator()Lorg/jaxen/Navigator;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSet()Ljava/util/List;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jaxen/Context;->nodeSet:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lorg/jaxen/Context;->position:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/jaxen/Context;->size:I

    return v0
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/jaxen/ContextSupport;->getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setContextSupport(Lorg/jaxen/ContextSupport;)V
    .locals 0
    .param p1, "contextSupport"    # Lorg/jaxen/ContextSupport;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/jaxen/Context;->contextSupport:Lorg/jaxen/ContextSupport;

    .line 150
    return-void
.end method

.method public setNodeSet(Ljava/util/List;)V
    .locals 2
    .param p1, "nodeSet"    # Ljava/util/List;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jaxen/Context;->nodeSet:Ljava/util/List;

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/jaxen/Context;->size:I

    .line 129
    iget v0, p0, Lorg/jaxen/Context;->position:I

    iget v1, p0, Lorg/jaxen/Context;->size:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/jaxen/Context;->position:I

    .line 130
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 249
    iput p1, p0, Lorg/jaxen/Context;->position:I

    .line 250
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 231
    iput p1, p0, Lorg/jaxen/Context;->size:I

    .line 232
    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
