.class public Lti/modules/titanium/xml/NodeProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NodeProxy.java"


# static fields
.field public static final ATTRIBUTE_NODE:I = 0x2

.field public static final CDATA_SECTION_NODE:I = 0x4

.field public static final COMMENT_NODE:I = 0x8

.field public static final DOCUMENT_FRAGMENT_NODE:I = 0xb

.field public static final DOCUMENT_NODE:I = 0x9

.field public static final DOCUMENT_TYPE_NODE:I = 0xa

.field public static final ELEMENT_NODE:I = 0x1

.field public static final ENTITY_NODE:I = 0x6

.field public static final ENTITY_REFERENCE_NODE:I = 0x5

.field public static final NOTATION_NODE:I = 0xc

.field public static final PROCESSING_INSTRUCTION_NODE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TiNodeProxy"

.field public static final TEXT_NODE:I = 0x3


# instance fields
.field protected node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 53
    iput-object p1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    .line 54
    return-void
.end method

.method public static getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p0, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 120
    invoke-static {p1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 115
    .end local p0    # "node":Lorg/w3c/dom/Node;
    .local v0, "proxy":Lti/modules/titanium/xml/NodeProxy;
    :goto_0
    return-object v0

    .line 73
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v0, Lti/modules/titanium/xml/NodeProxy;

    invoke-direct {v0, p0}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 75
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    :pswitch_0
    new-instance v0, Lti/modules/titanium/xml/AttrProxy;

    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/AttrProxy;-><init>(Lorg/w3c/dom/Attr;)V

    .line 76
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 78
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_1
    new-instance v0, Lti/modules/titanium/xml/CDATASectionProxy;

    check-cast p0, Lorg/w3c/dom/CDATASection;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/CDATASectionProxy;-><init>(Lorg/w3c/dom/CDATASection;)V

    .line 79
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 81
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    new-instance v0, Lti/modules/titanium/xml/CommentProxy;

    check-cast p0, Lorg/w3c/dom/Comment;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/CommentProxy;-><init>(Lorg/w3c/dom/Comment;)V

    .line 82
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 84
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_3
    new-instance v0, Lti/modules/titanium/xml/DocumentFragmentProxy;

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/DocumentFragmentProxy;-><init>(Lorg/w3c/dom/DocumentFragment;)V

    .line 85
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 87
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_4
    new-instance v0, Lti/modules/titanium/xml/DocumentProxy;

    check-cast p0, Lorg/w3c/dom/Document;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/w3c/dom/Document;)V

    .line 88
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 90
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_5
    new-instance v0, Lti/modules/titanium/xml/DocumentTypeProxy;

    check-cast p0, Lorg/w3c/dom/DocumentType;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/DocumentTypeProxy;-><init>(Lorg/w3c/dom/DocumentType;)V

    .line 91
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 93
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_6
    new-instance v0, Lti/modules/titanium/xml/ElementProxy;

    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/ElementProxy;-><init>(Lorg/w3c/dom/Element;)V

    .line 94
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 96
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_7
    new-instance v0, Lti/modules/titanium/xml/EntityProxy;

    check-cast p0, Lorg/w3c/dom/Entity;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/EntityProxy;-><init>(Lorg/w3c/dom/Entity;)V

    .line 97
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 99
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_8
    new-instance v0, Lti/modules/titanium/xml/EntityReferenceProxy;

    check-cast p0, Lorg/w3c/dom/EntityReference;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/EntityReferenceProxy;-><init>(Lorg/w3c/dom/EntityReference;)V

    .line 100
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 102
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_9
    new-instance v0, Lti/modules/titanium/xml/NotationProxy;

    check-cast p0, Lorg/w3c/dom/Notation;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/NotationProxy;-><init>(Lorg/w3c/dom/Notation;)V

    .line 103
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 105
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_a
    new-instance v0, Lti/modules/titanium/xml/ProcessingInstructionProxy;

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/ProcessingInstructionProxy;-><init>(Lorg/w3c/dom/ProcessingInstruction;)V

    .line 106
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 108
    .end local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :pswitch_b
    new-instance v0, Lti/modules/titanium/xml/TextProxy;

    check-cast p0, Lorg/w3c/dom/Text;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-direct {v0, p0}, Lti/modules/titanium/xml/TextProxy;-><init>(Lorg/w3c/dom/Text;)V

    .line 109
    .restart local v0    # "proxy":Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static removeProxyForNode(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p0, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 132
    invoke-static {p1}, Lti/modules/titanium/xml/NodeProxy;->removeProxyForNode(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public static removeProxyForNode(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 127
    new-instance v0, Lti/modules/titanium/xml/NodeProxy;

    invoke-direct {v0, p0}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method


# virtual methods
.method public appendChild(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "newChild"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v1, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 152
    const-string v0, "TiNodeProxy"

    const-string v1, "cloneNode will often throw exception in versions prior to Honeycomb."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 312
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lti/modules/titanium/xml/NodeProxy;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 315
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    check-cast p1, Lti/modules/titanium/xml/NodeProxy;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public evaluate(Ljava/lang/String;)Lti/modules/titanium/xml/XPathNodeListProxy;
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {p0, p1}, Lti/modules/titanium/xml/XPathUtil;->evaluate(Lti/modules/titanium/xml/NodeProxy;Ljava/lang/String;)Lti/modules/titanium/xml/XPathNodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lti/modules/titanium/xml/NamedNodeMapProxy;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lti/modules/titanium/xml/NamedNodeMapProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NamedNodeMapProxy;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    return-object v0
.end method

.method public getChildNodes()Lti/modules/titanium/xml/NodeListProxy;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getFirstChild()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lti/modules/titanium/xml/DocumentProxy;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lti/modules/titanium/xml/DocumentProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public getParentNode()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method protected getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lti/modules/titanium/xml/NodeProxy;",
            ">(",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 322
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public insertBefore(Lti/modules/titanium/xml/NodeProxy;Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .param p1, "newChild"    # Lti/modules/titanium/xml/NodeProxy;
    .param p2, "refChild"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v1, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p2, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Node;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public normalize()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V

    .line 271
    return-void
.end method

.method public removeChild(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .param p1, "oldChild"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 278
    .local v0, "oldNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->removeProxyForNode(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method

.method public replaceChild(Lti/modules/titanium/xml/NodeProxy;Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 4
    .param p1, "newChild"    # Lti/modules/titanium/xml/NodeProxy;
    .param p2, "oldChild"    # Lti/modules/titanium/xml/NodeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v3, p2, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 286
    .local v0, "oldNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->removeProxyForNode(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 301
    return-void
.end method
