.class public Lti/modules/titanium/xml/XPathUtil;
.super Ljava/lang/Object;
.source "XPathUtil.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "XPath"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lti/modules/titanium/xml/NodeProxy;Ljava/lang/String;)Lti/modules/titanium/xml/XPathNodeListProxy;
    .locals 6
    .param p0, "start"    # Lti/modules/titanium/xml/NodeProxy;
    .param p1, "xpathExpr"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    new-instance v2, Lorg/jaxen/dom/DOMXPath;

    invoke-direct {v2, p1}, Lorg/jaxen/dom/DOMXPath;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "xpath":Lorg/jaxen/XPath;
    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "nodes":Ljava/util/List;
    new-instance v3, Lti/modules/titanium/xml/XPathNodeListProxy;

    invoke-direct {v3, v1}, Lti/modules/titanium/xml/XPathNodeListProxy;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "nodes":Ljava/util/List;
    .end local v2    # "xpath":Lorg/jaxen/XPath;
    :goto_0
    return-object v3

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/jaxen/JaxenException;
    const-string v3, "XPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception selecting nodes in XPath ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    new-instance v3, Lti/modules/titanium/xml/XPathNodeListProxy;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4}, Lti/modules/titanium/xml/XPathNodeListProxy;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
