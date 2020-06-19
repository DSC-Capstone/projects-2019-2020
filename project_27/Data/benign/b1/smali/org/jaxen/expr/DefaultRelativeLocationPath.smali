.class public Lorg/jaxen/expr/DefaultRelativeLocationPath;
.super Lorg/jaxen/expr/DefaultLocationPath;
.source "DefaultRelativeLocationPath.java"


# static fields
.field private static final serialVersionUID:J = -0xdf91822c8854dd7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultLocationPath;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addStep(Lorg/jaxen/expr/Step;)V
    .locals 0
    .param p1, "x0"    # Lorg/jaxen/expr/Step;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lorg/jaxen/expr/DefaultLocationPath;->addStep(Lorg/jaxen/expr/Step;)V

    return-void
.end method

.method public bridge synthetic evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1}, Lorg/jaxen/expr/DefaultLocationPath;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSteps()Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getSteps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAbsolute()Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic simplify()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lorg/jaxen/expr/DefaultLocationPath;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultRelativeLocationPath): "

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
