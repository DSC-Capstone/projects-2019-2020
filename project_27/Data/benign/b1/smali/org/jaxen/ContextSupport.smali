.class public Lorg/jaxen/ContextSupport;
.super Ljava/lang/Object;
.source "ContextSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e5e2fed5f38e54fL


# instance fields
.field private transient functionContext:Lorg/jaxen/FunctionContext;

.field private namespaceContext:Lorg/jaxen/NamespaceContext;

.field private navigator:Lorg/jaxen/Navigator;

.field private variableContext:Lorg/jaxen/VariableContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/jaxen/NamespaceContext;Lorg/jaxen/FunctionContext;Lorg/jaxen/VariableContext;Lorg/jaxen/Navigator;)V
    .locals 0
    .param p1, "namespaceContext"    # Lorg/jaxen/NamespaceContext;
    .param p2, "functionContext"    # Lorg/jaxen/FunctionContext;
    .param p3, "variableContext"    # Lorg/jaxen/VariableContext;
    .param p4, "navigator"    # Lorg/jaxen/Navigator;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 99
    invoke-virtual {p0, p2}, Lorg/jaxen/ContextSupport;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 100
    invoke-virtual {p0, p3}, Lorg/jaxen/ContextSupport;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 102
    iput-object p4, p0, Lorg/jaxen/ContextSupport;->navigator:Lorg/jaxen/Navigator;

    .line 103
    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/jaxen/ContextSupport;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    .line 240
    .local v0, "context":Lorg/jaxen/FunctionContext;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2, p3}, Lorg/jaxen/FunctionContext;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;

    move-result-object v1

    return-object v1

    .line 246
    :cond_0
    new-instance v1, Lorg/jaxen/UnresolvableException;

    const-string v2, "No function context installed"

    invoke-direct {v1, v2}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jaxen/ContextSupport;->functionContext:Lorg/jaxen/FunctionContext;

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jaxen/ContextSupport;->namespaceContext:Lorg/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getNavigator()Lorg/jaxen/Navigator;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/jaxen/ContextSupport;->navigator:Lorg/jaxen/Navigator;

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jaxen/ContextSupport;->variableContext:Lorg/jaxen/VariableContext;

    return-object v0
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/jaxen/ContextSupport;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    .line 213
    .local v0, "context":Lorg/jaxen/VariableContext;
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2, p3}, Lorg/jaxen/VariableContext;->getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 219
    :cond_0
    new-instance v1, Lorg/jaxen/UnresolvableException;

    const-string v2, "No variable context installed"

    invoke-direct {v1, v2}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .locals 0
    .param p1, "functionContext"    # Lorg/jaxen/FunctionContext;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/jaxen/ContextSupport;->functionContext:Lorg/jaxen/FunctionContext;

    .line 134
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .locals 0
    .param p1, "namespaceContext"    # Lorg/jaxen/NamespaceContext;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/jaxen/ContextSupport;->namespaceContext:Lorg/jaxen/NamespaceContext;

    .line 116
    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 0
    .param p1, "variableContext"    # Lorg/jaxen/VariableContext;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/jaxen/ContextSupport;->variableContext:Lorg/jaxen/VariableContext;

    .line 152
    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 193
    :goto_0
    return-object v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/ContextSupport;->getNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v0

    .line 188
    .local v0, "context":Lorg/jaxen/NamespaceContext;
    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0, p1}, Lorg/jaxen/NamespaceContext;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
