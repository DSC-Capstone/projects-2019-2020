.class public Lti/modules/titanium/xml/NodeListProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NodeListProxy.java"


# instance fields
.field private list:Lorg/w3c/dom/NodeList;

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;I)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "list"    # Lorg/w3c/dom/NodeList;
    .param p3, "offset"    # I

    .prologue
    .line 41
    invoke-direct {p0, p2, p3}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;I)V
    .locals 0
    .param p1, "list"    # Lorg/w3c/dom/NodeList;
    .param p2, "offset"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 35
    iput-object p1, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    .line 36
    iput p2, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    iget v1, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    iget v1, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
