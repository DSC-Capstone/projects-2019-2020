.class public Lorg/jaxen/function/ext/EvaluateFunction;
.super Ljava/lang/Object;
.source "EvaluateFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lorg/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Lorg/jaxen/Context;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "contextNodes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 84
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 100
    :goto_0
    return-object v6

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v2

    .line 89
    .local v2, "nav":Lorg/jaxen/Navigator;
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 90
    check-cast v5, Ljava/lang/String;

    .line 95
    .local v5, "xpathString":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v2, v5}, Lorg/jaxen/Navigator;->parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v4

    .line 96
    .local v4, "xpath":Lorg/jaxen/XPath;
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v3

    .line 97
    .local v3, "support":Lorg/jaxen/ContextSupport;
    invoke-virtual {v3}, Lorg/jaxen/ContextSupport;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 98
    invoke-virtual {v3}, Lorg/jaxen/ContextSupport;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 99
    invoke-virtual {v3}, Lorg/jaxen/ContextSupport;->getNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 100
    invoke-virtual {p0}, Lorg/jaxen/Context;->duplicate()Lorg/jaxen/Context;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 92
    .end local v3    # "support":Lorg/jaxen/ContextSupport;
    .end local v4    # "xpath":Lorg/jaxen/XPath;
    .end local v5    # "xpathString":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "xpathString":Ljava/lang/String;
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lorg/jaxen/saxpath/SAXPathException;
    new-instance v6, Lorg/jaxen/FunctionCallException;

    invoke-virtual {v1}, Lorg/jaxen/saxpath/SAXPathException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jaxen/function/ext/EvaluateFunction;->evaluate(Lorg/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "evaluate() requires one argument"

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
