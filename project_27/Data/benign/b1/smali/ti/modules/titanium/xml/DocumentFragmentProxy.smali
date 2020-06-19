.class public Lti/modules/titanium/xml/DocumentFragmentProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "DocumentFragmentProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DocumentFragment;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "fragment"    # Lorg/w3c/dom/DocumentFragment;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/DocumentFragmentProxy;-><init>(Lorg/w3c/dom/DocumentFragment;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentFragment;)V
    .locals 0
    .param p1, "fragment"    # Lorg/w3c/dom/DocumentFragment;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 19
    return-void
.end method
