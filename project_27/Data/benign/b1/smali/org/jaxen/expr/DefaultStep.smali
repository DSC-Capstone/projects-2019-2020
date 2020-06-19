.class public abstract Lorg/jaxen/expr/DefaultStep;
.super Ljava/lang/Object;
.source "DefaultStep.java"

# interfaces
.implements Lorg/jaxen/expr/Step;


# instance fields
.field private axis:Lorg/jaxen/expr/iter/IterableAxis;

.field private predicates:Lorg/jaxen/expr/PredicateSet;


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V
    .locals 0
    .param p1, "axis"    # Lorg/jaxen/expr/iter/IterableAxis;
    .param p2, "predicates"    # Lorg/jaxen/expr/PredicateSet;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/jaxen/expr/DefaultStep;->axis:Lorg/jaxen/expr/iter/IterableAxis;

    .line 72
    iput-object p2, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    .line 73
    return-void
.end method


# virtual methods
.method public addPredicate(Lorg/jaxen/expr/Predicate;)V
    .locals 1
    .param p1, "predicate"    # Lorg/jaxen/expr/Predicate;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    invoke-virtual {v0, p1}, Lorg/jaxen/expr/PredicateSet;->addPredicate(Lorg/jaxen/expr/Predicate;)V

    .line 78
    return-void
.end method

.method public axisIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "support"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultStep;->getIterableAxis()Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Lorg/jaxen/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "contextNodeSet":Ljava/util/List;
    new-instance v9, Lorg/jaxen/expr/IdentitySet;

    invoke-direct {v9}, Lorg/jaxen/expr/IdentitySet;-><init>()V

    .line 130
    .local v9, "unique":Lorg/jaxen/expr/IdentitySet;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 134
    .local v2, "contextSize":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, "interimSet":Ljava/util/ArrayList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v7, "newNodeSet":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v8

    .line 139
    .local v8, "support":Lorg/jaxen/ContextSupport;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 141
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 151
    .local v4, "eachContextNode":Ljava/lang/Object;
    iget-object v10, p0, Lorg/jaxen/expr/DefaultStep;->axis:Lorg/jaxen/expr/iter/IterableAxis;

    invoke-virtual {v10, v4, v8}, Lorg/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "axisNodeIter":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "eachAxisNode":Ljava/lang/Object;
    invoke-virtual {v9, v3}, Lorg/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 157
    invoke-virtual {p0, v3, v8}, Lorg/jaxen/expr/DefaultStep;->matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 159
    invoke-virtual {v9, v3}, Lorg/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v3    # "eachAxisNode":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v10

    invoke-virtual {v10, v6, v8}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "axisNodeIter":Ljava/util/Iterator;
    .end local v4    # "eachContextNode":Ljava/lang/Object;
    :cond_2
    return-object v7
.end method

.method public getAxis()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->axis:Lorg/jaxen/expr/iter/IterableAxis;

    invoke-virtual {v0}, Lorg/jaxen/expr/iter/IterableAxis;->value()I

    move-result v0

    return v0
.end method

.method public getAxisName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultStep;->getAxis()I

    move-result v0

    invoke-static {v0}, Lorg/jaxen/saxpath/Axis;->lookup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIterableAxis()Lorg/jaxen/expr/iter/IterableAxis;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->axis:Lorg/jaxen/expr/iter/IterableAxis;

    return-object v0
.end method

.method public getPredicateSet()Lorg/jaxen/expr/PredicateSet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    return-object v0
.end method

.method public getPredicates()Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lorg/jaxen/expr/PredicateSet;->getPredicates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lorg/jaxen/expr/PredicateSet;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simplify()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jaxen/expr/DefaultStep;->predicates:Lorg/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lorg/jaxen/expr/PredicateSet;->simplify()V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultStep;->getIterableAxis()Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
