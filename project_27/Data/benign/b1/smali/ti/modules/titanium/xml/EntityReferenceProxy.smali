.class public Lti/modules/titanium/xml/EntityReferenceProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "EntityReferenceProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/EntityReference;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "ref"    # Lorg/w3c/dom/EntityReference;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/EntityReferenceProxy;-><init>(Lorg/w3c/dom/EntityReference;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/EntityReference;)V
    .locals 0
    .param p1, "ref"    # Lorg/w3c/dom/EntityReference;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 19
    return-void
.end method
