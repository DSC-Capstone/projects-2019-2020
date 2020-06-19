.class public Lti/modules/titanium/xml/ElementProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "ElementProxy.java"


# instance fields
.field private element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/ElementProxy;-><init>(Lorg/w3c/dom/Element;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 25
    iput-object p1, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    .line 26
    return-void
.end method

.method private getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 43
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 44
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 46
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 47
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 44
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_1
    check-cast v0, Lorg/w3c/dom/Text;

    .end local v0    # "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast v0, Lorg/w3c/dom/CDATASection;

    .end local v0    # "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_3
    invoke-direct {p0, v0, p2}, Lti/modules/titanium/xml/ElementProxy;->getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 58
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 3
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "offset":I
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 95
    :cond_0
    new-instance v1, Lti/modules/titanium/xml/NodeListProxy;

    invoke-direct {v1, p1, v0}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;I)V

    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/xml/ElementProxy;->getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 2
    .param p1, "oldAttr"    # Lti/modules/titanium/xml/AttrProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 5
    .param p1, "newAttr"    # Lti/modules/titanium/xml/AttrProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "newAttrName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lti/modules/titanium/xml/ElementProxy;->getAttributeNode(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;

    move-result-object v1

    .line 170
    .local v1, "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 198
    .end local v1    # "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    :goto_0
    return-object v1

    .line 185
    .restart local v1    # "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    :cond_0
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0, v1}, Lti/modules/titanium/xml/ElementProxy;->removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;

    .line 190
    :cond_1
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/w3c/dom/DOMException;
    if-eqz v1, :cond_2

    .line 193
    iget-object v3, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 195
    :cond_2
    throw v0
.end method

.method public setAttributeNodeNS(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 4
    .param p1, "newAttr"    # Lti/modules/titanium/xml/AttrProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/xml/ElementProxy;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;

    move-result-object v1

    .line 208
    .local v1, "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v2

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 230
    .end local v1    # "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    :goto_0
    return-object v1

    .line 217
    .restart local v1    # "existedAttr":Lti/modules/titanium/xml/AttrProxy;
    :cond_0
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0, v1}, Lti/modules/titanium/xml/ElementProxy;->removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;

    .line 222
    :cond_1
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lorg/w3c/dom/DOMException;
    if-eqz v1, :cond_2

    .line 225
    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 227
    :cond_2
    throw v0
.end method
