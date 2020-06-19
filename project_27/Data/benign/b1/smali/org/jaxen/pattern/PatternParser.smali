.class public Lorg/jaxen/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# static fields
.field private static final TRACE:Z

.field private static final USE_HANDLER:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertDefaultStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/DefaultStep;)Lorg/jaxen/pattern/LocationPathPattern;
    .locals 4
    .param p0, "path"    # Lorg/jaxen/pattern/LocationPathPattern;
    .param p1, "step"    # Lorg/jaxen/expr/DefaultStep;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Lorg/jaxen/expr/DefaultStep;->getPredicates()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "predicates":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    new-instance v0, Lorg/jaxen/expr/DefaultFilterExpr;

    new-instance v3, Lorg/jaxen/expr/PredicateSet;

    invoke-direct {v3}, Lorg/jaxen/expr/PredicateSet;-><init>()V

    invoke-direct {v0, v3}, Lorg/jaxen/expr/DefaultFilterExpr;-><init>(Lorg/jaxen/expr/PredicateSet;)V

    .line 273
    .local v0, "filter":Lorg/jaxen/expr/FilterExpr;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaxen/expr/Predicate;

    invoke-interface {v0, v3}, Lorg/jaxen/expr/FilterExpr;->addPredicate(Lorg/jaxen/expr/Predicate;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jaxen/pattern/LocationPathPattern;->addFilter(Lorg/jaxen/expr/FilterExpr;)V

    .line 279
    .end local v0    # "filter":Lorg/jaxen/expr/FilterExpr;
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method protected static convertExpr(Lorg/jaxen/expr/LocationPath;)Lorg/jaxen/pattern/LocationPathPattern;
    .locals 9
    .param p0, "locationPath"    # Lorg/jaxen/expr/LocationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/jaxen/pattern/LocationPathPattern;

    invoke-direct {v0}, Lorg/jaxen/pattern/LocationPathPattern;-><init>()V

    .line 150
    .local v0, "answer":Lorg/jaxen/pattern/LocationPathPattern;
    invoke-interface {p0}, Lorg/jaxen/expr/LocationPath;->getSteps()Ljava/util/List;

    move-result-object v7

    .line 153
    .local v7, "steps":Ljava/util/List;
    move-object v5, v0

    .line 154
    .local v5, "path":Lorg/jaxen/pattern/LocationPathPattern;
    const/4 v2, 0x1

    .line 155
    .local v2, "first":Z
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 157
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jaxen/expr/Step;

    .line 158
    .local v6, "step":Lorg/jaxen/expr/Step;
    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-static {v5, v6}, Lorg/jaxen/pattern/PatternParser;->convertStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/Step;)Lorg/jaxen/pattern/LocationPathPattern;

    move-result-object v5

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v6}, Lorg/jaxen/pattern/PatternParser;->navigationStep(Lorg/jaxen/expr/Step;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    new-instance v4, Lorg/jaxen/pattern/LocationPathPattern;

    invoke-direct {v4}, Lorg/jaxen/pattern/LocationPathPattern;-><init>()V

    .line 168
    .local v4, "parent":Lorg/jaxen/pattern/LocationPathPattern;
    invoke-interface {v6}, Lorg/jaxen/expr/Step;->getAxis()I

    move-result v1

    .line 169
    .local v1, "axis":I
    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    const/16 v8, 0xc

    if-ne v1, v8, :cond_3

    .line 171
    :cond_1
    invoke-virtual {v5, v4}, Lorg/jaxen/pattern/LocationPathPattern;->setAncestorPattern(Lorg/jaxen/pattern/Pattern;)V

    .line 177
    :goto_1
    move-object v5, v4

    .line 179
    .end local v1    # "axis":I
    .end local v4    # "parent":Lorg/jaxen/pattern/LocationPathPattern;
    :cond_2
    invoke-static {v5, v6}, Lorg/jaxen/pattern/PatternParser;->convertStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/Step;)Lorg/jaxen/pattern/LocationPathPattern;

    move-result-object v5

    goto :goto_0

    .line 175
    .restart local v1    # "axis":I
    .restart local v4    # "parent":Lorg/jaxen/pattern/LocationPathPattern;
    :cond_3
    invoke-virtual {v5, v4}, Lorg/jaxen/pattern/LocationPathPattern;->setParentPattern(Lorg/jaxen/pattern/Pattern;)V

    goto :goto_1

    .line 182
    .end local v1    # "axis":I
    .end local v4    # "parent":Lorg/jaxen/pattern/LocationPathPattern;
    .end local v6    # "step":Lorg/jaxen/expr/Step;
    :cond_4
    invoke-interface {p0}, Lorg/jaxen/expr/LocationPath;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 184
    new-instance v4, Lorg/jaxen/pattern/LocationPathPattern;

    sget-object v8, Lorg/jaxen/pattern/NodeTypeTest;->DOCUMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-direct {v4, v8}, Lorg/jaxen/pattern/LocationPathPattern;-><init>(Lorg/jaxen/pattern/NodeTest;)V

    .line 185
    .restart local v4    # "parent":Lorg/jaxen/pattern/LocationPathPattern;
    invoke-virtual {v5, v4}, Lorg/jaxen/pattern/LocationPathPattern;->setParentPattern(Lorg/jaxen/pattern/Pattern;)V

    .line 187
    .end local v4    # "parent":Lorg/jaxen/pattern/LocationPathPattern;
    :cond_5
    return-object v0
