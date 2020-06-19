.class public Lorg/jaxen/BaseXPath;
.super Ljava/lang/Object;
.source "BaseXPath.java"

# interfaces
.implements Lorg/jaxen/XPath;
.implements Ljava/io/Serializable;


# instance fields
.field private final exprText:Ljava/lang/String;

.field private navigator:Lorg/jaxen/Navigator;

.field private support:Lorg/jaxen/ContextSupport;

.field private final xpath:Lorg/jaxen/expr/XPathExpr;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "xpathExpr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    :try_start_0
    invoke-static {}, Lorg/jaxen/saxpath/helpers/XPathReaderFactory;->createReader()Lorg/jaxen/saxpath/XPathReader;

    move-result-object v2

    .line 111
    .local v2, "reader":Lorg/jaxen/saxpath/XPathReader;
    new-instance v1, Lorg/jaxen/JaxenHandler;

    invoke-direct {v1}, Lorg/jaxen/JaxenHandler;-><init>()V

    .line 112
    .local v1, "handler":Lorg/jaxen/JaxenHandler;
    invoke-interface {v2, v1}, Lorg/jaxen/saxpath/XPathReader;->setXPathHandler(Lorg/jaxen/saxpath/XPathHandler;)V

    .line 113
    invoke-interface {v2, p1}, Lorg/jaxen/saxpath/XPathReader;->parse(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lorg/jaxen/JaxenHandler;->getXPathExpr()Lorg/jaxen/expr/XPathExpr;

    move-result-object v3

    iput-object v3, p0, Lorg/jaxen/BaseXPath;->xpath:Lorg/jaxen/expr/XPathExpr;
    :try_end_0
    .catch Lorg/jaxen/saxpath/XPathSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    iput-object p1, p0, Lorg/jaxen/BaseXPath;->exprText:Ljava/lang/String;

    .line 126
    return-void

    .line 116
    .end local v1    # "handler":Lorg/jaxen/JaxenHandler;
    .end local v2    # "reader":Lorg/jaxen/saxpath/XPathReader;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/jaxen/saxpath/XPathSyntaxException;
    new-instance v3, Lorg/jaxen/XPathSyntaxException;

    invoke-direct {v3, v0}, Lorg/jaxen/XPathSyntaxException;-><init>(Lorg/jaxen/saxpath/XPathSyntaxException;)V

    throw v3

    .line 120
    .end local v0    # "e":Lorg/jaxen/saxpath/XPathSyntaxException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Lorg/jaxen/saxpath/SAXPathException;
    new-instance v3, Lorg/jaxen/JaxenException;

    invoke-direct {v3, v0}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V
    .locals 0
    .param p1, "xpathExpr"    # Ljava/lang/String;
    .param p2, "navigator"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p2, p0, Lorg/jaxen/BaseXPath;->navigator:Lorg/jaxen/Navigator;

    .line 141
    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v0

    .line 370
    .local v0, "nsContext":Lorg/jaxen/NamespaceContext;
    instance-of v1, v0, Lorg/jaxen/SimpleNamespaceContext;

    if-eqz v1, :cond_0

    .line 372
    check-cast v0, Lorg/jaxen/SimpleNamespaceContext;

    .end local v0    # "nsContext":Lorg/jaxen/NamespaceContext;
    invoke-virtual {v0, p1, p2}, Lorg/jaxen/SimpleNamespaceContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    .restart local v0    # "nsContext":Lorg/jaxen/NamespaceContext;
    :cond_0
    new-instance v1, Lorg/jaxen/JaxenException;

    const-string v2, "Operation not permitted while using a non-simple namespace context."

    invoke-direct {v1, v2}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public booleanValueOf(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object v0

    .line 310
    .local v0, "context":Lorg/jaxen/Context;
    invoke-virtual {p0, v0}, Lorg/jaxen/BaseXPath;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object v1

    .line 311
    .local v1, "result":Ljava/util/List;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 312
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method protected createFunctionContext()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lorg/jaxen/XPathFunctionContext;->getInstance()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method protected createNamespaceContext()Lorg/jaxen/NamespaceContext;
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    return-object v0
.end method

.method protected createVariableContext()Lorg/jaxen/VariableContext;
    .locals 1

    .prologue
    .line 653
    new-instance v0, Lorg/jaxen/SimpleVariableContext;

    invoke-direct {v0}, Lorg/jaxen/SimpleVariableContext;-><init>()V

    return-object v0
.end method

.method public debug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->xpath:Lorg/jaxen/expr/XPathExpr;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "answer":Ljava/util/List;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 178
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, "first":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 189
    .end local v1    # "first":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected getContext(Ljava/lang/Object;)Lorg/jaxen/Context;
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 569
    instance-of v2, p1, Lorg/jaxen/Context;

    if-eqz v2, :cond_0

    .line 571
    check-cast p1, Lorg/jaxen/Context;

    .line 586
    .end local p1    # "node":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 574
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 576
    .local v0, "fullContext":Lorg/jaxen/Context;
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 578
    check-cast p1, Ljava/util/List;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    :goto_1
    move-object p1, v0

    .line 586
    goto :goto_0

    .line 582
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/jaxen/util/SingletonList;

    invoke-direct {v1, p1}, Lorg/jaxen/util/SingletonList;-><init>(Ljava/lang/Object;)V

    .line 583
    .local v1, "list":Ljava/util/List;
    invoke-virtual {v0, v1}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    goto :goto_1
.end method

.method protected getContextSupport()Lorg/jaxen/ContextSupport;
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->support:Lorg/jaxen/ContextSupport;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lorg/jaxen/ContextSupport;

    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->createNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->createFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->createVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/ContextSupport;-><init>(Lorg/jaxen/NamespaceContext;Lorg/jaxen/FunctionContext;Lorg/jaxen/VariableContext;Lorg/jaxen/Navigator;)V

    iput-object v0, p0, Lorg/jaxen/BaseXPath;->support:Lorg/jaxen/ContextSupport;

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->support:Lorg/jaxen/ContextSupport;

    return-object v0
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaxen/ContextSupport;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaxen/ContextSupport;->getNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNavigator()Lorg/jaxen/Navigator;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->navigator:Lorg/jaxen/Navigator;

    return-object v0
.end method

.method public getRootExpr()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->xpath:Lorg/jaxen/expr/XPathExpr;

    invoke-interface {v0}, Lorg/jaxen/expr/XPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaxen/ContextSupport;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    return-object v0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object v0

    .line 335
    .local v0, "context":Lorg/jaxen/Context;
    invoke-virtual {p0, v0}, Lorg/jaxen/BaseXPath;->selectSingleNodeForContext(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 336
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Lorg/jaxen/Context;
    invoke-virtual {p0, v0}, Lorg/jaxen/BaseXPath;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v1, p0, Lorg/jaxen/BaseXPath;->xpath:Lorg/jaxen/expr/XPathExpr;

    invoke-interface {v1, p1}, Lorg/jaxen/expr/XPathExpr;->asList(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    .line 675
    .local v0, "list":Ljava/util/List;
    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "results":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected selectSingleNodeForContext(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    .line 700
    .local v0, "results":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 705
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .locals 1
    .param p1, "functionContext"    # Lorg/jaxen/FunctionContext;

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 424
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .locals 1
    .param p1, "namespaceContext"    # Lorg/jaxen/NamespaceContext;

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 405
    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 1
    .param p1, "variableContext"    # Lorg/jaxen/VariableContext;

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/jaxen/BaseXPath;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 443
    return-void
.end method

.method public stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object v0

    .line 279
    .local v0, "context":Lorg/jaxen/Context;
    invoke-virtual {p0, v0}, Lorg/jaxen/BaseXPath;->selectSingleNodeForContext(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 283
    const-string v2, ""

    .line 286
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/jaxen/BaseXPath;->exprText:Ljava/lang/String;

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lorg/jaxen/BaseXPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
