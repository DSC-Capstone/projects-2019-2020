.class public Lorg/jaxen/dom/DocumentNavigator;
.super Lorg/jaxen/DefaultNavigator;
.source "DocumentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;,
        Lorg/jaxen/dom/DocumentNavigator$NodeIterator;
    }
.end annotation


# static fields
.field private static final SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

.field private static final serialVersionUID:J = 0x756b4ee4a5f6b733L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator;

    invoke-direct {v0}, Lorg/jaxen/dom/DocumentNavigator;-><init>()V

    sput-object v0, Lorg/jaxen/dom/DocumentNavigator;->SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/jaxen/DefaultNavigator;-><init>()V

    .line 124
    return-void
.end method

.method public static getInstance()Lorg/jaxen/Navigator;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/jaxen/dom/DocumentNavigator;->SINGLETON:Lorg/jaxen/dom/DocumentNavigator;

    return-object v0
.end method

.method private getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isText(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    :cond_0
    return-object p2

    .line 710
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 711
    .local v0, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 712
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 713
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/jaxen/dom/DocumentNavigator;->getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/jaxen/dom/DocumentNavigator$AttributeIterator;-><init>(Lorg/w3c/dom/Node;)V

    .line 316
    :goto_0
    return-object v0

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 548
    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "attribute":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 552
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1    # "attribute":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 527
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 528
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 529
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 534
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 532
    :catch_0
    move-exception v2

    .line 534
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 567
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 568
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 569
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 574
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 572
    :catch_0
    move-exception v2

    .line 574
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 730
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 152
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$1;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$1;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 755
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isComment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 820
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 821
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 822
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 823
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 825
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lorg/jaxen/FunctionCallException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JAXP setup error in document() function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 828
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 829
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jaxen/FunctionCallException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML error in document() function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 831
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 832
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jaxen/FunctionCallException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error in document() function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    .end local p1    # "contextNode":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_0
.end method

.method public getElementById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "elementId"    # Ljava/lang/String;

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    .line 1064
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1065
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 487
    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 491
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1    # "element":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 466
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 467
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 468
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 473
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 471
    :catch_0
    move-exception v2

    .line 473
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 505
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 506
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 507
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 512
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 510
    :catch_0
    move-exception v2

    .line 512
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jaxen/dom/DocumentNavigator;->getStringValue(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFollowingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 273
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$6;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$6;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 233
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$4;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$4;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 21
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 350
    invoke-virtual/range {p0 .. p1}, Lorg/jaxen/dom/DocumentNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 352
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .local v15, "nsMap":Ljava/util/HashMap;
    move-object/from16 v12, p1

    .line 357
    check-cast v12, Lorg/w3c/dom/Node;

    .line 358
    .local v12, "n":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v12, :cond_6

    .line 362
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, "myNamespace":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 364
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "myPrefix":Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 366
    new-instance v14, Lorg/jaxen/dom/NamespaceNode;

    move-object/from16 v17, p1

    check-cast v17, Lorg/w3c/dom/Node;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v11, v10}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v14, "ns":Lorg/jaxen/dom/NamespaceNode;
    invoke-virtual {v15, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v11    # "myPrefix":Ljava/lang/String;
    .end local v14    # "ns":Lorg/jaxen/dom/NamespaceNode;
    :cond_0
    invoke-interface {v12}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 372
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 373
    .local v6, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    .line 375
    .local v9, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 376
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    .line 378
    .local v4, "att":Lorg/w3c/dom/Attr;
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "attributeNamespace":Ljava/lang/String;
    const-string v17, "http://www.w3.org/2000/xmlns/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 375
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 381
    :cond_2
    if-eqz v5, :cond_1

    .line 382
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, "prefix":Ljava/lang/String;
    new-instance v14, Lorg/jaxen/dom/NamespaceNode;

    move-object/from16 v17, p1

    check-cast v17, Lorg/w3c/dom/Node;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1, v5}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .restart local v14    # "ns":Lorg/jaxen/dom/NamespaceNode;
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 392
    .end local v4    # "att":Lorg/w3c/dom/Attr;
    .end local v5    # "attributeNamespace":Ljava/lang/String;
    .end local v14    # "ns":Lorg/jaxen/dom/NamespaceNode;
    .end local v16    # "prefix":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_5

    .line 393
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    .line 395
    .restart local v4    # "att":Lorg/w3c/dom/Attr;
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 396
    .restart local v5    # "attributeNamespace":Ljava/lang/String;
    const-string v17, "http://www.w3.org/2000/xmlns/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 397
    new-instance v14, Lorg/jaxen/dom/NamespaceNode;

    move-object/from16 v17, p1

    check-cast v17, Lorg/w3c/dom/Node;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v4}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 400
    .restart local v14    # "ns":Lorg/jaxen/dom/NamespaceNode;
    invoke-virtual {v14}, Lorg/jaxen/dom/NamespaceNode;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 401
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "ns":Lorg/jaxen/dom/NamespaceNode;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 359
    .end local v4    # "att":Lorg/w3c/dom/Attr;
    .end local v5    # "attributeNamespace":Ljava/lang/String;
    .end local v6    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "i":I
    .end local v9    # "length":I
    :cond_5
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    goto/16 :goto_0

    .line 410
    .end local v10    # "myNamespace":Ljava/lang/String;
    :cond_6
    const-string v17, "xml"

    new-instance v18, Lorg/jaxen/dom/NamespaceNode;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    const-string v19, "xml"

    const-string v20, "http://www.w3.org/XML/1998/namespace"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/jaxen/dom/NamespaceNode;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jaxen/dom/NamespaceNode;

    .line 419
    .local v7, "defaultNS":Lorg/jaxen/dom/NamespaceNode;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_7

    .line 420
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_7
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 425
    .end local v7    # "defaultNS":Lorg/jaxen/dom/NamespaceNode;
    .end local v12    # "n":Lorg/w3c/dom/Node;
    .end local v15    # "nsMap":Ljava/util/HashMap;
    :goto_4
    return-object v17

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_8
    sget-object v17, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_4
