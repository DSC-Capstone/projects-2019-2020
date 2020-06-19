.class abstract Lorg/jaxen/expr/DefaultLogicalExpr;
.super Lorg/jaxen/expr/DefaultTruthExpr;
.source "DefaultLogicalExpr.java"

# interfaces
.implements Lorg/jaxen/expr/LogicalExpr;


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultTruthExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 59
    return-void
.end method
