.class public Lti/modules/titanium/xml/NotationProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "NotationProxy.java"


# instance fields
.field private notation:Lorg/w3c/dom/Notation;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Notation;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "notation"    # Lorg/w3c/dom/Notation;

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/NotationProxy;-><init>(Lorg/w3c/dom/Notation;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Notation;)V
    .locals 0
    .param p1, "notation"    # Lorg/w3c/dom/Notation;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 20
    iput-object p1, p0, Lti/modules/titanium/xml/NotationProxy;->notation:Lorg/w3c/dom/Notation;

    .line 21
    return-void
.end method


# virtual methods
.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxy;->notation:Lorg/w3c/dom/Notation;

    invoke-interface {v0}, Lorg/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxy;->notation:Lorg/w3c/dom/Notation;

    invoke-interface {v0}, Lorg/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