.end method

.method public getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jaxen/dom/NamespaceNode;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/dom/NamespaceNode;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jaxen/dom/NamespaceNode;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 178
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    .line 180
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 181
    new-instance v1, Lorg/jaxen/dom/DocumentNavigator$2;

    invoke-direct {v1, p0, v0}, Lorg/jaxen/dom/DocumentNavigator$2;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    .line 193
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/jaxen/dom/DocumentNavigator$3;

    invoke-direct {v1, p0, v0}, Lorg/jaxen/dom/DocumentNavigator$3;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "child"    # Ljava/lang/Object;

    .prologue
    .line 217
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    .line 218
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 219
    check-cast v0, Lorg/w3c/dom/Attr;

    .end local v0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .restart local v0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrecedingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 253
    new-instance v0, Lorg/jaxen/dom/DocumentNavigator$5;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lorg/jaxen/dom/DocumentNavigator$5;-><init>(Lorg/jaxen/dom/DocumentNavigator;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 865
    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 866
    .local v0, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 868
    .end local v0    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a processing instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 848
    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 849
    .local v0, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 851
    .end local v0    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a processing instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lorg/jaxen/dom/DocumentNavigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 743
    :goto_0
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttribute(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 626
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "http://www.w3.org/2000/xmlns/"

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComment(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 640
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocument(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 586
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isElement(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 611
    instance-of v1, p1, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNamespace(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 599
    instance-of v0, p1, Lorg/jaxen/dom/NamespaceNode;

    return v0
.end method

.method public isProcessingInstruction(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 675
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 653
    instance-of v1, p1, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    .line 654
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 657
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 438
    new-instance v0, Lorg/jaxen/dom/DOMXPath;

    invoke-direct {v0, p1}, Lorg/jaxen/dom/DOMXPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 796
    invoke-virtual {p0, p2}, Lorg/jaxen/dom/DocumentNavigator;->getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 797
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/dom/NamespaceNode;

    .line 799
    .local v1, "ns":Lorg/jaxen/dom/NamespaceNode;
    invoke-virtual {v1}, Lorg/jaxen/dom/NamespaceNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/jaxen/dom/NamespaceNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 801
    .end local v1    # "ns":Lorg/jaxen/dom/NamespaceNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
