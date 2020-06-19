.class public Lorg/jaxen/expr/DefaultXPathFactory;
.super Ljava/lang/Object;
.source "DefaultXPathFactory.java"

# interfaces
.implements Lorg/jaxen/expr/XPathFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAbsoluteLocationPath()Lorg/jaxen/expr/LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lorg/jaxen/expr/DefaultAbsoluteLocationPath;

    invoke-direct {v0}, Lorg/jaxen/expr/DefaultAbsoluteLocationPath;-><init>()V

    return-object v0
.end method

.method public createAdditiveExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
    .locals 3
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .param p3, "additiveOperator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 166
    packed-switch p3, :pswitch_data_0

    .line 179
    new-instance v0, Lorg/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled operator in createAdditiveExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/DefaultPlusExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultPlusExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 175
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jaxen/expr/DefaultMinusExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultMinusExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createAllNodeStep(I)Lorg/jaxen/expr/Step;
    .locals 3
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    .line 287
    .local v0, "iter":Lorg/jaxen/expr/iter/IterableAxis;
    new-instance v1, Lorg/jaxen/expr/DefaultAllNodeStep;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jaxen/expr/DefaultAllNodeStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createAndExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;
    .locals 1
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lorg/jaxen/expr/DefaultAndExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultAndExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createCommentNodeStep(I)Lorg/jaxen/expr/Step;
    .locals 3
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    .line 281
    .local v0, "iter":Lorg/jaxen/expr/iter/IterableAxis;
    new-instance v1, Lorg/jaxen/expr/DefaultCommentNodeStep;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jaxen/expr/DefaultCommentNodeStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createEqualityExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
    .locals 3
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .param p3, "equalityOperator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 116
    packed-switch p3, :pswitch_data_0

    .line 129
    new-instance v0, Lorg/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled operator in createEqualityExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/DefaultEqualsExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultEqualsExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 125
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jaxen/expr/DefaultNotEqualsExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultNotEqualsExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createFilterExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/FilterExpr;
    .locals 2
    .param p1, "expr"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lorg/jaxen/expr/DefaultFilterExpr;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jaxen/expr/DefaultFilterExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/PredicateSet;)V

    return-object v0
.end method

.method public createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/FunctionCallExpr;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lorg/jaxen/expr/DefaultFunctionCallExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultFunctionCallExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLiteralExpr(Ljava/lang/String;)Lorg/jaxen/expr/LiteralExpr;
    .locals 1
    .param p1, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lorg/jaxen/expr/DefaultLiteralExpr;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/DefaultLiteralExpr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMultiplicativeExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
    .locals 3
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .param p3, "multiplicativeOperator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 186
    packed-switch p3, :pswitch_data_0

    .line 204
    new-instance v0, Lorg/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled operator in createMultiplicativeExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/DefaultMultiplyExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultMultiplyExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 200
    :goto_0
    return-object v0

    .line 195
    :pswitch_1
    new-instance v0, Lorg/jaxen/expr/DefaultDivExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultDivExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 200
    :pswitch_2
    new-instance v0, Lorg/jaxen/expr/DefaultModExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultModExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public createNameStep(ILjava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/Step;
    .locals 3
    .param p1, "axis"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    .line 266
    .local v0, "iter":Lorg/jaxen/expr/iter/IterableAxis;
    new-instance v1, Lorg/jaxen/expr/DefaultNameStep;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, p2, p3, v2}, Lorg/jaxen/expr/DefaultNameStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createNumberExpr(D)Lorg/jaxen/expr/NumberExpr;
    .locals 2
    .param p1, "number"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lorg/jaxen/expr/DefaultNumberExpr;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lorg/jaxen/expr/DefaultNumberExpr;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public createNumberExpr(I)Lorg/jaxen/expr/NumberExpr;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lorg/jaxen/expr/DefaultNumberExpr;

    new-instance v1, Ljava/lang/Double;

    int-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lorg/jaxen/expr/DefaultNumberExpr;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public createOrExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;
    .locals 1
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/jaxen/expr/DefaultOrExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultOrExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createPathExpr(Lorg/jaxen/expr/FilterExpr;Lorg/jaxen/expr/LocationPath;)Lorg/jaxen/expr/PathExpr;
    .locals 1
    .param p1, "filterExpr"    # Lorg/jaxen/expr/FilterExpr;
    .param p2, "locationPath"    # Lorg/jaxen/expr/LocationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/jaxen/expr/DefaultPathExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultPathExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/LocationPath;)V

    return-object v0
.end method

