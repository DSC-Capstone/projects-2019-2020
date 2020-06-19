.class Lorg/jaxen/expr/DefaultNumberExpr;
.super Lorg/jaxen/expr/DefaultExpr;
.source "DefaultNumberExpr.java"

# interfaces
.implements Lorg/jaxen/expr/NumberExpr;


# static fields
.field private static final serialVersionUID:J = -0x53921535fdfa63abL


# instance fields
.field private number:Ljava/lang/Double;


# direct methods
.method constructor <init>(Ljava/lang/Double;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Double;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultExpr;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/jaxen/expr/DefaultNumberExpr;->number:Ljava/lang/Double;

    .line 66
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lorg/jaxen/Context;

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNumberExpr;->getNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNumberExpr;->number:Ljava/lang/Double;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNumberExpr;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultNumberExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNumberExpr;->getNumber()Ljava/lang/Number;

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
