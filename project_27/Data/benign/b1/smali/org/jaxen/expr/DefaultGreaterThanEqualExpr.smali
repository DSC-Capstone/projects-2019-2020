.class Lorg/jaxen/expr/DefaultGreaterThanEqualExpr;
.super Lorg/jaxen/expr/DefaultRelationalExpr;
.source "DefaultGreaterThanEqualExpr.java"


# static fields
.field private static final serialVersionUID:J = -0x6cec5ab479fd701eL


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultRelationalExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected evaluateDoubleDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Double;
    .param p2, "rhs"    # Ljava/lang/Double;

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, ">="

    return-object v0
.end method