.end method

.method protected static convertExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/pattern/Pattern;
    .locals 6
    .param p0, "expr"    # Lorg/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 120
    instance-of v4, p0, Lorg/jaxen/expr/LocationPath;

    if-eqz v4, :cond_0

    .line 122
    check-cast p0, Lorg/jaxen/expr/LocationPath;

    .end local p0    # "expr":Lorg/jaxen/expr/Expr;
    invoke-static {p0}, Lorg/jaxen/pattern/PatternParser;->convertExpr(Lorg/jaxen/expr/LocationPath;)Lorg/jaxen/pattern/LocationPathPattern;

    move-result-object v0

    .line 142
    .local v0, "answer":Lorg/jaxen/pattern/LocationPathPattern;
    .restart local p0    # "expr":Lorg/jaxen/expr/Expr;
    :goto_0
    return-object v0

    .line 124
    .end local v0    # "answer":Lorg/jaxen/pattern/LocationPathPattern;
    :cond_0
    instance-of v4, p0, Lorg/jaxen/expr/FilterExpr;

    if-eqz v4, :cond_1

    .line 126
    new-instance v0, Lorg/jaxen/pattern/LocationPathPattern;

    invoke-direct {v0}, Lorg/jaxen/pattern/LocationPathPattern;-><init>()V

    .line 127
    .restart local v0    # "answer":Lorg/jaxen/pattern/LocationPathPattern;
    check-cast p0, Lorg/jaxen/expr/FilterExpr;

    .end local p0    # "expr":Lorg/jaxen/expr/Expr;
    invoke-virtual {v0, p0}, Lorg/jaxen/pattern/LocationPathPattern;->addFilter(Lorg/jaxen/expr/FilterExpr;)V

    goto :goto_0

    .line 130
    .end local v0    # "answer":Lorg/jaxen/pattern/LocationPathPattern;
    .restart local p0    # "expr":Lorg/jaxen/expr/Expr;
    :cond_1
    instance-of v4, p0, Lorg/jaxen/expr/UnionExpr;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 132
    check-cast v3, Lorg/jaxen/expr/UnionExpr;

    .line 133
    .local v3, "unionExpr":Lorg/jaxen/expr/UnionExpr;
    invoke-interface {v3}, Lorg/jaxen/expr/UnionExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v4

    invoke-static {v4}, Lorg/jaxen/pattern/PatternParser;->convertExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/pattern/Pattern;

    move-result-object v1

    .line 134
    .local v1, "lhs":Lorg/jaxen/pattern/Pattern;
    invoke-interface {v3}, Lorg/jaxen/expr/UnionExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v4

    invoke-static {v4}, Lorg/jaxen/pattern/PatternParser;->convertExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/pattern/Pattern;

    move-result-object v2

    .line 135
    .local v2, "rhs":Lorg/jaxen/pattern/Pattern;
    new-instance v0, Lorg/jaxen/pattern/UnionPattern;

    invoke-direct {v0, v1, v2}, Lorg/jaxen/pattern/UnionPattern;-><init>(Lorg/jaxen/pattern/Pattern;Lorg/jaxen/pattern/Pattern;)V

    goto :goto_0

    .line 139
    .end local v1    # "lhs":Lorg/jaxen/pattern/Pattern;
    .end local v2    # "rhs":Lorg/jaxen/pattern/Pattern;
    .end local v3    # "unionExpr":Lorg/jaxen/expr/UnionExpr;
    :cond_2
    new-instance v0, Lorg/jaxen/pattern/LocationPathPattern;

    invoke-direct {v0}, Lorg/jaxen/pattern/LocationPathPattern;-><init>()V

    .line 140
    .restart local v0    # "answer":Lorg/jaxen/pattern/LocationPathPattern;
    new-instance v4, Lorg/jaxen/expr/DefaultFilterExpr;

    new-instance v5, Lorg/jaxen/expr/PredicateSet;

    invoke-direct {v5}, Lorg/jaxen/expr/PredicateSet;-><init>()V

    invoke-direct {v4, p0, v5}, Lorg/jaxen/expr/DefaultFilterExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/PredicateSet;)V

    invoke-virtual {v0, v4}, Lorg/jaxen/pattern/LocationPathPattern;->addFilter(Lorg/jaxen/expr/FilterExpr;)V

    goto :goto_0
