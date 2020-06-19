.class public Lorg/jaxen/expr/DefaultNameStep;
.super Lorg/jaxen/expr/DefaultStep;
.source "DefaultNameStep.java"

# interfaces
.implements Lorg/jaxen/expr/NameStep;


# static fields
.field private static final serialVersionUID:J = 0x5f20917c50161f6L


# instance fields
.field private hasPrefix:Z

.field private localName:Ljava/lang/String;

.field private matchesAnyName:Z

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/expr/PredicateSet;)V
    .locals 1
    .param p1, "axis"    # Lorg/jaxen/expr/iter/IterableAxis;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "predicateSet"    # Lorg/jaxen/expr/PredicateSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p4}, Lorg/jaxen/expr/DefaultStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    .line 104
    iput-object p2, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    .line 106
    const-string v0, "*"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    .line 107
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/util/List;
    .locals 26
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v15

    .line 159
    .local v15, "contextNodeSet":Ljava/util/List;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .line 161
    .local v16, "contextSize":I
    if-nez v16, :cond_1

    .line 162
    sget-object v22, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 308
    :cond_0
    :goto_0
    return-object v22

    .line 164
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v4

    .line 165
    .local v4, "support":Lorg/jaxen/ContextSupport;
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getIterableAxis()Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v2

    .line 166
    .local v2, "iterableAxis":Lorg/jaxen/expr/iter/IterableAxis;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/jaxen/expr/iter/IterableAxis;->supportsNamedAccess(Lorg/jaxen/ContextSupport;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v21, 0x1

    .line 169
    .local v21, "namedAccess":Z
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_c

    .line 170
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 171
    .local v3, "contextNode":Ljava/lang/Object;
    if-eqz v21, :cond_7

    .line 173
    const/4 v7, 0x0

    .line 174
    .local v7, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v5, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    if-nez v7, :cond_3

    .line 177
    new-instance v5, Lorg/jaxen/UnresolvableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XPath expression uses unbound namespace prefix "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    .end local v3    # "contextNode":Ljava/lang/Object;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v21    # "namedAccess":Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    .line 180
    .restart local v3    # "contextNode":Ljava/lang/Object;
    .restart local v7    # "uri":Ljava/lang/String;
    .restart local v21    # "namedAccess":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lorg/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v14

    .line 182
    .local v14, "axisNodeIter":Ljava/util/Iterator;
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 183
    :cond_4
    sget-object v22, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 188
    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v22, "newNodeSet":Ljava/util/List;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v22

    goto/16 :goto_0

    .line 199
    .end local v7    # "uri":Ljava/lang/String;
    .end local v14    # "axisNodeIter":Ljava/util/Iterator;
    .end local v22    # "newNodeSet":Ljava/util/List;
    :cond_7
    invoke-virtual {v2, v3, v4}, Lorg/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v14

    .line 200
    .restart local v14    # "axisNodeIter":Ljava/util/Iterator;
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 201
    :cond_8
    sget-object v22, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_0

    .line 206
    :cond_9
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .restart local v22    # "newNodeSet":Ljava/util/List;
    :cond_a
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 208
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 209
    .local v17, "eachAxisNode":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 210
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 215
    .end local v17    # "eachAxisNode":Ljava/lang/Object;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v22

    goto/16 :goto_0

    .line 220
    .end local v3    # "contextNode":Ljava/lang/Object;
    .end local v14    # "axisNodeIter":Ljava/util/Iterator;
    .end local v22    # "newNodeSet":Ljava/util/List;
    :cond_c
    new-instance v25, Lorg/jaxen/expr/IdentitySet;

    invoke-direct/range {v25 .. v25}, Lorg/jaxen/expr/IdentitySet;-><init>()V

    .line 221
    .local v25, "unique":Lorg/jaxen/expr/IdentitySet;
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v20, "interimSet":Ljava/util/List;
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .restart local v22    # "newNodeSet":Ljava/util/List;
    if-eqz v21, :cond_13

    .line 225
    const/4 v7, 0x0

    .line 226
    .restart local v7    # "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v5, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    if-nez v7, :cond_d

    .line 229
    new-instance v5, Lorg/jaxen/UnresolvableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XPath expression uses unbound namespace prefix "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :cond_d
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 233
    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 235
    .local v9, "eachContextNode":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v8, v2

    move-object v10, v4

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lorg/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v14

    .line 237
    .restart local v14    # "axisNodeIter":Ljava/util/Iterator;
    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 232
    :cond_e
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 241
    :cond_f
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 243
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 244
    .restart local v17    # "eachAxisNode":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 248
    .end local v17    # "eachAxisNode":Ljava/lang/Object;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v4}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v24

    .line 251
    .local v24, "predicateNodes":Ljava/util/List;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 252
    .local v23, "predicateNodeIter":Ljava/util/Iterator;
    :cond_11
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 254
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 255
    .local v18, "eachPredicateNode":Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 257
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    .line 258
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 261
    .end local v18    # "eachPredicateNode":Ljava/lang/Object;
    :cond_12
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 265
    .end local v7    # "uri":Ljava/lang/String;
    .end local v9    # "eachContextNode":Ljava/lang/Object;
    .end local v14    # "axisNodeIter":Ljava/util/Iterator;
    .end local v19    # "i":I
    .end local v23    # "predicateNodeIter":Ljava/util/Iterator;
    .end local v24    # "predicateNodes":Ljava/util/List;
    :cond_13
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 266
    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 268
    .restart local v9    # "eachContextNode":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lorg/jaxen/expr/DefaultNameStep;->axisIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v14

    .line 269
    .restart local v14    # "axisNodeIter":Ljava/util/Iterator;
    if-eqz v14, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_15

    .line 265
    :cond_14
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 282
    :cond_15
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 283
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 285
    .restart local v17    # "eachAxisNode":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 286
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 291
    .end local v17    # "eachAxisNode":Ljava/lang/Object;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v4}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v24

    .line 294
    .restart local v24    # "predicateNodes":Ljava/util/List;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 295
    .restart local v23    # "predicateNodeIter":Ljava/util/Iterator;
    :cond_17
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 297
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 298
    .restart local v18    # "eachPredicateNode":Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 300
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    .line 301
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 304
    .end local v18    # "eachPredicateNode":Ljava/lang/Object;
    :cond_18
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    goto :goto_9
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-super {p0}, Lorg/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMatchesAnyName()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    return v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z
    .locals 7
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "contextSupport"    # Lorg/jaxen/ContextSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 322
    .local v1, "nav":Lorg/jaxen/Navigator;
    const/4 v0, 0x0

    .line 323
    .local v0, "myUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, "nodeName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 326
    .local v3, "nodeUri":Ljava/lang/String;
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_0
    iget-boolean v5, p0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v5, :cond_4

    .line 356
    iget-object v5, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_5

    .line 358
    new-instance v4, Lorg/jaxen/UnresolvableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resolve namespace prefix \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_0
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    :cond_1
    :goto_1
    return v4

    .line 333
    :cond_2
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 337
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getAttributeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 341
    :cond_3
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 349
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 361
    :cond_4
    iget-boolean v5, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-eqz v5, :cond_5

    .line 362
    const/4 v4, 0x1

    goto :goto_1

    .line 367
    :cond_5
    invoke-direct {p0, v0}, Lorg/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v3}, Lorg/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_1

    .line 374
    iget-boolean v5, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 375
    :cond_6
    invoke-virtual {p0, v0, v3}, Lorg/jaxen/expr/DefaultNameStep;->matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

.method protected matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri1"    # Ljava/lang/String;
    .param p2, "uri2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 399
    if-ne p1, p2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    if-nez p1, :cond_2

    .line 403
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 405
    :cond_2
    if-nez p2, :cond_3

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "prefix":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "qName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[(DefaultNameStep): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1    # "qName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
