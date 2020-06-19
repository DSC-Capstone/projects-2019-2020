.class public Lorg/jaxen/expr/DefaultUnionExpr;
.super Lorg/jaxen/expr/DefaultBinaryExpr;
.source "DefaultUnionExpr.java"

# interfaces
.implements Lorg/jaxen/expr/UnionExpr;


# static fields
.field private static final serialVersionUID:J = 0x69e028e19fa65be3L


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultBinaryExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 78
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 11
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v3, "results":Ljava/util/List;
    :try_start_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultUnionExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 96
    .local v2, "lhsResults":Ljava/util/List;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultUnionExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 98
    .local v5, "rhsResults":Ljava/util/List;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v6, "unique":Ljava/util/Set;
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 105
    .local v4, "rhsIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "each":Ljava/lang/Object;
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1    # "each":Ljava/lang/Object;
    .end local v2    # "lhsResults":Ljava/util/List;
    .end local v4    # "rhsIter":Ljava/util/Iterator;
    .end local v5    # "rhsResults":Ljava/util/List;
    .end local v6    # "unique":Ljava/util/Set;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v7, Lorg/jaxen/XPathSyntaxException;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultUnionExpr;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jaxen/Context;->getPosition()I

    move-result v9

    const-string v10, "Unions are only allowed over node-sets"

    invoke-direct {v7, v8, v9, v10}, Lorg/jaxen/XPathSyntaxException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v7

    .line 116
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "lhsResults":Ljava/util/List;
    .restart local v4    # "rhsIter":Ljava/util/Iterator;
    .restart local v5    # "rhsResults":Ljava/util/List;
    .restart local v6    # "unique":Ljava/util/Set;
    :cond_1
    :try_start_1
    new-instance v7, Lorg/jaxen/expr/NodeComparator;

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jaxen/expr/NodeComparator;-><init>(Lorg/jaxen/Navigator;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    return-object v3
.end method

.method public bridge synthetic getLHS()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "|"

    return-object v0
.end method

.method public bridge synthetic getRHS()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLHS(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "x0"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/jaxen/expr/DefaultBinaryExpr;->setLHS(Lorg/jaxen/expr/Expr;)V

    return-void
.end method

.method public bridge synthetic setRHS(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "x0"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/jaxen/expr/DefaultBinaryExpr;->setRHS(Lorg/jaxen/expr/Expr;)V

    return-void
.end method

.method public bridge synthetic simplify()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultUnionExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultUnionExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultUnionExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
