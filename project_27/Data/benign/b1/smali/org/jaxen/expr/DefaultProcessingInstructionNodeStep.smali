.class public Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;
.super Lorg/jaxen/expr/DefaultStep;
.source "DefaultProcessingInstructionNodeStep.java"

# interfaces
.implements Lorg/jaxen/expr/ProcessingInstructionNodeStep;


# static fields
.field private static final serialVersionUID:J = -0x42f5d89219dd83cfL


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Lorg/jaxen/expr/PredicateSet;)V
    .locals 0
    .param p1, "axis"    # Lorg/jaxen/expr/iter/IterableAxis;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "predicateSet"    # Lorg/jaxen/expr/PredicateSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p3}, Lorg/jaxen/expr/DefaultStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    .line 75
    iput-object p2, p0, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;->name:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;->getAxisName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v2, "::processing-instruction("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-super {p0}, Lorg/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "support"    # Lorg/jaxen/ContextSupport;

    .prologue
    .line 104
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 105
    .local v1, "nav":Lorg/jaxen/Navigator;
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    const/4 v2, 0x1

    .line 118
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return v2

    .line 114
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 118
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
