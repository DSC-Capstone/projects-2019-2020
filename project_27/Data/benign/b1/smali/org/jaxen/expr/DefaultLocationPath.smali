.class abstract Lorg/jaxen/expr/DefaultLocationPath;
.super Lorg/jaxen/expr/DefaultExpr;
.source "DefaultLocationPath.java"

# interfaces
.implements Lorg/jaxen/expr/LocationPath;


# instance fields
.field private steps:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultExpr;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/expr/DefaultLocationPath;->steps:Ljava/util/List;

    .line 70
    return-void
.end method

.method private isReverseAxis(Lorg/jaxen/expr/Step;)Z
    .locals 2
    .param p1, "step"    # Lorg/jaxen/expr/Step;

    .prologue
    .line 156
    invoke-interface {p1}, Lorg/jaxen/expr/Step;->getAxis()I

    move-result v0

    .line 157
    .local v0, "axis":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStep(Lorg/jaxen/expr/Step;)V
    .locals 1
    .param p1, "step"    # Lorg/jaxen/expr/Step;

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
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
    .line 131
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "nodeSet":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v0, "contextNodeSet":Ljava/util/List;
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v5

    .line 134
    .local v5, "support":Lorg/jaxen/ContextSupport;
    new-instance v3, Lorg/jaxen/Context;

    invoke-direct {v3, v5}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 135
    .local v3, "stepContext":Lorg/jaxen/Context;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 136
    .local v4, "stepIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Step;

    .line 139
    .local v1, "eachStep":Lorg/jaxen/expr/Step;
    invoke-virtual {v3, v0}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 140
    invoke-interface {v1, v3}, Lorg/jaxen/expr/Step;->evaluate(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-direct {p0, v1}, Lorg/jaxen/expr/DefaultLocationPath;->isReverseAxis(Lorg/jaxen/expr/Step;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 147
    .end local v1    # "eachStep":Lorg/jaxen/expr/Step;
    :cond_1
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 148
    new-instance v6, Lorg/jaxen/expr/NodeComparator;

    invoke-virtual {v5}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jaxen/expr/NodeComparator;-><init>(Lorg/jaxen/Navigator;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    :cond_2
    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jaxen/expr/DefaultLocationPath;->steps:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    .local v1, "stepIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaxen/expr/Step;

    invoke-interface {v2}, Lorg/jaxen/expr/Step;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public simplify()Lorg/jaxen/expr/Expr;
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "stepIter":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 86
    .local v0, "eachStep":Lorg/jaxen/expr/Step;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eachStep":Lorg/jaxen/expr/Step;
    check-cast v0, Lorg/jaxen/expr/Step;

    .line 89
    .restart local v0    # "eachStep":Lorg/jaxen/expr/Step;
    invoke-interface {v0}, Lorg/jaxen/expr/Step;->simplify()V

    goto :goto_0

    .line 91
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "stepIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
