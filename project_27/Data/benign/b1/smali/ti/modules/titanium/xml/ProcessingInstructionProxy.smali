.class public Lti/modules/titanium/xml/ProcessingInstructionProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "ProcessingInstructionProxy.java"


# instance fields
.field private pi:Lorg/w3c/dom/ProcessingInstruction;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "pi"    # Lorg/w3c/dom/ProcessingInstruction;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/ProcessingInstructionProxy;-><init>(Lorg/w3c/dom/ProcessingInstruction;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .param p1, "pi"    # Lorg/w3c/dom/ProcessingInstruction;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    .line 22
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 41
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    .line 42
    return-void
.end method
