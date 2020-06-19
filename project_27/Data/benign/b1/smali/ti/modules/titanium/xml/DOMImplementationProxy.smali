.class public Lti/modules/titanium/xml/DOMImplementationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "DOMImplementationProxy.java"


# instance fields
.field private impl:Lorg/w3c/dom/DOMImplementation;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DOMImplementation;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "impl"    # Lorg/w3c/dom/DOMImplementation;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/DOMImplementationProxy;-><init>(Lorg/w3c/dom/DOMImplementation;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DOMImplementation;)V
    .locals 0
    .param p1, "impl"    # Lorg/w3c/dom/DOMImplementation;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 22
    iput-object p1, p0, Lti/modules/titanium/xml/DOMImplementationProxy;->impl:Lorg/w3c/dom/DOMImplementation;

    .line 23
    return-void
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/xml/DocumentTypeProxy;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "doctype"    # Lti/modules/titanium/xml/DocumentTypeProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lti/modules/titanium/xml/DOMImplementationProxy;->impl:Lorg/w3c/dom/DOMImplementation;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, p2, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/DocumentProxy;

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lti/modules/titanium/xml/DocumentTypeProxy;->getDocumentType()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    goto :goto_0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentTypeProxy;
    .locals 1
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/xml/DOMImplementationProxy;->impl:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/DocumentTypeProxy;

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/xml/DOMImplementationProxy;->impl:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
