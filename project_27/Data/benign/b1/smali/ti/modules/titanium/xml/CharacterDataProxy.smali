.class public Lti/modules/titanium/xml/CharacterDataProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "CharacterDataProxy.java"


# instance fields
.field private data:Lorg/w3c/dom/CharacterData;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/CharacterData;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "data"    # Lorg/w3c/dom/CharacterData;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/CharacterDataProxy;-><init>(Lorg/w3c/dom/CharacterData;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/CharacterData;)V
    .locals 0
    .param p1, "data"    # Lorg/w3c/dom/CharacterData;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p1, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    .line 22
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public deleteData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->deleteData(II)V

    .line 37
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getLength()I

    move-result v0

    return v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    .line 57
    return-void
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/CharacterData;->replaceData(IILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 71
    add-int v0, p1, p2

    iget-object v1, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getLength()I

    move-result v0

    sub-int p2, v0, p1

    .line 74
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->substringData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