.method public createPredicate(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/Predicate;
    .locals 1
    .param p1, "predicateExpr"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lorg/jaxen/expr/DefaultPredicate;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/DefaultPredicate;-><init>(Lorg/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createPredicateSet()Lorg/jaxen/expr/PredicateSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lorg/jaxen/expr/PredicateSet;

    invoke-direct {v0}, Lorg/jaxen/expr/PredicateSet;-><init>()V

    return-object v0
.end method

.method public createProcessingInstructionNodeStep(ILjava/lang/String;)Lorg/jaxen/expr/Step;
    .locals 3
    .param p1, "axis"    # I
    .param p2, "piName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    .line 294
    .local v0, "iter":Lorg/jaxen/expr/iter/IterableAxis;
    new-instance v1, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Lorg/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createRelationalExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
    .locals 3
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .param p3, "relationalOperator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 136
    packed-switch p3, :pswitch_data_0

    .line 159
    new-instance v0, Lorg/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled operator in createRelationalExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/DefaultLessThanExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultLessThanExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 155
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    new-instance v0, Lorg/jaxen/expr/DefaultGreaterThanExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultGreaterThanExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Lorg/jaxen/expr/DefaultLessThanEqualExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultLessThanEqualExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 155
    :pswitch_3
    new-instance v0, Lorg/jaxen/expr/DefaultGreaterThanEqualExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultGreaterThanEqualExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public createRelativeLocationPath()Lorg/jaxen/expr/LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/jaxen/expr/DefaultRelativeLocationPath;

    invoke-direct {v0}, Lorg/jaxen/expr/DefaultRelativeLocationPath;-><init>()V

    return-object v0
.end method

.method public createTextNodeStep(I)Lorg/jaxen/expr/Step;
    .locals 3
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lorg/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    .line 275
    .local v0, "iter":Lorg/jaxen/expr/iter/IterableAxis;
    new-instance v1, Lorg/jaxen/expr/DefaultTextNodeStep;

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jaxen/expr/DefaultTextNodeStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createUnaryExpr(Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/Expr;
    .locals 1
    .param p1, "expr"    # Lorg/jaxen/expr/Expr;
    .param p2, "unaryOperator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_0

    .line 217
    .end local p1    # "expr":Lorg/jaxen/expr/Expr;
    :goto_0
    return-object p1

    .line 214
    .restart local p1    # "expr":Lorg/jaxen/expr/Expr;
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/DefaultUnaryExpr;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/DefaultUnaryExpr;-><init>(Lorg/jaxen/expr/Expr;)V

    move-object p1, v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public createUnionExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/UnionExpr;
    .locals 1
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lorg/jaxen/expr/DefaultUnionExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultUnionExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/VariableReferenceExpr;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "variable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lorg/jaxen/expr/DefaultVariableReferenceExpr;

    invoke-direct {v0, p1, p2}, Lorg/jaxen/expr/DefaultVariableReferenceExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createXPath(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/XPathExpr;
    .locals 1
    .param p1, "rootExpr"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lorg/jaxen/expr/DefaultXPathExpr;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/DefaultXPathExpr;-><init>(Lorg/jaxen/expr/Expr;)V

    return-object v0
.end method

.method protected getIterableAxis(I)Lorg/jaxen/expr/iter/IterableAxis;
    .locals 3
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance v0, Lorg/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized axis code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    new-instance v0, Lorg/jaxen/expr/iter/IterableChildAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableChildAxis;-><init>(I)V

    .line 334
    :goto_0
    return-object v0

    .line 312
    :pswitch_1
    new-instance v0, Lorg/jaxen/expr/iter/IterableDescendantAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableDescendantAxis;-><init>(I)V

    goto :goto_0

    .line 314
    :pswitch_2
    new-instance v0, Lorg/jaxen/expr/iter/IterableParentAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableParentAxis;-><init>(I)V

    goto :goto_0

    .line 316
    :pswitch_3
    new-instance v0, Lorg/jaxen/expr/iter/IterableFollowingSiblingAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableFollowingSiblingAxis;-><init>(I)V

    goto :goto_0

    .line 318
    :pswitch_4
    new-instance v0, Lorg/jaxen/expr/iter/IterablePrecedingSiblingAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterablePrecedingSiblingAxis;-><init>(I)V

    goto :goto_0

    .line 320
    :pswitch_5
    new-instance v0, Lorg/jaxen/expr/iter/IterableFollowingAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableFollowingAxis;-><init>(I)V

    goto :goto_0

    .line 322
    :pswitch_6
    new-instance v0, Lorg/jaxen/expr/iter/IterablePrecedingAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterablePrecedingAxis;-><init>(I)V

    goto :goto_0

    .line 324
    :pswitch_7
    new-instance v0, Lorg/jaxen/expr/iter/IterableAttributeAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableAttributeAxis;-><init>(I)V

    goto :goto_0

    .line 326
    :pswitch_8
    new-instance v0, Lorg/jaxen/expr/iter/IterableNamespaceAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableNamespaceAxis;-><init>(I)V

    goto :goto_0

    .line 328
    :pswitch_9
    new-instance v0, Lorg/jaxen/expr/iter/IterableSelfAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableSelfAxis;-><init>(I)V

    goto :goto_0

    .line 330
    :pswitch_a
    new-instance v0, Lorg/jaxen/expr/iter/IterableDescendantOrSelfAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableDescendantOrSelfAxis;-><init>(I)V

    goto :goto_0

    .line 332
    :pswitch_b
    new-instance v0, Lorg/jaxen/expr/iter/IterableAncestorOrSelfAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableAncestorOrSelfAxis;-><init>(I)V

    goto :goto_0

    .line 334
    :pswitch_c
    new-instance v0, Lorg/jaxen/expr/iter/IterableAncestorAxis;

    invoke-direct {v0, p1}, Lorg/jaxen/expr/iter/IterableAncestorAxis;-><init>(I)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
