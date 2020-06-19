.class public Lorg/jaxen/expr/PredicateSet;
.super Ljava/lang/Object;
.source "PredicateSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x63747e449e1e84bdL


# instance fields
.field private predicates:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    .line 89
    return-void
.end method

.method private anyMatchingNode(Ljava/util/List;Lorg/jaxen/ContextSupport;)Z
    .locals 13
    .param p1, "contextNodeSet"    # Ljava/util/List;
    .param p2, "support"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 173
    iget-object v10, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    move v10, v11

    .line 217
    :goto_0
    return v10

    .line 176
    :cond_0
    iget-object v10, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 179
    .local v6, "predIter":Ljava/util/Iterator;
    move-object v3, p1

    .line 181
    .local v3, "nodes2Filter":Ljava/util/List;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 182
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 184
    .local v4, "nodes2FilterSize":I
    new-instance v5, Lorg/jaxen/Context;

    invoke-direct {v5, p2}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 185
    .local v5, "predContext":Lorg/jaxen/Context;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v9, "tempList":Ljava/util/List;
    invoke-virtual {v5, v9}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 190
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "contextNode":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 192
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v5, v9}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 195
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v5, v10}, Lorg/jaxen/Context;->setPosition(I)V

    .line 196
    invoke-virtual {v5, v4}, Lorg/jaxen/Context;->setSize(I)V

    .line 197
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jaxen/expr/Predicate;

    invoke-interface {v10, v5}, Lorg/jaxen/expr/Predicate;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v7

    .line 198
    .local v7, "predResult":Ljava/lang/Object;
    instance-of v10, v7, Ljava/lang/Number;

    if-eqz v10, :cond_2

    .line 201
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "predResult":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 202
    .local v8, "proximity":I
    add-int/lit8 v10, v1, 0x1

    if-ne v8, v10, :cond_3

    move v10, v12

    .line 203
    goto :goto_0

    .line 207
    .end local v8    # "proximity":I
    .restart local v7    # "predResult":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v10

    invoke-static {v7, v10}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v2

    .line 210
    .local v2, "includes":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v12

    .line 211
    goto :goto_0

    .line 189
    .end local v2    # "includes":Ljava/lang/Boolean;
    .end local v7    # "predResult":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "contextNode":Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v4    # "nodes2FilterSize":I
    .end local v5    # "predContext":Lorg/jaxen/Context;
    .end local v9    # "tempList":Ljava/util/List;
    :cond_4
    move v10, v11

    .line 217
    goto :goto_0
.end method


# virtual methods
.method public addPredicate(Lorg/jaxen/expr/Predicate;)V
    .locals 2
    .param p1, "predicate"    # Lorg/jaxen/expr/Predicate;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public applyPredicate(Lorg/jaxen/expr/Predicate;Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;
    .locals 10
    .param p1, "predicate"    # Lorg/jaxen/expr/Predicate;
    .param p2, "nodes2Filter"    # Ljava/util/List;
    .param p3, "support"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 254
    .local v4, "nodes2FilterSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v1, "filteredNodes":Ljava/util/List;
    new-instance v5, Lorg/jaxen/Context;

    invoke-direct {v5, p3}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 257
    .local v5, "predContext":Lorg/jaxen/Context;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v8, "tempList":Ljava/util/List;
    invoke-virtual {v5, v8}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 262
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "contextNode":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 264
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v5, v8}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 267
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v5, v9}, Lorg/jaxen/Context;->setPosition(I)V

    .line 268
    invoke-virtual {v5, v4}, Lorg/jaxen/Context;->setSize(I)V

    .line 269
    invoke-interface {p1, v5}, Lorg/jaxen/expr/Predicate;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v6

    .line 270
    .local v6, "predResult":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/Number;

    if-eqz v9, :cond_1

    .line 273
    check-cast v6, Ljava/lang/Number;

    .end local v6    # "predResult":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 274
    .local v7, "proximity":I
    add-int/lit8 v9, v2, 0x1

    if-ne v7, v9, :cond_0

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v7    # "proximity":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .restart local v6    # "predResult":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v5}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v3

    .line 282
    .local v3, "includes":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 283
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    .end local v0    # "contextNode":Ljava/lang/Object;
    .end local v3    # "includes":Ljava/lang/Boolean;
    .end local v6    # "predResult":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method

.method protected evaluateAsBoolean(Ljava/util/List;Lorg/jaxen/ContextSupport;)Z
    .locals 1
    .param p1, "contextNodeSet"    # Ljava/util/List;
    .param p2, "support"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/PredicateSet;->anyMatchingNode(Ljava/util/List;Lorg/jaxen/ContextSupport;)Z

    move-result v0

    return v0
.end method

.method protected evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;
    .locals 3
    .param p1, "contextNodeSet"    # Ljava/util/List;
    .param p2, "support"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v2, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 248
    .end local p1    # "contextNodeSet":Ljava/util/List;
    :goto_0
    return-object p1

    .line 238
    .restart local p1    # "contextNodeSet":Ljava/util/List;
    :cond_0
    iget-object v2, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "predIter":Ljava/util/Iterator;
    move-object v0, p1

    .line 243
    .local v0, "nodes2Filter":Ljava/util/List;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaxen/expr/Predicate;

    invoke-virtual {p0, v2, v0, p2}, Lorg/jaxen/expr/PredicateSet;->applyPredicate(Lorg/jaxen/expr/Predicate;Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 248
    goto :goto_0
.end method

.method public getPredicates()Ljava/util/List;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 142
    .local v2, "predIter":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 144
    .local v1, "eachPred":Lorg/jaxen/expr/Predicate;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "eachPred":Lorg/jaxen/expr/Predicate;
    check-cast v1, Lorg/jaxen/expr/Predicate;

    .line 147
    .restart local v1    # "eachPred":Lorg/jaxen/expr/Predicate;
    invoke-interface {v1}, Lorg/jaxen/expr/Predicate;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public simplify()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lorg/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, "predIter":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 125
    .local v0, "eachPred":Lorg/jaxen/expr/Predicate;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eachPred":Lorg/jaxen/expr/Predicate;
    check-cast v0, Lorg/jaxen/expr/Predicate;

    .line 128
    .restart local v0    # "eachPred":Lorg/jaxen/expr/Predicate;
    invoke-interface {v0}, Lorg/jaxen/expr/Predicate;->simplify()V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method
