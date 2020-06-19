.class public Lorg/jaxen/expr/DefaultXPathExpr;
.super Ljava/lang/Object;
.source "DefaultXPathExpr.java"

# interfaces
.implements Lorg/jaxen/expr/XPathExpr;


# static fields
.field private static final serialVersionUID:J = 0x29bd302d14050c28L


# instance fields
.field private rootExpr:Lorg/jaxen/expr/Expr;


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "rootExpr"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/jaxen/expr/DefaultXPathExpr;->rootExpr:Lorg/jaxen/expr/Expr;

    .line 72
    return-void
.end method


# virtual methods
.method public asList(Lorg/jaxen/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    .line 102
    .local v0, "expr":Lorg/jaxen/expr/Expr;
    invoke-interface {v0, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lorg/jaxen/expr/DefaultExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "result":Ljava/util/List;
    return-object v1
.end method

.method public getRootExpr()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jaxen/expr/DefaultXPathExpr;->rootExpr:Lorg/jaxen/expr/Expr;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRootExpr(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "rootExpr"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/jaxen/expr/DefaultXPathExpr;->rootExpr:Lorg/jaxen/expr/Expr;

    .line 82
    return-void
.end method

.method public simplify()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/Expr;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/expr/DefaultXPathExpr;->setRootExpr(Lorg/jaxen/expr/Expr;)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultXPath): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

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
