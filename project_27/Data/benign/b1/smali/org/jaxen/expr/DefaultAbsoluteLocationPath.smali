.class public Lorg/jaxen/expr/DefaultAbsoluteLocationPath;
.super Lorg/jaxen/expr/DefaultLocationPath;
.source "DefaultAbsoluteLocationPath.java"


# static fields
.field private static final serialVersionUID:J = 0x1e2e92a9dc53f73aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultLocationPath;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic addStep(Lorg/jaxen/expr/Step;)V
    .locals 0
    .param p1, "x0"    # Lorg/jaxen/expr/Step;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lorg/jaxen/expr/DefaultLocationPath;->addStep(Lorg/jaxen/expr/Step;)V

    return-void
.end method

.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 8
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v6

    .line 92
    .local v6, "support":Lorg/jaxen/ContextSupport;
    invoke-virtual {v6}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v5

    .line 93
    .local v5, "nav":Lorg/jaxen/Navigator;
    new-instance v0, Lorg/jaxen/Context;

    invoke-direct {v0, v6}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 94
    .local v0, "absContext":Lorg/jaxen/Context;
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "contextNodes":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 113
    :goto_0
    return-object v7

    .line 101
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "firstNode":Ljava/lang/Object;
    invoke-interface {v5, v3}, Lorg/jaxen/Navigator;->getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "docNode":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 106
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 109
    :cond_1
    new-instance v4, Lorg/jaxen/util/SingletonList;

    invoke-direct {v4, v2}, Lorg/jaxen/util/SingletonList;-><init>(Ljava/lang/Object;)V

    .line 111
    .local v4, "list":Ljava/util/List;
    invoke-virtual {v0, v4}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 113
    invoke-super {p0, v0}, Lorg/jaxen/expr/DefaultLocationPath;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0
.end method

.method public bridge synthetic getSteps()Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic simplify()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultAbsoluteLocationPath): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
