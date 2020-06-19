.class public Lorg/jaxen/javabean/DocumentNavigator;
.super Lorg/jaxen/DefaultNavigator;
.source "DocumentNavigator.java"

# interfaces
.implements Lorg/jaxen/NamedAccessNavigator;


# static fields
.field private static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final instance:Lorg/jaxen/javabean/DocumentNavigator;

.field private static final serialVersionUID:J = -0x188b58f994085463L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 75
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 79
    new-instance v0, Lorg/jaxen/javabean/DocumentNavigator;

    invoke-direct {v0}, Lorg/jaxen/javabean/DocumentNavigator;-><init>()V

    sput-object v0, Lorg/jaxen/javabean/DocumentNavigator;->instance:Lorg/jaxen/javabean/DocumentNavigator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jaxen/DefaultNavigator;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jaxen/Navigator;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/jaxen/javabean/DocumentNavigator;->instance:Lorg/jaxen/javabean/DocumentNavigator;

    return-object v0
.end method


# virtual methods
.method public getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 252
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getAttributeAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespacePrefix"    # Ljava/lang/String;
    .param p4, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 145
    const-string v0, ""

    return-object v0
.end method

.method public getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 150
    const-string v0, ""

    return-object v0
.end method

.method public getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 155
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 10
    .param p1, "contextNode"    # Ljava/lang/Object;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespacePrefix"    # Ljava/lang/String;
    .param p4, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 173
    move-object v8, p1

    check-cast v8, Lorg/jaxen/javabean/Element;

    invoke-virtual {v8}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 175
    .local v1, "cls":Ljava/lang/Class;
    invoke-virtual {p0, p2}, Lorg/jaxen/javabean/DocumentNavigator;->javacase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "methodName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 181
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 202
    :goto_0
    if-nez v5, :cond_0

    .line 204
    sget-object v8, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 237
    .end local p1    # "contextNode":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 183
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 189
    :catch_1
    move-exception v3

    .line 193
    .local v3, "ee":Ljava/lang/NoSuchMethodException;
    :try_start_2
    sget-object v8, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, p2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    goto :goto_0

    .line 195
    :catch_2
    move-exception v4

    .line 197
    .local v4, "eee":Ljava/lang/NoSuchMethodException;
    const/4 v5, 0x0

    goto :goto_0

    .line 209
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "ee":Ljava/lang/NoSuchMethodException;
    .end local v4    # "eee":Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_3
    move-object v0, p1

    check-cast v0, Lorg/jaxen/javabean/Element;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/jaxen/javabean/DocumentNavigator;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 211
    .local v7, "result":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 213
    sget-object v8, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_1

    .line 216
    :cond_1
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_2

    .line 218
    new-instance v8, Lorg/jaxen/javabean/ElementIterator;

    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    check-cast v7, Ljava/util/Collection;

    .end local v7    # "result":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {v8, p1, p2, v9}, Lorg/jaxen/javabean/ElementIterator;-><init>(Lorg/jaxen/javabean/Element;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 228
    :catch_3
    move-exception v8

    .line 237
    :goto_2
    sget-object v8, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_1

    .line 221
    .restart local v7    # "result":Ljava/lang/Object;
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 223
    sget-object v8, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_1

    .line 226
    :cond_3
    new-instance v8, Lorg/jaxen/util/SingleObjectIterator;

    new-instance v9, Lorg/jaxen/javabean/Element;

    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v9, p1, p2, v7}, Lorg/jaxen/javabean/Element;-><init>(Lorg/jaxen/javabean/Element;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v8, v9}, Lorg/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 232
    .end local v7    # "result":Ljava/lang/Object;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method public getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/javabean/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 130
    const-string v0, ""

    return-object v0
.end method

.method public getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 303
    instance-of v0, p1, Lorg/jaxen/javabean/Element;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 274
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType(Ljava/lang/Object;)S
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 242
    instance-of v0, p1, Lorg/jaxen/javabean/Element;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lorg/jaxen/util/SingleObjectIterator;

    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/javabean/Element;->getParent()Lorg/jaxen/javabean/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-object v0

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 284
    instance-of v0, p1, Lorg/jaxen/javabean/Element;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/javabean/Element;->getParent()Lorg/jaxen/javabean/Element;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 294
    instance-of v0, p1, Lorg/jaxen/javabean/Element;

    if-eqz v0, :cond_0

    .line 296
    check-cast p1, Lorg/jaxen/javabean/Element;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/javabean/Element;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAttribute(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isComment(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isDocument(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 90
    instance-of v0, p1, Lorg/jaxen/javabean/Element;

    return v0
.end method

.method public isNamespace(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessingInstruction(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isText(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 100
    instance-of v0, p1, Ljava/lang/String;

    return v0
.end method

.method protected javacase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 367
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lorg/jaxen/javabean/JavaBeanXPath;

    invoke-direct {v0, p1}, Lorg/jaxen/javabean/JavaBeanXPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method
