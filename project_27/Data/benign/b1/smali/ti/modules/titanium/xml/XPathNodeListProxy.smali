.class public Lti/modules/titanium/xml/XPathNodeListProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "XPathNodeListProxy.java"


# instance fields
.field private nodeList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "nodeList"    # Ljava/util/List;

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 17
    iput-object p1, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/util/List;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "nodeList"    # Ljava/util/List;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XPathNodeListProxy;-><init>(Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 32
    iget-object v1, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 33
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method
