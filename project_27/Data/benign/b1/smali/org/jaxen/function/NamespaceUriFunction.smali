.class public Lorg/jaxen/function/NamespaceUriFunction;
.super Ljava/lang/Object;
.source "NamespaceUriFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/String;
    .locals 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "nav"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 140
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "first":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 144
    check-cast v0, Ljava/util/List;

    .end local v0    # "first":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    :goto_0
    return-object v1

    .line 147
    .restart local v0    # "first":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "uri":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 157
    .end local v1    # "uri":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    const-string v1, ""

    goto :goto_0

    .line 161
    :cond_4
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    const-string v1, ""

    goto :goto_0

    .line 165
    :cond_5
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 167
    const-string v1, ""

    goto :goto_0

    .line 169
    :cond_6
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isComment(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 171
    const-string v1, ""

    goto :goto_0

    .line 173
    :cond_7
    invoke-interface {p1, v0}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 175
    const-string v1, ""

    goto :goto_0

    .line 178
    :cond_8
    new-instance v2, Lorg/jaxen/FunctionCallException;

    const-string v3, "The argument to the namespace-uri function must be a node-set"

    invoke-direct {v2, v3}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    .end local v0    # "first":Ljava/lang/Object;
    :cond_9
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "namespace-uri() requires zero or one argument."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
