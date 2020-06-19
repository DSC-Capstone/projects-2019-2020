.class public Lti/modules/titanium/xml/CDATASectionProxy;
.super Lti/modules/titanium/xml/TextProxy;
.source "CDATASectionProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/CDATASection;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "section"    # Lorg/w3c/dom/CDATASection;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/CDATASectionProxy;-><init>(Lorg/w3c/dom/CDATASection;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/CDATASection;)V
    .locals 0
    .param p1, "section"    # Lorg/w3c/dom/CDATASection;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/TextProxy;-><init>(Lorg/w3c/dom/Text;)V

    .line 19
    return-void
.end method
