.class abstract Lorg/jaxen/expr/DefaultEqualityExpr;
.super Lorg/jaxen/expr/DefaultTruthExpr;
.source "DefaultEqualityExpr.java"

# interfaces
.implements Lorg/jaxen/expr/EqualityExpr;


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultTruthExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 66
    return-void
.end method

.method private evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lorg/jaxen/Navigator;)Z
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/jaxen/expr/DefaultEqualityExpr;->eitherIsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1, p3}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jaxen/expr/DefaultEqualityExpr;->eitherIsNumber(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {p1, p3}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {p1, p3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private evaluateSetSet(Ljava/util/List;Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "lhsSet"    # Ljava/util/List;
    .param p2, "rhsSet"    # Ljava/util/List;
    .param p3, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultEqualityExpr;->setIsEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p2}, Lorg/jaxen/expr/DefaultEqualityExpr;->setIsEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    :goto_0
    return-object v4

    .line 113
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lhsIterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "lhs":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rhsIterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 121
    .local v2, "rhs":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, p3}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lorg/jaxen/Navigator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 128
    .end local v0    # "lhs":Ljava/lang/Object;
    .end local v2    # "rhs":Ljava/lang/Object;
    .end local v3    # "rhsIterator":Ljava/util/Iterator;
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultEqualityExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "lhsValue":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultEqualityExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "rhsValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 80
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .end local v0    # "lhsValue":Ljava/lang/Object;
    .end local v2    # "rhsValue":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 83
    .restart local v0    # "lhsValue":Ljava/lang/Object;
    .restart local v2    # "rhsValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 85
    .local v1, "nav":Lorg/jaxen/Navigator;
    invoke-virtual {p0, v0, v2}, Lorg/jaxen/expr/DefaultEqualityExpr;->bothAreSets(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    check-cast v0, Ljava/util/List;

    .end local v0    # "lhsValue":Ljava/lang/Object;
    check-cast v2, Ljava/util/List;

    .end local v2    # "rhsValue":Ljava/lang/Object;
    invoke-direct {p0, v0, v2, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 89
    .restart local v0    # "lhsValue":Ljava/lang/Object;
    .restart local v2    # "rhsValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/jaxen/expr/DefaultEqualityExpr;->eitherIsSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {p0, v0}, Lorg/jaxen/expr/DefaultEqualityExpr;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    check-cast v0, Ljava/util/List;

    .end local v0    # "lhsValue":Ljava/lang/Object;
    invoke-static {v2}, Lorg/jaxen/expr/DefaultEqualityExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 97
    .restart local v0    # "lhsValue":Ljava/lang/Object;
    :cond_3
    invoke-static {v0}, Lorg/jaxen/expr/DefaultEqualityExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v2, Ljava/util/List;

    .end local v2    # "rhsValue":Ljava/lang/Object;
    invoke-direct {p0, v3, v2, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 102
    .restart local v2    # "rhsValue":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, v0, v2, v1}, Lorg/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lorg/jaxen/Navigator;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected abstract evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultEqualityExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultEqualityExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultEqualityExpr;->getRHS()Lorg/jaxen/expr/Expr;

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
