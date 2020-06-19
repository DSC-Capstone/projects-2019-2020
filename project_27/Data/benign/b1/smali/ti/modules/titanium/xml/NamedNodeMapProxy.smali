.class public Lti/modules/titanium/xml/NamedNodeMapProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NamedNodeMapProxy.java"


# instance fields
.field private map:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "map"    # Lorg/w3c/dom/NamedNodeMap;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/NamedNodeMapProxy;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0
    .param p1, "map"    # Lorg/w3c/dom/NamedNodeMap;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 22
    iput-object p1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "arg"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItemNS(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "arg"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