.end method

.method protected static convertStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/Step;)Lorg/jaxen/pattern/LocationPathPattern;
    .locals 8
    .param p0, "path"    # Lorg/jaxen/pattern/LocationPathPattern;
    .param p1, "step"    # Lorg/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    .line 192
    instance-of v5, p1, Lorg/jaxen/expr/DefaultAllNodeStep;

    if-eqz v5, :cond_1

    .line 194
    invoke-interface {p1}, Lorg/jaxen/expr/Step;->getAxis()I

    move-result v0

    .line 195
    .local v0, "axis":I
    if-ne v0, v6, :cond_0

    .line 197
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->ATTRIBUTE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    .line 264
    .end local v0    # "axis":I
    .end local p0    # "path":Lorg/jaxen/pattern/LocationPathPattern;
    .end local p1    # "step":Lorg/jaxen/expr/Step;
    :goto_0
    return-object p0

    .line 201
    .restart local v0    # "axis":I
    .restart local p0    # "path":Lorg/jaxen/pattern/LocationPathPattern;
    .restart local p1    # "step":Lorg/jaxen/expr/Step;
    :cond_0
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->ELEMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_0

    .line 204
    .end local v0    # "axis":I
    :cond_1
    instance-of v5, p1, Lorg/jaxen/expr/DefaultCommentNodeStep;

    if-eqz v5, :cond_2

    .line 206
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->COMMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_0

    .line 208
    :cond_2
    instance-of v5, p1, Lorg/jaxen/expr/DefaultProcessingInstructionNodeStep;

    if-eqz v5, :cond_3

    .line 210
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->PROCESSING_INSTRUCTION_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_0

    .line 212
    :cond_3
    instance-of v5, p1, Lorg/jaxen/expr/DefaultTextNodeStep;

    if-eqz v5, :cond_4

    .line 214
    sget-object v5, Lorg/jaxen/pattern/TextNodeTest;->SINGLETON:Lorg/jaxen/pattern/TextNodeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_0

    .line 216
    :cond_4
    instance-of v5, p1, Lorg/jaxen/expr/DefaultCommentNodeStep;

    if-eqz v5, :cond_5

    .line 218
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->COMMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_0

    .line 220
    :cond_5
    instance-of v5, p1, Lorg/jaxen/expr/DefaultNameStep;

    if-eqz v5, :cond_b

    move-object v2, p1

    .line 222
    check-cast v2, Lorg/jaxen/expr/DefaultNameStep;

    .line 223
    .local v2, "nameStep":Lorg/jaxen/expr/DefaultNameStep;
    invoke-virtual {v2}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "localName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v0

    .line 226
    .restart local v0    # "axis":I
    const/4 v3, 0x1

    .line 227
    .local v3, "nodeType":S
    if-ne v0, v6, :cond_6

    .line 229
    const/4 v3, 0x2

    .line 231
    :cond_6
    invoke-virtual {v2}, Lorg/jaxen/expr/DefaultNameStep;->isMatchesAnyName()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 235
    :cond_7
    if-ne v0, v6, :cond_8

    .line 237
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->ATTRIBUTE_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    .line 254
    :goto_1
    invoke-static {p0, v2}, Lorg/jaxen/pattern/PatternParser;->convertDefaultStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/DefaultStep;)Lorg/jaxen/pattern/LocationPathPattern;

    move-result-object p0

    goto :goto_0

    .line 241
    :cond_8
    sget-object v5, Lorg/jaxen/pattern/NodeTypeTest;->ELEMENT_TEST:Lorg/jaxen/pattern/NodeTypeTest;

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_1

    .line 246
    :cond_9
    new-instance v5, Lorg/jaxen/pattern/NamespaceTest;

    invoke-direct {v5, v4, v3}, Lorg/jaxen/pattern/NamespaceTest;-><init>(Ljava/lang/String;S)V

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_1

    .line 251
    :cond_a
    new-instance v5, Lorg/jaxen/pattern/NameTest;

    invoke-direct {v5, v1, v3}, Lorg/jaxen/pattern/NameTest;-><init>(Ljava/lang/String;S)V

    invoke-virtual {p0, v5}, Lorg/jaxen/pattern/LocationPathPattern;->setNodeTest(Lorg/jaxen/pattern/NodeTest;)V

    goto :goto_1

    .line 256
    .end local v0    # "axis":I
    .end local v1    # "localName":Ljava/lang/String;
    .end local v2    # "nameStep":Lorg/jaxen/expr/DefaultNameStep;
    .end local v3    # "nodeType":S
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_b
    instance-of v5, p1, Lorg/jaxen/expr/DefaultStep;

    if-eqz v5, :cond_c

    .line 258
    check-cast p1, Lorg/jaxen/expr/DefaultStep;

    .end local p1    # "step":Lorg/jaxen/expr/Step;
    invoke-static {p0, p1}, Lorg/jaxen/pattern/PatternParser;->convertDefaultStep(Lorg/jaxen/pattern/LocationPathPattern;Lorg/jaxen/expr/DefaultStep;)Lorg/jaxen/pattern/LocationPathPattern;

    move-result-object p0

    goto/16 :goto_0

    .line 262
    .restart local p1    # "step":Lorg/jaxen/expr/Step;
    :cond_c
    new-instance v5, Lorg/jaxen/JaxenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot convert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to a Pattern"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected static navigationStep(Lorg/jaxen/expr/Step;)Z
    .locals 3
    .param p0, "step"    # Lorg/jaxen/expr/Step;

    .prologue
    const/4 v0, 0x1

    .line 284
    instance-of v1, p0, Lorg/jaxen/expr/DefaultNameStep;

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/jaxen/expr/DefaultStep;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {p0}, Lorg/jaxen/expr/Step;->getPredicates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jaxen/pattern/Pattern;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;,
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lorg/jaxen/saxpath/helpers/XPathReaderFactory;->createReader()Lorg/jaxen/saxpath/XPathReader;

    move-result-object v2

    .line 102
    .local v2, "reader":Lorg/jaxen/saxpath/XPathReader;
    new-instance v0, Lorg/jaxen/JaxenHandler;

    invoke-direct {v0}, Lorg/jaxen/JaxenHandler;-><init>()V

    .line 104
    .local v0, "handler":Lorg/jaxen/JaxenHandler;
    new-instance v3, Lorg/jaxen/expr/DefaultXPathFactory;

    invoke-direct {v3}, Lorg/jaxen/expr/DefaultXPathFactory;-><init>()V

    invoke-virtual {v0, v3}, Lorg/jaxen/JaxenHandler;->setXPathFactory(Lorg/jaxen/expr/XPathFactory;)V

    .line 105
    invoke-interface {v2, v0}, Lorg/jaxen/saxpath/XPathReader;->setXPathHandler(Lorg/jaxen/saxpath/XPathHandler;)V

    .line 106
    invoke-interface {v2, p0}, Lorg/jaxen/saxpath/XPathReader;->parse(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lorg/jaxen/JaxenHandler;->getXPathExpr()Lorg/jaxen/expr/XPathExpr;

    move-result-object v3

    invoke-interface {v3}, Lorg/jaxen/expr/XPathExpr;->getRootExpr()Lorg/jaxen/expr/Expr;

    move-result-object v3

    invoke-static {v3}, Lorg/jaxen/pattern/PatternParser;->convertExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/pattern/Pattern;

    move-result-object v1

    .line 109
    .local v1, "pattern":Lorg/jaxen/pattern/Pattern;
    invoke-virtual {v1}, Lorg/jaxen/pattern/Pattern;->simplify()Lorg/jaxen/pattern/Pattern;

    move-result-object v3

    return-object v3
.end method
