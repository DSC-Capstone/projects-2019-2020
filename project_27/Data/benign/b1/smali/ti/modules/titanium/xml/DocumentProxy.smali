.class public Lti/modules/titanium/xml/DocumentProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "DocumentProxy.java"


# instance fields
.field private doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/w3c/dom/Document;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 22
    iput-object p1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    .line 23
    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 35
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/xml/AttrProxy;

    return-object v1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 47
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/xml/AttrProxy;

    return-object v1
.end method

.method public createCDATASection(Ljava/lang/String;)Lti/modules/titanium/xml/CDATASectionProxy;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/CDATASectionProxy;

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lti/modules/titanium/xml/CommentProxy;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/CommentProxy;

    return-object v0
.end method

.method public createDocumentFragment()Lti/modules/titanium/xml/DocumentFragmentProxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/DocumentFragmentProxy;

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lti/modules/titanium/xml/EntityReferenceProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/EntityReferenceProxy;

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/ProcessingInstructionProxy;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ProcessingInstructionProxy;

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lti/modules/titanium/xml/TextProxy;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/TextProxy;

    return-object v0
.end method

.method public getDoctype()Lti/modules/titanium/xml/DocumentTypeProxy;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/DocumentTypeProxy;

    return-object v0
.end method

.method public getDocumentElement()Lti/modules/titanium/xml/ElementProxy;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 2
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getImplementation()Lti/modules/titanium/xml/DOMImplementationProxy;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lti/modules/titanium/xml/DOMImplementationProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/DOMImplementationProxy;-><init>(Lorg/w3c/dom/DOMImplementation;)V

    return-object v0
.end method

.method public getOwnerDocument()Lti/modules/titanium/xml/DocumentProxy;
    .locals 0

    .prologue
    .line 134
    return-object p0
.end method

.method public importNode(Lti/modules/titanium/xml/NodeProxy;Z)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "importedNode"    # Lti/modules/titanium/xml/NodeProxy;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
