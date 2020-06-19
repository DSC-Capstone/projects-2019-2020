.class public Lti/modules/titanium/xml/AttrProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "AttrProxy.java"


# instance fields
.field private attr:Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Attr;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "attr"    # Lorg/w3c/dom/Attr;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/AttrProxy;-><init>(Lorg/w3c/dom/Attr;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Attr;)V
    .locals 0
    .param p1, "attr"    # Lorg/w3c/dom/Attr;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p1, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    .line 22
    return-void
.end method


# virtual methods
.method public getAttr()Lorg/w3c/dom/Attr;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lti/modules/titanium/xml/ElementProxy;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/AttrProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 63
    return-void
.end method
