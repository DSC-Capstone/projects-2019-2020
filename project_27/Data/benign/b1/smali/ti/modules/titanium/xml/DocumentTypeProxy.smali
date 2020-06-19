.class public Lti/modules/titanium/xml/DocumentTypeProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "DocumentTypeProxy.java"


# instance fields
.field private type:Lorg/w3c/dom/DocumentType;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DocumentType;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "type"    # Lorg/w3c/dom/DocumentType;

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/DocumentTypeProxy;-><init>(Lorg/w3c/dom/DocumentType;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 0
    .param p1, "type"    # Lorg/w3c/dom/DocumentType;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 20
    iput-object p1, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    .line 21
    return-void
.end method


# virtual methods
.method public getDocumentType()Lorg/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    return-object v0
.end method

.method public getEntities()Lti/modules/titanium/xml/NamedNodeMapProxy;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lti/modules/titanium/xml/NamedNodeMapProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NamedNodeMapProxy;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotations()Lti/modules/titanium/xml/NamedNodeMapProxy;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lti/modules/titanium/xml/NamedNodeMapProxy;

    iget-object v1, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/xml/NamedNodeMapProxy;-><init>(Lorg/w3c/dom/NamedNodeMap;)V

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxy;->type:Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
