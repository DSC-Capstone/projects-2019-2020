.class Lorg/jaxen/expr/DefaultMinusExpr;
.super Lorg/jaxen/expr/DefaultAdditiveExpr;
.source "DefaultMinusExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x59c4f467041a7a38L


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultAdditiveExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 68
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 8
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultMinusExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    .line 79
    .local v0, "lhsValue":Ljava/lang/Number;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultMinusExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v3

    .line 82
    .local v3, "rhsValue":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    sub-double v1, v4, v6

    .line 83
    .local v1, "result":D
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v4
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "-"

    return-object v0
.end method
